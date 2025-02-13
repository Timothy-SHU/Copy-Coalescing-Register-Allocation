; ModuleID = 'blender/source/blender/blenkernel/intern/armature.c'
source_filename = "blender/source/blender/blenkernel/intern/armature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Mat4 = type { [4 x [4 x float]] }
%struct.DualQuat = type { [4 x float], [4 x float], [4 x [4 x float]], float }
%struct.bPoseChanDeform = type { ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.tSplineIK_Tree = type { ptr, ptr, i32, i8, i16, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.Path = type { ptr, i32, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"Fr\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Bk\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"dualquats\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"bPoseChanDeform\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"defnrToBone\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"defnrToIndex\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"new pose\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"BBone defmats\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"BBone dqs\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"failed to sync proxy armature because '%s' is missing pose channel '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Spline IK Binding\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"SplineIK Tree\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"SplineIK Chain\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Armature boundbox\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_armature_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21057, ptr noundef %1) #17
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 12
  store i16 3, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  store i32 2048, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 15
  store i32 1, ptr %6, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_armature_from_object(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !45
  %4 = icmp eq i16 %3, 25
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_bonelist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %12
  %5 = phi ptr [ %14, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  tail call void @IDP_FreeProperty(ptr noundef nonnull %7) #17
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %11 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void %10(ptr noundef %11) #17
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call void @BKE_armature_bonelist_free(ptr noundef nonnull %13) #18
  %14 = load ptr, ptr %5, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !54

16:                                               ; preds = %12, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BKE_armature_bonelist_free(ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #17
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %10 = load ptr, ptr %5, align 8, !tbaa !56
  tail call void %9(ptr noundef %10) #17
  store ptr null, ptr %5, align 8, !tbaa !56
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @freeSketch(ptr noundef nonnull %13) #17
  store ptr null, ptr %12, align 8, !tbaa !57
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #17
  store ptr null, ptr %17, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %16, %20, %1
  ret void
}

; Function Attrs: optsize
declare void @freeSketch(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !62
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #17
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %35, %32 ], [ %13, %11 ]
  %17 = phi i8 [ %34, %32 ], [ 0, %11 ]
  %18 = phi i8 [ %33, %32 ], [ 0, %11 ]
  %19 = icmp eq i8 %18, 0
  %20 = icmp eq i8 %17, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 %18, i8 1
  %31 = select i1 %29, i8 1, i8 %17
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !64

37:                                               ; preds = %32
  %38 = icmp ne i8 %34, 0
  %39 = icmp eq i8 %33, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #17
  br label %70

42:                                               ; preds = %15, %37
  %43 = phi i8 [ %33, %37 ], [ %18, %15 ]
  %44 = phi i1 [ %38, %37 ], [ true, %15 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_armature_copy(ptr noundef %0) #18
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  store i32 0, ptr %49, align 4, !tbaa !62
  %50 = load ptr, ptr %3, align 8, !tbaa !61
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %50, ptr noundef %48) #17
  %51 = load ptr, ptr %12, align 8, !tbaa !51
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %47, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  store ptr %48, ptr %55, align 8, !tbaa !50
  %63 = load i32, ptr %49, align 4, !tbaa !62
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %49, align 4, !tbaa !62
  %65 = load i32, ptr %7, align 4, !tbaa !62
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %7, align 4, !tbaa !62
  br label %67

67:                                               ; preds = %53, %62, %58
  %68 = load ptr, ptr %54, align 8, !tbaa !51
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !llvm.loop !65

70:                                               ; preds = %67, %11, %47, %41, %42, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_armature_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !51
  %3 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %6, %8 ], [ %16, %10 ]
  %12 = phi ptr [ %4, %8 ], [ %13, %10 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !66
  %15 = load ptr, ptr %9, align 8, !tbaa !67
  call fastcc void @copy_bonechildren(ptr noundef %13, ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %2) #18
  %16 = load ptr, ptr %11, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !68

18:                                               ; preds = %10
  %19 = load ptr, ptr %2, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ null, %1 ]
  %22 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %3
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_bonechildren(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !69 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store ptr %0, ptr %3, align 8, !tbaa !51
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %9) #17
  %13 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %15, ptr noundef nonnull %16) #17
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %24, %19 ], [ %17, %14 ]
  %21 = phi ptr [ %22, %19 ], [ %15, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.Bone, ptr %22, i64 0, i32 3
  store ptr %0, ptr %23, align 8, !tbaa !66
  tail call fastcc void @copy_bonechildren(ptr noundef %22, ptr noundef nonnull %20, ptr noundef %2, ptr noundef %3) #18
  %24 = load ptr, ptr %20, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !70

26:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_armature_find_bone_name(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @get_named_bone_bonechildren(ptr noundef nonnull %8, ptr noundef %1) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %6, label %13, !llvm.loop !71

13:                                               ; preds = %6, %10, %2
  %14 = phi ptr [ null, %2 ], [ null, %6 ], [ %11, %10 ]
  ret ptr %14
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_named_bone_bonechildren(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 5
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @get_named_bone_bonechildren(ptr noundef nonnull %10, ptr noundef %1) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %8, label %15, !llvm.loop !73

15:                                               ; preds = %8, %12, %2
  %16 = phi ptr [ %0, %2 ], [ null, %8 ], [ %13, %12 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @bone_autoside_name(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 16
  %7 = alloca [5 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %7, i8 0, i64 5, i1 false)
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %127, label %11

11:                                               ; preds = %5
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 64) #17
  %13 = call float @llvm.fabs.f32(float %3)
  %14 = fcmp ult float %13, 0x3E80000000000000
  switch i16 %2, label %37 [
    i16 2, label %15
    i16 1, label %26
  ]

15:                                               ; preds = %11
  br i1 %14, label %16, label %22

16:                                               ; preds = %15
  %17 = fcmp olt float %4, 0.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 7630658, ptr %7, align 4
  br label %50

19:                                               ; preds = %16
  %20 = fcmp ogt float %4, 0.000000e+00
  br i1 %20, label %21, label %127

21:                                               ; preds = %19
  store i32 7368532, ptr %7, align 4
  br label %50

22:                                               ; preds = %15
  %23 = fcmp olt float %3, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store i32 7630658, ptr %7, align 4
  br label %50

25:                                               ; preds = %22
  store i32 7368532, ptr %7, align 4
  br label %50

26:                                               ; preds = %11
  br i1 %14, label %27, label %33

27:                                               ; preds = %26
  %28 = fcmp olt float %4, 0.000000e+00
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false) #17
  br label %50

30:                                               ; preds = %27
  %31 = fcmp ogt float %4, 0.000000e+00
  br i1 %31, label %32, label %127

32:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false) #17
  br label %50

33:                                               ; preds = %26
  %34 = fcmp olt float %3, 0.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false) #17
  br label %50

36:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false) #17
  br label %50

37:                                               ; preds = %11
  br i1 %14, label %38, label %44

38:                                               ; preds = %37
  %39 = fcmp olt float %4, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  store i16 82, ptr %7, align 4
  br label %50

41:                                               ; preds = %38
  %42 = fcmp ogt float %4, 0.000000e+00
  br i1 %42, label %43, label %127

43:                                               ; preds = %41
  store i16 76, ptr %7, align 4
  br label %50

44:                                               ; preds = %37
  %45 = fcmp olt float %3, 0.000000e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i16 82, ptr %7, align 4
  br label %50

47:                                               ; preds = %44
  %48 = fcmp ogt float %3, 0.000000e+00
  br i1 %48, label %49, label %127

49:                                               ; preds = %47
  store i16 76, ptr %7, align 4
  br label %50

50:                                               ; preds = %35, %36, %29, %32, %46, %49, %40, %43, %21, %18, %25, %24
  %51 = icmp ugt i32 %9, 2
  br i1 %51, label %52, label %114

52:                                               ; preds = %50, %110
  %53 = phi i32 [ %112, %110 ], [ %9, %50 ]
  %54 = add i32 %53, -2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !74
  %58 = icmp eq i8 %57, 46
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = add i32 %53, -1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !74
  switch i8 %63, label %114 [
    i8 76, label %110
    i8 82, label %110
  ]

64:                                               ; preds = %52
  %65 = icmp eq i32 %53, 3
  br i1 %65, label %114, label %66

66:                                               ; preds = %64
  %67 = add i32 %53, -3
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !74
  %71 = icmp eq i8 %70, 46
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  switch i8 %57, label %114 [
    i8 70, label %73
    i8 66, label %79
  ]

73:                                               ; preds = %72
  %74 = add i32 %53, -1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !74
  %78 = icmp eq i8 %77, 114
  br i1 %78, label %110, label %114

79:                                               ; preds = %72
  %80 = add i32 %53, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !74
  %84 = icmp eq i8 %83, 107
  br i1 %84, label %110, label %114

85:                                               ; preds = %66
  %86 = icmp ugt i32 %53, 4
  br i1 %86, label %87, label %114

87:                                               ; preds = %85
  %88 = add i32 %53, -4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !74
  %92 = icmp eq i8 %91, 46
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  switch i8 %70, label %114 [
    i8 84, label %94
    i8 66, label %102
  ]

94:                                               ; preds = %93
  %95 = icmp eq i8 %57, 111
  br i1 %95, label %96, label %114

96:                                               ; preds = %94
  %97 = add i32 %53, -1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !74
  %101 = icmp eq i8 %100, 112
  br i1 %101, label %110, label %114

102:                                              ; preds = %93
  %103 = icmp eq i8 %57, 111
  br i1 %103, label %104, label %114

104:                                              ; preds = %102
  %105 = add i32 %53, -1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !74
  %109 = icmp eq i8 %108, 116
  br i1 %109, label %110, label %114

110:                                              ; preds = %96, %104, %73, %79, %59, %59
  %111 = phi ptr [ %56, %59 ], [ %56, %59 ], [ %69, %79 ], [ %69, %73 ], [ %90, %104 ], [ %90, %96 ]
  %112 = phi i32 [ %54, %59 ], [ %54, %59 ], [ %67, %79 ], [ %67, %73 ], [ %88, %104 ], [ %88, %96 ]
  store i8 0, ptr %111, align 1, !tbaa !74
  %113 = icmp ugt i32 %112, 2
  br i1 %113, label %52, label %114, !llvm.loop !75

114:                                              ; preds = %93, %72, %94, %96, %110, %64, %73, %59, %85, %87, %102, %104, %79, %50
  %115 = phi i32 [ %9, %50 ], [ %53, %93 ], [ %53, %72 ], [ %53, %94 ], [ %53, %96 ], [ %112, %110 ], [ %53, %64 ], [ %53, %73 ], [ %53, %59 ], [ %53, %85 ], [ %53, %87 ], [ %53, %102 ], [ %53, %104 ], [ %53, %79 ]
  %116 = sub i32 64, %115
  %117 = zext i32 %116 to i64
  %118 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #20
  %119 = add i64 %118, 1
  %120 = icmp ugt i64 %119, %117
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = zext i32 %115 to i64
  %123 = sub i64 %122, %118
  %124 = call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %123) #17
  br label %125

125:                                              ; preds = %121, %114
  %126 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  br label %127

127:                                              ; preds = %30, %47, %41, %19, %5, %125
  %128 = phi i32 [ 1, %125 ], [ 0, %5 ], [ 0, %19 ], [ 0, %41 ], [ 0, %47 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  ret i32 %128
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @b_bone_spline_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [33 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x [3 x float]], align 16
  %18 = alloca [3 x [3 x float]], align 16
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %12) #19
  %21 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 18
  %22 = load float, ptr %21, align 4, !tbaa !78
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %25) #17
  %26 = load float, ptr %6, align 4, !tbaa !79
  %27 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !79
  %29 = fsub float %26, %28
  %30 = call float @llvm.fabs.f32(float %29)
  %31 = fcmp ogt float %30, 0x3EB0C6F7A0000000
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !79
  %35 = fsub float %28, %34
  %36 = call float @llvm.fabs.f32(float %35)
  %37 = fcmp ogt float %36, 0x3EB0C6F7A0000000
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %24
  call void @size_to_mat4(ptr noundef nonnull %10, ptr noundef nonnull %6) #17
  %39 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %40 = load float, ptr %27, align 4, !tbaa !79
  %41 = fmul float %22, %40
  br label %42

42:                                               ; preds = %32, %38, %3
  %43 = phi float [ %22, %3 ], [ %41, %38 ], [ %22, %32 ]
  %44 = phi i1 [ true, %3 ], [ false, %38 ], [ true, %32 ]
  %45 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 20
  %46 = load float, ptr %45, align 4, !tbaa !80
  %47 = fmul float %43, %46
  %48 = fmul float %47, 0x3FD8FD5CC0000000
  %49 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 21
  %50 = load float, ptr %49, align 8, !tbaa !81
  %51 = fmul float %43, %50
  %52 = fmul float %51, 0x3FD8FD5CC0000000
  %53 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !82
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 13
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  br label %60

60:                                               ; preds = %42, %57
  %61 = phi ptr [ %59, %57 ], [ null, %42 ]
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !84
  br i1 %23, label %64, label %71

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29
  br i1 %44, label %67, label %66

66:                                               ; preds = %64
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %65) #17
  call void @normalize_m4(ptr noundef nonnull %9) #17
  br label %67

67:                                               ; preds = %64, %66
  %68 = phi ptr [ %9, %66 ], [ %65, %64 ]
  %69 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %68) #17
  %70 = icmp eq ptr %61, null
  br i1 %70, label %112, label %80

71:                                               ; preds = %60
  %72 = load ptr, ptr %19, align 8, !tbaa !76
  %73 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 13
  %74 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %73) #17
  %75 = icmp eq ptr %61, null
  br i1 %75, label %112, label %76

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #19
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !76
  %79 = getelementptr inbounds %struct.Bone, ptr %78, i64 0, i32 11
  br label %82

80:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #19
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 31
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi ptr [ %81, %80 ], [ %79, %76 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %83) #18
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %4) #17
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 12
  %85 = load ptr, ptr %84, align 8, !tbaa !76
  %86 = getelementptr inbounds %struct.Bone, ptr %85, i64 0, i32 26
  %87 = load i16, ptr %86, align 4, !tbaa !85
  %88 = icmp sgt i16 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !79
  %92 = fsub float %91, %43
  store float %92, ptr %90, align 4, !tbaa !79
  br label %93

93:                                               ; preds = %89, %82
  %94 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #18
  %95 = fneg float %48
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %95) #18
  %96 = load ptr, ptr %84, align 8, !tbaa !76
  %97 = getelementptr inbounds %struct.Bone, ptr %96, i64 0, i32 26
  %98 = load i16, ptr %97, align 4, !tbaa !85
  %99 = icmp eq i16 %98, 1
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 29
  %102 = getelementptr inbounds %struct.Bone, ptr %96, i64 0, i32 13
  %103 = select i1 %23, ptr %101, ptr %102
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %103) #17
  call void @copy_m3_m4(ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  call void @vec_roll_to_mat3(ptr noundef nonnull %4, float noundef 0.000000e+00, ptr noundef nonnull %7) #18
  %104 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %15, ptr noundef nonnull %7) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  %105 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  %106 = load float, ptr %105, align 8, !tbaa !79
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %108 = load float, ptr %107, align 16, !tbaa !79
  %109 = call float @atan2f(float noundef %106, float noundef %108) #17
  br label %110

110:                                              ; preds = %100, %93
  %111 = phi float [ %109, %100 ], [ 0.000000e+00, %93 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #19
  br label %115

112:                                              ; preds = %71, %67
  store float 0.000000e+00, ptr %4, align 4, !tbaa !79
  %113 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %48, ptr %113, align 4, !tbaa !79
  %114 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %114, align 4, !tbaa !79
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi float [ %111, %110 ], [ 0.000000e+00, %112 ]
  %117 = icmp eq ptr %63, null
  br i1 %117, label %152, label %118

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #19
  br i1 %23, label %123, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 12
  %121 = load ptr, ptr %120, align 8, !tbaa !76
  %122 = getelementptr inbounds %struct.Bone, ptr %121, i64 0, i32 12
  br label %125

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 32
  br label %125

125:                                              ; preds = %123, %119
  %126 = phi ptr [ %124, %123 ], [ %122, %119 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %126) #18
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #17
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 12
  %128 = load ptr, ptr %127, align 8, !tbaa !76
  %129 = getelementptr inbounds %struct.Bone, ptr %128, i64 0, i32 26
  %130 = load i16, ptr %129, align 4, !tbaa !85
  %131 = icmp sgt i16 %130, 1
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !79
  %135 = fsub float %134, %43
  store float %135, ptr %133, align 4, !tbaa !79
  br label %136

136:                                              ; preds = %125, %132
  %137 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #18
  br i1 %23, label %141, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr %127, align 8, !tbaa !76
  %140 = getelementptr inbounds %struct.Bone, ptr %139, i64 0, i32 13
  br label %143

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 29
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi ptr [ %142, %141 ], [ %140, %138 ]
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %8, ptr noundef nonnull %144) #17
  call void @copy_m3_m4(ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  call void @vec_roll_to_mat3(ptr noundef nonnull %5, float noundef 0.000000e+00, ptr noundef nonnull %7) #18
  %145 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %18, ptr noundef nonnull %7) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %17) #17
  %146 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  %147 = load float, ptr %146, align 8, !tbaa !79
  %148 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %149 = load float, ptr %148, align 16, !tbaa !79
  %150 = call float @atan2f(float noundef %147, float noundef %149) #17
  %151 = fneg float %52
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %151) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #19
  br label %156

152:                                              ; preds = %115
  store float 0.000000e+00, ptr %5, align 4, !tbaa !79
  %153 = fneg float %52
  %154 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %153, ptr %154, align 4, !tbaa !79
  %155 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %155, align 4, !tbaa !79
  br label %156

156:                                              ; preds = %152, %143
  %157 = phi float [ %150, %143 ], [ 0.000000e+00, %152 ]
  %158 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 26
  %159 = load i16, ptr %158, align 4, !tbaa !85
  %160 = icmp sgt i16 %159, 32
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i16 32, ptr %158, align 4, !tbaa !85
  br label %162

162:                                              ; preds = %161, %156
  %163 = load float, ptr %4, align 4, !tbaa !79
  %164 = load float, ptr %5, align 4, !tbaa !79
  call void @BKE_curve_forward_diff_bezier(float noundef 0.000000e+00, float noundef %163, float noundef %164, float noundef 0.000000e+00, ptr noundef nonnull %12, i32 noundef 32, i32 noundef 16) #17
  %165 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !79
  %167 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !79
  %169 = fadd float %43, %168
  %170 = getelementptr inbounds float, ptr %12, i64 1
  call void @BKE_curve_forward_diff_bezier(float noundef 0.000000e+00, float noundef %166, float noundef %169, float noundef %43, ptr noundef nonnull %170, i32 noundef 32, i32 noundef 16) #17
  %171 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !79
  %173 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !79
  %175 = getelementptr inbounds float, ptr %12, i64 2
  call void @BKE_curve_forward_diff_bezier(float noundef 0.000000e+00, float noundef %172, float noundef %174, float noundef 0.000000e+00, ptr noundef nonnull %175, i32 noundef 32, i32 noundef 16) #17
  %176 = fsub float %157, %116
  %177 = call float @llvm.fmuladd.f32(float %176, float 0x3FD8FD5CC0000000, float %116)
  %178 = call float @llvm.fmuladd.f32(float %176, float 0xBFD8FD5CC0000000, float %157)
  %179 = getelementptr inbounds float, ptr %12, i64 3
  call void @BKE_curve_forward_diff_bezier(float noundef %116, float noundef %177, float noundef %178, float noundef %157, ptr noundef nonnull %179, i32 noundef 32, i32 noundef 16) #17
  %180 = load i16, ptr %158, align 4, !tbaa !85
  %181 = sext i16 %180 to i32
  call fastcc void @equalize_bezier(ptr noundef nonnull %12, i32 noundef %181) #18
  %182 = load i16, ptr %158, align 4, !tbaa !85
  %183 = icmp sgt i16 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %162, %193
  %185 = phi i64 [ %194, %193 ], [ 0, %162 ]
  %186 = phi ptr [ %187, %193 ], [ %12, %162 ]
  %187 = getelementptr inbounds float, ptr %186, i64 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %187, ptr noundef nonnull %186) #18
  %188 = getelementptr inbounds float, ptr %186, i64 3
  %189 = load float, ptr %188, align 4, !tbaa !79
  call void @vec_roll_to_mat3(ptr noundef nonnull %4, float noundef %189, ptr noundef nonnull %7) #18
  %190 = getelementptr inbounds %struct.Mat4, ptr %2, i64 %185
  call void @copy_m4_m3(ptr noundef %190, ptr noundef nonnull %7) #17
  %191 = getelementptr inbounds [4 x [4 x float]], ptr %190, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %191, ptr noundef nonnull %186) #18
  br i1 %44, label %193, label %192

192:                                              ; preds = %184
  call void @_va_mul_m4_series_4(ptr noundef %190, ptr noundef nonnull %11, ptr noundef %190, ptr noundef nonnull %10) #17
  br label %193

193:                                              ; preds = %184, %192
  %194 = add nuw nsw i64 %185, 1
  %195 = load i16, ptr %158, align 4, !tbaa !85
  %196 = sext i16 %195 to i64
  %197 = icmp slt i64 %194, %196
  br i1 %197, label %184, label %198, !llvm.loop !86

198:                                              ; preds = %193, %162
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !87 {
  %3 = load float, ptr %1, align 4, !tbaa !79
  store float %3, ptr %0, align 4, !tbaa !79
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !88 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !89 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !79
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vec_roll_to_mat3(ptr nocapture noundef readonly %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #18
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %4, float noundef %1, ptr noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @equalize_bezier(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = alloca [33 x float], align 16
  %4 = alloca [33 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %4) #19
  store float 0.000000e+00, ptr %3, align 16, !tbaa !79
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi float [ 0.000000e+00, %2 ], [ %12, %5 ]
  %7 = phi i64 [ 0, %2 ], [ %13, %5 ]
  %8 = phi ptr [ %0, %2 ], [ %10, %5 ]
  %9 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %7
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef %8) #17
  %10 = getelementptr inbounds float, ptr %8, i64 4
  %11 = call fastcc float @len_v3v3(ptr noundef %8, ptr noundef nonnull %10) #18
  %12 = fadd float %6, %11
  %13 = add nuw nsw i64 %7, 1
  %14 = getelementptr inbounds [33 x float], ptr %3, i64 0, i64 %13
  store float %12, ptr %14, align 4, !tbaa !79
  %15 = icmp eq i64 %13, 32
  br i1 %15, label %16, label %5, !llvm.loop !91

16:                                               ; preds = %5
  %17 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 32
  call void @copy_qt_qt(ptr noundef nonnull %17, ptr noundef nonnull %10) #17
  %18 = getelementptr inbounds [33 x float], ptr %3, i64 0, i64 32
  %19 = load float, ptr %18, align 16, !tbaa !79
  %20 = sitofp i32 %1 to float
  %21 = fdiv float %19, %20
  %22 = getelementptr inbounds float, ptr %0, i64 4
  %23 = icmp sgt i32 %1, 1
  br i1 %23, label %24, label %87

24:                                               ; preds = %16, %44
  %25 = phi ptr [ %85, %44 ], [ %22, %16 ]
  %26 = phi i32 [ %45, %44 ], [ 1, %16 ]
  %27 = phi i32 [ %84, %44 ], [ 1, %16 ]
  %28 = phi ptr [ %25, %44 ], [ %0, %16 ]
  %29 = sitofp i32 %27 to float
  %30 = fmul float %21, %29
  %31 = icmp slt i32 %26, 32
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = sext i32 %26 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i64 [ %33, %32 ], [ %40, %39 ]
  %36 = getelementptr inbounds [33 x float], ptr %3, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !79
  %38 = fcmp ult float %30, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = add nsw i64 %35, 1
  %41 = icmp eq i64 %40, 32
  br i1 %41, label %44, label %34, !llvm.loop !92

42:                                               ; preds = %34
  %43 = trunc i64 %35 to i32
  br label %44

44:                                               ; preds = %39, %42, %24
  %45 = phi i32 [ %26, %24 ], [ %43, %42 ], [ 32, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [33 x float], ptr %3, i64 0, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !79
  %49 = add nsw i32 %45, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [33 x float], ptr %3, i64 0, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !79
  %53 = fsub float %48, %52
  %54 = fsub float %48, %30
  %55 = fdiv float %54, %53
  %56 = fsub float 1.000000e+00, %55
  %57 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %50
  %58 = load float, ptr %57, align 16, !tbaa !79
  %59 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %46
  %60 = load float, ptr %59, align 16, !tbaa !79
  %61 = fmul float %60, %56
  %62 = call float @llvm.fmuladd.f32(float %55, float %58, float %61)
  store float %62, ptr %25, align 4, !tbaa !79
  %63 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %50, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !79
  %65 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %46, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !79
  %67 = fmul float %56, %66
  %68 = call float @llvm.fmuladd.f32(float %55, float %64, float %67)
  %69 = getelementptr inbounds float, ptr %28, i64 5
  store float %68, ptr %69, align 4, !tbaa !79
  %70 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %50, i64 2
  %71 = load float, ptr %70, align 8, !tbaa !79
  %72 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %46, i64 2
  %73 = load float, ptr %72, align 8, !tbaa !79
  %74 = fmul float %56, %73
  %75 = call float @llvm.fmuladd.f32(float %55, float %71, float %74)
  %76 = getelementptr inbounds float, ptr %28, i64 6
  store float %75, ptr %76, align 4, !tbaa !79
  %77 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %50, i64 3
  %78 = load float, ptr %77, align 4, !tbaa !79
  %79 = getelementptr inbounds [33 x [4 x float]], ptr %4, i64 0, i64 %46, i64 3
  %80 = load float, ptr %79, align 4, !tbaa !79
  %81 = fmul float %56, %80
  %82 = call float @llvm.fmuladd.f32(float %55, float %78, float %81)
  %83 = getelementptr inbounds float, ptr %28, i64 7
  store float %82, ptr %83, align 4, !tbaa !79
  %84 = add nuw nsw i32 %27, 1
  %85 = getelementptr inbounds float, ptr %25, i64 4
  %86 = icmp eq i32 %84, %1
  br i1 %86, label %87, label %24, !llvm.loop !93

87:                                               ; preds = %44, %16
  %88 = phi ptr [ %22, %16 ], [ %85, %44 ]
  call void @copy_qt_qt(ptr noundef nonnull %88, ptr noundef nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !94 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = load float, ptr %2, align 4, !tbaa !79
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !79
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @distfactor_to_bone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #10 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %1) #18
  %9 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1) #18
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %11 = call fastcc float @len_squared_v3(ptr noundef nonnull %8) #18
  %12 = fcmp olt float %10, 0.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef %0) #18
  br label %28

15:                                               ; preds = %6
  %16 = fcmp ogt float %10, %9
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call fastcc float @len_squared_v3v3(ptr noundef %2, ptr noundef %0) #18
  br label %28

19:                                               ; preds = %15
  %20 = fneg float %10
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %10, float %11)
  %22 = fcmp une float %9, 0.000000e+00
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = fdiv float %10, %9
  %25 = fsub float 1.000000e+00, %24
  %26 = fmul float %25, %3
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %4, float %26)
  br label %28

28:                                               ; preds = %19, %17, %23, %13
  %29 = phi float [ %14, %13 ], [ %18, %17 ], [ %21, %23 ], [ %21, %19 ]
  %30 = phi float [ %3, %13 ], [ %4, %17 ], [ %27, %23 ], [ %3, %19 ]
  %31 = fmul float %30, %30
  %32 = fcmp olt float %29, %31
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = fcmp oeq float %5, 0.000000e+00
  br i1 %34, label %46, label %35

35:                                               ; preds = %33
  %36 = fadd float %30, %5
  %37 = fmul float %36, %36
  %38 = fcmp ult float %29, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = tail call float @sqrtf(float noundef %29) #17
  %41 = fsub float %40, %30
  %42 = fmul float %41, %41
  %43 = fmul float %5, %5
  %44 = fdiv float %42, %43
  %45 = fsub float 1.000000e+00, %44
  br label %46

46:                                               ; preds = %33, %35, %28, %39
  %47 = phi float [ %45, %39 ], [ 1.000000e+00, %28 ], [ 0.000000e+00, %35 ], [ 0.000000e+00, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret float %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !95 {
  %3 = load float, ptr %0, align 4, !tbaa !79
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !96 {
  %2 = load float, ptr %0, align 4, !tbaa !79
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !79
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !97 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @armature_deform_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca %struct.DualQuat, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x [3 x float]], align 16
  %17 = alloca float, align 4
  %18 = alloca [3 x [3 x float]], align 16
  %19 = alloca [3 x [3 x float]], align 16
  %20 = alloca [3 x [3 x float]], align 16
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #19
  %23 = getelementptr inbounds %struct.bArmature, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %409

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %28 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %27) #17
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %27) #17
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %29) #17
  %30 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = call i32 @BLI_countlist(ptr noundef %32) #17
  %34 = and i32 %6, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = sext i32 %33 to i64
  br label %43

38:                                               ; preds = %26
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %40 = sext i32 %33 to i64
  %41 = mul nsw i64 %40, 100
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.7) #17
  br label %43

43:                                               ; preds = %36, %38
  %44 = phi i64 [ %37, %36 ], [ %40, %38 ]
  %45 = phi ptr [ null, %36 ], [ %42, %38 ]
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %47 = mul nsw i64 %44, 24
  %48 = call ptr %46(i64 noundef %47, ptr noundef nonnull @.str.8) #17
  %49 = load ptr, ptr %31, align 8, !tbaa !98
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %43, %76
  %53 = phi ptr [ %79, %76 ], [ %50, %43 ]
  %54 = phi ptr [ %78, %76 ], [ %48, %43 ]
  %55 = phi i32 [ %77, %76 ], [ 0, %43 ]
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %53, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.Bone, ptr %57, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !82
  %60 = and i32 %59, 4096
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.Bone, ptr %57, i64 0, i32 26
  %64 = load i16, ptr %63, align 4, !tbaa !85
  %65 = icmp sgt i16 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call fastcc void @pchan_b_bone_defmats(ptr noundef nonnull %53, ptr noundef %54, i32 noundef %34) #18
  br label %67

67:                                               ; preds = %66, %62
  br i1 %35, label %76, label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %55, 1
  %70 = sext i32 %55 to i64
  %71 = getelementptr inbounds %struct.DualQuat, ptr %45, i64 %70
  %72 = getelementptr inbounds %struct.bPoseChanDeform, ptr %54, i64 0, i32 1
  store ptr %71, ptr %72, align 8, !tbaa !99
  %73 = load ptr, ptr %56, align 8, !tbaa !76
  %74 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 13
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %53, i64 0, i32 28
  call void @mat4_to_dquat(ptr noundef %71, ptr noundef nonnull %74, ptr noundef nonnull %75) #17
  br label %76

76:                                               ; preds = %52, %68, %67
  %77 = phi i32 [ %55, %52 ], [ %69, %68 ], [ %55, %67 ]
  %78 = getelementptr inbounds %struct.bPoseChanDeform, ptr %54, i64 1
  %79 = load ptr, ptr %53, align 8, !tbaa !51
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %52, !llvm.loop !101

81:                                               ; preds = %76, %43
  %82 = call i32 @defgroup_name_index(ptr noundef %1, ptr noundef %8) #17
  %83 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %84 = load i16, ptr %83, align 8, !tbaa !45
  switch i16 %84, label %115 [
    i16 1, label %85
    i16 22, label %85
  ]

85:                                               ; preds = %81, %81
  %86 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %87 = call i32 @BLI_countlist(ptr noundef nonnull %86) #17
  %88 = load i16, ptr %83, align 8, !tbaa !45
  %89 = icmp eq i16 %88, 1
  %90 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !50
  br i1 %89, label %92, label %99

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !102
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 26
  %98 = load i32, ptr %97, align 8, !tbaa !105
  br label %115

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.Lattice, ptr %91, i64 0, i32 24
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Lattice, ptr %91, i64 0, i32 2
  %105 = load i16, ptr %104, align 8, !tbaa !108
  %106 = sext i16 %105 to i32
  %107 = getelementptr inbounds %struct.Lattice, ptr %91, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !109
  %109 = sext i16 %108 to i32
  %110 = mul nsw i32 %109, %106
  %111 = getelementptr inbounds %struct.Lattice, ptr %91, i64 0, i32 4
  %112 = load i16, ptr %111, align 4, !tbaa !110
  %113 = sext i16 %112 to i32
  %114 = mul nsw i32 %110, %113
  br label %115

115:                                              ; preds = %99, %103, %92, %96, %81
  %116 = phi i16 [ %84, %81 ], [ 1, %96 ], [ 1, %92 ], [ %88, %103 ], [ %88, %99 ]
  %117 = phi i32 [ 0, %81 ], [ %87, %96 ], [ %87, %92 ], [ %87, %103 ], [ %87, %99 ]
  %118 = phi i32 [ 0, %81 ], [ %98, %96 ], [ 0, %92 ], [ %114, %103 ], [ 0, %99 ]
  %119 = phi ptr [ null, %81 ], [ %94, %96 ], [ null, %92 ], [ %101, %103 ], [ null, %99 ]
  %120 = and i32 %6, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %167, label %122

122:                                              ; preds = %115
  switch i16 %116, label %167 [
    i16 1, label %123
    i16 22, label %123
  ]

123:                                              ; preds = %122, %122
  %124 = icmp eq ptr %2, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = icmp eq ptr %119, null
  br i1 %126, label %167, label %132

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %129 = load ptr, ptr %128, align 8, !tbaa !111
  %130 = call ptr %129(ptr noundef nonnull %2, i32 noundef 2) #17
  %131 = icmp eq ptr %130, null
  br i1 %131, label %167, label %132

132:                                              ; preds = %125, %127
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %134 = sext i32 %117 to i64
  %135 = shl nsw i64 %134, 3
  %136 = call ptr %133(i64 noundef %135, ptr noundef nonnull @.str.9) #17
  %137 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %138 = shl nsw i64 %134, 2
  %139 = call ptr %137(i64 noundef %138, ptr noundef nonnull @.str.10) #17
  %140 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %141 = load ptr, ptr %140, align 8, !tbaa !51
  %142 = icmp eq ptr %141, null
  br i1 %142, label %167, label %143

143:                                              ; preds = %132, %163
  %144 = phi i64 [ %164, %163 ], [ 0, %132 ]
  %145 = phi ptr [ %165, %163 ], [ %141, %132 ]
  %146 = load ptr, ptr %31, align 8, !tbaa !98
  %147 = getelementptr inbounds %struct.bDeformGroup, ptr %145, i64 0, i32 2
  %148 = call ptr @BKE_pose_channel_find_name(ptr noundef %146, ptr noundef nonnull %147) #17
  %149 = getelementptr inbounds ptr, ptr %136, i64 %144
  store ptr %148, ptr %149, align 8, !tbaa !51
  %150 = icmp eq ptr %148, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.bPoseChannel, ptr %148, i64 0, i32 12
  %153 = load ptr, ptr %152, align 8, !tbaa !76
  %154 = getelementptr inbounds %struct.Bone, ptr %153, i64 0, i32 10
  %155 = load i32, ptr %154, align 8, !tbaa !82
  %156 = and i32 %155, 4096
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  store ptr null, ptr %149, align 8, !tbaa !51
  br label %163

159:                                              ; preds = %151
  %160 = load ptr, ptr %31, align 8, !tbaa !98
  %161 = call i32 @BLI_findindex(ptr noundef %160, ptr noundef nonnull %148) #17
  %162 = getelementptr inbounds i32, ptr %139, i64 %144
  store i32 %161, ptr %162, align 4, !tbaa !113
  br label %163

163:                                              ; preds = %143, %159, %158
  %164 = add nuw i64 %144, 1
  %165 = load ptr, ptr %145, align 8, !tbaa !51
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %143, !llvm.loop !114

167:                                              ; preds = %163, %132, %125, %122, %127, %115
  %168 = phi i1 [ false, %127 ], [ false, %115 ], [ false, %122 ], [ false, %125 ], [ true, %132 ], [ true, %163 ]
  %169 = phi ptr [ null, %127 ], [ null, %115 ], [ null, %122 ], [ null, %125 ], [ %139, %132 ], [ %139, %163 ]
  %170 = phi ptr [ null, %127 ], [ null, %115 ], [ null, %122 ], [ null, %125 ], [ %136, %132 ], [ %136, %163 ]
  %171 = icmp sgt i32 %5, 0
  br i1 %171, label %172, label %374

172:                                              ; preds = %167
  %173 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %174 = icmp eq ptr %4, null
  %175 = icmp ne i32 %82, -1
  %176 = select i1 %168, i1 true, i1 %175
  %177 = icmp eq ptr %2, null
  %178 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 46
  %179 = icmp ne ptr %119, null
  %180 = and i32 %6, 16
  %181 = icmp eq i32 %180, 0
  %182 = icmp eq ptr %7, null
  %183 = and i32 %6, 2
  %184 = icmp ne i32 %183, 0
  %185 = icmp eq i32 %183, 0
  %186 = select i1 %174, ptr null, ptr %16
  %187 = sext i32 %118 to i64
  %188 = zext nneg i32 %5 to i64
  br label %189

189:                                              ; preds = %172, %371
  %190 = phi i64 [ 0, %172 ], [ %372, %371 ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  store float 0.000000e+00, ptr %17, align 4, !tbaa !79
  br i1 %35, label %192, label %191

191:                                              ; preds = %189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %13, i8 0, i64 100, i1 false)
  br label %194

192:                                              ; preds = %189
  store float 0.000000e+00, ptr %173, align 8, !tbaa !79
  store <2 x float> zeroinitializer, ptr %15, align 8, !tbaa !79
  br i1 %174, label %194, label %193

193:                                              ; preds = %192
  call void @zero_m3(ptr noundef nonnull %16) #17
  br label %194

194:                                              ; preds = %192, %193, %191
  %195 = phi ptr [ %13, %191 ], [ null, %193 ], [ null, %192 ]
  %196 = phi ptr [ null, %191 ], [ %15, %193 ], [ %15, %192 ]
  %197 = phi ptr [ null, %191 ], [ %16, %193 ], [ null, %192 ]
  br i1 %176, label %198, label %218

198:                                              ; preds = %194
  br i1 %177, label %203, label %199

199:                                              ; preds = %198
  %200 = load ptr, ptr %178, align 8, !tbaa !115
  %201 = trunc i64 %190 to i32
  %202 = call ptr %200(ptr noundef nonnull %2, i32 noundef %201, i32 noundef 2) #17
  br label %208

203:                                              ; preds = %198
  %204 = icmp slt i64 %190, %187
  %205 = select i1 %179, i1 %204, i1 false
  br i1 %205, label %206, label %218

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.MDeformVert, ptr %119, i64 %190
  br label %208

208:                                              ; preds = %199, %206
  %209 = phi ptr [ %202, %199 ], [ %207, %206 ]
  %210 = icmp ne ptr %209, null
  %211 = select i1 %175, i1 %210, i1 false
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = call float @defvert_find_weight(ptr noundef nonnull %209, i32 noundef %82) #17
  %214 = fsub float 1.000000e+00, %213
  %215 = select i1 %181, float %213, float %214
  br i1 %182, label %216, label %218

216:                                              ; preds = %212
  %217 = fcmp oeq float %215, 0.000000e+00
  br i1 %217, label %371, label %218

218:                                              ; preds = %212, %203, %194, %208, %216
  %219 = phi float [ 1.000000e+00, %216 ], [ 1.000000e+00, %208 ], [ 1.000000e+00, %194 ], [ 1.000000e+00, %203 ], [ %215, %212 ]
  %220 = phi float [ %215, %216 ], [ 1.000000e+00, %208 ], [ 1.000000e+00, %194 ], [ 1.000000e+00, %203 ], [ 1.000000e+00, %212 ]
  %221 = phi ptr [ %209, %216 ], [ %209, %208 ], [ null, %194 ], [ null, %203 ], [ %209, %212 ]
  %222 = phi i1 [ true, %216 ], [ %210, %208 ], [ false, %194 ], [ false, %203 ], [ true, %212 ]
  %223 = getelementptr inbounds [3 x float], ptr %7, i64 %190
  %224 = getelementptr inbounds [3 x float], ptr %3, i64 %190
  %225 = select i1 %182, ptr %224, ptr %223
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef %225) #17
  %226 = select i1 %168, i1 %222, i1 false
  br i1 %226, label %227, label %305

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.MDeformVert, ptr %221, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !116
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %305, label %231

231:                                              ; preds = %227
  %232 = load ptr, ptr %221, align 8, !tbaa !118
  br label %233

233:                                              ; preds = %231, %274
  %234 = phi i32 [ %229, %231 ], [ %276, %274 ]
  %235 = phi i32 [ 0, %231 ], [ %275, %274 ]
  %236 = phi ptr [ %232, %231 ], [ %277, %274 ]
  %237 = load i32, ptr %236, align 4, !tbaa !119
  %238 = icmp sgt i32 %237, -1
  %239 = icmp slt i32 %237, %117
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %241, label %274

241:                                              ; preds = %233
  %242 = zext nneg i32 %237 to i64
  %243 = getelementptr inbounds ptr, ptr %170, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !51
  %245 = icmp eq ptr %244, null
  br i1 %245, label %274, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.MDeformWeight, ptr %236, i64 0, i32 1
  %248 = load float, ptr %247, align 4, !tbaa !121
  %249 = getelementptr inbounds %struct.bPoseChannel, ptr %244, i64 0, i32 12
  %250 = load ptr, ptr %249, align 8, !tbaa !76
  %251 = getelementptr inbounds i32, ptr %169, i64 %242
  %252 = load i32, ptr %251, align 4, !tbaa !113
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.bPoseChanDeform, ptr %48, i64 %253
  %255 = icmp eq ptr %250, null
  br i1 %255, label %272, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.Bone, ptr %250, i64 0, i32 10
  %258 = load i32, ptr %257, align 8, !tbaa !82
  %259 = and i32 %258, 2048
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.Bone, ptr %250, i64 0, i32 11
  %263 = getelementptr inbounds %struct.Bone, ptr %250, i64 0, i32 12
  %264 = getelementptr inbounds %struct.Bone, ptr %250, i64 0, i32 22
  %265 = load float, ptr %264, align 4, !tbaa !122
  %266 = getelementptr inbounds %struct.Bone, ptr %250, i64 0, i32 23
  %267 = load float, ptr %266, align 8, !tbaa !123
  %268 = getelementptr inbounds %struct.Bone, ptr %250, i64 0, i32 15
  %269 = load float, ptr %268, align 8, !tbaa !124
  %270 = call float @distfactor_to_bone(ptr noundef %225, ptr noundef nonnull %262, ptr noundef nonnull %263, float noundef %265, float noundef %267, float noundef %269) #18
  %271 = fmul float %248, %270
  br label %272

272:                                              ; preds = %261, %256, %246
  %273 = phi float [ %271, %261 ], [ %248, %256 ], [ %248, %246 ]
  call fastcc void @pchan_bone_deform(ptr noundef nonnull %244, ptr noundef %254, float noundef %273, ptr noundef %196, ptr noundef %195, ptr noundef %197, ptr noundef %225, ptr noundef nonnull %17) #18
  br label %274

274:                                              ; preds = %272, %241, %233
  %275 = phi i32 [ 1, %272 ], [ %235, %241 ], [ %235, %233 ]
  %276 = add i32 %234, -1
  %277 = getelementptr inbounds %struct.MDeformWeight, ptr %236, i64 1
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %279, label %233, !llvm.loop !125

279:                                              ; preds = %274
  %280 = icmp eq i32 %275, 0
  %281 = and i1 %184, %280
  br i1 %281, label %282, label %333

282:                                              ; preds = %279
  %283 = load ptr, ptr %31, align 8, !tbaa !98
  %284 = load float, ptr %17, align 4, !tbaa !79
  %285 = load ptr, ptr %283, align 8, !tbaa !51
  %286 = icmp eq ptr %285, null
  br i1 %286, label %331, label %287

287:                                              ; preds = %282, %300
  %288 = phi ptr [ %303, %300 ], [ %285, %282 ]
  %289 = phi ptr [ %302, %300 ], [ %48, %282 ]
  %290 = phi float [ %301, %300 ], [ %284, %282 ]
  %291 = getelementptr inbounds %struct.bPoseChannel, ptr %288, i64 0, i32 12
  %292 = load ptr, ptr %291, align 8, !tbaa !76
  %293 = getelementptr inbounds %struct.Bone, ptr %292, i64 0, i32 10
  %294 = load i32, ptr %293, align 8, !tbaa !82
  %295 = and i32 %294, 4096
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %287
  %298 = call fastcc float @dist_bone_deform(ptr noundef nonnull %288, ptr noundef %289, ptr noundef %196, ptr noundef %195, ptr noundef %197, ptr noundef %225) #18
  %299 = fadd float %298, %290
  br label %300

300:                                              ; preds = %287, %297
  %301 = phi float [ %290, %287 ], [ %299, %297 ]
  %302 = getelementptr inbounds %struct.bPoseChanDeform, ptr %289, i64 1
  %303 = load ptr, ptr %288, align 8, !tbaa !51
  %304 = icmp eq ptr %303, null
  br i1 %304, label %331, label %287, !llvm.loop !126

305:                                              ; preds = %227, %218
  br i1 %185, label %333, label %306

306:                                              ; preds = %305
  %307 = load ptr, ptr %31, align 8, !tbaa !98
  %308 = load float, ptr %17, align 4, !tbaa !79
  %309 = load ptr, ptr %307, align 8, !tbaa !51
  %310 = icmp eq ptr %309, null
  br i1 %310, label %329, label %311

311:                                              ; preds = %306, %324
  %312 = phi ptr [ %327, %324 ], [ %309, %306 ]
  %313 = phi ptr [ %326, %324 ], [ %48, %306 ]
  %314 = phi float [ %325, %324 ], [ %308, %306 ]
  %315 = getelementptr inbounds %struct.bPoseChannel, ptr %312, i64 0, i32 12
  %316 = load ptr, ptr %315, align 8, !tbaa !76
  %317 = getelementptr inbounds %struct.Bone, ptr %316, i64 0, i32 10
  %318 = load i32, ptr %317, align 8, !tbaa !82
  %319 = and i32 %318, 4096
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %311
  %322 = call fastcc float @dist_bone_deform(ptr noundef nonnull %312, ptr noundef %313, ptr noundef %196, ptr noundef %195, ptr noundef %197, ptr noundef %225) #18
  %323 = fadd float %322, %314
  br label %324

324:                                              ; preds = %311, %321
  %325 = phi float [ %314, %311 ], [ %323, %321 ]
  %326 = getelementptr inbounds %struct.bPoseChanDeform, ptr %313, i64 1
  %327 = load ptr, ptr %312, align 8, !tbaa !51
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %311, !llvm.loop !127

329:                                              ; preds = %324, %306
  %330 = phi float [ %308, %306 ], [ %325, %324 ]
  store float %330, ptr %17, align 4, !tbaa !79
  br label %335

331:                                              ; preds = %300, %282
  %332 = phi float [ %284, %282 ], [ %301, %300 ]
  store float %332, ptr %17, align 4, !tbaa !79
  br label %335

333:                                              ; preds = %305, %279
  %334 = load float, ptr %17, align 4, !tbaa !79
  br label %335

335:                                              ; preds = %333, %331, %329
  %336 = phi float [ %334, %333 ], [ %332, %331 ], [ %330, %329 ]
  %337 = fcmp ogt float %336, 0x3F1A36E2E0000000
  br i1 %337, label %338, label %352

338:                                              ; preds = %335
  br i1 %35, label %343, label %339

339:                                              ; preds = %338
  call void @normalize_dq(ptr noundef %195, float noundef %336) #17
  %340 = fcmp une float %220, 1.000000e+00
  br i1 %340, label %341, label %342

341:                                              ; preds = %339
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %225) #18
  call void @mul_v3m3_dq(ptr noundef nonnull %14, ptr noundef %186, ptr noundef %195) #17
  call fastcc void @sub_v3_v3(ptr noundef nonnull %14, ptr noundef %225) #18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %220) #18
  call fastcc void @add_v3_v3(ptr noundef %225, ptr noundef nonnull %14) #18
  br label %345

342:                                              ; preds = %339
  call void @mul_v3m3_dq(ptr noundef %225, ptr noundef %186, ptr noundef %195) #17
  br label %345

343:                                              ; preds = %338
  %344 = fdiv float %220, %336
  call fastcc void @mul_v3_fl(ptr noundef %196, float noundef %344) #18
  call fastcc void @add_v3_v3v3(ptr noundef %225, ptr noundef %196, ptr noundef %225) #18
  br label %345

345:                                              ; preds = %341, %342, %343
  %346 = phi ptr [ %197, %343 ], [ %16, %342 ], [ %16, %341 ]
  br i1 %174, label %352, label %347

347:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %20) #19
  call void @copy_m3_m4(ptr noundef nonnull %18, ptr noundef nonnull %11) #17
  call void @copy_m3_m4(ptr noundef nonnull %19, ptr noundef nonnull %12) #17
  %348 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 %190
  call void @copy_m3_m3(ptr noundef nonnull %20, ptr noundef nonnull %348) #17
  br i1 %35, label %349, label %351

349:                                              ; preds = %347
  %350 = fdiv float %220, %336
  call void @mul_m3_fl(ptr noundef %346, float noundef %350) #17
  br label %351

351:                                              ; preds = %349, %347
  call void @_va_mul_m3_series_5(ptr noundef nonnull %348, ptr noundef nonnull %19, ptr noundef %346, ptr noundef nonnull %18, ptr noundef nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #19
  br label %352

352:                                              ; preds = %345, %351, %335
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef %225) #17
  br i1 %182, label %371, label %353

353:                                              ; preds = %352
  %354 = fsub float 1.000000e+00, %219
  %355 = load float, ptr %224, align 4, !tbaa !79
  %356 = load float, ptr %223, align 4, !tbaa !79
  %357 = fmul float %354, %356
  %358 = call float @llvm.fmuladd.f32(float %219, float %355, float %357)
  store float %358, ptr %224, align 4, !tbaa !79
  %359 = getelementptr inbounds [3 x float], ptr %3, i64 %190, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !79
  %361 = getelementptr inbounds float, ptr %223, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !79
  %363 = fmul float %354, %362
  %364 = call float @llvm.fmuladd.f32(float %219, float %360, float %363)
  store float %364, ptr %359, align 4, !tbaa !79
  %365 = getelementptr inbounds [3 x float], ptr %3, i64 %190, i64 2
  %366 = load float, ptr %365, align 4, !tbaa !79
  %367 = getelementptr inbounds float, ptr %223, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !79
  %369 = fmul float %354, %368
  %370 = call float @llvm.fmuladd.f32(float %219, float %366, float %369)
  store float %370, ptr %365, align 4, !tbaa !79
  br label %371

371:                                              ; preds = %352, %353, %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %13) #19
  %372 = add nuw nsw i64 %190, 1
  %373 = icmp eq i64 %372, %188
  br i1 %373, label %374, label %189, !llvm.loop !128

374:                                              ; preds = %371, %167
  %375 = icmp eq ptr %45, null
  br i1 %375, label %378, label %376

376:                                              ; preds = %374
  %377 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %377(ptr noundef nonnull %45) #17
  br label %378

378:                                              ; preds = %376, %374
  %379 = icmp eq ptr %170, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %378
  %381 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %381(ptr noundef nonnull %170) #17
  br label %382

382:                                              ; preds = %380, %378
  %383 = icmp eq ptr %169, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %382
  %385 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %385(ptr noundef nonnull %169) #17
  br label %386

386:                                              ; preds = %384, %382
  %387 = load ptr, ptr %31, align 8, !tbaa !98
  %388 = load ptr, ptr %387, align 8, !tbaa !51
  %389 = icmp eq ptr %388, null
  br i1 %389, label %407, label %390

390:                                              ; preds = %386, %403
  %391 = phi ptr [ %405, %403 ], [ %388, %386 ]
  %392 = phi ptr [ %404, %403 ], [ %48, %386 ]
  %393 = load ptr, ptr %392, align 8, !tbaa !129
  %394 = icmp eq ptr %393, null
  br i1 %394, label %397, label %395

395:                                              ; preds = %390
  %396 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %396(ptr noundef nonnull %393) #17
  br label %397

397:                                              ; preds = %395, %390
  %398 = getelementptr inbounds %struct.bPoseChanDeform, ptr %392, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !130
  %400 = icmp eq ptr %399, null
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %402(ptr noundef nonnull %399) #17
  br label %403

403:                                              ; preds = %397, %401
  %404 = getelementptr inbounds %struct.bPoseChanDeform, ptr %392, i64 1
  %405 = load ptr, ptr %391, align 8, !tbaa !51
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %390, !llvm.loop !131

407:                                              ; preds = %403, %386
  %408 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %408(ptr noundef %48) #17
  br label %409

409:                                              ; preds = %9, %407
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #19
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pchan_b_bone_defmats(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = alloca [32 x %struct.Mat4], align 16
  %5 = alloca [32 x %struct.Mat4], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #19
  call void @b_bone_spline_setup(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #18
  call void @b_bone_spline_setup(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #18
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 26
  %11 = load i16, ptr %10, align 4, !tbaa !85
  %12 = sext i16 %11 to i64
  %13 = shl nsw i64 %12, 6
  %14 = add nsw i64 %13, 64
  %15 = call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.12) #17
  store ptr %15, ptr %1, align 8, !tbaa !129
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %19 = load i16, ptr %10, align 4, !tbaa !85
  %20 = sext i16 %19 to i64
  %21 = mul nsw i64 %20, 100
  %22 = call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.13) #17
  %23 = getelementptr inbounds %struct.bPoseChanDeform, ptr %1, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !130
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi ptr [ %22, %17 ], [ null, %3 ]
  %26 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 13
  %27 = call zeroext i8 @invert_m4_m4(ptr noundef %15, ptr noundef nonnull %26) #17
  %28 = load i16, ptr %10, align 4, !tbaa !85
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  br label %32

32:                                               ; preds = %30, %41
  %33 = phi i64 [ 0, %30 ], [ %36, %41 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  %34 = getelementptr inbounds [32 x %struct.Mat4], ptr %5, i64 0, i64 %33
  %35 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %34) #17
  %36 = add nuw nsw i64 %33, 1
  %37 = getelementptr inbounds %struct.Mat4, ptr %15, i64 %36
  %38 = getelementptr inbounds [32 x %struct.Mat4], ptr %4, i64 0, i64 %33
  call void @_va_mul_m4_series_6(ptr noundef nonnull %37, ptr noundef nonnull %31, ptr noundef nonnull %26, ptr noundef nonnull %38, ptr noundef nonnull %6, ptr noundef %15) #17
  br i1 %16, label %41, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.DualQuat, ptr %25, i64 %33
  call void @mat4_to_dquat(ptr noundef %40, ptr noundef nonnull %26, ptr noundef nonnull %37) #17
  br label %41

41:                                               ; preds = %39, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  %42 = load i16, ptr %10, align 4, !tbaa !85
  %43 = sext i16 %42 to i64
  %44 = icmp slt i64 %36, %43
  br i1 %44, label %32, label %45, !llvm.loop !133

45:                                               ; preds = %41, %24
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_dquat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @zero_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pchan_bone_deform(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !134 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca %struct.DualQuat, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %11) #19
  %12 = fcmp une float %2, 0.000000e+00
  br i1 %12, label %13, label %58

13:                                               ; preds = %8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %6) #18
  %14 = icmp eq ptr %3, null
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 26
  %18 = load i16, ptr %17, align 4, !tbaa !85
  %19 = icmp sgt i16 %18, 1
  br i1 %14, label %50, label %20

20:                                               ; preds = %13
  br i1 %19, label %21, label %24

21:                                               ; preds = %20
  %22 = icmp eq ptr %5, null
  %23 = select i1 %22, ptr null, ptr %10
  call fastcc void @b_bone_deform(ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %9, ptr noundef null, ptr noundef %23) #18
  br label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  call void @mul_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %9) #17
  br label %26

26:                                               ; preds = %24, %21
  %27 = load float, ptr %9, align 4, !tbaa !79
  %28 = load float, ptr %6, align 4, !tbaa !79
  %29 = fsub float %27, %28
  %30 = load float, ptr %3, align 4, !tbaa !79
  %31 = call float @llvm.fmuladd.f32(float %29, float %2, float %30)
  store float %31, ptr %3, align 4, !tbaa !79
  %32 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !79
  %34 = getelementptr inbounds float, ptr %6, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !79
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !79
  %39 = call float @llvm.fmuladd.f32(float %36, float %2, float %38)
  store float %39, ptr %37, align 4, !tbaa !79
  %40 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !79
  %42 = getelementptr inbounds float, ptr %6, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !79
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds float, ptr %3, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !79
  %47 = call float @llvm.fmuladd.f32(float %44, float %2, float %46)
  store float %47, ptr %45, align 4, !tbaa !79
  %48 = icmp eq ptr %5, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %26
  call fastcc void @pchan_deform_mat_add(ptr noundef nonnull %0, float noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  br label %55

50:                                               ; preds = %13
  br i1 %19, label %51, label %52

51:                                               ; preds = %50
  call fastcc void @b_bone_deform(ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef null) #18
  call void @add_weighted_dq_dq(ptr noundef %4, ptr noundef nonnull %11, float noundef %2) #17
  br label %55

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.bPoseChanDeform, ptr %1, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !99
  tail call void @add_weighted_dq_dq(ptr noundef %4, ptr noundef %54, float noundef %2) #17
  br label %55

55:                                               ; preds = %51, %52, %26, %49
  %56 = load float, ptr %7, align 4, !tbaa !79
  %57 = fadd float %56, %2
  store float %57, ptr %7, align 4, !tbaa !79
  br label %58

58:                                               ; preds = %8, %55
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @dist_bone_deform(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !135 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca %struct.DualQuat, align 4
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %9) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %5) #18
  %14 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 11
  %15 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 12
  %16 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 22
  %17 = load float, ptr %16, align 4, !tbaa !122
  %18 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 23
  %19 = load float, ptr %18, align 8, !tbaa !123
  %20 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 15
  %21 = load float, ptr %20, align 8, !tbaa !124
  %22 = call float @distfactor_to_bone(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %17, float noundef %19, float noundef %21) #18
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %48

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 16
  %26 = load float, ptr %25, align 4, !tbaa !136
  %27 = fmul float %22, %26
  %28 = fcmp ogt float %27, 0.000000e+00
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = icmp eq ptr %2, null
  %31 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 26
  %32 = load i16, ptr %31, align 4, !tbaa !85
  %33 = icmp sgt i16 %32, 1
  br i1 %30, label %43, label %34

34:                                               ; preds = %29
  br i1 %33, label %35, label %38

35:                                               ; preds = %34
  %36 = icmp eq ptr %4, null
  %37 = select i1 %36, ptr null, ptr %8
  call fastcc void @b_bone_deform(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef null, ptr noundef %37) #18
  br label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  call void @mul_m4_v3(ptr noundef nonnull %39, ptr noundef nonnull %7) #17
  br label %40

40:                                               ; preds = %38, %35
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef %5) #18
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %2, ptr noundef nonnull %7, float noundef %27) #18
  %41 = icmp eq ptr %4, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  call fastcc void @pchan_deform_mat_add(ptr noundef nonnull %0, float noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %4) #18
  br label %48

43:                                               ; preds = %29
  br i1 %33, label %44, label %45

44:                                               ; preds = %43
  call fastcc void @b_bone_deform(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #18
  call void @add_weighted_dq_dq(ptr noundef %3, ptr noundef nonnull %9, float noundef %27) #17
  br label %48

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.bPoseChanDeform, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !99
  tail call void @add_weighted_dq_dq(ptr noundef %3, ptr noundef %47, float noundef %27) #17
  br label %48

48:                                               ; preds = %13, %42, %40, %45, %44, %24, %6
  %49 = phi float [ 0.000000e+00, %6 ], [ %27, %42 ], [ %27, %40 ], [ %27, %44 ], [ %27, %45 ], [ %27, %24 ], [ 0.000000e+00, %13 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret float %49
}

; Function Attrs: optsize
declare void @normalize_dq(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3m3_dq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !137 {
  %3 = load float, ptr %1, align 4, !tbaa !79
  %4 = load float, ptr %0, align 4, !tbaa !79
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !79
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !79
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !138 {
  %3 = load float, ptr %1, align 4, !tbaa !79
  %4 = load float, ptr %0, align 4, !tbaa !79
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !79
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !79
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !139 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = load float, ptr %2, align 4, !tbaa !79
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !79
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_va_mul_m3_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_objectspace_bone_matrix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_mat_world_to_pose(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %4) #17
  br label %9

9:                                                ; preds = %3, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_loc_world_to_pose(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @unit_m4(ptr noundef nonnull %4) #17
  %6 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #18
  call void @BKE_armature_mat_world_to_pose(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pchan_to_pose_mat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call fastcc void @get_offset_bone_mat(ptr noundef nonnull %13, ptr noundef nonnull %4) #18
  %20 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !82
  %22 = and i32 %21, 32768
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %21, 33280
  %25 = icmp eq i32 %24, 33280
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 13
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %27, ptr noundef nonnull %4) #17
  br label %39

28:                                               ; preds = %19
  %29 = and i32 %21, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %32) #17
  call void @size_to_mat4(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %33 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 13
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %33) #17
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %39

34:                                               ; preds = %28
  br i1 %23, label %37, label %35

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %36) #17
  call void @normalize_m4(ptr noundef nonnull %7) #17
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  br label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %38, ptr noundef nonnull %4) #17
  br label %39

39:                                               ; preds = %31, %37, %35, %26
  %40 = load i32, ptr %20, align 8, !tbaa !82
  %41 = and i32 %40, 4194304
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #19
  call void @unit_m4(ptr noundef nonnull %8) #17
  call void @unit_m4(ptr noundef %2) #17
  call void @unit_m4(ptr noundef nonnull %10) #17
  %44 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  %46 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %46) #17
  call void @unit_m3(ptr noundef nonnull %9) #17
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %45) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %9) #17
  call void @copy_m4_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  br label %53

47:                                               ; preds = %39
  %48 = and i32 %40, 33280
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %51, ptr noundef nonnull %4) #17
  br label %53

52:                                               ; preds = %47
  call void @copy_m4_m4(ptr noundef %2, ptr noundef %1) #17
  br label %53

53:                                               ; preds = %50, %52, %43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %66

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %55) #17
  %56 = load ptr, ptr %12, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.Bone, ptr %56, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !82
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  tail call void @unit_m4(ptr noundef %2) #17
  %62 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %63 = load ptr, ptr %12, align 8, !tbaa !76
  %64 = getelementptr inbounds %struct.Bone, ptr %63, i64 0, i32 13, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %62, ptr noundef nonnull %64) #18
  br label %66

65:                                               ; preds = %54
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef %1) #17
  br label %66

66:                                               ; preds = %61, %65, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_offset_bone_mat(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !140 {
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 9
  tail call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %9 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 18
  %12 = load float, ptr %11, align 4, !tbaa !78
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !79
  br label %16

16:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_mat_pose_to_bone(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #17
  call void @BKE_pchan_to_pose_mat(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = call zeroext i8 @invert_m4(ptr noundef nonnull %4) #17
  %8 = call zeroext i8 @invert_m4(ptr noundef nonnull %5) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %9 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_mat_bone_to_pose(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #17
  call void @BKE_pchan_to_pose_mat(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %7 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %8 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_loc_pose_to_bone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @unit_m4(ptr noundef nonnull %4) #17
  %6 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #18
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_mat_pose_to_bone_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bPoseChannel, align 8
  call void @llvm.lifetime.start.p0(i64 544, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %5, ptr noundef nonnull align 8 dereferenceable(544) %1, i64 544, i1 false), !tbaa.struct !141
  call void @BKE_pose_where_is_bone(ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, float noundef 0.000000e+00, i8 noundef zeroext 0) #18
  call void @unit_m4(ptr noundef %3) #17
  call void @BKE_pchan_apply_mat4(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext 0) #18
  call void @BKE_armature_mat_pose_to_bone(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #18
  call void @llvm.lifetime.end.p0(i64 544, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_where_is_bone(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @BKE_pchan_calc_mat(ptr noundef %2) #18
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 28
  tail call void @unit_m4(ptr noundef nonnull %10) #17
  br label %11

11:                                               ; preds = %9, %8
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 28
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29
  tail call void @BKE_armature_mat_bone_to_pose(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.Bone, ptr %19, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !82
  %22 = and i32 %21, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = getelementptr inbounds %struct.bPose, ptr %27, i64 0, i32 8
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %28) #18
  br label %29

29:                                               ; preds = %17, %24, %11
  br i1 %7, label %45, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %35) #18
  %36 = tail call ptr @BKE_constraints_make_evalob(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext 2) #17
  tail call void @BKE_constraints_solve(ptr noundef nonnull %31, ptr noundef %36, float noundef %3) #17
  tail call void @BKE_constraints_clear_evalob(ptr noundef %36) #17
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct.Bone, ptr %38, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !82
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %6) #18
  br label %44

44:                                               ; preds = %43, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  br label %45

45:                                               ; preds = %30, %44, %29
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef nonnull %47) #18
  tail call void @BKE_pose_where_is_bone_tail(ptr noundef nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pchan_apply_mat4(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %1) #17
  call void @BKE_pchan_mat3_to_rot(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %2) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pchan_mat3_to_rot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %5 = load i16, ptr %4, align 4, !tbaa !144
  switch i16 %5, label %11 [
    i16 0, label %6
    i16 -1, label %8
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  tail call void @mat3_to_quat(ptr noundef nonnull %7, ptr noundef %1) #17
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  tail call void @mat3_to_axis_angle(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %1) #17
  br label %16

11:                                               ; preds = %3
  %12 = icmp eq i8 %2, 0
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  br i1 %12, label %15, label %14

14:                                               ; preds = %11
  tail call void @mat3_to_compatible_eulO(ptr noundef nonnull %13, ptr noundef nonnull %13, i16 noundef signext %5, ptr noundef %1) #17
  br label %16

15:                                               ; preds = %11
  tail call void @mat3_to_eulO(ptr noundef nonnull %13, i16 noundef signext %5, ptr noundef %1) #17
  br label %16

16:                                               ; preds = %14, %15, %8, %6
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat4_to_loc_rot_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_mat_pose_to_delta(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %5 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #17
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_rotMode_change_values(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  switch i16 %4, label %42 [
    i16 -1, label %9
    i16 0, label %11
  ]

9:                                                ; preds = %8
  %10 = load float, ptr %3, align 4, !tbaa !79
  tail call void @axis_angle_to_eulO(ptr noundef %1, i16 noundef signext %5, ptr noundef %2, float noundef %10) #17
  br label %42

11:                                               ; preds = %8
  %12 = tail call float @normalize_qt(ptr noundef %0) #17
  tail call void @quat_to_eulO(ptr noundef %1, i16 noundef signext %5, ptr noundef %0) #17
  br label %42

13:                                               ; preds = %6
  switch i16 %5, label %42 [
    i16 0, label %14
    i16 -1, label %21
  ]

14:                                               ; preds = %13
  %15 = icmp eq i16 %4, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load float, ptr %3, align 4, !tbaa !79
  tail call void @axis_angle_to_quat(ptr noundef %0, ptr noundef %2, float noundef %17) #17
  br label %42

18:                                               ; preds = %14
  %19 = icmp sgt i16 %4, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %18
  tail call void @eulO_to_quat(ptr noundef %0, ptr noundef %1, i16 noundef signext %4) #17
  br label %42

21:                                               ; preds = %13
  %22 = icmp sgt i16 %4, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @eulO_to_axis_angle(ptr noundef %2, ptr noundef %3, ptr noundef %1, i16 noundef signext %4) #17
  br label %28

24:                                               ; preds = %21
  %25 = icmp eq i16 %4, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call float @normalize_qt(ptr noundef %0) #17
  tail call void @quat_to_axis_angle(ptr noundef %2, ptr noundef %3, ptr noundef %0) #17
  br label %28

28:                                               ; preds = %24, %26, %23
  %29 = load float, ptr %2, align 4, !tbaa !79
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !79
  %32 = fsub float %29, %31
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fcmp ult float %33, 0x3E80000000000000
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = getelementptr inbounds float, ptr %2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !79
  %38 = fsub float %31, %37
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fcmp ult float %39, 0x3E80000000000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store float 1.000000e+00, ptr %30, align 4, !tbaa !79
  br label %42

42:                                               ; preds = %13, %8, %18, %20, %16, %28, %35, %41, %9, %11
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_quat(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_vec_roll(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %9) #18
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #19
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call void @vec_roll_to_mat3(ptr noundef nonnull %13, float noundef 0.000000e+00, ptr noundef nonnull %4) #18
  %14 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %0) #17
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %16 = load float, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  %18 = load float, ptr %17, align 16, !tbaa !79
  %19 = call float @atan2f(float noundef %16, float noundef %18) #17
  store float %19, ptr %2, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  br label %20

20:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vec_roll_to_mat3_normalized(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  %6 = load <2 x float>, ptr %0, align 4, !tbaa !79
  %7 = extractelement <2 x float> %6, i64 1
  %8 = fadd float %7, 1.000000e+00
  %9 = fcmp ogt float %8, 0x3EE4F8B580000000
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = extractelement <2 x float> %6, i64 0
  %12 = fcmp une float %11, 0.000000e+00
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !79
  %16 = fcmp une float %15, 0.000000e+00
  %17 = fcmp ogt float %8, 0x3E112E0BE0000000
  %18 = and i1 %17, %16
  br i1 %18, label %21, label %58

19:                                               ; preds = %10
  %20 = fcmp ogt float %8, 0x3E112E0BE0000000
  br i1 %20, label %21, label %58

21:                                               ; preds = %13, %19, %3
  %22 = extractelement <2 x float> %6, i64 0
  %23 = fneg float %22
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %23, ptr %24, align 4, !tbaa !79
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  store <2 x float> %6, ptr %25, align 4, !tbaa !79
  %26 = getelementptr inbounds float, ptr %0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !79
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float %27, ptr %28, align 4, !tbaa !79
  %29 = fneg float %27
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %29, ptr %31, align 4, !tbaa !79
  br i1 %9, label %32, label %44

32:                                               ; preds = %21
  %33 = fmul <2 x float> %6, %6
  %34 = extractelement <2 x float> %33, i64 0
  %35 = fdiv float %34, %8
  %36 = fsub float 1.000000e+00, %35
  store float %36, ptr %5, align 16, !tbaa !79
  %37 = fmul float %27, %27
  %38 = fdiv float %37, %8
  %39 = fsub float 1.000000e+00, %38
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %39, ptr %40, align 16, !tbaa !79
  %41 = fmul float %27, %23
  %42 = fdiv float %41, %8
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %42, ptr %43, align 8, !tbaa !79
  store float %42, ptr %30, align 8, !tbaa !79
  br label %60

44:                                               ; preds = %21
  %45 = fmul float %27, %27
  %46 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %45)
  %47 = fadd float %22, %27
  %48 = fsub float %22, %27
  %49 = fmul float %47, %48
  %50 = fneg float %46
  %51 = fdiv float %49, %50
  store float %51, ptr %5, align 16, !tbaa !79
  %52 = fneg float %51
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %52, ptr %53, align 16, !tbaa !79
  %54 = fmul float %22, 2.000000e+00
  %55 = fmul float %54, %27
  %56 = fdiv float %55, %46
  %57 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %56, ptr %57, align 8, !tbaa !79
  store float %56, ptr %30, align 8, !tbaa !79
  br label %60

58:                                               ; preds = %19, %13
  call void @unit_m3(ptr noundef nonnull %5) #17
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %59, align 16, !tbaa !79
  store float -1.000000e+00, ptr %5, align 16, !tbaa !79
  br label %60

60:                                               ; preds = %32, %44, %58
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %0, float noundef %1) #17
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !145 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_where_is_bone(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %7 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 6
  %8 = load float, ptr %7, align 8, !tbaa !146
  %9 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 9
  call void @vec_roll_to_mat3(ptr noundef nonnull %3, float noundef %8, ptr noundef nonnull %9) #18
  %10 = tail call fastcc float @len_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %11 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 18
  store float %10, ptr %11, align 4, !tbaa !78
  %12 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 17
  %13 = load float, ptr %12, align 8, !tbaa !147
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  store float 0x3FB99999A0000000, ptr %12, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 19
  store float 0x3FB99999A0000000, ptr %16, align 8, !tbaa !148
  %17 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 26
  store i16 1, ptr %17, align 4, !tbaa !85
  br label %18

18:                                               ; preds = %15, %2
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call fastcc void @get_offset_bone_mat(ptr noundef nonnull %0, ptr noundef nonnull %4) #18
  %21 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  %22 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 13
  call void @mul_m4_m4m4(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  tail call void @copy_m4_m3(ptr noundef nonnull %24, ptr noundef nonnull %9) #17
  %25 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %6) #18
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %32, %30 ], [ %28, %26 ]
  call void @BKE_armature_where_is_bone(ptr noundef nonnull %31, ptr noundef %0) #18
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30, !llvm.loop !149

34:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !150 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_armature_where_is(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @BKE_armature_where_is_bone(ptr noundef nonnull %6, ptr noundef null) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !151

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_rebuild(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %8 = tail call ptr %7(i64 noundef 216, ptr noundef nonnull @.str.11) #17
  store ptr %8, ptr %3, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 14
  tail call void @animviz_settings_init(ptr noundef nonnull %9) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !98
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  store ptr null, ptr %17, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 14
  store ptr null, ptr %18, align 8, !tbaa !84
  %19 = load ptr, ptr %16, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !152

21:                                               ; preds = %15, %11
  %22 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %29, %25 ], [ %23, %21 ]
  %27 = phi i32 [ %28, %25 ], [ 0, %21 ]
  %28 = tail call fastcc i32 @rebuild_pose_bone(ptr noundef nonnull %12, ptr noundef nonnull %26, ptr noundef null, i32 noundef %27) #18
  %29 = load ptr, ptr %26, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !llvm.loop !153

31:                                               ; preds = %25
  %32 = icmp sgt i32 %28, 1
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi i1 [ false, %21 ], [ %32, %31 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !154
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33, %44
  %38 = phi ptr [ %39, %44 ], [ %35, %33 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !156
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @BKE_pose_channel_free(ptr noundef nonnull %38) #17
  tail call void @BKE_pose_channels_hash_free(ptr noundef nonnull %12) #17
  tail call void @BLI_freelinkN(ptr noundef nonnull %12, ptr noundef nonnull %38) #17
  br label %44

44:                                               ; preds = %37, %43
  %45 = icmp eq ptr %39, null
  br i1 %45, label %46, label %37, !llvm.loop !157

46:                                               ; preds = %44, %33
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !158
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  tail call void @BKE_object_copy_proxy_drivers(ptr noundef nonnull %0, ptr noundef nonnull %48) #17
  %51 = load ptr, ptr %47, align 8, !tbaa !158
  %52 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 16
  %53 = load i32, ptr %52, align 4, !tbaa !159
  tail call fastcc void @pose_proxy_synchronize(ptr noundef nonnull %0, ptr noundef %51, i32 noundef %53) #18
  br label %54

54:                                               ; preds = %50, %46
  %55 = load ptr, ptr %3, align 8, !tbaa !98
  tail call void @BKE_pose_update_constraint_flags(ptr noundef %55) #17
  br i1 %34, label %56, label %57

56:                                               ; preds = %54
  tail call void @DAG_pose_sort(ptr noundef nonnull %0) #17
  br label %57

57:                                               ; preds = %56, %54
  %58 = load ptr, ptr %3, align 8, !tbaa !98
  %59 = getelementptr inbounds %struct.bPose, ptr %58, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !160
  %61 = and i16 %60, -34
  %62 = or disjoint i16 %61, 32
  store i16 %62, ptr %59, align 8, !tbaa !160
  tail call void @BKE_pose_channels_hash_make(ptr noundef %58) #17
  ret void
}

; Function Attrs: optsize
declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rebuild_pose_bone(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !161 {
  %5 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %6 = tail call ptr @BKE_pose_channel_verify(ptr noundef %0, ptr noundef nonnull %5) #17
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  store ptr %1, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 13
  store ptr %2, ptr %8, align 8, !tbaa !83
  %9 = add nsw i32 %3, 1
  %10 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 14
  br label %15

15:                                               ; preds = %13, %26
  %16 = phi ptr [ %11, %13 ], [ %27, %26 ]
  %17 = phi i32 [ %9, %13 ], [ %18, %26 ]
  %18 = tail call fastcc i32 @rebuild_pose_bone(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %6, i32 noundef %17) #18
  %19 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 5
  %25 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef nonnull %24) #17
  store ptr %25, ptr %14, align 8, !tbaa !84
  br label %26

26:                                               ; preds = %15, %23
  %27 = load ptr, ptr %16, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !162

29:                                               ; preds = %26, %4
  %30 = phi i32 [ %9, %4 ], [ %18, %26 ]
  ret i32 %30
}

; Function Attrs: optsize
declare void @BKE_pose_channel_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channels_hash_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_copy_proxy_drivers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_proxy_synchronize(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !163 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.bPoseChannel, align 16
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %150, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %8, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  br label %17

17:                                               ; preds = %35, %15
  %18 = phi ptr [ %37, %35 ], [ %13, %15 ]
  %19 = phi i1 [ false, %35 ], [ true, %15 ]
  br label %20

20:                                               ; preds = %17, %32
  %21 = phi ptr [ %33, %32 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.Bone, ptr %23, i64 0, i32 25
  %25 = load i32, ptr %24, align 8, !tbaa !164
  %26 = and i32 %25, %2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 4
  %30 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %10, ptr noundef nonnull %29) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20, %28
  %33 = load ptr, ptr %21, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %20, !llvm.loop !165

35:                                               ; preds = %28
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %16, ptr noundef nonnull %29) #18
  %37 = load ptr, ptr %21, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %150, label %17, !llvm.loop !165

39:                                               ; preds = %32
  br i1 %19, label %40, label %150

40:                                               ; preds = %12, %39
  tail call void @BKE_pose_rest(ptr noundef nonnull %10) #17
  %41 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %41) #17
  %42 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 9
  tail call void @BLI_duplicatelist(ptr noundef nonnull %41, ptr noundef nonnull %42) #17
  %43 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !166
  %45 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 10
  store i32 %44, ptr %45, align 8, !tbaa !166
  %46 = load ptr, ptr %8, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %150, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 13
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 17
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 2
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 3
  br label %53

53:                                               ; preds = %48, %147
  %54 = phi ptr [ %46, %48 ], [ %148, %147 ]
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 4
  %56 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %10, ptr noundef nonnull %55) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %147, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = getelementptr inbounds %struct.Bone, ptr %60, i64 0, i32 25
  %62 = load i32, ptr %61, align 8, !tbaa !164
  %63 = and i32 %62, %2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %119, label %65

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 544, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %5, ptr noundef nonnull align 8 dereferenceable(544) %56, i64 544, i1 false), !tbaa.struct !141
  %66 = load <2 x ptr>, ptr %54, align 8, !tbaa !51
  store <2 x ptr> %66, ptr %5, align 16, !tbaa !51
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 13
  %68 = load <2 x ptr>, ptr %67, align 8, !tbaa !51
  store <2 x ptr> %68, ptr %49, align 16, !tbaa !51
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !167
  store ptr %70, ptr %50, align 16, !tbaa !167
  store ptr null, ptr %69, align 8, !tbaa !167
  %71 = load ptr, ptr %51, align 16, !tbaa !168
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = call ptr @IDP_CopyProperty(ptr noundef nonnull %71) #17
  store ptr %74, ptr %51, align 16, !tbaa !168
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !168
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  call void @IDP_SyncGroupValues(ptr noundef %74, ptr noundef nonnull %76) #17
  br label %79

79:                                               ; preds = %73, %78, %65
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 3
  call void @BKE_constraints_proxylocal_extract(ptr noundef nonnull %4, ptr noundef nonnull %80) #17
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %56, i64 0, i32 3
  call void @BKE_constraints_copy(ptr noundef nonnull %52, ptr noundef nonnull %81, i8 noundef zeroext 0) #17
  call void @BLI_movelisttolist(ptr noundef nonnull %52, ptr noundef nonnull %4) #17
  %82 = load ptr, ptr %52, align 8, !tbaa !143
  %83 = icmp eq ptr %82, null
  br i1 %83, label %113, label %84

84:                                               ; preds = %79, %110
  %85 = phi ptr [ %111, %110 ], [ %82, %79 ]
  %86 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %85) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %110, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %86, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !169
  %91 = icmp eq ptr %90, null
  br i1 %91, label %110, label %92

92:                                               ; preds = %88
  %93 = call i32 %90(ptr noundef nonnull %85, ptr noundef nonnull %6) #17
  %94 = load ptr, ptr %6, align 8, !tbaa !51
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %92, %102
  %97 = phi ptr [ %103, %102 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.bConstraintTarget, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !171
  %100 = icmp eq ptr %99, %1
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store ptr %0, ptr %98, align 8, !tbaa !171
  br label %102

102:                                              ; preds = %96, %101
  %103 = load ptr, ptr %97, align 8, !tbaa !51
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96, !llvm.loop !173

105:                                              ; preds = %102, %92
  %106 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %86, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !174
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void %107(ptr noundef nonnull %85, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  br label %110

110:                                              ; preds = %105, %109, %88, %84
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %111 = load ptr, ptr %85, align 8, !tbaa !175
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %84, !llvm.loop !177

113:                                              ; preds = %110, %79
  call void @BKE_pose_channel_free(ptr noundef nonnull %54) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %54, ptr noundef nonnull align 16 dereferenceable(544) %5, i64 544, i1 false), !tbaa.struct !141
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 18
  %115 = load ptr, ptr %114, align 8, !tbaa !178
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void @id_us_plus(ptr noundef nonnull %115) #17
  br label %118

118:                                              ; preds = %117, %113
  call void @llvm.lifetime.end.p0(i64 544, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %147

119:                                              ; preds = %58
  %120 = getelementptr inbounds %struct.bPoseChannel, ptr %56, i64 0, i32 18
  %121 = load ptr, ptr %120, align 8, !tbaa !178
  %122 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 18
  store ptr %121, ptr %122, align 8, !tbaa !178
  %123 = icmp eq ptr %121, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void @id_us_plus(ptr noundef nonnull %121) #17
  br label %125

125:                                              ; preds = %124, %119
  %126 = getelementptr inbounds %struct.bPoseChannel, ptr %56, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !179
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.bPoseChannel, ptr %127, i64 0, i32 4
  %131 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %8, ptr noundef nonnull %130) #17
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 19
  store ptr %131, ptr %132, align 8, !tbaa !179
  br label %133

133:                                              ; preds = %129, %125
  %134 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !168
  %136 = getelementptr inbounds %struct.bPoseChannel, ptr %56, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !168
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = call ptr @IDP_CopyProperty(ptr noundef nonnull %137) #17
  store ptr %140, ptr %134, align 8, !tbaa !168
  %141 = icmp eq ptr %135, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  call void @IDP_SyncGroupValues(ptr noundef %140, ptr noundef nonnull %135) #17
  br label %145

143:                                              ; preds = %133
  store ptr null, ptr %134, align 8, !tbaa !168
  %144 = icmp eq ptr %135, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %142, %143
  call void @IDP_FreeProperty(ptr noundef nonnull %135) #17
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %146(ptr noundef nonnull %135) #17
  br label %147

147:                                              ; preds = %139, %143, %145, %53, %118
  %148 = load ptr, ptr %54, align 8, !tbaa !51
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %53, !llvm.loop !180

150:                                              ; preds = %35, %147, %40, %39, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_pose_update_constraint_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_pose_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channels_hash_make(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pchan_to_mat4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  call void @size_to_mat3(ptr noundef nonnull %3, ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %9 = load i16, ptr %8, align 4, !tbaa !144
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %12, i16 noundef signext %9) #17
  br label %22

13:                                               ; preds = %2
  %14 = icmp eq i16 %9, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  %18 = load float, ptr %17, align 8, !tbaa !181
  call void @axis_angle_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %16, float noundef %18) #17
  br label %22

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  %21 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %20) #17
  call void @quat_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %22

22:                                               ; preds = %15, %19, %11
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %5) #17
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !82
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %33) #18
  br label %34

34:                                               ; preds = %31, %26
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @size_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pchan_calc_mat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  tail call void @BKE_pchan_to_mat4(ptr noundef %0, ptr noundef nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pose_where_is_bone_tail(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 18
  %7 = load float, ptr %6, align 4, !tbaa !78
  call fastcc void @mul_v3_fl(ptr noundef nonnull %2, float noundef %7) #18
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 31
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_constraints_make_evalob(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_solve(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_clear_evalob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_where_is(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i16 %5, 25
  br i1 %6, label %7, label %106

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %0, null
  %12 = or i1 %11, %10
  br i1 %12, label %106, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bPose, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !160
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %13
  tail call void @BKE_pose_rebuild(ptr noundef nonnull %1, ptr noundef nonnull %9) #18
  br label %23

23:                                               ; preds = %22, %17
  %24 = tail call float @BKE_scene_frame_get(ptr noundef nonnull %0) #17
  %25 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !43
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %14, align 8, !tbaa !98
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %89, label %37

37:                                               ; preds = %33, %49
  %38 = phi ptr [ %50, %49 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 29
  %44 = getelementptr inbounds %struct.Bone, ptr %40, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef nonnull %43, ptr noundef nonnull %44) #17
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 31
  %46 = getelementptr inbounds %struct.Bone, ptr %40, i64 0, i32 11
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %46) #18
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 32
  %48 = getelementptr inbounds %struct.Bone, ptr %40, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %48) #18
  br label %49

49:                                               ; preds = %37, %42
  %50 = load ptr, ptr %38, align 8, !tbaa !51
  %51 = icmp eq ptr %50, null
  br i1 %51, label %89, label %37, !llvm.loop !182

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %54 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %55 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %53, ptr noundef nonnull %54) #17
  %56 = load ptr, ptr %14, align 8, !tbaa !98
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52, %59
  %60 = phi ptr [ %64, %59 ], [ %57, %52 ]
  %61 = getelementptr inbounds %struct.bPoseChannel, ptr %60, i64 0, i32 5
  %62 = load i16, ptr %61, align 8, !tbaa !183
  %63 = and i16 %62, 23039
  store i16 %63, ptr %61, align 8, !tbaa !183
  %64 = load ptr, ptr %60, align 8, !tbaa !51
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %59, !llvm.loop !184

66:                                               ; preds = %59, %52
  tail call void @BIK_initialize_tree(ptr noundef %0, ptr noundef %1, float noundef %24) #17
  tail call fastcc void @splineik_init_tree(ptr noundef %0, ptr noundef %1) #18
  %67 = load ptr, ptr %14, align 8, !tbaa !98
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70

70:                                               ; preds = %66, %85
  %71 = phi ptr [ %86, %85 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %71, i64 0, i32 5
  %73 = load i16, ptr %72, align 8, !tbaa !183
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 8192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  tail call void @BIK_execute_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %71, float noundef %24) #17
  br label %85

78:                                               ; preds = %70
  %79 = icmp sgt i16 %73, -1
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  tail call fastcc void @splineik_execute_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %71, float noundef %24) #18
  br label %85

81:                                               ; preds = %78
  %82 = and i32 %74, 1024
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @BKE_pose_where_is_bone(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %71, float noundef %24, i8 noundef zeroext 1) #18
  br label %85

85:                                               ; preds = %77, %81, %84, %80
  %86 = load ptr, ptr %71, align 8, !tbaa !51
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %70, !llvm.loop !185

88:                                               ; preds = %85, %66
  tail call void @BIK_release_tree(ptr noundef %0, ptr noundef %1, float noundef %24) #17
  br label %89

89:                                               ; preds = %49, %33, %88
  %90 = load ptr, ptr %14, align 8, !tbaa !98
  %91 = load ptr, ptr %90, align 8, !tbaa !51
  %92 = icmp eq ptr %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %89, %103
  %94 = phi ptr [ %104, %103 ], [ %91, %89 ]
  %95 = getelementptr inbounds %struct.bPoseChannel, ptr %94, i64 0, i32 12
  %96 = load ptr, ptr %95, align 8, !tbaa !76
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.Bone, ptr %96, i64 0, i32 13
  %100 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %99) #17
  %101 = getelementptr inbounds %struct.bPoseChannel, ptr %94, i64 0, i32 28
  %102 = getelementptr inbounds %struct.bPoseChannel, ptr %94, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %101, ptr noundef nonnull %102, ptr noundef nonnull %3) #17
  br label %103

103:                                              ; preds = %93, %98
  %104 = load ptr, ptr %94, align 8, !tbaa !51
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %93, !llvm.loop !186

106:                                              ; preds = %103, %89, %7, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIK_initialize_tree(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splineik_init_tree(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 9
  %10 = load i8, ptr %9, align 8, !tbaa !188
  %11 = and i8 %10, 32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call fastcc void @splineik_init_tree_from_pchan(ptr noundef %0, ptr noundef nonnull %8) #18
  br label %14

14:                                               ; preds = %7, %13
  %15 = load ptr, ptr %8, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !189

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @BIK_execute_tree(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splineik_execute_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !190 {
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !191
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %4, %38
  %9 = phi ptr [ %39, %38 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !192
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %9, i64 0, i32 6
  %15 = zext nneg i16 %11 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %15, %13 ], [ %18, %16 ]
  %18 = add nsw i64 %17, -1
  %19 = load ptr, ptr %14, align 8, !tbaa !194
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = trunc i64 %18 to i32
  tail call fastcc void @splineik_evaluate_bone(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, ptr noundef %21, i32 noundef %22, float noundef %3) #18
  %23 = icmp ugt i64 %17, 1
  br i1 %23, label %16, label %24, !llvm.loop !195

24:                                               ; preds = %16, %8
  %25 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %9, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %29(ptr noundef nonnull %26) #17
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %9, i64 0, i32 3
  %32 = load i8, ptr %31, align 4, !tbaa !196
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %9, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !197
  tail call void %35(ptr noundef %37) #17
  br label %38

38:                                               ; preds = %34, %30
  tail call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %9) #17
  %39 = load ptr, ptr %5, align 8, !tbaa !191
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8, !llvm.loop !198

41:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: optsize
declare void @BIK_release_tree(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_armature_boundbox_get(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @boundbox_armature(ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @boundbox_armature(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !200 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %10 = tail call ptr %9(i64 noundef 104, ptr noundef nonnull @.str.18) #17
  store ptr %10, ptr %5, align 8, !tbaa !199
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %13 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %13, align 8, !tbaa !79
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %2, align 8, !tbaa !79
  %14 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %14, align 8, !tbaa !79
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %3, align 8, !tbaa !79
  %15 = call fastcc i32 @minmax_armature(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !201
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store float -1.000000e+00, ptr %13, align 8, !tbaa !79
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %2, align 8, !tbaa !79
  store float 1.000000e+00, ptr %14, align 8, !tbaa !79
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %17, %11
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  call void @BKE_boundbox_init_from_minmax(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_va_mul_m4_series_6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @b_bone_deform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !202 {
  %6 = load ptr, ptr %0, align 8, !tbaa !129
  %7 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = load float, ptr %2, align 4, !tbaa !79
  %10 = getelementptr inbounds [4 x float], ptr %6, i64 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !79
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %14)
  %16 = getelementptr inbounds [4 x float], ptr %6, i64 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !79
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !79
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %15)
  %21 = getelementptr inbounds [4 x float], ptr %6, i64 3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !79
  %23 = fadd float %20, %22
  %24 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 18
  %25 = load float, ptr %24, align 4, !tbaa !78
  %26 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 26
  %27 = load i16, ptr %26, align 4, !tbaa !85
  %28 = sitofp i16 %27 to float
  %29 = fdiv float %25, %28
  %30 = fdiv float %23, %29
  %31 = fptosi float %30 to i32
  %32 = icmp slt i32 %31, 0
  %33 = sext i16 %27 to i32
  %34 = icmp sgt i32 %33, %31
  %35 = add nsw i32 %33, -1
  %36 = select i1 %34, i32 %31, i32 %35
  %37 = select i1 %32, i32 0, i32 %36
  %38 = icmp eq ptr %3, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.bPoseChanDeform, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !130
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds %struct.DualQuat, ptr %41, i64 %42
  tail call void @copy_dq_dq(ptr noundef nonnull %3, ptr noundef %43) #17
  br label %50

44:                                               ; preds = %5
  %45 = sext i32 %37 to i64
  %46 = getelementptr %struct.Mat4, ptr %6, i64 %45
  %47 = getelementptr %struct.Mat4, ptr %46, i64 1
  tail call void @mul_m4_v3(ptr noundef %47, ptr noundef nonnull %2) #17
  %48 = icmp eq ptr %4, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef %47) #17
  br label %50

50:                                               ; preds = %44, %49, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pchan_deform_mat_add(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !203 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.Bone, ptr %7, i64 0, i32 26
  %9 = load i16, ptr %8, align 4, !tbaa !85
  %10 = icmp sgt i16 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @copy_m3_m3(ptr noundef nonnull %5, ptr noundef %2) #17
  br label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %13) #17
  br label %14

14:                                               ; preds = %12, %11
  call void @mul_m3_fl(ptr noundef nonnull %5, float noundef %1) #17
  call void @add_m3_m3m3(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  ret void
}

; Function Attrs: optsize
declare void @add_weighted_dq_dq(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_dq_dq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !204 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = load float, ptr %0, align 4, !tbaa !79
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !79
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !79
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !205 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !79
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !79
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !206 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !79
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !207 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #17
  ret float %3
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: optsize
declare void @BKE_pose_rest(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_proxylocal_extract(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splineik_init_tree_from_pchan(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !208 {
  %3 = alloca [255 x ptr], align 16
  %4 = alloca [255 x float], align 16
  call void @llvm.lifetime.start.p0(i64 2040, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1020, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %196, label %8

8:                                                ; preds = %2, %31
  %9 = phi ptr [ %32, %31 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !209
  %12 = icmp eq i16 %11, 22
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !210
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !45
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 9
  %24 = load float, ptr %23, align 8, !tbaa !213
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !214
  %29 = and i16 %28, 516
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %8, %22, %26, %13, %18
  %32 = load ptr, ptr %9, align 8, !tbaa !51
  %33 = icmp eq ptr %32, null
  br i1 %33, label %196, label %8, !llvm.loop !215

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 118
  %36 = load ptr, ptr %35, align 8, !tbaa !216
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.CurveCache, ptr %36, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !217
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !219
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42, %38, %34
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef nonnull %16, i8 noundef zeroext 0) #17
  %46 = load ptr, ptr %15, align 8, !tbaa !211
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 118
  %48 = load ptr, ptr %47, align 8, !tbaa !216
  %49 = getelementptr inbounds %struct.CurveCache, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !217
  %51 = icmp eq ptr %50, null
  br i1 %51, label %196, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %50, align 8, !tbaa !219
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %1, null
  %56 = or i1 %54, %55
  br i1 %56, label %196, label %59

57:                                               ; preds = %42
  %58 = icmp eq ptr %1, null
  br i1 %58, label %196, label %59

59:                                               ; preds = %52, %57
  %60 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !221
  %62 = tail call i16 @llvm.smax.i16(i16 %61, i16 0)
  %63 = zext nneg i16 %62 to i32
  %64 = zext nneg i16 %62 to i64
  br label %65

65:                                               ; preds = %59, %70
  %66 = phi i64 [ 0, %59 ], [ %80, %70 ]
  %67 = phi ptr [ %1, %59 ], [ %79, %70 ]
  %68 = phi float [ 0.000000e+00, %59 ], [ %77, %70 ]
  %69 = icmp eq i64 %66, %64
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds [255 x ptr], ptr %3, i64 0, i64 %66
  store ptr %67, ptr %71, align 8, !tbaa !51
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 18
  %75 = load float, ptr %74, align 4, !tbaa !78
  %76 = getelementptr inbounds [255 x float], ptr %4, i64 0, i64 %66
  store float %75, ptr %76, align 4, !tbaa !79
  %77 = fadd float %68, %75
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 13
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = add nuw nsw i64 %66, 1
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %65, !llvm.loop !222

82:                                               ; preds = %70
  %83 = trunc i64 %80 to i32
  br label %84

84:                                               ; preds = %65, %82
  %85 = phi float [ %77, %82 ], [ %68, %65 ]
  %86 = phi i32 [ %83, %82 ], [ %63, %65 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %196, label %88

88:                                               ; preds = %84
  %89 = add nsw i32 %86, -1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [255 x ptr], ptr %3, i64 0, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !51
  %93 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 4
  %94 = load i16, ptr %93, align 4, !tbaa !223
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %143

97:                                               ; preds = %88
  %98 = sitofp i32 %86 to float
  %99 = fdiv float 1.000000e+00, %98
  %100 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !224
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %104(ptr noundef nonnull %101) #17
  br label %105

105:                                              ; preds = %103, %97
  %106 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !221
  %108 = add i16 %107, 1
  %109 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 2
  store i16 %108, ptr %109, align 8, !tbaa !225
  %110 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %111 = sext i16 %108 to i64
  %112 = shl nsw i64 %111, 2
  %113 = tail call ptr %110(i64 noundef %112, ptr noundef nonnull @.str.15) #17
  store ptr %113, ptr %100, align 8, !tbaa !224
  store float 1.000000e+00, ptr %113, align 4, !tbaa !79
  %114 = load i16, ptr %93, align 4, !tbaa !223
  %115 = and i16 %114, 8
  %116 = icmp ne i16 %115, 0
  %117 = fcmp oeq float %85, 0.000000e+00
  %118 = select i1 %116, i1 true, i1 %117
  %119 = zext i32 %86 to i64
  %120 = load float, ptr %113, align 4
  %121 = getelementptr float, ptr %113, i64 1
  br label %122

122:                                              ; preds = %105, %129
  %123 = phi float [ %120, %105 ], [ %131, %129 ]
  %124 = phi i64 [ 0, %105 ], [ %133, %129 ]
  br i1 %118, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds [255 x float], ptr %4, i64 0, i64 %124
  %127 = load float, ptr %126, align 4, !tbaa !79
  %128 = fdiv float %127, %85
  br label %129

129:                                              ; preds = %122, %125
  %130 = phi float [ %128, %125 ], [ %99, %122 ]
  %131 = fsub float %123, %130
  %132 = getelementptr float, ptr %121, i64 %124
  store float %131, ptr %132, align 4, !tbaa !79
  %133 = add nuw nsw i64 %124, 1
  %134 = icmp eq i64 %133, %119
  br i1 %134, label %135, label %122, !llvm.loop !226

135:                                              ; preds = %129
  %136 = zext nneg i32 %86 to i64
  %137 = getelementptr inbounds float, ptr %113, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !79
  %139 = fcmp olt float %138, 0.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store float 0.000000e+00, ptr %137, align 4, !tbaa !79
  br label %141

141:                                              ; preds = %140, %135
  %142 = or i16 %114, 1
  store i16 %142, ptr %93, align 4, !tbaa !223
  br label %143

143:                                              ; preds = %141, %88
  %144 = phi i16 [ %142, %141 ], [ %94, %88 ]
  %145 = and i16 %144, 4
  %146 = icmp ne i16 %145, 0
  %147 = fcmp une float %85, 0.000000e+00
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %171

149:                                              ; preds = %143
  %150 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %151 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !224
  %153 = tail call ptr %150(ptr noundef %152) #17
  %154 = load ptr, ptr %15, align 8, !tbaa !211
  %155 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 118
  %156 = load ptr, ptr %155, align 8, !tbaa !216
  %157 = getelementptr inbounds %struct.CurveCache, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !217
  %159 = getelementptr inbounds %struct.Path, ptr %158, i64 0, i32 2
  %160 = load float, ptr %159, align 4, !tbaa !227
  %161 = fdiv float %85, %160
  %162 = tail call i32 @llvm.umax.i32(i32 %86, i32 1)
  %163 = zext i32 %162 to i64
  br label %164

164:                                              ; preds = %149, %164
  %165 = phi i64 [ 0, %149 ], [ %169, %164 ]
  %166 = getelementptr inbounds float, ptr %153, i64 %165
  %167 = load float, ptr %166, align 4, !tbaa !79
  %168 = fmul float %161, %167
  store float %168, ptr %166, align 4, !tbaa !79
  %169 = add nuw nsw i64 %165, 1
  %170 = icmp eq i64 %169, %163
  br i1 %170, label %174, label %164, !llvm.loop !228

171:                                              ; preds = %143
  %172 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %15, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !224
  br label %174

174:                                              ; preds = %164, %171
  %175 = phi ptr [ %173, %171 ], [ %153, %164 ]
  %176 = phi i8 [ 0, %171 ], [ 1, %164 ]
  %177 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %178 = tail call ptr %177(i64 noundef 64, ptr noundef nonnull @.str.16) #17
  %179 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 2
  store i32 22, ptr %179, align 8, !tbaa !229
  %180 = trunc i32 %86 to i16
  %181 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 4
  store i16 %180, ptr %181, align 2, !tbaa !192
  %182 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %183 = zext nneg i32 %86 to i64
  %184 = shl nuw nsw i64 %183, 3
  %185 = tail call ptr %182(i64 noundef %184, ptr noundef nonnull @.str.17) #17
  %186 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 6
  store ptr %185, ptr %186, align 8, !tbaa !194
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %185, ptr nonnull align 16 %3, i64 %184, i1 false)
  %187 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 5
  store ptr %175, ptr %187, align 8, !tbaa !197
  %188 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 3
  store i8 %176, ptr %188, align 4, !tbaa !196
  %189 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 7
  store ptr %92, ptr %189, align 8, !tbaa !230
  %190 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 8
  store ptr %9, ptr %190, align 8, !tbaa !231
  %191 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %178, i64 0, i32 9
  store ptr %15, ptr %191, align 8, !tbaa !232
  %192 = getelementptr inbounds %struct.bPoseChannel, ptr %92, i64 0, i32 16
  tail call void @BLI_addtail(ptr noundef nonnull %192, ptr noundef %178) #17
  %193 = getelementptr inbounds %struct.bPoseChannel, ptr %92, i64 0, i32 5
  %194 = load i16, ptr %193, align 8, !tbaa !183
  %195 = or i16 %194, -32768
  store i16 %195, ptr %193, align 8, !tbaa !183
  br label %196

196:                                              ; preds = %31, %57, %2, %84, %45, %52, %174
  call void @llvm.lifetime.end.p0(i64 1020, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 2040, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splineik_evaluate_bone(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !233 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [3 x [3 x float]], align 16
  %17 = alloca [3 x float], align 4
  %18 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  tail call void @BKE_pose_where_is_bone(ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %5, i8 noundef zeroext 1) #18
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %20) #18
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %21) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  %22 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = add nuw nsw i32 %4, 1
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %23, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !79
  %28 = fcmp ult float %27, 1.000000e+00
  br i1 %28, label %29, label %75

29:                                               ; preds = %6
  %30 = zext nneg i32 %4 to i64
  %31 = getelementptr inbounds float, ptr %23, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !79
  %33 = fcmp oge float %32, 1.000000e+00
  %34 = fcmp olt float %27, 1.000000e+00
  %35 = and i1 %34, %33
  %36 = fsub float 1.000000e+00, %27
  %37 = fsub float %32, %27
  %38 = fdiv float %36, %37
  %39 = select i1 %35, float %38, float 1.000000e+00
  %40 = load ptr, ptr %19, align 8, !tbaa !211
  %41 = call i32 @where_on_path(ptr noundef %40, float noundef %32, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %13, ptr noundef null) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %19, i64 0, i32 4
  %45 = load i16, ptr %44, align 4, !tbaa !223
  %46 = and i16 %45, 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load ptr, ptr %19, align 8, !tbaa !211
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %50, ptr noundef nonnull %11) #17
  br label %51

51:                                               ; preds = %48, %43
  %52 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %52, ptr noundef nonnull %11) #17
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %21, ptr noundef nonnull %11, float noundef %39) #17
  %53 = load float, ptr %13, align 4, !tbaa !79
  br label %54

54:                                               ; preds = %51, %29
  %55 = phi float [ %53, %51 ], [ 1.000000e+00, %29 ]
  %56 = load ptr, ptr %19, align 8, !tbaa !211
  %57 = load ptr, ptr %22, align 8, !tbaa !197
  %58 = getelementptr inbounds float, ptr %57, i64 %25
  %59 = load float, ptr %58, align 4, !tbaa !79
  %60 = call i32 @where_on_path(ptr noundef %56, float noundef %59, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %13, ptr noundef null) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %19, i64 0, i32 4
  %64 = load i16, ptr %63, align 4, !tbaa !223
  %65 = and i16 %64, 2
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load ptr, ptr %19, align 8, !tbaa !211
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %69, ptr noundef nonnull %11) #17
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %71, ptr noundef nonnull %11) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %11) #18
  %72 = load float, ptr %13, align 4, !tbaa !79
  %73 = fadd float %55, %72
  %74 = fmul float %73, 5.000000e-01
  br label %79

75:                                               ; preds = %6
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 5
  %77 = load i16, ptr %76, align 8, !tbaa !183
  %78 = or i16 %77, 1024
  store i16 %78, ptr %76, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19
  br label %153

79:                                               ; preds = %54, %70
  %80 = phi float [ %55, %54 ], [ %74, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  %81 = call fastcc float @len_v3(ptr noundef nonnull %10) #18
  %82 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 18
  %85 = load float, ptr %84, align 4, !tbaa !78
  %86 = fdiv float %81, %85
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #19
  %87 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %87) #18
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 29, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %88, ptr noundef nonnull %89) #18
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 2
  %91 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 29, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %91) #18
  call void @normalize_m3(ptr noundef nonnull %15) #17
  %92 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %88, ptr noundef nonnull %10) #18
  %93 = call fastcc float @dot_v3v3(ptr noundef nonnull %88, ptr noundef nonnull %10) #18
  %94 = fcmp olt float %93, -1.000000e+00
  br i1 %94, label %98, label %95

95:                                               ; preds = %79
  %96 = fcmp ogt float %93, 1.000000e+00
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %79, %95, %97
  %99 = phi float [ 1.000000e+00, %97 ], [ %93, %95 ], [ -1.000000e+00, %79 ]
  %100 = call float @acosf(float noundef %99) #17
  %101 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %0, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !231
  %103 = getelementptr inbounds %struct.bConstraint, ptr %102, i64 0, i32 9
  %104 = load float, ptr %103, align 8, !tbaa !213
  %105 = fmul float %100, %104
  call void @axis_angle_to_mat3(ptr noundef nonnull %14, ptr noundef nonnull %17, float noundef %105) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  call void @normalize_m3(ptr noundef nonnull %16) #17
  call void @copy_m4_m3(ptr noundef nonnull %9, ptr noundef nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #19
  %106 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %106, float noundef %86) #18
  %107 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %19, i64 0, i32 5
  %108 = load i16, ptr %107, align 2, !tbaa !234
  switch i16 %108, label %126 [
    i16 1, label %109
    i16 2, label %112
  ]

109:                                              ; preds = %98
  %110 = call fastcc float @len_v3(ptr noundef nonnull %87) #18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %110) #18
  %111 = call fastcc float @len_v3(ptr noundef nonnull %91) #18
  br label %123

112:                                              ; preds = %98
  %113 = fcmp une float %86, 0.000000e+00
  br i1 %113, label %114, label %121

114:                                              ; preds = %112
  %115 = call float @llvm.fabs.f32(float %86)
  %116 = fdiv float 1.000000e+00, %115
  %117 = fcmp olt float %116, 0x3F1A36E2E0000000
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = fcmp ogt float %116, 1.000000e+05
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %112, %114, %120, %118
  %122 = phi float [ 1.000000e+05, %120 ], [ %116, %118 ], [ 0x3F1A36E2E0000000, %114 ], [ 1.000000e+00, %112 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %122) #18
  br label %123

123:                                              ; preds = %109, %121
  %124 = phi float [ %122, %121 ], [ %111, %109 ]
  %125 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  call fastcc void @mul_v3_fl(ptr noundef nonnull %125, float noundef %124) #18
  br label %126

126:                                              ; preds = %123, %98
  %127 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %19, i64 0, i32 4
  %128 = load i16, ptr %127, align 4, !tbaa !223
  %129 = and i16 %128, 16
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %80) #18
  %132 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  call fastcc void @mul_v3_fl(ptr noundef nonnull %132, float noundef %80) #18
  br label %133

133:                                              ; preds = %131, %126
  %134 = and i16 %128, 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %20) #18
  br label %148

137:                                              ; preds = %133
  %138 = load ptr, ptr %101, align 8, !tbaa !231
  %139 = getelementptr inbounds %struct.bConstraint, ptr %138, i64 0, i32 9
  %140 = load float, ptr %139, align 8, !tbaa !213
  %141 = fcmp olt float %140, 1.000000e+00
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 13
  %144 = load ptr, ptr %143, align 8, !tbaa !83
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %20) #18
  br label %148

147:                                              ; preds = %142
  call void @interp_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %20, ptr noundef nonnull %7, float noundef %140) #17
  br label %148

148:                                              ; preds = %137, %147, %146, %136
  %149 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %149, ptr noundef nonnull %7) #18
  call void @copy_m4_m4(ptr noundef nonnull %87, ptr noundef nonnull %9) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %7) #18
  call void @BKE_pose_where_is_bone_tail(ptr noundef nonnull %3) #18
  %150 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 5
  %151 = load i16, ptr %150, align 8, !tbaa !183
  %152 = or i16 %151, 1024
  store i16 %152, ptr %150, align 8, !tbaa !183
  br label %153

153:                                              ; preds = %75, %148
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret void
}

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !235 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !79
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !79
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !79
  %15 = load float, ptr %8, align 4, !tbaa !79
  %16 = load float, ptr %2, align 4, !tbaa !79
  %17 = load float, ptr %1, align 4, !tbaa !79
  %18 = load float, ptr %6, align 4, !tbaa !79
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !79
  %23 = load float, ptr %1, align 4, !tbaa !79
  %24 = load float, ptr %10, align 4, !tbaa !79
  %25 = load float, ptr %4, align 4, !tbaa !79
  %26 = load float, ptr %2, align 4, !tbaa !79
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @minmax_armature(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !236 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 31
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 32
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11) #17
  %12 = load ptr, ptr %9, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !237

14:                                               ; preds = %8
  %15 = load ptr, ptr %4, align 8, !tbaa !98
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %18 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %17) #18, !range !238
  %19 = xor i8 %18, 1
  %20 = zext nneg i8 %19 to i32
  ret i32 %20
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !239 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !40, i64 208}
!35 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!35, !41, i64 192}
!44 = !{!35, !41, i64 216}
!45 = !{!46, !40, i64 136}
!46 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !47, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !48, i64 616, !48, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !48, i64 1048, !48, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !48, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !48, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !49, i64 1304, !49, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!47 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!48 = !{!"float", !38, i64 0}
!49 = !{!"long", !38, i64 0}
!50 = !{!46, !37, i64 296}
!51 = !{!37, !37, i64 0}
!52 = !{!53, !37, i64 16}
!53 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !48, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!35, !37, i64 160}
!57 = !{!35, !37, i64 184}
!58 = !{!35, !37, i64 120}
!59 = !{!60, !37, i64 0}
!60 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!61 = !{!35, !37, i64 24}
!62 = !{!35, !41, i64 100}
!63 = !{!46, !37, i64 24}
!64 = distinct !{!64, !55}
!65 = distinct !{!65, !55}
!66 = !{!53, !37, i64 24}
!67 = !{!35, !37, i64 168}
!68 = distinct !{!68, !55}
!69 = !{!"armature.c:copy_bonechildren"}
!70 = distinct !{!70, !55}
!71 = distinct !{!71, !55}
!72 = !{!"armature.c:get_named_bone_bonechildren"}
!73 = distinct !{!73, !55}
!74 = !{!38, !38, i64 0}
!75 = distinct !{!75, !55}
!76 = !{!77, !37, i64 120}
!77 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !48, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !48, i64 524, !48, i64 528, !48, i64 532, !37, i64 536}
!78 = !{!53, !48, i64 284}
!79 = !{!48, !48, i64 0}
!80 = !{!53, !48, i64 292}
!81 = !{!53, !48, i64 296}
!82 = !{!53, !41, i64 176}
!83 = !{!77, !37, i64 128}
!84 = !{!77, !37, i64 136}
!85 = !{!53, !40, i64 324}
!86 = distinct !{!86, !55}
!87 = !{!"armature.c:copy_v3_v3"}
!88 = !{!"armature.c:normalize_v3"}
!89 = !{!"armature.c:mul_v3_fl"}
!90 = !{!"armature.c:equalize_bezier"}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = !{!"armature.c:sub_v3_v3v3"}
!95 = !{!"armature.c:dot_v3v3"}
!96 = !{!"armature.c:len_squared_v3"}
!97 = !{!"armature.c:len_squared_v3v3"}
!98 = !{!46, !37, i64 288}
!99 = !{!100, !37, i64 8}
!100 = !{!"bPoseChanDeform", !37, i64 0, !37, i64 8, !37, i64 16}
!101 = distinct !{!101, !55}
!102 = !{!103, !37, i64 248}
!103 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !104, i64 280, !104, i64 480, !104, i64 680, !104, i64 880, !104, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !48, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!104 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!105 = !{!103, !41, i64 1280}
!106 = !{!107, !37, i64 200}
!107 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!108 = !{!107, !40, i64 128}
!109 = !{!107, !40, i64 130}
!110 = !{!107, !40, i64 132}
!111 = !{!112, !37, i64 1320}
!112 = !{!"DerivedMesh", !104, i64 0, !104, i64 200, !104, i64 400, !104, i64 600, !104, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !48, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!113 = !{!41, !41, i64 0}
!114 = distinct !{!114, !55}
!115 = !{!112, !37, i64 1288}
!116 = !{!117, !41, i64 8}
!117 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!118 = !{!117, !37, i64 0}
!119 = !{!120, !41, i64 0}
!120 = !{!"MDeformWeight", !41, i64 0, !48, i64 4}
!121 = !{!120, !48, i64 4}
!122 = !{!53, !48, i64 300}
!123 = !{!53, !48, i64 304}
!124 = !{!53, !48, i64 272}
!125 = distinct !{!125, !55}
!126 = distinct !{!126, !55}
!127 = distinct !{!127, !55}
!128 = distinct !{!128, !55}
!129 = !{!100, !37, i64 0}
!130 = !{!100, !37, i64 16}
!131 = distinct !{!131, !55}
!132 = !{!"armature.c:pchan_b_bone_defmats"}
!133 = distinct !{!133, !55}
!134 = !{!"armature.c:pchan_bone_deform"}
!135 = !{!"armature.c:dist_bone_deform"}
!136 = !{!53, !48, i64 276}
!137 = !{!"armature.c:sub_v3_v3"}
!138 = !{!"armature.c:add_v3_v3"}
!139 = !{!"armature.c:add_v3_v3v3"}
!140 = !{!"armature.c:get_offset_bone_mat"}
!141 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 8, !51, i64 32, i64 8, !51, i64 40, i64 64, !74, i64 104, i64 2, !142, i64 106, i64 2, !142, i64 108, i64 2, !142, i64 110, i64 2, !142, i64 112, i64 1, !74, i64 113, i64 1, !74, i64 114, i64 6, !74, i64 120, i64 8, !51, i64 128, i64 8, !51, i64 136, i64 8, !51, i64 144, i64 8, !51, i64 152, i64 8, !51, i64 160, i64 8, !51, i64 168, i64 8, !51, i64 176, i64 8, !51, i64 184, i64 8, !51, i64 192, i64 8, !51, i64 200, i64 12, !74, i64 212, i64 12, !74, i64 224, i64 12, !74, i64 236, i64 16, !74, i64 252, i64 12, !74, i64 264, i64 4, !79, i64 268, i64 2, !142, i64 270, i64 2, !142, i64 272, i64 64, !74, i64 336, i64 64, !74, i64 400, i64 64, !74, i64 464, i64 12, !74, i64 476, i64 12, !74, i64 488, i64 12, !74, i64 500, i64 12, !74, i64 512, i64 12, !74, i64 524, i64 4, !79, i64 528, i64 4, !79, i64 532, i64 4, !79, i64 536, i64 8, !51}
!142 = !{!40, !40, i64 0}
!143 = !{!77, !37, i64 24}
!144 = !{!77, !40, i64 268}
!145 = !{!"armature.c:normalize_v3_v3"}
!146 = !{!53, !48, i64 112}
!147 = !{!53, !48, i64 280}
!148 = !{!53, !48, i64 288}
!149 = distinct !{!149, !55}
!150 = !{!"armature.c:len_v3v3"}
!151 = distinct !{!151, !55}
!152 = distinct !{!152, !55}
!153 = distinct !{!153, !55}
!154 = !{!155, !37, i64 0}
!155 = !{!"bPose", !42, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !48, i64 36, !38, i64 40, !38, i64 52, !42, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !47, i64 104, !38, i64 152}
!156 = !{!77, !37, i64 0}
!157 = distinct !{!157, !55}
!158 = !{!46, !37, i64 232}
!159 = !{!35, !41, i64 220}
!160 = !{!155, !40, i64 24}
!161 = !{!"armature.c:rebuild_pose_bone"}
!162 = distinct !{!162, !55}
!163 = !{!"armature.c:pose_proxy_synchronize"}
!164 = !{!53, !41, i64 320}
!165 = distinct !{!165, !55}
!166 = !{!155, !41, i64 80}
!167 = !{!77, !37, i64 176}
!168 = !{!77, !37, i64 16}
!169 = !{!170, !37, i64 104}
!170 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!171 = !{!172, !37, i64 16}
!172 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!173 = distinct !{!173, !55}
!174 = !{!170, !37, i64 112}
!175 = !{!176, !37, i64 0}
!176 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !48, i64 96, !48, i64 100, !37, i64 104, !48, i64 112, !48, i64 116}
!177 = distinct !{!177, !55}
!178 = !{!77, !37, i64 184}
!179 = !{!77, !37, i64 192}
!180 = distinct !{!180, !55}
!181 = !{!77, !48, i64 264}
!182 = distinct !{!182, !55}
!183 = !{!77, !40, i64 104}
!184 = distinct !{!184, !55}
!185 = distinct !{!185, !55}
!186 = distinct !{!186, !55}
!187 = !{!"armature.c:splineik_init_tree"}
!188 = !{!77, !38, i64 112}
!189 = distinct !{!189, !55}
!190 = !{!"armature.c:splineik_execute_tree"}
!191 = !{!77, !37, i64 160}
!192 = !{!193, !40, i64 22}
!193 = !{!"tSplineIK_Tree", !37, i64 0, !37, i64 8, !41, i64 16, !38, i64 20, !40, i64 22, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!194 = !{!193, !37, i64 32}
!195 = distinct !{!195, !55}
!196 = !{!193, !38, i64 20}
!197 = !{!193, !37, i64 24}
!198 = distinct !{!198, !55}
!199 = !{!46, !37, i64 264}
!200 = !{!"armature.c:boundbox_armature"}
!201 = !{i32 0, i32 2}
!202 = !{!"armature.c:b_bone_deform"}
!203 = !{!"armature.c:pchan_deform_mat_add"}
!204 = !{!"armature.c:madd_v3_v3fl"}
!205 = !{!"armature.c:mul_v3_v3fl"}
!206 = !{!"armature.c:zero_v3"}
!207 = !{!"armature.c:len_v3"}
!208 = !{!"armature.c:splineik_init_tree_from_pchan"}
!209 = !{!176, !40, i64 24}
!210 = !{!176, !37, i64 16}
!211 = !{!212, !37, i64 0}
!212 = !{!"bSplineIKConstraint", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!213 = !{!176, !48, i64 96}
!214 = !{!176, !40, i64 26}
!215 = distinct !{!215, !55}
!216 = !{!46, !37, i64 1280}
!217 = !{!218, !37, i64 48}
!218 = !{!"CurveCache", !42, i64 0, !42, i64 16, !42, i64 32, !37, i64 48}
!219 = !{!220, !37, i64 0}
!220 = !{!"Path", !37, i64 0, !41, i64 8, !48, i64 12}
!221 = !{!212, !40, i64 18}
!222 = distinct !{!222, !55}
!223 = !{!212, !40, i64 20}
!224 = !{!212, !37, i64 8}
!225 = !{!212, !40, i64 16}
!226 = distinct !{!226, !55}
!227 = !{!220, !48, i64 12}
!228 = distinct !{!228, !55}
!229 = !{!193, !41, i64 16}
!230 = !{!193, !37, i64 40}
!231 = !{!193, !37, i64 48}
!232 = !{!193, !37, i64 56}
!233 = !{!"armature.c:splineik_evaluate_bone"}
!234 = !{!212, !40, i64 22}
!235 = !{!"armature.c:cross_v3_v3v3"}
!236 = !{!"armature.c:minmax_armature"}
!237 = distinct !{!237, !55}
!238 = !{i8 0, i8 2}
!239 = !{!"armature.c:BLI_listbase_is_empty"}
!240 = !{!42, !37, i64 0}
