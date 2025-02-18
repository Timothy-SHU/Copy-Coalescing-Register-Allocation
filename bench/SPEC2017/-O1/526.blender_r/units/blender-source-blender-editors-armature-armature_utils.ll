; ModuleID = 'blender/source/blender/editors/armature/armature_utils.c'
source_filename = "blender/source/blender/editors/armature/armature_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.UndoArmature = type { ptr, %struct.ListBase }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"make_editbone\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Warning: removed zero sized bone: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"edbo armature\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"listbase undo\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_sync_selection(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1, %32
  %5 = phi ptr [ %33, %32 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = and i32 %7, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = or i32 %7, 2
  %23 = and i32 %7, -2097155
  %24 = select i1 %21, i32 %23, i32 %22
  store i32 %24, ptr %6, align 4, !tbaa !38
  br label %25

25:                                               ; preds = %17, %13, %10
  %26 = load i32, ptr %6, align 4, !tbaa !38
  %27 = and i32 %26, 6
  %28 = icmp eq i32 %27, 6
  %29 = and i32 %26, -2
  %30 = zext i1 %28 to i32
  %31 = or disjoint i32 %29, %30
  store i32 %31, ptr %6, align 4, !tbaa !38
  br label %32

32:                                               ; preds = %25, %4
  %33 = load ptr, ptr %5, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %4, !llvm.loop !44

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_validate_active(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %5, %10, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bone_looper(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  br label %5

5:                                                ; preds = %9, %4
  %6 = phi i32 [ 0, %4 ], [ %16, %9 ]
  %7 = phi ptr [ %1, %4 ], [ %15, %9 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %3(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2) #14
  %11 = getelementptr inbounds %struct.Bone, ptr %7, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call i32 @bone_looper(ptr noundef %0, ptr noundef %12, ptr noundef %2, ptr noundef %3)
  %14 = add nsw i32 %13, %10
  %15 = load ptr, ptr %7, align 8, !tbaa !53
  %16 = add nsw i32 %14, %6
  br label %5

17:                                               ; preds = %5
  %18 = add nsw i32 0, %6
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @bone_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  tail call void @IDP_FreeProperty(ptr noundef nonnull %9) #14
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %13 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void %12(ptr noundef %13) #14
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  tail call void @BLI_freelinkN(ptr noundef %16, ptr noundef %1) #14
  ret void
}

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #4

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_edit_bone_remove(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi ptr [ %5, %7 ], [ %20, %19 ]
  %11 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load ptr, ptr %8, align 8, !tbaa !43
  store ptr %15, ptr %11, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = and i32 %17, -17
  store i32 %18, ptr %16, align 4, !tbaa !38
  br label %19

19:                                               ; preds = %9, %14
  %20 = load ptr, ptr %10, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !56

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store ptr null, ptr %23, align 8, !tbaa !47
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  tail call void @IDP_FreeProperty(ptr noundef nonnull %29) #14
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %33 = load ptr, ptr %28, align 8, !tbaa !54
  tail call void %32(ptr noundef %33) #14
  br label %34

34:                                               ; preds = %27, %31
  %35 = load ptr, ptr %3, align 8, !tbaa !55
  tail call void @BLI_freelinkN(ptr noundef %35, ptr noundef %1) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %3, !llvm.loop !57

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ED_armature_bone_find_shared_parent(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %19
  %7 = zext i32 %1 to i64
  br label %22

8:                                                ; preds = %4, %19
  %9 = phi i64 [ 0, %4 ], [ %20, %19 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !59

19:                                               ; preds = %13, %8
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %6, label %8, !llvm.loop !60

22:                                               ; preds = %6, %37
  %23 = phi i64 [ 0, %6 ], [ %38, %37 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %22, %29
  %30 = phi ptr [ %35, %29 ], [ %27, %22 ]
  %31 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !58
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !61

37:                                               ; preds = %29, %22
  %38 = add nuw nsw i64 %23, 1
  %39 = icmp eq i64 %38, %7
  br i1 %39, label %40, label %22, !llvm.loop !62

40:                                               ; preds = %37, %2
  %41 = load ptr, ptr %0, align 8, !tbaa !34
  br label %42

42:                                               ; preds = %47, %40
  %43 = phi ptr [ %41, %40 ], [ %45, %47 ]
  %44 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.EditBone, ptr %45, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !58
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %51, label %42, !llvm.loop !63

51:                                               ; preds = %42, %47
  %52 = phi ptr [ %45, %47 ], [ null, %42 ]
  ret ptr %52
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_ebone_to_mat3(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %6 = load float, ptr %4, align 4, !tbaa !64
  %7 = load float, ptr %5, align 4, !tbaa !64
  %8 = fsub float %6, %7
  store float %8, ptr %3, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !64
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %3, i64 1
  store float %13, ptr %14, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !64
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds float, ptr %3, i64 2
  store float %19, ptr %20, align 4, !tbaa !64
  %21 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  %22 = load float, ptr %21, align 8, !tbaa !65
  call void @vec_roll_to_mat3(ptr noundef nonnull %3, float noundef %22, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

declare void @vec_roll_to_mat3(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_ebone_to_mat4(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %7 = load float, ptr %5, align 4, !tbaa !64
  %8 = load float, ptr %6, align 4, !tbaa !64
  %9 = fsub float %7, %8
  store float %9, ptr %3, align 4, !tbaa !64
  %10 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !64
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float %14, ptr %15, align 4, !tbaa !64
  %16 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !64
  %18 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !64
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %3, i64 2
  store float %20, ptr %21, align 4, !tbaa !64
  %22 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 8, !tbaa !65
  call void @vec_roll_to_mat3(ptr noundef nonnull %3, float noundef %23, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %4) #14
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %25 = load float, ptr %6, align 4, !tbaa !64
  store float %25, ptr %24, align 4, !tbaa !64
  %26 = load float, ptr %12, align 4, !tbaa !64
  %27 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  store float %26, ptr %27, align 4, !tbaa !64
  %28 = load float, ptr %18, align 4, !tbaa !64
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  store float %28, ptr %29, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  ret void
}

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_ebone_from_mat3(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !64
  %8 = load float, ptr %5, align 4, !tbaa !64
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !64
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !64
  %19 = fsub float %16, %18
  %20 = fmul float %14, %14
  %21 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %21)
  %23 = tail call float @sqrtf(float noundef %22) #14
  call void @mat3_to_vec_roll(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %24 = load float, ptr %5, align 4, !tbaa !64
  %25 = load float, ptr %3, align 4, !tbaa !64
  %26 = call float @llvm.fmuladd.f32(float %25, float %23, float %24)
  store float %26, ptr %6, align 4, !tbaa !64
  %27 = load float, ptr %12, align 4, !tbaa !64
  %28 = getelementptr inbounds float, ptr %3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !64
  %30 = call float @llvm.fmuladd.f32(float %29, float %23, float %27)
  store float %30, ptr %10, align 4, !tbaa !64
  %31 = load float, ptr %17, align 4, !tbaa !64
  %32 = getelementptr inbounds float, ptr %3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !64
  %34 = call float @llvm.fmuladd.f32(float %33, float %23, float %31)
  store float %34, ptr %15, align 4, !tbaa !64
  %35 = load float, ptr %4, align 4, !tbaa !64
  %36 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  store float %35, ptr %36, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

declare void @mat3_to_vec_roll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_ebone_from_mat4(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca float, align 4
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #14
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = load float, ptr %6, align 4, !tbaa !64
  %10 = fsub float %9, %8
  store float %10, ptr %6, align 4, !tbaa !64
  %11 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !64
  %13 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !64
  %16 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !64
  %18 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !64
  %20 = fsub float %19, %17
  store float %20, ptr %18, align 4, !tbaa !64
  %21 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !64
  store float %22, ptr %7, align 4, !tbaa !64
  %23 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !64
  store float %24, ptr %11, align 4, !tbaa !64
  %25 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !64
  store float %26, ptr %16, align 4, !tbaa !64
  %27 = load float, ptr %21, align 4, !tbaa !64
  %28 = fadd float %10, %27
  store float %28, ptr %6, align 4, !tbaa !64
  %29 = load float, ptr %23, align 4, !tbaa !64
  %30 = fadd float %15, %29
  store float %30, ptr %13, align 4, !tbaa !64
  %31 = load float, ptr %25, align 4, !tbaa !64
  %32 = fadd float %20, %31
  store float %32, ptr %18, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %33 = fsub float %28, %22
  %34 = fsub float %30, %24
  %35 = fsub float %32, %26
  %36 = fmul float %34, %34
  %37 = call float @llvm.fmuladd.f32(float %33, float %33, float %36)
  %38 = call float @llvm.fmuladd.f32(float %35, float %35, float %37)
  %39 = call float @sqrtf(float noundef %38) #14
  call void @mat3_to_vec_roll(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %40 = load float, ptr %7, align 4, !tbaa !64
  %41 = load float, ptr %3, align 4, !tbaa !64
  %42 = call float @llvm.fmuladd.f32(float %41, float %39, float %40)
  store float %42, ptr %6, align 4, !tbaa !64
  %43 = load float, ptr %11, align 4, !tbaa !64
  %44 = getelementptr inbounds float, ptr %3, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !64
  %46 = call float @llvm.fmuladd.f32(float %45, float %39, float %43)
  store float %46, ptr %13, align 4, !tbaa !64
  %47 = load float, ptr %16, align 4, !tbaa !64
  %48 = getelementptr inbounds float, ptr %3, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !64
  %50 = call float @llvm.fmuladd.f32(float %49, float %39, float %47)
  store float %50, ptr %18, align 4, !tbaa !64
  %51 = load float, ptr %4, align 4, !tbaa !64
  %52 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  store float %51, ptr %52, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #14
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_armature_bone_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 40) #14
  ret ptr %3
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_armature_bone_get_mirrored(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %3, ptr noundef nonnull %6, i8 noundef zeroext 0) #14
  %7 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call ptr @BLI_findstring(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 40) #14
  br label %11

11:                                               ; preds = %5, %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret ptr %12
}

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @armature_select_mirrored(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %14

14:                                               ; preds = %12, %40
  %15 = phi ptr [ %10, %12 ], [ %41, %40 ]
  %16 = load i32, ptr %13, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !38
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %8, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %28 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %2, ptr noundef nonnull %28, i8 noundef zeroext 0) #14
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %28) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call ptr @BLI_findstring(ptr noundef %27, ptr noundef nonnull %2, i32 noundef 40) #14
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %32, %31 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !38
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !38
  br label %40

40:                                               ; preds = %14, %33, %36, %21
  %41 = load ptr, ptr %15, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !69

43:                                               ; preds = %40, %7, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @armature_tag_select_mirrored(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = and i32 %11, -129
  store i32 %12, ptr %10, align 4, !tbaa !38
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !70

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %81, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %25

25:                                               ; preds = %23, %54
  %26 = phi ptr [ %21, %23 ], [ %55, %54 ]
  %27 = load i32, ptr %24, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %39 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %3, ptr noundef nonnull %39, i8 noundef zeroext 0) #14
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %39) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call ptr @BLI_findstring(ptr noundef %38, ptr noundef nonnull %3, i32 noundef 40) #14
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %43, %42 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.EditBone, ptr %45, i64 0, i32 9
  %49 = load i32, ptr %48, align 4, !tbaa !38
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = or i32 %49, 128
  store i32 %53, ptr %48, align 4, !tbaa !38
  br label %54

54:                                               ; preds = %44, %47, %52, %25, %32
  %55 = load ptr, ptr %26, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %25, !llvm.loop !71

57:                                               ; preds = %54, %20
  %58 = load ptr, ptr %4, align 8, !tbaa !55
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %81, label %61

61:                                               ; preds = %57, %78
  %62 = phi ptr [ %79, %78 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 9
  %64 = load i32, ptr %63, align 4, !tbaa !38
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %69 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %2, ptr noundef nonnull %69, i8 noundef zeroext 0) #14
  %70 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %69) #15
  %71 = icmp ne i32 %70, 0
  call void @llvm.assume(i1 %71)
  %72 = call ptr @BLI_findstring(ptr noundef %68, ptr noundef nonnull %2, i32 noundef 40) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  %73 = getelementptr inbounds %struct.EditBone, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 4, !tbaa !38
  %75 = and i32 %74, 7
  %76 = load i32, ptr %63, align 4, !tbaa !38
  %77 = or i32 %76, %75
  store i32 %77, ptr %63, align 4, !tbaa !38
  br label %78

78:                                               ; preds = %61, %67
  %79 = load ptr, ptr %62, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %61, !llvm.loop !72

81:                                               ; preds = %78, %57, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @armature_tag_unselect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %15, %14 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = and i32 %9, -136
  store i32 %13, ptr %8, align 4, !tbaa !38
  br label %14

14:                                               ; preds = %6, %12
  %15 = load ptr, ptr %7, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !73

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @transform_armature_mirror_update(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %129, label %9

9:                                                ; preds = %1, %126
  %10 = phi ptr [ %127, %126 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !38
  %13 = and i32 %12, 6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %126, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %17 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %2, ptr noundef nonnull %17, i8 noundef zeroext 0) #14
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call ptr @BLI_findstring(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 40) #14
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %126, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %11, align 4, !tbaa !38
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 8
  %31 = load float, ptr %30, align 8, !tbaa !64
  %32 = fneg float %31
  %33 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 8
  store float %32, ptr %33, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 8, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !64
  %36 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 8, i64 1
  store float %35, ptr %36, align 4, !tbaa !64
  %37 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 8, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 8, i64 2
  store float %38, ptr %39, align 8, !tbaa !64
  %40 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 19
  %41 = load float, ptr %40, align 4, !tbaa !78
  %42 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 19
  store float %41, ptr %42, align 4, !tbaa !78
  %43 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 6
  %44 = load float, ptr %43, align 8, !tbaa !65
  %45 = fneg float %44
  %46 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 6
  store float %45, ptr %46, align 8, !tbaa !65
  %47 = load ptr, ptr %5, align 8, !tbaa !55
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %72, label %50

50:                                               ; preds = %29, %69
  %51 = phi ptr [ %70, %69 ], [ %48, %29 ]
  %52 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = icmp eq ptr %53, %23
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 9
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 7
  %62 = load float, ptr %33, align 4, !tbaa !64
  store float %62, ptr %61, align 4, !tbaa !64
  %63 = load float, ptr %36, align 4, !tbaa !64
  %64 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 7, i64 1
  store float %63, ptr %64, align 4, !tbaa !64
  %65 = load float, ptr %39, align 4, !tbaa !64
  %66 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 7, i64 2
  store float %65, ptr %66, align 4, !tbaa !64
  %67 = load float, ptr %40, align 4, !tbaa !78
  %68 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 18
  store float %67, ptr %68, align 8, !tbaa !79
  br label %69

69:                                               ; preds = %50, %55, %60
  %70 = load ptr, ptr %51, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %50, !llvm.loop !80

72:                                               ; preds = %69, %29, %25
  %73 = and i32 %26, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 7
  %77 = load float, ptr %76, align 4, !tbaa !64
  %78 = fneg float %77
  %79 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 7
  store float %78, ptr %79, align 4, !tbaa !64
  %80 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 7, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !64
  %82 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 7, i64 1
  store float %81, ptr %82, align 4, !tbaa !64
  %83 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 7, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !64
  %85 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 7, i64 2
  store float %84, ptr %85, align 4, !tbaa !64
  %86 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 18
  %87 = load float, ptr %86, align 8, !tbaa !79
  %88 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 18
  store float %87, ptr %88, align 8, !tbaa !79
  %89 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 6
  %90 = load float, ptr %89, align 8, !tbaa !65
  %91 = fneg float %90
  %92 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 6
  store float %91, ptr %92, align 8, !tbaa !65
  %93 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !43
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %75
  %97 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 9
  %98 = load i32, ptr %97, align 4, !tbaa !38
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 8
  store float %78, ptr %102, align 4, !tbaa !64
  %103 = load float, ptr %82, align 4, !tbaa !64
  %104 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 8, i64 1
  store float %103, ptr %104, align 4, !tbaa !64
  %105 = load float, ptr %85, align 4, !tbaa !64
  %106 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 8, i64 2
  store float %105, ptr %106, align 4, !tbaa !64
  %107 = load float, ptr %86, align 8, !tbaa !79
  %108 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 19
  store float %107, ptr %108, align 4, !tbaa !78
  br label %109

109:                                              ; preds = %75, %96, %101, %72
  %110 = and i32 %26, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 11
  %114 = load float, ptr %113, align 4, !tbaa !81
  %115 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 11
  store float %114, ptr %115, align 4, !tbaa !81
  %116 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 6
  %117 = load float, ptr %116, align 8, !tbaa !65
  %118 = fneg float %117
  %119 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 6
  store float %118, ptr %119, align 8, !tbaa !65
  %120 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 13
  %121 = load float, ptr %120, align 4, !tbaa !82
  %122 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 13
  store float %121, ptr %122, align 4, !tbaa !82
  %123 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 15
  %124 = load float, ptr %123, align 4, !tbaa !83
  %125 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 15
  store float %124, ptr %125, align 4, !tbaa !83
  br label %126

126:                                              ; preds = %9, %109, %112, %22
  %127 = load ptr, ptr %10, align 8, !tbaa !34
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %9, !llvm.loop !84

129:                                              ; preds = %126, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_boneList(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %121, label %7

7:                                                ; preds = %4, %115
  %8 = phi ptr [ %119, %115 ], [ %5, %4 ]
  %9 = phi ptr [ %118, %115 ], [ null, %4 ]
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 184, ptr noundef nonnull @.str) #14
  %12 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 3
  store ptr %2, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 5
  %14 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 5
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #14
  %16 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  store i32 %17, ptr %18, align 4, !tbaa !38
  %19 = and i32 %17, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %7
  %22 = or i32 %17, 4
  store i32 %22, ptr %18, align 4, !tbaa !38
  %23 = load ptr, ptr %12, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  %25 = and i32 %17, 16
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !38
  %31 = or i32 %30, 4
  store i32 %31, ptr %29, align 4, !tbaa !38
  %32 = load i32, ptr %18, align 4, !tbaa !38
  %33 = and i32 %32, -3
  br label %44

34:                                               ; preds = %21
  %35 = or i32 %17, 6
  br label %44

36:                                               ; preds = %7
  %37 = load ptr, ptr %12, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  %39 = and i32 %17, 16
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %40, %38
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = and i32 %17, -4
  br label %44

44:                                               ; preds = %34, %28, %42
  %45 = phi i32 [ %43, %42 ], [ %33, %28 ], [ %35, %34 ]
  store i32 %45, ptr %18, align 4, !tbaa !38
  br label %46

46:                                               ; preds = %44, %36
  %47 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 7
  %48 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 11
  %49 = load float, ptr %48, align 4, !tbaa !64
  store float %49, ptr %47, align 4, !tbaa !64
  %50 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 11, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !64
  %52 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 7, i64 1
  store float %51, ptr %52, align 4, !tbaa !64
  %53 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 11, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !64
  %55 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 7, i64 2
  store float %54, ptr %55, align 4, !tbaa !64
  %56 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8
  %57 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 12
  %58 = load float, ptr %57, align 4, !tbaa !64
  store float %58, ptr %56, align 4, !tbaa !64
  %59 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 12, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !64
  %61 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8, i64 1
  store float %60, ptr %61, align 4, !tbaa !64
  %62 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 12, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !64
  %64 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8, i64 2
  store float %63, ptr %64, align 4, !tbaa !64
  %65 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 14
  %66 = load float, ptr %65, align 4, !tbaa !86
  %67 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 6
  store float %66, ptr %67, align 8, !tbaa !65
  %68 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 18
  %69 = load float, ptr %68, align 4, !tbaa !87
  %70 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 14
  store float %69, ptr %70, align 8, !tbaa !88
  %71 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 15
  %72 = load float, ptr %71, align 8, !tbaa !89
  %73 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 11
  store float %72, ptr %73, align 4, !tbaa !81
  %74 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 16
  %75 = load float, ptr %74, align 4, !tbaa !90
  %76 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 12
  store float %75, ptr %76, align 8, !tbaa !91
  %77 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 17
  %78 = load float, ptr %77, align 8, !tbaa !92
  %79 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 13
  store float %78, ptr %79, align 4, !tbaa !82
  %80 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 19
  %81 = load float, ptr %80, align 8, !tbaa !93
  %82 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 15
  store float %81, ptr %82, align 4, !tbaa !83
  %83 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 20
  %84 = load float, ptr %83, align 4, !tbaa !94
  %85 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 16
  store float %84, ptr %85, align 8, !tbaa !95
  %86 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 21
  %87 = load float, ptr %86, align 8, !tbaa !96
  %88 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 17
  store float %87, ptr %88, align 4, !tbaa !97
  %89 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 22
  %90 = load float, ptr %89, align 4, !tbaa !98
  %91 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 18
  store float %90, ptr %91, align 8, !tbaa !79
  %92 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 23
  %93 = load float, ptr %92, align 8, !tbaa !99
  %94 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 19
  store float %93, ptr %94, align 4, !tbaa !78
  %95 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 26
  %96 = load i16, ptr %95, align 4, !tbaa !100
  %97 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 21
  store i16 %96, ptr %97, align 4, !tbaa !101
  %98 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 25
  %99 = load i32, ptr %98, align 8, !tbaa !102
  %100 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 10
  store i32 %99, ptr %100, align 8, !tbaa !68
  %101 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !103
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %46
  %105 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %102) #14
  %106 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 2
  store ptr %105, ptr %106, align 8, !tbaa !54
  br label %107

107:                                              ; preds = %104, %46
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %11) #14
  %108 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !51
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = tail call ptr @make_boneList(ptr noundef %0, ptr noundef nonnull %108, ptr noundef %11, ptr noundef %3)
  %113 = icmp eq ptr %112, null
  %114 = select i1 %113, ptr %9, ptr %112
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi ptr [ %9, %107 ], [ %114, %111 ]
  %117 = icmp eq ptr %8, %3
  %118 = select i1 %117, ptr %11, ptr %116
  %119 = load ptr, ptr %8, align 8, !tbaa !34
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %7, !llvm.loop !104

121:                                              ; preds = %115, %4
  %122 = phi ptr [ null, %4 ], [ %118, %115 ]
  ret ptr %122
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_from_edit(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BKE_armature_bonelist_free(ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %11, %72
  %14 = phi ptr [ %9, %11 ], [ %34, %72 ]
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7
  %16 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !64
  %18 = load float, ptr %15, align 4, !tbaa !64
  %19 = fsub float %17, %18
  %20 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !64
  %22 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !64
  %24 = fsub float %21, %23
  %25 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !64
  %27 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !64
  %29 = fsub float %26, %28
  %30 = fmul float %24, %24
  %31 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %31)
  %33 = tail call float @sqrtf(float noundef %32) #14
  %34 = load ptr, ptr %14, align 8, !tbaa !107
  %35 = fcmp ugt float %33, 0x3EB0C6F7A0000000
  br i1 %35, label %72, label %36

36:                                               ; preds = %13
  %37 = load ptr, ptr %7, align 8, !tbaa !55
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  br label %42

42:                                               ; preds = %40, %49
  %43 = phi ptr [ %38, %40 ], [ %50, %49 ]
  %44 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = icmp eq ptr %45, %14
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %41, align 8, !tbaa !43
  store ptr %48, ptr %44, align 8, !tbaa !43
  br label %49

49:                                               ; preds = %42, %47
  %50 = load ptr, ptr %43, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %42, !llvm.loop !108

52:                                               ; preds = %49, %36
  %53 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !109
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 5
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load ptr, ptr %12, align 8, !tbaa !47
  %61 = icmp eq ptr %60, %14
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store ptr null, ptr %12, align 8, !tbaa !47
  br label %63

63:                                               ; preds = %62, %59
  %64 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  tail call void @IDP_FreeProperty(ptr noundef nonnull %65) #14
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %69 = load ptr, ptr %64, align 8, !tbaa !54
  tail call void %68(ptr noundef %69) #14
  br label %70

70:                                               ; preds = %63, %67
  %71 = load ptr, ptr %7, align 8, !tbaa !55
  tail call void @BLI_freelinkN(ptr noundef %71, ptr noundef nonnull %14) #14
  br label %72

72:                                               ; preds = %70, %13
  %73 = icmp eq ptr %34, null
  br i1 %73, label %74, label %13, !llvm.loop !111

74:                                               ; preds = %72, %1
  %75 = load ptr, ptr %7, align 8, !tbaa !55
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %156, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  br label %80

80:                                               ; preds = %78, %153
  %81 = phi ptr [ %76, %78 ], [ %154, %153 ]
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %83 = tail call ptr %82(i64 noundef 328, ptr noundef nonnull @.str.2) #14
  %84 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 4
  store ptr %83, ptr %84, align 8, !tbaa !112
  %85 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 5
  %86 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 5
  %87 = tail call ptr @BLI_strncpy(ptr noundef nonnull %85, ptr noundef nonnull %86, i64 noundef 64) #14
  %88 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 11
  %89 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 7
  %90 = load float, ptr %89, align 4, !tbaa !64
  store float %90, ptr %88, align 4, !tbaa !64
  %91 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 7, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !64
  %93 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 11, i64 1
  store float %92, ptr %93, align 4, !tbaa !64
  %94 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 7, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !64
  %96 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 11, i64 2
  store float %95, ptr %96, align 4, !tbaa !64
  %97 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 12
  %98 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 8
  %99 = load float, ptr %98, align 4, !tbaa !64
  store float %99, ptr %97, align 4, !tbaa !64
  %100 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 8, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !64
  %102 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 12, i64 1
  store float %101, ptr %102, align 4, !tbaa !64
  %103 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 8, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !64
  %105 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 12, i64 2
  store float %104, ptr %105, align 4, !tbaa !64
  %106 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 6
  %107 = load float, ptr %106, align 8, !tbaa !65
  %108 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 14
  store float %107, ptr %108, align 4, !tbaa !86
  %109 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 9
  %110 = load i32, ptr %109, align 4, !tbaa !38
  %111 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 10
  store i32 %110, ptr %111, align 8, !tbaa !85
  %112 = load ptr, ptr %79, align 8, !tbaa !47
  %113 = icmp eq ptr %81, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %80
  store ptr %83, ptr %6, align 8, !tbaa !105
  br label %115

115:                                              ; preds = %114, %80
  %116 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 6
  store float 0.000000e+00, ptr %116, align 8, !tbaa !113
  %117 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 12
  %118 = load float, ptr %117, align 8, !tbaa !91
  %119 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 16
  store float %118, ptr %119, align 4, !tbaa !90
  %120 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 11
  %121 = load float, ptr %120, align 4, !tbaa !81
  %122 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 15
  store float %121, ptr %122, align 8, !tbaa !89
  %123 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 13
  %124 = load float, ptr %123, align 4, !tbaa !82
  %125 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 17
  store float %124, ptr %125, align 8, !tbaa !92
  %126 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 15
  %127 = load float, ptr %126, align 4, !tbaa !83
  %128 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 19
  store float %127, ptr %128, align 8, !tbaa !93
  %129 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 16
  %130 = load float, ptr %129, align 8, !tbaa !95
  %131 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 20
  store float %130, ptr %131, align 4, !tbaa !94
  %132 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 17
  %133 = load float, ptr %132, align 4, !tbaa !97
  %134 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 21
  store float %133, ptr %134, align 8, !tbaa !96
  %135 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 18
  %136 = load float, ptr %135, align 8, !tbaa !79
  %137 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 22
  store float %136, ptr %137, align 4, !tbaa !98
  %138 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 19
  %139 = load float, ptr %138, align 4, !tbaa !78
  %140 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 23
  store float %139, ptr %140, align 8, !tbaa !99
  %141 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 21
  %142 = load i16, ptr %141, align 4, !tbaa !101
  %143 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 26
  store i16 %142, ptr %143, align 4, !tbaa !100
  %144 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 10
  %145 = load i32, ptr %144, align 8, !tbaa !68
  %146 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 25
  store i32 %145, ptr %146, align 8, !tbaa !102
  %147 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !54
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %115
  %151 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %148) #14
  %152 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 2
  store ptr %151, ptr %152, align 8, !tbaa !103
  br label %153

153:                                              ; preds = %115, %150
  %154 = load ptr, ptr %81, align 8, !tbaa !34
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %80, !llvm.loop !114

156:                                              ; preds = %153, %74
  %157 = load ptr, ptr %7, align 8, !tbaa !55
  %158 = load ptr, ptr %157, align 8, !tbaa !34
  %159 = icmp eq ptr %158, null
  br i1 %159, label %250, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds float, ptr %2, i64 1
  %162 = getelementptr inbounds float, ptr %2, i64 2
  br label %163

163:                                              ; preds = %160, %247
  %164 = phi ptr [ %158, %160 ], [ %248, %247 ]
  %165 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !112
  %167 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !43
  %169 = icmp eq ptr %168, null
  br i1 %169, label %228, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.EditBone, ptr %168, i64 0, i32 4
  %172 = load ptr, ptr %171, align 8, !tbaa !112
  %173 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 3
  store ptr %172, ptr %173, align 8, !tbaa !115
  %174 = getelementptr inbounds %struct.Bone, ptr %172, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %174, ptr noundef %166) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  %175 = load ptr, ptr %167, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  %176 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 8
  %177 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7
  %178 = load float, ptr %176, align 4, !tbaa !64
  %179 = load float, ptr %177, align 4, !tbaa !64
  %180 = fsub float %178, %179
  store float %180, ptr %2, align 4, !tbaa !64
  %181 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 8, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !64
  %183 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !64
  %185 = fsub float %182, %184
  store float %185, ptr %161, align 4, !tbaa !64
  %186 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 8, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !64
  %188 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !64
  %190 = fsub float %187, %189
  store float %190, ptr %162, align 4, !tbaa !64
  %191 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 6
  %192 = load float, ptr %191, align 8, !tbaa !65
  call void @vec_roll_to_mat3(ptr noundef nonnull %2, float noundef %192, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  %193 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %194 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 7
  %195 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 7
  %196 = load ptr, ptr %167, align 8, !tbaa !43
  %197 = getelementptr inbounds %struct.EditBone, ptr %196, i64 0, i32 8
  %198 = load float, ptr %195, align 4, !tbaa !64
  %199 = load float, ptr %197, align 4, !tbaa !64
  %200 = fsub float %198, %199
  store float %200, ptr %194, align 4, !tbaa !64
  %201 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 7, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !64
  %203 = getelementptr inbounds %struct.EditBone, ptr %196, i64 0, i32 8, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !64
  %205 = fsub float %202, %204
  %206 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 7, i64 1
  store float %205, ptr %206, align 4, !tbaa !64
  %207 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 7, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !64
  %209 = getelementptr inbounds %struct.EditBone, ptr %196, i64 0, i32 8, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !64
  %211 = fsub float %208, %210
  %212 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 7, i64 2
  store float %211, ptr %212, align 4, !tbaa !64
  %213 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 8
  %214 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 8
  %215 = load float, ptr %214, align 4, !tbaa !64
  %216 = load float, ptr %197, align 4, !tbaa !64
  %217 = fsub float %215, %216
  store float %217, ptr %213, align 4, !tbaa !64
  %218 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 8, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !64
  %220 = load float, ptr %203, align 4, !tbaa !64
  %221 = fsub float %219, %220
  %222 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 8, i64 1
  store float %221, ptr %222, align 4, !tbaa !64
  %223 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 8, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !64
  %225 = load float, ptr %209, align 4, !tbaa !64
  %226 = fsub float %224, %225
  %227 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 8, i64 2
  store float %226, ptr %227, align 4, !tbaa !64
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %194) #14
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %213) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #14
  br label %247

228:                                              ; preds = %163
  %229 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 7
  %230 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 7
  %231 = load float, ptr %230, align 4, !tbaa !64
  store float %231, ptr %229, align 4, !tbaa !64
  %232 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 7, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !64
  %234 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 7, i64 1
  store float %233, ptr %234, align 4, !tbaa !64
  %235 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 7, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !64
  %237 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 7, i64 2
  store float %236, ptr %237, align 4, !tbaa !64
  %238 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 8
  %239 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 8
  %240 = load float, ptr %239, align 4, !tbaa !64
  store float %240, ptr %238, align 4, !tbaa !64
  %241 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 8, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !64
  %243 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 8, i64 1
  store float %242, ptr %243, align 4, !tbaa !64
  %244 = getelementptr inbounds %struct.EditBone, ptr %164, i64 0, i32 8, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !64
  %246 = getelementptr inbounds %struct.Bone, ptr %166, i64 0, i32 8, i64 2
  store float %245, ptr %246, align 4, !tbaa !64
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %166) #14
  br label %247

247:                                              ; preds = %170, %228
  %248 = load ptr, ptr %164, align 8, !tbaa !34
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %163, !llvm.loop !116

250:                                              ; preds = %247, %156
  %251 = load ptr, ptr %7, align 8, !tbaa !55
  call fastcc void @fix_bonelist_roll(ptr noundef nonnull %5, ptr noundef %251)
  %252 = load ptr, ptr @G, align 8, !tbaa !117
  %253 = getelementptr inbounds %struct.Main, ptr %252, i64 0, i32 13
  %254 = load ptr, ptr %253, align 8, !tbaa !34
  %255 = icmp eq ptr %254, null
  br i1 %255, label %265, label %256

256:                                              ; preds = %250, %262
  %257 = phi ptr [ %263, %262 ], [ %254, %250 ]
  %258 = getelementptr inbounds %struct.Object, ptr %257, i64 0, i32 19
  %259 = load ptr, ptr %258, align 8, !tbaa !74
  %260 = icmp eq ptr %259, %0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  call void @BKE_pose_rebuild(ptr noundef nonnull %257, ptr noundef %0) #14
  br label %262

262:                                              ; preds = %256, %261
  %263 = load ptr, ptr %257, align 8, !tbaa !34
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %256, !llvm.loop !118

265:                                              ; preds = %262, %250
  call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #14
  ret void
}

declare void @BKE_armature_bonelist_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @fix_bonelist_roll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = getelementptr inbounds float, ptr %3, i64 2
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  br label %15

15:                                               ; preds = %10, %53
  %16 = phi ptr [ %8, %10 ], [ %55, %53 ]
  %17 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  call void @BKE_armature_where_is_bone(ptr noundef nonnull %16, ptr noundef %18) #14
  br label %19

19:                                               ; preds = %23, %15
  %20 = phi ptr [ %1, %15 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = icmp eq ptr %25, %16
  br i1 %26, label %27, label %19, !llvm.loop !119

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %28 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 8
  %29 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 7
  %30 = load float, ptr %28, align 4, !tbaa !64
  %31 = load float, ptr %29, align 4, !tbaa !64
  %32 = fsub float %30, %31
  store float %32, ptr %3, align 4, !tbaa !64
  %33 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 8, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !64
  %35 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 7, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !64
  %37 = fsub float %34, %36
  store float %37, ptr %11, align 4, !tbaa !64
  %38 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 8, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !64
  %40 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 7, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !64
  %42 = fsub float %39, %41
  store float %42, ptr %12, align 4, !tbaa !64
  %43 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 6
  %44 = load float, ptr %43, align 8, !tbaa !65
  call void @vec_roll_to_mat3(ptr noundef nonnull %3, float noundef %44, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  %45 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 13
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %45) #14
  %46 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %4) #14
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #14
  %47 = load float, ptr %13, align 8, !tbaa !64
  %48 = load float, ptr %14, align 16, !tbaa !64
  %49 = call float @atan2f(float noundef %47, float noundef %48) #14
  %50 = fneg float %49
  %51 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 6
  store float %50, ptr %51, align 8, !tbaa !113
  %52 = load ptr, ptr %17, align 8, !tbaa !115
  call void @BKE_armature_where_is_bone(ptr noundef nonnull %16, ptr noundef %52) #14
  br label %53

53:                                               ; preds = %19, %27
  %54 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 4
  call fastcc void @fix_bonelist_roll(ptr noundef nonnull %54, ptr noundef %1)
  %55 = load ptr, ptr %16, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %15, !llvm.loop !120

57:                                               ; preds = %53, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  ret void
}

declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_edit_free(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %11) #14
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = load ptr, ptr %10, align 8, !tbaa !54
  tail call void %14(ptr noundef %15) #14
  br label %16

16:                                               ; preds = %8, %13
  %17 = load ptr, ptr %9, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !121

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BLI_freelistN(ptr noundef %20) #14
  br label %21

21:                                               ; preds = %19, %5
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %23 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void %22(ptr noundef %23) #14
  store ptr null, ptr %2, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  store ptr null, ptr %24, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_to_edit(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %11) #14
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = load ptr, ptr %10, align 8, !tbaa !54
  tail call void %14(ptr noundef %15) #14
  br label %16

16:                                               ; preds = %13, %8
  %17 = load ptr, ptr %9, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !121

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BLI_freelistN(ptr noundef %20) #14
  br label %21

21:                                               ; preds = %19, %5
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %23 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void %22(ptr noundef %23) #14
  store ptr null, ptr %2, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  store ptr null, ptr %24, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %1, %21
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = tail call ptr %26(i64 noundef 16, ptr noundef nonnull @.str.3) #14
  store ptr %27, ptr %2, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = tail call ptr @make_boneList(ptr noundef %27, ptr noundef nonnull %28, ptr noundef null, ptr noundef %30)
  %32 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @undo_push_armature(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_armature_edit, ptr noundef nonnull @free_undoBones, ptr noundef nonnull @undoBones_to_editBones, ptr noundef nonnull @editBones_to_undoBones, ptr noundef null) #14
  ret void
}

declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @get_armature_edit(ptr noundef %0) #3 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !122
  %7 = icmp eq i16 %6, 25
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @free_undoBones(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.UndoArmature, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %7, %14 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  tail call void @IDP_FreeProperty(ptr noundef nonnull %9) #14
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %13 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void %12(ptr noundef %13) #14
  br label %14

14:                                               ; preds = %11, %5
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %6) #14
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %5, !llvm.loop !123

17:                                               ; preds = %14, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undoBones_to_editBones(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %10, %17 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %12) #14
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %16 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void %15(ptr noundef %16) #14
  br label %17

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %9) #14
  %19 = icmp eq ptr %10, null
  br i1 %19, label %20, label %8, !llvm.loop !123

20:                                               ; preds = %17, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %21 = load ptr, ptr %4, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.UndoArmature, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %37, %20
  %26 = load ptr, ptr %21, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %41

28:                                               ; preds = %20, %37
  %29 = phi ptr [ %39, %37 ], [ %23, %20 ]
  %30 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %31 = tail call ptr %30(ptr noundef nonnull %29) #14
  %32 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %33) #14
  store ptr %36, ptr %32, align 8, !tbaa !54
  br label %37

37:                                               ; preds = %35, %28
  %38 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 4
  store ptr %31, ptr %38, align 8, !tbaa !112
  tail call void @BLI_addtail(ptr noundef %21, ptr noundef %31) #14
  %39 = load ptr, ptr %29, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %25, label %28, !llvm.loop !124

41:                                               ; preds = %25, %49
  %42 = phi ptr [ %50, %49 ], [ %26, %25 ]
  %43 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !112
  store ptr %48, ptr %43, align 8, !tbaa !43
  br label %49

49:                                               ; preds = %46, %41
  %50 = load ptr, ptr %42, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !125

52:                                               ; preds = %49, %25
  %53 = load ptr, ptr %0, align 8, !tbaa !126
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.EditBone, ptr %53, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !112
  br label %58

58:                                               ; preds = %52, %55
  %59 = phi ptr [ %57, %55 ], [ null, %52 ]
  %60 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 6
  store ptr %59, ptr %60, align 8, !tbaa !47
  %61 = load ptr, ptr %4, align 8, !tbaa !55
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %58, %64
  %65 = phi ptr [ %67, %64 ], [ %62, %58 ]
  %66 = getelementptr inbounds %struct.EditBone, ptr %65, i64 0, i32 4
  store ptr null, ptr %66, align 8, !tbaa !112
  %67 = load ptr, ptr %65, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %64, !llvm.loop !128

69:                                               ; preds = %64, %58
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @editBones_to_undoBones(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.4) #14
  %5 = getelementptr inbounds %struct.UndoArmature, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %22, %2
  %11 = load ptr, ptr %5, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %26

13:                                               ; preds = %2, %22
  %14 = phi ptr [ %24, %22 ], [ %8, %2 ]
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %16 = tail call ptr %15(ptr noundef nonnull %14) #14
  %17 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %18) #14
  store ptr %21, ptr %17, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %20, %13
  %23 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 4
  store ptr %16, ptr %23, align 8, !tbaa !112
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %16) #14
  %24 = load ptr, ptr %14, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %10, label %13, !llvm.loop !124

26:                                               ; preds = %10, %34
  %27 = phi ptr [ %35, %34 ], [ %11, %10 ]
  %28 = getelementptr inbounds %struct.EditBone, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  store ptr %33, ptr %28, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %31, %26
  %35 = load ptr, ptr %27, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !125

37:                                               ; preds = %34, %10
  %38 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !112
  store ptr %43, ptr %4, align 8, !tbaa !126
  br label %44

44:                                               ; preds = %41, %37
  %45 = load ptr, ptr %5, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %50, %47 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 4
  store ptr null, ptr %49, align 8, !tbaa !112
  %50 = load ptr, ptr %48, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %47, !llvm.loop !128

52:                                               ; preds = %47, %44
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_armature_ebone_selectflag_get(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = and i32 %7, 5
  %12 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 2
  %16 = or disjoint i32 %15, %11
  br label %21

17:                                               ; preds = %5, %1
  %18 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = and i32 %19, 7
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %16, %10 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_selectflag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = and i32 %1, 7
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = and i32 %9, -8
  store i32 %13, ptr %8, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = and i32 %15, -5
  store i32 %16, ptr %14, align 4, !tbaa !38
  %17 = load i32, ptr %8, align 4, !tbaa !38
  %18 = or i32 %17, %3
  store i32 %18, ptr %8, align 4, !tbaa !38
  %19 = shl i32 %1, 1
  %20 = and i32 %19, 4
  %21 = load i32, ptr %14, align 4, !tbaa !38
  %22 = or i32 %21, %20
  store i32 %22, ptr %14, align 4, !tbaa !38
  br label %28

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !38
  %26 = and i32 %25, -8
  %27 = or disjoint i32 %26, %3
  store i32 %27, ptr %24, align 4, !tbaa !38
  br label %28

28:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_selectflag_enable(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  %8 = and i32 %4, 16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = or i32 %4, %1
  %13 = and i32 %12, 7
  %14 = and i32 %4, -8
  store i32 %14, ptr %3, align 4, !tbaa !38
  %15 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !38
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 4, !tbaa !38
  %18 = load i32, ptr %3, align 4, !tbaa !38
  %19 = or i32 %18, %13
  store i32 %19, ptr %3, align 4, !tbaa !38
  %20 = shl i32 %12, 1
  %21 = and i32 %20, 4
  %22 = load i32, ptr %15, align 4, !tbaa !38
  %23 = or i32 %22, %21
  store i32 %23, ptr %15, align 4, !tbaa !38
  br label %27

24:                                               ; preds = %2
  %25 = and i32 %1, 7
  %26 = or i32 %4, %25
  store i32 %26, ptr %3, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %11, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_selectflag_disable(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  %7 = and i32 %6, 7
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  %11 = and i32 %4, 16
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  %14 = and i32 %4, -8
  br i1 %13, label %25, label %15

15:                                               ; preds = %2
  store i32 %14, ptr %3, align 4, !tbaa !38
  %16 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = and i32 %17, -5
  store i32 %18, ptr %16, align 4, !tbaa !38
  %19 = load i32, ptr %3, align 4, !tbaa !38
  %20 = or i32 %19, %7
  store i32 %20, ptr %3, align 4, !tbaa !38
  %21 = shl i32 %6, 1
  %22 = and i32 %21, 4
  %23 = load i32, ptr %16, align 4, !tbaa !38
  %24 = or i32 %23, %22
  store i32 %24, ptr %16, align 4, !tbaa !38
  br label %27

25:                                               ; preds = %2
  %26 = or disjoint i32 %7, %14
  store i32 %26, ptr %3, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %15, %25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = and i32 %10, -8
  store i32 %14, ptr %9, align 4, !tbaa !38
  %15 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !38
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 4, !tbaa !38
  %18 = load i32, ptr %9, align 4, !tbaa !38
  %19 = or i32 %18, %4
  store i32 %19, ptr %9, align 4, !tbaa !38
  %20 = shl nuw nsw i32 %4, 1
  %21 = and i32 %20, 4
  %22 = load i32, ptr %15, align 4, !tbaa !38
  %23 = or i32 %22, %21
  store i32 %23, ptr %15, align 4, !tbaa !38
  br label %29

24:                                               ; preds = %8, %2
  %25 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 4, !tbaa !38
  %27 = and i32 %26, -8
  %28 = or disjoint i32 %27, %4
  store i32 %28, ptr %25, align 4, !tbaa !38
  br label %29

29:                                               ; preds = %13, %24
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare void @BKE_armature_where_is_bone(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !41, i64 132}
!39 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !40, i64 104, !36, i64 108, !36, i64 120, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !42, i64 180}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!39, !35, i64 24}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !35, i64 176}
!48 = !{!"bArmature", !49, i64 0, !35, i64 120, !50, i64 128, !50, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !42, i64 208, !42, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!49 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!50 = !{!"ListBase", !35, i64 0, !35, i64 8}
!51 = !{!52, !35, i64 32}
!52 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !50, i64 32, !36, i64 48, !40, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !41, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !41, i64 320, !42, i64 324, !36, i64 326}
!53 = !{!52, !35, i64 0}
!54 = !{!39, !35, i64 16}
!55 = !{!48, !35, i64 160}
!56 = distinct !{!56, !45, !46}
!57 = distinct !{!57, !45, !46}
!58 = !{!41, !41, i64 0}
!59 = distinct !{!59, !45, !46}
!60 = distinct !{!60, !45, !46}
!61 = distinct !{!61, !45, !46}
!62 = distinct !{!62, !45, !46}
!63 = distinct !{!63, !45, !46}
!64 = !{!40, !40, i64 0}
!65 = !{!39, !40, i64 104}
!66 = !{!48, !41, i64 192}
!67 = !{!48, !41, i64 216}
!68 = !{!39, !41, i64 136}
!69 = distinct !{!69, !45, !46}
!70 = distinct !{!70, !45, !46}
!71 = distinct !{!71, !45, !46}
!72 = distinct !{!72, !45, !46}
!73 = distinct !{!73, !45, !46}
!74 = !{!75, !35, i64 296}
!75 = !{!"Object", !49, i64 0, !35, i64 120, !35, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !76, i64 312, !35, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !41, i64 432, !41, i64 436, !35, i64 440, !35, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !40, i64 1048, !40, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !40, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !77, i64 1304, !77, i64 1312, !41, i64 1320, !41, i64 1324, !50, i64 1328, !50, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !50, i64 1400, !35, i64 1416}
!76 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!77 = !{!"long", !36, i64 0}
!78 = !{!39, !40, i64 172}
!79 = !{!39, !40, i64 168}
!80 = distinct !{!80, !45, !46}
!81 = !{!39, !40, i64 140}
!82 = !{!39, !40, i64 148}
!83 = !{!39, !40, i64 156}
!84 = distinct !{!84, !45, !46}
!85 = !{!52, !41, i64 176}
!86 = !{!52, !40, i64 268}
!87 = !{!52, !40, i64 284}
!88 = !{!39, !40, i64 152}
!89 = !{!52, !40, i64 272}
!90 = !{!52, !40, i64 276}
!91 = !{!39, !40, i64 144}
!92 = !{!52, !40, i64 280}
!93 = !{!52, !40, i64 288}
!94 = !{!52, !40, i64 292}
!95 = !{!39, !40, i64 160}
!96 = !{!52, !40, i64 296}
!97 = !{!39, !40, i64 164}
!98 = !{!52, !40, i64 300}
!99 = !{!52, !40, i64 304}
!100 = !{!52, !42, i64 324}
!101 = !{!39, !42, i64 180}
!102 = !{!52, !41, i64 320}
!103 = !{!52, !35, i64 16}
!104 = distinct !{!104, !45, !46}
!105 = !{!48, !35, i64 168}
!106 = !{!50, !35, i64 0}
!107 = !{!39, !35, i64 0}
!108 = distinct !{!108, !45, !46}
!109 = !{!110, !41, i64 2100}
!110 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !50, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!111 = distinct !{!111, !45, !46}
!112 = !{!39, !35, i64 32}
!113 = !{!52, !40, i64 112}
!114 = distinct !{!114, !45, !46}
!115 = !{!52, !35, i64 24}
!116 = distinct !{!116, !45, !46}
!117 = !{!110, !35, i64 0}
!118 = distinct !{!118, !45, !46}
!119 = distinct !{!119, !45, !46}
!120 = distinct !{!120, !45, !46}
!121 = distinct !{!121, !45, !46}
!122 = !{!75, !42, i64 136}
!123 = distinct !{!123, !45, !46}
!124 = distinct !{!124, !45, !46}
!125 = distinct !{!125, !45, !46}
!126 = !{!127, !35, i64 0}
!127 = !{!"UndoArmature", !35, i64 0, !50, i64 8}
!128 = distinct !{!128, !45, !46}
