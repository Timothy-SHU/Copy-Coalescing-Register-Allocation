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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_sync_selection(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1, %33
  %5 = phi ptr [ %34, %33 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  %11 = and i32 %7, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = or i32 %7, 2
  br label %26

24:                                               ; preds = %17
  %25 = and i32 %7, -2097155
  br label %26

26:                                               ; preds = %22, %24, %13, %10
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ], [ %7, %13 ], [ %7, %10 ]
  %28 = and i32 %27, 6
  %29 = icmp eq i32 %28, 6
  %30 = and i32 %27, -2
  %31 = zext i1 %29 to i32
  %32 = or disjoint i32 %30, %31
  store i32 %32, ptr %6, align 4, !tbaa !38
  br label %33

33:                                               ; preds = %26, %4
  %34 = load ptr, ptr %5, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %4, !llvm.loop !44

36:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_validate_active(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %5, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bone_looper(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %13, %6 ], [ %1, %4 ]
  %8 = phi i32 [ %15, %6 ], [ 0, %4 ]
  %9 = tail call i32 %3(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2) #17
  %10 = getelementptr inbounds %struct.Bone, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call i32 @bone_looper(ptr noundef %0, ptr noundef %11, ptr noundef %2, ptr noundef %3) #18
  %13 = load ptr, ptr %7, align 8, !tbaa !52
  %14 = add i32 %9, %8
  %15 = add i32 %14, %12
  %16 = icmp eq ptr %13, null
  br i1 %16, label %17, label %6

17:                                               ; preds = %6, %4
  %18 = phi i32 [ 0, %4 ], [ %15, %6 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bone_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  tail call void @IDP_FreeProperty(ptr noundef nonnull %9) #17
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %13 = load ptr, ptr %8, align 8, !tbaa !53
  tail call void %12(ptr noundef %13) #17
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @BLI_freelinkN(ptr noundef %16, ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_edit_bone_remove(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
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
  br i1 %21, label %22, label %9, !llvm.loop !55

22:                                               ; preds = %19, %2
  tail call void @bone_free(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br i1 %9, label %10, label %3, !llvm.loop !56

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ED_armature_bone_find_shared_parent(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %9

6:                                                ; preds = %20
  br i1 %3, label %41, label %7

7:                                                ; preds = %6
  %8 = zext i32 %1 to i64
  br label %23

9:                                                ; preds = %4, %20
  %10 = phi i64 [ 0, %4 ], [ %21, %20 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 4
  store i32 0, ptr %16, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !58

20:                                               ; preds = %14, %9
  %21 = add nuw nsw i64 %10, 1
  %22 = icmp eq i64 %21, %5
  br i1 %22, label %6, label %9, !llvm.loop !59

23:                                               ; preds = %7, %38
  %24 = phi i64 [ 0, %7 ], [ %39, %38 ]
  %25 = getelementptr inbounds ptr, ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %23, %30
  %31 = phi ptr [ %36, %30 ], [ %28, %23 ]
  %32 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !57
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30, !llvm.loop !60

38:                                               ; preds = %30, %23
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %41, label %23, !llvm.loop !61

41:                                               ; preds = %38, %2, %6
  %42 = load ptr, ptr %0, align 8, !tbaa !34
  br label %43

43:                                               ; preds = %48, %41
  %44 = phi ptr [ %42, %41 ], [ %46, %48 ]
  %45 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.EditBone, ptr %46, i64 0, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !57
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %52, label %43, !llvm.loop !62

52:                                               ; preds = %43, %48
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_ebone_to_mat3(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !63
  call void @vec_roll_to_mat3(ptr noundef nonnull %3, float noundef %7, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !64 {
  %4 = load float, ptr %1, align 4, !tbaa !65
  %5 = load float, ptr %2, align 4, !tbaa !65
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !65
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !65
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !65
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare void @vec_roll_to_mat3(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_ebone_to_mat4(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @ED_armature_ebone_to_mat3(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %3) #17
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !66 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  store float %3, ptr %0, align 4, !tbaa !65
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_ebone_from_mat3(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %7 = tail call fastcc float @len_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  call void @mat3_to_vec_roll(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %3, float noundef %7) #18
  %8 = load float, ptr %4, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  store float %8, ptr %9, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !67 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: optsize
declare void @mat3_to_vec_roll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !68 {
  %5 = load float, ptr %1, align 4, !tbaa !65
  %6 = load float, ptr %2, align 4, !tbaa !65
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !65
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !65
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !65
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_ebone_from_mat4(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef %1) #17
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #18
  call void @ED_armature_ebone_from_mat3(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !69 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = load float, ptr %0, align 4, !tbaa !65
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !65
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !65
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !70 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = load float, ptr %0, align 4, !tbaa !65
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !65
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !65
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_armature_bone_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 40) #17
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_armature_bone_get_mirrored(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %3, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  %7 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call ptr @ED_armature_bone_find_name(ptr noundef %0, ptr noundef nonnull %3) #18
  br label %11

11:                                               ; preds = %5, %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret ptr %12
}

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @armature_select_mirrored(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %13

13:                                               ; preds = %11, %33
  %14 = phi ptr [ %9, %11 ], [ %34, %33 ]
  %15 = load i32, ptr %12, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !73
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !38
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %7, align 8, !tbaa !54
  %27 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %26, ptr noundef nonnull %14) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.EditBone, ptr %27, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !38
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !38
  br label %33

33:                                               ; preds = %13, %25, %29, %20
  %34 = load ptr, ptr %14, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %13, !llvm.loop !74

36:                                               ; preds = %33, %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @armature_tag_select_mirrored(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = and i32 %9, -129
  store i32 %10, ptr %8, align 4, !tbaa !38
  %11 = load ptr, ptr %7, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !75

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !71
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %5
  br i1 %18, label %68, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %21

21:                                               ; preds = %19, %44
  %22 = phi ptr [ %4, %19 ], [ %45, %44 ]
  %23 = load i32, ptr %20, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !73
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !38
  %31 = and i32 %30, 7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 8, !tbaa !54
  %35 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %34, ptr noundef nonnull %22) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !38
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = or i32 %39, 128
  store i32 %43, ptr %38, align 4, !tbaa !38
  br label %44

44:                                               ; preds = %33, %37, %42, %21, %28
  %45 = load ptr, ptr %22, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !76

47:                                               ; preds = %44
  %48 = load ptr, ptr %2, align 8, !tbaa !54
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %47, %65
  %52 = phi ptr [ %66, %65 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !38
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %2, align 8, !tbaa !54
  %59 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %58, ptr noundef nonnull %52) #18
  %60 = getelementptr inbounds %struct.EditBone, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !38
  %62 = and i32 %61, 7
  %63 = load i32, ptr %53, align 4, !tbaa !38
  %64 = or i32 %63, %62
  store i32 %64, ptr %53, align 4, !tbaa !38
  br label %65

65:                                               ; preds = %51, %57
  %66 = load ptr, ptr %52, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %51, !llvm.loop !77

68:                                               ; preds = %65, %13, %1, %47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @armature_tag_unselect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
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
  br i1 %16, label %17, label %6, !llvm.loop !78

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @transform_armature_mirror_update(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %118, label %8

8:                                                ; preds = %1, %115
  %9 = phi ptr [ %116, %115 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = and i32 %11, 6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %115, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %4, align 8, !tbaa !54
  %16 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %15, ptr noundef nonnull %9) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %115, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %10, align 4, !tbaa !38
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 8
  %24 = load float, ptr %23, align 8, !tbaa !65
  %25 = fneg float %24
  %26 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 8
  store float %25, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 8, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !65
  %29 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 8, i64 1
  store float %28, ptr %29, align 4, !tbaa !65
  %30 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 8, i64 2
  %31 = load float, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 8, i64 2
  store float %31, ptr %32, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 19
  %34 = load float, ptr %33, align 4, !tbaa !83
  %35 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 19
  store float %34, ptr %35, align 4, !tbaa !83
  %36 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 6
  %37 = load float, ptr %36, align 8, !tbaa !63
  %38 = fneg float %37
  %39 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 6
  store float %38, ptr %39, align 8, !tbaa !63
  %40 = load ptr, ptr %4, align 8, !tbaa !54
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %22, %57
  %44 = phi ptr [ %58, %57 ], [ %41, %22 ]
  %45 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  %47 = icmp eq ptr %46, %16
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %54, ptr noundef nonnull %26) #18
  %55 = load float, ptr %33, align 4, !tbaa !83
  %56 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 18
  store float %55, ptr %56, align 8, !tbaa !84
  br label %57

57:                                               ; preds = %43, %48, %53
  %58 = load ptr, ptr %44, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %43, !llvm.loop !85

60:                                               ; preds = %57
  %61 = load i32, ptr %10, align 4, !tbaa !38
  br label %62

62:                                               ; preds = %60, %22, %18
  %63 = phi i32 [ %61, %60 ], [ %19, %22 ], [ %19, %18 ]
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 7
  %68 = load float, ptr %67, align 4, !tbaa !65
  %69 = fneg float %68
  %70 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 7
  store float %69, ptr %70, align 4, !tbaa !65
  %71 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 7, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !65
  %73 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 7, i64 1
  store float %72, ptr %73, align 4, !tbaa !65
  %74 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 7, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !65
  %76 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 7, i64 2
  store float %75, ptr %76, align 4, !tbaa !65
  %77 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 18
  %78 = load float, ptr %77, align 8, !tbaa !84
  %79 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 18
  store float %78, ptr %79, align 8, !tbaa !84
  %80 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 6
  %81 = load float, ptr %80, align 8, !tbaa !63
  %82 = fneg float %81
  %83 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 6
  store float %82, ptr %83, align 8, !tbaa !63
  %84 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !43
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %66
  %88 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !38
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %70) #18
  %94 = load float, ptr %77, align 8, !tbaa !84
  %95 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 19
  store float %94, ptr %95, align 4, !tbaa !83
  %96 = load i32, ptr %10, align 4, !tbaa !38
  br label %97

97:                                               ; preds = %66, %87, %92, %62
  %98 = phi i32 [ %63, %66 ], [ %63, %87 ], [ %96, %92 ], [ %63, %62 ]
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 11
  %103 = load float, ptr %102, align 4, !tbaa !86
  %104 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 11
  store float %103, ptr %104, align 4, !tbaa !86
  %105 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 6
  %106 = load float, ptr %105, align 8, !tbaa !63
  %107 = fneg float %106
  %108 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 6
  store float %107, ptr %108, align 8, !tbaa !63
  %109 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 13
  %110 = load float, ptr %109, align 4, !tbaa !87
  %111 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 13
  store float %110, ptr %111, align 4, !tbaa !87
  %112 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 15
  %113 = load float, ptr %112, align 4, !tbaa !88
  %114 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 15
  store float %113, ptr %114, align 4, !tbaa !88
  br label %115

115:                                              ; preds = %8, %97, %101, %14
  %116 = load ptr, ptr %9, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %8, !llvm.loop !89

118:                                              ; preds = %115, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_boneList(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %89, label %7

7:                                                ; preds = %4, %83
  %8 = phi ptr [ %87, %83 ], [ %5, %4 ]
  %9 = phi ptr [ %86, %83 ], [ null, %4 ]
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 184, ptr noundef nonnull @.str) #17
  %12 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 3
  store ptr %2, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 5
  %14 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 5
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !90
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
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %48) #18
  %49 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8
  %50 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %50) #18
  %51 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 14
  %52 = load float, ptr %51, align 4, !tbaa !91
  %53 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 6
  store float %52, ptr %53, align 8, !tbaa !63
  %54 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 15
  %55 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 11
  %56 = load <4 x float>, ptr %54, align 8, !tbaa !65
  store <4 x float> %56, ptr %55, align 4, !tbaa !65
  %57 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 19
  %58 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 15
  %59 = load <4 x float>, ptr %57, align 8, !tbaa !65
  store <4 x float> %59, ptr %58, align 4, !tbaa !65
  %60 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 23
  %61 = load float, ptr %60, align 8, !tbaa !92
  %62 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 19
  store float %61, ptr %62, align 4, !tbaa !83
  %63 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 26
  %64 = load i16, ptr %63, align 4, !tbaa !93
  %65 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 21
  store i16 %64, ptr %65, align 4, !tbaa !94
  %66 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 25
  %67 = load i32, ptr %66, align 8, !tbaa !95
  %68 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 10
  store i32 %67, ptr %68, align 8, !tbaa !73
  %69 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !96
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %46
  %73 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %70) #17
  %74 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !53
  br label %75

75:                                               ; preds = %72, %46
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %11) #17
  %76 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @make_boneList(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull %11, ptr noundef %3) #18
  %81 = icmp eq ptr %80, null
  %82 = select i1 %81, ptr %9, ptr %80
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi ptr [ %9, %75 ], [ %82, %79 ]
  %85 = icmp eq ptr %8, %3
  %86 = select i1 %85, ptr %11, ptr %84
  %87 = load ptr, ptr %8, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %7, !llvm.loop !97

89:                                               ; preds = %83, %4
  %90 = phi ptr [ null, %4 ], [ %86, %83 ]
  ret ptr %90
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_from_edit(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x [3 x float]], align 16
  %4 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BKE_armature_bonelist_free(ptr noundef nonnull %4) #17
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %135, label %10

10:                                               ; preds = %1, %41
  %11 = phi ptr [ %15, %41 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 7
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8
  %14 = tail call fastcc float @len_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %15 = load ptr, ptr %11, align 8, !tbaa !99
  %16 = fcmp ugt float %14, 0x3EB0C6F7A0000000
  br i1 %16, label %41, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %6, align 8, !tbaa !54
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 3
  br label %23

23:                                               ; preds = %21, %30
  %24 = phi ptr [ %19, %21 ], [ %31, %30 ]
  %25 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, %11
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %22, align 8, !tbaa !43
  store ptr %29, ptr %25, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %23, %28
  %31 = load ptr, ptr %24, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !llvm.loop !100

33:                                               ; preds = %30, %17
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !101
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 5
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %38) #18
  br label %40

40:                                               ; preds = %37, %33
  tail call void @bone_free(ptr noundef %0, ptr noundef nonnull %11) #18
  br label %41

41:                                               ; preds = %40, %10
  %42 = icmp eq ptr %15, null
  br i1 %42, label %43, label %10, !llvm.loop !103

43:                                               ; preds = %41
  %44 = load ptr, ptr %6, align 8, !tbaa !54
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %135, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  br label %49

49:                                               ; preds = %47, %96
  %50 = phi ptr [ %45, %47 ], [ %97, %96 ]
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = tail call ptr %51(i64 noundef 328, ptr noundef nonnull @.str.2) #17
  %53 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !104
  %54 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 5
  %55 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 5
  %56 = tail call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef nonnull %55, i64 noundef 64) #17
  %57 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 11
  %58 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %57, ptr noundef nonnull %58) #18
  %59 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 12
  %60 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %60) #18
  %61 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 6
  %62 = load float, ptr %61, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 14
  store float %62, ptr %63, align 4, !tbaa !91
  %64 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 9
  %65 = load i32, ptr %64, align 4, !tbaa !38
  %66 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 10
  store i32 %65, ptr %66, align 8, !tbaa !90
  %67 = load ptr, ptr %48, align 8, !tbaa !46
  %68 = icmp eq ptr %50, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  store ptr %52, ptr %5, align 8, !tbaa !98
  br label %70

70:                                               ; preds = %69, %49
  %71 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 6
  store float 0.000000e+00, ptr %71, align 8, !tbaa !105
  %72 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 11
  %73 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 15
  %74 = load <2 x float>, ptr %72, align 4, !tbaa !65
  store <2 x float> %74, ptr %73, align 8, !tbaa !65
  %75 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 13
  %76 = load float, ptr %75, align 4, !tbaa !87
  %77 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 17
  store float %76, ptr %77, align 8, !tbaa !106
  %78 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 15
  %79 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 19
  %80 = load <4 x float>, ptr %78, align 4, !tbaa !65
  store <4 x float> %80, ptr %79, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 19
  %82 = load float, ptr %81, align 4, !tbaa !83
  %83 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 23
  store float %82, ptr %83, align 8, !tbaa !92
  %84 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 21
  %85 = load i16, ptr %84, align 4, !tbaa !94
  %86 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 26
  store i16 %85, ptr %86, align 4, !tbaa !93
  %87 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 10
  %88 = load i32, ptr %87, align 8, !tbaa !73
  %89 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 25
  store i32 %88, ptr %89, align 8, !tbaa !95
  %90 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !53
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %70
  %94 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %91) #17
  %95 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !96
  br label %96

96:                                               ; preds = %70, %93
  %97 = load ptr, ptr %50, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %49, !llvm.loop !107

99:                                               ; preds = %96
  %100 = load ptr, ptr %6, align 8, !tbaa !54
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %135, label %103

103:                                              ; preds = %99, %130
  %104 = phi ptr [ %131, %130 ], [ %101, %99 ]
  %105 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !104
  %107 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !43
  %109 = icmp eq ptr %108, null
  br i1 %109, label %125, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.EditBone, ptr %108, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !104
  %113 = getelementptr inbounds %struct.Bone, ptr %106, i64 0, i32 3
  store ptr %112, ptr %113, align 8, !tbaa !108
  %114 = getelementptr inbounds %struct.Bone, ptr %112, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %114, ptr noundef %106) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  %115 = load ptr, ptr %107, align 8, !tbaa !43
  call void @ED_armature_ebone_to_mat3(ptr noundef %115, ptr noundef nonnull %2) #18
  %116 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %117 = getelementptr inbounds %struct.Bone, ptr %106, i64 0, i32 7
  %118 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  %119 = load ptr, ptr %107, align 8, !tbaa !43
  %120 = getelementptr inbounds %struct.EditBone, ptr %119, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %117, ptr noundef nonnull %118, ptr noundef nonnull %120) #18
  %121 = getelementptr inbounds %struct.Bone, ptr %106, i64 0, i32 8
  %122 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 8
  %123 = load ptr, ptr %107, align 8, !tbaa !43
  %124 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %121, ptr noundef nonnull %122, ptr noundef nonnull %124) #18
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %117) #17
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %121) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #19
  br label %130

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.Bone, ptr %106, i64 0, i32 7
  %127 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %126, ptr noundef nonnull %127) #18
  %128 = getelementptr inbounds %struct.Bone, ptr %106, i64 0, i32 8
  %129 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %128, ptr noundef nonnull %129) #18
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %106) #17
  br label %130

130:                                              ; preds = %110, %125
  %131 = load ptr, ptr %104, align 8, !tbaa !34
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %103, !llvm.loop !109

133:                                              ; preds = %130
  %134 = load ptr, ptr %6, align 8, !tbaa !54
  br label %135

135:                                              ; preds = %1, %43, %133, %99
  %136 = phi ptr [ %134, %133 ], [ %100, %99 ], [ %44, %43 ], [ %7, %1 ]
  call fastcc void @fix_bonelist_roll(ptr noundef nonnull %4, ptr noundef %136) #18
  %137 = load ptr, ptr @G, align 8, !tbaa !110
  %138 = getelementptr inbounds %struct.Main, ptr %137, i64 0, i32 13
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %135, %147
  %142 = phi ptr [ %148, %147 ], [ %139, %135 ]
  %143 = getelementptr inbounds %struct.Object, ptr %142, i64 0, i32 19
  %144 = load ptr, ptr %143, align 8, !tbaa !79
  %145 = icmp eq ptr %144, %0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  call void @BKE_pose_rebuild(ptr noundef nonnull %142, ptr noundef %0) #17
  br label %147

147:                                              ; preds = %141, %146
  %148 = load ptr, ptr %142, align 8, !tbaa !34
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %141, !llvm.loop !111

150:                                              ; preds = %147, %135
  call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #17
  ret void
}

; Function Attrs: optsize
declare void @BKE_armature_bonelist_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_bonelist_roll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !112 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #19
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  br label %12

12:                                               ; preds = %9, %33
  %13 = phi ptr [ %7, %9 ], [ %35, %33 ]
  %14 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  call void @BKE_armature_where_is_bone(ptr noundef nonnull %13, ptr noundef %15) #17
  br label %16

16:                                               ; preds = %20, %12
  %17 = phi ptr [ %1, %12 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, %13
  br i1 %23, label %24, label %16, !llvm.loop !113

24:                                               ; preds = %20
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %18, ptr noundef nonnull %3) #18
  %25 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 13
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %25) #17
  %26 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %3) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #17
  %27 = load float, ptr %10, align 8, !tbaa !65
  %28 = load float, ptr %11, align 16, !tbaa !65
  %29 = call float @atan2f(float noundef %27, float noundef %28) #17
  %30 = fneg float %29
  %31 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 6
  store float %30, ptr %31, align 8, !tbaa !105
  %32 = load ptr, ptr %14, align 8, !tbaa !108
  call void @BKE_armature_where_is_bone(ptr noundef nonnull %13, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %16, %24
  %34 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 4
  call fastcc void @fix_bonelist_roll(ptr noundef nonnull %34, ptr noundef %1) #18
  %35 = load ptr, ptr %13, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12, !llvm.loop !114

37:                                               ; preds = %33, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_edit_free(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %11) #17
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = load ptr, ptr %10, align 8, !tbaa !53
  tail call void %14(ptr noundef %15) #17
  br label %16

16:                                               ; preds = %8, %13
  %17 = load ptr, ptr %9, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !116

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8, !tbaa !54
  tail call void @BLI_freelistN(ptr noundef %20) #17
  %21 = load ptr, ptr %2, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi ptr [ %21, %19 ], [ %3, %5 ]
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef %23) #17
  store ptr null, ptr %2, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  store ptr null, ptr %25, align 8, !tbaa !46
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_to_edit(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @ED_armature_edit_free(ptr noundef %0) #18
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 16, ptr noundef nonnull @.str.3) #17
  %4 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = tail call ptr @make_boneList(ptr noundef %3, ptr noundef nonnull %5, ptr noundef null, ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_push_armature(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_armature_edit, ptr noundef nonnull @free_undoBones, ptr noundef nonnull @undoBones_to_editBones, ptr noundef nonnull @editBones_to_undoBones, ptr noundef null) #17
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @get_armature_edit(ptr noundef %0) #3 !PGOFuncName !117 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !118
  %7 = icmp eq i16 %6, 25
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_undoBones(ptr noundef %0) #3 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.UndoArmature, ptr %0, i64 0, i32 1
  tail call fastcc void @ED_armature_ebone_listbase_free(ptr noundef nonnull %2) #18
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %3(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @undoBones_to_editBones(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !120 {
  %4 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call fastcc void @ED_armature_ebone_listbase_free(ptr noundef %5) #18
  %6 = load ptr, ptr %4, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.UndoArmature, ptr %0, i64 0, i32 1
  tail call fastcc void @ED_armature_ebone_listbase_copy(ptr noundef %6, ptr noundef nonnull %7) #18
  %8 = load ptr, ptr %0, align 8, !tbaa !121
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 6
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %4, align 8, !tbaa !54
  tail call fastcc void @ED_armature_ebone_listbase_temp_clear(ptr noundef %16) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @editBones_to_undoBones(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !PGOFuncName !123 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.4) #17
  %5 = getelementptr inbounds %struct.UndoArmature, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  tail call fastcc void @ED_armature_ebone_listbase_copy(ptr noundef nonnull %5, ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  store ptr %13, ptr %4, align 8, !tbaa !121
  br label %14

14:                                               ; preds = %11, %2
  tail call fastcc void @ED_armature_ebone_listbase_temp_clear(ptr noundef nonnull %5) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_armature_ebone_selectflag_get(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %4, i1 true, i1 %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = and i32 %6, 5
  %12 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 2
  %16 = or disjoint i32 %15, %11
  br label %19

17:                                               ; preds = %1
  %18 = and i32 %6, 7
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %16, %10 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_selectflag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = and i32 %1, 7
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %6, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = and i32 %8, -8
  store i32 %13, ptr %7, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = and i32 %15, -5
  store i32 %16, ptr %14, align 4, !tbaa !38
  %17 = load i32, ptr %7, align 4, !tbaa !38
  %18 = or i32 %17, %3
  store i32 %18, ptr %7, align 4, !tbaa !38
  %19 = shl i32 %1, 1
  %20 = and i32 %19, 4
  %21 = load i32, ptr %14, align 4, !tbaa !38
  %22 = or i32 %21, %20
  store i32 %22, ptr %14, align 4, !tbaa !38
  br label %27

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %25 = and i32 %8, -8
  %26 = or disjoint i32 %25, %3
  store i32 %26, ptr %24, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_selectflag_enable(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = or i32 %4, %1
  tail call void @ED_armature_ebone_selectflag_set(ptr noundef %0, i32 noundef %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_selectflag_disable(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  tail call void @ED_armature_ebone_selectflag_set(ptr noundef %0, i32 noundef %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_armature_ebone_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i32 0, i32 7
  tail call void @ED_armature_ebone_selectflag_set(ptr noundef %0, i32 noundef %4) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !124 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #17
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !125 {
  %3 = load float, ptr %0, align 4, !tbaa !65
  %4 = load float, ptr %1, align 4, !tbaa !65
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !65
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: optsize
declare void @BKE_armature_where_is_bone(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_armature_ebone_listbase_free(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !115
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %6, %13 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  tail call void @IDP_FreeProperty(ptr noundef nonnull %8) #17
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %12 = load ptr, ptr %7, align 8, !tbaa !53
  tail call void %11(ptr noundef %12) #17
  br label %13

13:                                               ; preds = %10, %4
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %5) #17
  %15 = icmp eq ptr %6, null
  br i1 %15, label %16, label %4, !llvm.loop !127

16:                                               ; preds = %13, %1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #15 !PGOFuncName !128 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_armature_ebone_listbase_copy(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !129 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %17, %2
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %21

8:                                                ; preds = %2, %17
  %9 = phi ptr [ %19, %17 ], [ %3, %2 ]
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %11 = tail call ptr %10(ptr noundef nonnull %9) #17
  %12 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %13) #17
  store ptr %16, ptr %12, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %15, %8
  %18 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 4
  store ptr %11, ptr %18, align 8, !tbaa !104
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %11) #17
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %8, !llvm.loop !130

21:                                               ; preds = %5, %29
  %22 = phi ptr [ %30, %29 ], [ %6, %5 ]
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  store ptr %28, ptr %23, align 8, !tbaa !43
  br label %29

29:                                               ; preds = %21, %26
  %30 = load ptr, ptr %22, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !131

32:                                               ; preds = %29, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ED_armature_ebone_listbase_temp_clear(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !104
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !133

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !41, i64 132}
!39 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !40, i64 104, !36, i64 108, !36, i64 120, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !42, i64 180}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!39, !35, i64 24}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47, !35, i64 176}
!47 = !{!"bArmature", !48, i64 0, !35, i64 120, !49, i64 128, !49, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !42, i64 208, !42, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!48 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!51, !35, i64 32}
!51 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !49, i64 32, !36, i64 48, !40, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !41, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !41, i64 320, !42, i64 324, !36, i64 326}
!52 = !{!51, !35, i64 0}
!53 = !{!39, !35, i64 16}
!54 = !{!47, !35, i64 160}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !45}
!57 = !{!41, !41, i64 0}
!58 = distinct !{!58, !45}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = !{!39, !40, i64 104}
!64 = !{!"armature_utils.c:sub_v3_v3v3"}
!65 = !{!40, !40, i64 0}
!66 = !{!"armature_utils.c:copy_v3_v3"}
!67 = !{!"armature_utils.c:len_v3v3"}
!68 = !{!"armature_utils.c:madd_v3_v3v3fl"}
!69 = !{!"armature_utils.c:sub_v3_v3"}
!70 = !{!"armature_utils.c:add_v3_v3"}
!71 = !{!47, !41, i64 192}
!72 = !{!47, !41, i64 216}
!73 = !{!39, !41, i64 136}
!74 = distinct !{!74, !45}
!75 = distinct !{!75, !45}
!76 = distinct !{!76, !45}
!77 = distinct !{!77, !45}
!78 = distinct !{!78, !45}
!79 = !{!80, !35, i64 296}
!80 = !{!"Object", !48, i64 0, !35, i64 120, !35, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !81, i64 312, !35, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !41, i64 432, !41, i64 436, !35, i64 440, !35, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !40, i64 1048, !40, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !40, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !82, i64 1304, !82, i64 1312, !41, i64 1320, !41, i64 1324, !49, i64 1328, !49, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !49, i64 1400, !35, i64 1416}
!81 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!82 = !{!"long", !36, i64 0}
!83 = !{!39, !40, i64 172}
!84 = !{!39, !40, i64 168}
!85 = distinct !{!85, !45}
!86 = !{!39, !40, i64 140}
!87 = !{!39, !40, i64 148}
!88 = !{!39, !40, i64 156}
!89 = distinct !{!89, !45}
!90 = !{!51, !41, i64 176}
!91 = !{!51, !40, i64 268}
!92 = !{!51, !40, i64 304}
!93 = !{!51, !42, i64 324}
!94 = !{!39, !42, i64 180}
!95 = !{!51, !41, i64 320}
!96 = !{!51, !35, i64 16}
!97 = distinct !{!97, !45}
!98 = !{!47, !35, i64 168}
!99 = !{!39, !35, i64 0}
!100 = distinct !{!100, !45}
!101 = !{!102, !41, i64 2100}
!102 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !49, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!103 = distinct !{!103, !45}
!104 = !{!39, !35, i64 32}
!105 = !{!51, !40, i64 112}
!106 = !{!51, !40, i64 280}
!107 = distinct !{!107, !45}
!108 = !{!51, !35, i64 24}
!109 = distinct !{!109, !45}
!110 = !{!102, !35, i64 0}
!111 = distinct !{!111, !45}
!112 = !{!"armature_utils.c:fix_bonelist_roll"}
!113 = distinct !{!113, !45}
!114 = distinct !{!114, !45}
!115 = !{!49, !35, i64 0}
!116 = distinct !{!116, !45}
!117 = !{!"armature_utils.c:get_armature_edit"}
!118 = !{!80, !42, i64 136}
!119 = !{!"armature_utils.c:free_undoBones"}
!120 = !{!"armature_utils.c:undoBones_to_editBones"}
!121 = !{!122, !35, i64 0}
!122 = !{!"UndoArmature", !35, i64 0, !49, i64 8}
!123 = !{!"armature_utils.c:editBones_to_undoBones"}
!124 = !{!"armature_utils.c:len_v3"}
!125 = !{!"armature_utils.c:dot_v3v3"}
!126 = !{!"armature_utils.c:ED_armature_ebone_listbase_free"}
!127 = distinct !{!127, !45}
!128 = !{!"armature_utils.c:BLI_listbase_clear"}
!129 = !{!"armature_utils.c:ED_armature_ebone_listbase_copy"}
!130 = distinct !{!130, !45}
!131 = distinct !{!131, !45}
!132 = !{!"armature_utils.c:ED_armature_ebone_listbase_temp_clear"}
!133 = distinct !{!133, !45}
