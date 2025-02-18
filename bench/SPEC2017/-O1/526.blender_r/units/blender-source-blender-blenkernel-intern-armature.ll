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
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.Path = type { ptr, i32, float }
%struct.tSplineIK_Tree = type { ptr, ptr, i32, i8, i16, ptr, ptr, ptr, ptr, ptr }

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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_armature_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21057, ptr noundef %1) #15
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

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: nounwind uwtable
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
  tail call void @IDP_FreeProperty(ptr noundef nonnull %7) #15
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %11 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void %10(ptr noundef %11) #15
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call void @BKE_armature_bonelist_free(ptr noundef nonnull %13)
  %14 = load ptr, ptr %5, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !54

16:                                               ; preds = %12, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #15
  ret void
}

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BKE_armature_bonelist_free(ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #15
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %10 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void %9(ptr noundef %10) #15
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @freeSketch(ptr noundef nonnull %13) #15
  store ptr null, ptr %12, align 8, !tbaa !58
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #15
  store ptr null, ptr %17, align 8, !tbaa !59
  br label %21

21:                                               ; preds = %16, %20, %1
  ret void
}

declare void @freeSketch(ptr noundef) local_unnamed_addr #2

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @G, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !63
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %91, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %35, %32 ], [ %13, %11 ]
  %17 = phi i8 [ %34, %32 ], [ 0, %11 ]
  %18 = phi i8 [ %33, %32 ], [ 0, %11 ]
  %19 = icmp eq i8 %18, 0
  %20 = icmp eq i8 %17, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 %18, i8 1
  %31 = select i1 %29, i8 1, i8 %17
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !65

37:                                               ; preds = %32, %15
  %38 = phi i8 [ %18, %15 ], [ %33, %32 ]
  %39 = phi i8 [ %17, %15 ], [ %34, %32 ]
  %40 = icmp ne i8 %39, 0
  br label %41

41:                                               ; preds = %37, %11
  %42 = phi i8 [ 0, %11 ], [ %38, %37 ]
  %43 = phi i1 [ false, %11 ], [ %40, %37 ]
  %44 = icmp eq i8 %42, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %91, label %46

46:                                               ; preds = %41
  %47 = icmp ne i8 %42, 0
  %48 = select i1 %43, i1 %47, i1 false
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !51
  %50 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #15
  %51 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 2
  %52 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %51, ptr noundef nonnull %52) #15
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 5
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi ptr [ %53, %55 ], [ %63, %57 ]
  %59 = phi ptr [ %51, %55 ], [ %60, %57 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = getelementptr inbounds %struct.Bone, ptr %60, i64 0, i32 3
  store ptr null, ptr %61, align 8, !tbaa !66
  %62 = load ptr, ptr %56, align 8, !tbaa !67
  call fastcc void @copy_bonechildren(ptr noundef %60, ptr noundef nonnull %58, ptr noundef %62, ptr noundef nonnull %2)
  %63 = load ptr, ptr %58, align 8, !tbaa !51
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57, !llvm.loop !68

65:                                               ; preds = %57, %49
  %66 = load ptr, ptr %2, align 8, !tbaa !51
  %67 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 5
  store ptr %66, ptr %67, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 4
  store ptr null, ptr %68, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %70 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 6
  store i32 0, ptr %70, align 4, !tbaa !63
  %71 = load ptr, ptr %4, align 8, !tbaa !62
  tail call void @BKE_id_lib_local_paths(ptr noundef %3, ptr noundef %71, ptr noundef %50) #15
  %72 = load ptr, ptr %12, align 8, !tbaa !51
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %65, %88
  %75 = phi ptr [ %89, %88 ], [ %72, %65 ]
  %76 = getelementptr inbounds %struct.Object, ptr %75, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.ID, ptr %75, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  store ptr %50, ptr %76, align 8, !tbaa !50
  %84 = load i32, ptr %70, align 4, !tbaa !63
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %70, align 4, !tbaa !63
  %86 = load i32, ptr %8, align 4, !tbaa !63
  %87 = add nsw i32 %86, -1
  store i32 %87, ptr %8, align 4, !tbaa !63
  br label %88

88:                                               ; preds = %74, %83, %79
  %89 = load ptr, ptr %75, align 8, !tbaa !51
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %74, !llvm.loop !69

91:                                               ; preds = %41, %7
  tail call void @id_clear_lib_data(ptr noundef %3, ptr noundef %0) #15
  br label %92

92:                                               ; preds = %88, %91, %65, %46, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_armature_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !51
  %3 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

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
  call fastcc void @copy_bonechildren(ptr noundef %13, ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %2)
  %16 = load ptr, ptr %11, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !68

18:                                               ; preds = %10, %1
  %19 = load ptr, ptr %2, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  store ptr null, ptr %21, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %3
}

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_bonechildren(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
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
  %12 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %9) #15
  %13 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %15, ptr noundef nonnull %16) #15
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %24, %19 ], [ %17, %14 ]
  %21 = phi ptr [ %22, %19 ], [ %15, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.Bone, ptr %22, i64 0, i32 3
  store ptr %0, ptr %23, align 8, !tbaa !66
  tail call fastcc void @copy_bonechildren(ptr noundef %22, ptr noundef nonnull %20, ptr noundef %2, ptr noundef %3)
  %24 = load ptr, ptr %20, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !70

26:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
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
  %11 = tail call fastcc ptr @get_named_bone_bonechildren(ptr noundef nonnull %8, ptr noundef %1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %6, label %13, !llvm.loop !71

13:                                               ; preds = %6, %10, %2
  %14 = phi ptr [ null, %2 ], [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_named_bone_bonechildren(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 5
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #16
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
  %13 = tail call fastcc ptr @get_named_bone_bonechildren(ptr noundef nonnull %10, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %8, label %15, !llvm.loop !72

15:                                               ; preds = %8, %12, %2
  %16 = phi ptr [ %0, %2 ], [ %13, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bone_autoside_name(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 16
  %7 = alloca [5 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %7, i8 0, i64 5, i1 false)
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %151, label %11

11:                                               ; preds = %5
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 64) #15
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
  br i1 %20, label %21, label %50

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false) #15
  br label %50

30:                                               ; preds = %27
  %31 = fcmp ogt float %4, 0.000000e+00
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false) #15
  br label %50

33:                                               ; preds = %26
  %34 = fcmp olt float %3, 0.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false) #15
  br label %50

36:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false) #15
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
  br i1 %42, label %43, label %50

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
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i16 76, ptr %7, align 4
  br label %50

50:                                               ; preds = %35, %36, %29, %32, %30, %46, %49, %47, %40, %43, %41, %19, %21, %18, %25, %24
  %51 = load i8, ptr %7, align 4, !tbaa !73
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %151, label %53

53:                                               ; preds = %50, %136
  %54 = phi i32 [ %137, %136 ], [ %9, %50 ]
  %55 = icmp ugt i32 %54, 2
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = add i32 %54, -2
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !73
  %61 = icmp eq i8 %60, 46
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = add i32 %54, -1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !73
  switch i8 %66, label %136 [
    i8 76, label %133
    i8 82, label %133
  ]

67:                                               ; preds = %56, %53
  %68 = icmp ugt i32 %54, 3
  br i1 %68, label %69, label %94

69:                                               ; preds = %67
  %70 = add i32 %54, -3
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !73
  %74 = icmp eq i8 %73, 46
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = add i32 %54, -2
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !73
  switch i8 %79, label %136 [
    i8 70, label %80
    i8 66, label %88
  ]

80:                                               ; preds = %75
  %81 = add i32 %54, -1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !73
  %85 = icmp eq i8 %84, 114
  br i1 %85, label %133, label %86

86:                                               ; preds = %80
  %87 = icmp eq i8 %79, 66
  br i1 %87, label %88, label %136

88:                                               ; preds = %75, %86
  %89 = add i32 %54, -1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !73
  %93 = icmp eq i8 %92, 107
  br i1 %93, label %133, label %136

94:                                               ; preds = %69, %67
  %95 = icmp ugt i32 %54, 4
  br i1 %95, label %96, label %136

96:                                               ; preds = %94
  %97 = add i32 %54, -4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !73
  %101 = icmp eq i8 %100, 46
  br i1 %101, label %102, label %136

102:                                              ; preds = %96
  %103 = add i32 %54, -3
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !73
  switch i8 %106, label %136 [
    i8 84, label %107
    i8 66, label %121
  ]

107:                                              ; preds = %102
  %108 = add i32 %54, -2
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !73
  %112 = icmp eq i8 %111, 111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = add i32 %54, -1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !73
  %118 = icmp eq i8 %117, 112
  br i1 %118, label %133, label %119

119:                                              ; preds = %113, %107
  %120 = icmp eq i8 %106, 66
  br i1 %120, label %121, label %136

121:                                              ; preds = %102, %119
  %122 = add i32 %54, -2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !73
  %126 = icmp eq i8 %125, 111
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = add i32 %54, -1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !73
  %132 = icmp eq i8 %131, 116
  br i1 %132, label %133, label %136

133:                                              ; preds = %113, %127, %80, %88, %62, %62
  %134 = phi ptr [ %59, %62 ], [ %59, %62 ], [ %72, %88 ], [ %72, %80 ], [ %99, %127 ], [ %99, %113 ]
  %135 = phi i32 [ %57, %62 ], [ %57, %62 ], [ %70, %88 ], [ %70, %80 ], [ %97, %127 ], [ %97, %113 ]
  store i8 0, ptr %134, align 1, !tbaa !73
  br label %136

136:                                              ; preds = %133, %102, %75, %62, %88, %86, %119, %121, %127, %96, %94
  %137 = phi i32 [ %54, %88 ], [ %54, %86 ], [ %54, %127 ], [ %54, %121 ], [ %54, %119 ], [ %54, %96 ], [ %54, %94 ], [ %54, %62 ], [ %54, %75 ], [ %54, %102 ], [ %135, %133 ]
  %138 = phi i1 [ true, %88 ], [ true, %86 ], [ true, %127 ], [ true, %121 ], [ true, %119 ], [ true, %96 ], [ true, %94 ], [ true, %62 ], [ true, %75 ], [ true, %102 ], [ false, %133 ]
  br i1 %138, label %139, label %53, !llvm.loop !74

139:                                              ; preds = %136
  %140 = sub i32 64, %137
  %141 = zext i32 %140 to i64
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %143 = add i64 %142, 1
  %144 = icmp ugt i64 %143, %141
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = zext i32 %137 to i64
  %147 = sub i64 %146, %142
  %148 = call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %147) #15
  br label %149

149:                                              ; preds = %145, %139
  %150 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  br label %151

151:                                              ; preds = %50, %5, %149
  %152 = phi i32 [ 1, %149 ], [ 0, %5 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret i32 %152
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @b_bone_spline_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [33 x float], align 16
  %8 = alloca [33 x [4 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [33 x [4 x float]], align 16
  %18 = alloca [4 x [4 x float]], align 16
  %19 = alloca [3 x [3 x float]], align 16
  %20 = alloca [3 x [3 x float]], align 16
  %21 = alloca [4 x [4 x float]], align 16
  %22 = alloca [3 x [3 x float]], align 16
  %23 = alloca [3 x [3 x float]], align 16
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %17) #15
  %26 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 18
  %27 = load float, ptr %26, align 4, !tbaa !77
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29
  call void @mat4_to_size(ptr noundef nonnull %11, ptr noundef nonnull %30) #15
  %31 = load float, ptr %11, align 4, !tbaa !78
  %32 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !78
  %34 = fsub float %31, %33
  %35 = call float @llvm.fabs.f32(float %34)
  %36 = fcmp ogt float %35, 0x3EB0C6F7A0000000
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !78
  %40 = fsub float %33, %39
  %41 = call float @llvm.fabs.f32(float %40)
  %42 = fcmp ogt float %41, 0x3EB0C6F7A0000000
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %29
  call void @size_to_mat4(ptr noundef nonnull %15, ptr noundef nonnull %11) #15
  %44 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %15) #15
  %45 = load float, ptr %32, align 4, !tbaa !78
  %46 = fmul float %27, %45
  br label %47

47:                                               ; preds = %37, %43, %3
  %48 = phi float [ %27, %3 ], [ %46, %43 ], [ %27, %37 ]
  %49 = phi i1 [ true, %3 ], [ false, %43 ], [ true, %37 ]
  %50 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 20
  %51 = load float, ptr %50, align 4, !tbaa !79
  %52 = fmul float %48, %51
  %53 = fmul float %52, 0x3FD8FD5CC0000000
  %54 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 21
  %55 = load float, ptr %54, align 8, !tbaa !80
  %56 = fmul float %48, %55
  %57 = fmul float %56, 0x3FD8FD5CC0000000
  %58 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !81
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 13
  %64 = load ptr, ptr %63, align 8, !tbaa !82
  br label %65

65:                                               ; preds = %47, %62
  %66 = phi ptr [ %64, %62 ], [ null, %47 ]
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !83
  br i1 %28, label %72, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %24, align 8, !tbaa !75
  %71 = getelementptr inbounds %struct.Bone, ptr %70, i64 0, i32 13
  br label %75

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29
  br i1 %49, label %75, label %74

74:                                               ; preds = %72
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %73) #15
  call void @normalize_m4(ptr noundef nonnull %14) #15
  br label %75

75:                                               ; preds = %72, %74, %69
  %76 = phi ptr [ %14, %74 ], [ %71, %69 ], [ %73, %72 ]
  %77 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %76) #15
  %78 = icmp eq ptr %66, null
  br i1 %78, label %175, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %20) #15
  br i1 %28, label %89, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = getelementptr inbounds %struct.Bone, ptr %82, i64 0, i32 11
  %84 = load float, ptr %83, align 4, !tbaa !78
  store float %84, ptr %9, align 4, !tbaa !78
  %85 = getelementptr inbounds %struct.Bone, ptr %82, i64 0, i32 11, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !78
  %87 = getelementptr inbounds float, ptr %9, i64 1
  store float %86, ptr %87, align 4, !tbaa !78
  %88 = getelementptr inbounds %struct.Bone, ptr %82, i64 0, i32 11, i64 2
  br label %96

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 31
  %91 = load float, ptr %90, align 4, !tbaa !78
  store float %91, ptr %9, align 4, !tbaa !78
  %92 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 31, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !78
  %94 = getelementptr inbounds float, ptr %9, i64 1
  store float %93, ptr %94, align 4, !tbaa !78
  %95 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 31, i64 2
  br label %96

96:                                               ; preds = %89, %80
  %97 = phi ptr [ %95, %89 ], [ %88, %80 ]
  %98 = load float, ptr %97, align 4, !tbaa !78
  %99 = getelementptr inbounds float, ptr %9, i64 2
  store float %98, ptr %99, align 4, !tbaa !78
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %9) #15
  %100 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = getelementptr inbounds %struct.Bone, ptr %101, i64 0, i32 26
  %103 = load i16, ptr %102, align 4, !tbaa !84
  %104 = icmp sgt i16 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !78
  %108 = fsub float %107, %48
  store float %108, ptr %106, align 4, !tbaa !78
  br label %109

109:                                              ; preds = %105, %96
  %110 = load float, ptr %9, align 4, !tbaa !78
  %111 = getelementptr inbounds float, ptr %9, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !78
  %113 = fmul float %112, %112
  %114 = call float @llvm.fmuladd.f32(float %110, float %110, float %113)
  %115 = getelementptr inbounds float, ptr %9, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !78
  %117 = call float @llvm.fmuladd.f32(float %116, float %116, float %114)
  %118 = fcmp ogt float %117, 0x38AA95A5C0000000
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = call float @sqrtf(float noundef %117) #15
  %121 = fdiv float 1.000000e+00, %120
  %122 = load float, ptr %9, align 4, !tbaa !78
  %123 = fmul float %122, %121
  store float %123, ptr %9, align 4, !tbaa !78
  %124 = load float, ptr %111, align 4, !tbaa !78
  %125 = fmul float %121, %124
  store float %125, ptr %111, align 4, !tbaa !78
  %126 = load float, ptr %115, align 4, !tbaa !78
  %127 = fmul float %121, %126
  br label %129

128:                                              ; preds = %109
  store float 0.000000e+00, ptr %9, align 4, !tbaa !78
  store float 0.000000e+00, ptr %111, align 4, !tbaa !78
  br label %129

129:                                              ; preds = %119, %128
  %130 = phi float [ 0.000000e+00, %128 ], [ %127, %119 ]
  store float %130, ptr %115, align 4, !tbaa !78
  %131 = fneg float %53
  %132 = load float, ptr %9, align 4, !tbaa !78
  %133 = fmul float %132, %131
  store float %133, ptr %9, align 4, !tbaa !78
  %134 = load float, ptr %111, align 4, !tbaa !78
  %135 = fmul float %134, %131
  store float %135, ptr %111, align 4, !tbaa !78
  %136 = fmul float %130, %131
  store float %136, ptr %115, align 4, !tbaa !78
  %137 = load ptr, ptr %100, align 8, !tbaa !75
  %138 = getelementptr inbounds %struct.Bone, ptr %137, i64 0, i32 26
  %139 = load i16, ptr %138, align 4, !tbaa !84
  %140 = icmp eq i16 %139, 1
  br i1 %140, label %141, label %173

141:                                              ; preds = %129
  %142 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 29
  %143 = getelementptr inbounds %struct.Bone, ptr %137, i64 0, i32 13
  %144 = select i1 %28, ptr %142, ptr %143
  call void @mul_m4_m4m4(ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %144) #15
  call void @copy_m3_m4(ptr noundef nonnull %19, ptr noundef nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %145 = load float, ptr %9, align 4, !tbaa !78
  %146 = load float, ptr %111, align 4, !tbaa !78
  %147 = fmul float %146, %146
  %148 = call float @llvm.fmuladd.f32(float %145, float %145, float %147)
  %149 = load float, ptr %115, align 4, !tbaa !78
  %150 = call float @llvm.fmuladd.f32(float %149, float %149, float %148)
  %151 = fcmp ogt float %150, 0x38AA95A5C0000000
  br i1 %151, label %152, label %162

152:                                              ; preds = %141
  %153 = call float @sqrtf(float noundef %150) #15
  %154 = fdiv float 1.000000e+00, %153
  %155 = load float, ptr %9, align 4, !tbaa !78
  %156 = fmul float %155, %154
  store float %156, ptr %6, align 4, !tbaa !78
  %157 = load float, ptr %111, align 4, !tbaa !78
  %158 = fmul float %154, %157
  %159 = getelementptr inbounds float, ptr %6, i64 1
  store float %158, ptr %159, align 4, !tbaa !78
  %160 = load float, ptr %115, align 4, !tbaa !78
  %161 = fmul float %154, %160
  br label %164

162:                                              ; preds = %141
  store float 0.000000e+00, ptr %6, align 4, !tbaa !78
  %163 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %163, align 4, !tbaa !78
  br label %164

164:                                              ; preds = %152, %162
  %165 = phi float [ %161, %152 ], [ 0.000000e+00, %162 ]
  %166 = getelementptr inbounds float, ptr %6, i64 2
  store float %165, ptr %166, align 4, !tbaa !78
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %6, float noundef 0.000000e+00, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  %167 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %20, ptr noundef nonnull %12) #15
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  %168 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2
  %169 = load float, ptr %168, align 8, !tbaa !78
  %170 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2, i64 2
  %171 = load float, ptr %170, align 16, !tbaa !78
  %172 = call float @atan2f(float noundef %169, float noundef %171) #15
  br label %173

173:                                              ; preds = %164, %129
  %174 = phi float [ %172, %164 ], [ 0.000000e+00, %129 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #15
  br label %178

175:                                              ; preds = %75
  store float 0.000000e+00, ptr %9, align 4, !tbaa !78
  %176 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %53, ptr %176, align 4, !tbaa !78
  %177 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %177, align 4, !tbaa !78
  br label %178

178:                                              ; preds = %175, %173
  %179 = phi float [ %174, %173 ], [ 0.000000e+00, %175 ]
  %180 = icmp eq ptr %68, null
  br i1 %180, label %275, label %181

181:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #15
  br i1 %28, label %191, label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %184 = load ptr, ptr %183, align 8, !tbaa !75
  %185 = getelementptr inbounds %struct.Bone, ptr %184, i64 0, i32 12
  %186 = load float, ptr %185, align 4, !tbaa !78
  store float %186, ptr %10, align 4, !tbaa !78
  %187 = getelementptr inbounds %struct.Bone, ptr %184, i64 0, i32 12, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !78
  %189 = getelementptr inbounds float, ptr %10, i64 1
  store float %188, ptr %189, align 4, !tbaa !78
  %190 = getelementptr inbounds %struct.Bone, ptr %184, i64 0, i32 12, i64 2
  br label %198

191:                                              ; preds = %181
  %192 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 32
  %193 = load float, ptr %192, align 4, !tbaa !78
  store float %193, ptr %10, align 4, !tbaa !78
  %194 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 32, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !78
  %196 = getelementptr inbounds float, ptr %10, i64 1
  store float %195, ptr %196, align 4, !tbaa !78
  %197 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 32, i64 2
  br label %198

198:                                              ; preds = %191, %182
  %199 = phi ptr [ %197, %191 ], [ %190, %182 ]
  %200 = load float, ptr %199, align 4, !tbaa !78
  %201 = getelementptr inbounds float, ptr %10, i64 2
  store float %200, ptr %201, align 4, !tbaa !78
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %10) #15
  %202 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %203 = load ptr, ptr %202, align 8, !tbaa !75
  %204 = getelementptr inbounds %struct.Bone, ptr %203, i64 0, i32 26
  %205 = load i16, ptr %204, align 4, !tbaa !84
  %206 = icmp sgt i16 %205, 1
  br i1 %206, label %211, label %207

207:                                              ; preds = %198
  %208 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !78
  %210 = fsub float %209, %48
  store float %210, ptr %208, align 4, !tbaa !78
  br label %211

211:                                              ; preds = %198, %207
  %212 = load float, ptr %10, align 4, !tbaa !78
  %213 = getelementptr inbounds float, ptr %10, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !78
  %215 = fmul float %214, %214
  %216 = call float @llvm.fmuladd.f32(float %212, float %212, float %215)
  %217 = getelementptr inbounds float, ptr %10, i64 2
  %218 = load float, ptr %217, align 4, !tbaa !78
  %219 = call float @llvm.fmuladd.f32(float %218, float %218, float %216)
  %220 = fcmp ogt float %219, 0x38AA95A5C0000000
  br i1 %220, label %221, label %230

221:                                              ; preds = %211
  %222 = call float @sqrtf(float noundef %219) #15
  %223 = fdiv float 1.000000e+00, %222
  %224 = load float, ptr %10, align 4, !tbaa !78
  %225 = fmul float %224, %223
  store float %225, ptr %10, align 4, !tbaa !78
  %226 = load float, ptr %213, align 4, !tbaa !78
  %227 = fmul float %223, %226
  store float %227, ptr %213, align 4, !tbaa !78
  %228 = load float, ptr %217, align 4, !tbaa !78
  %229 = fmul float %223, %228
  br label %231

230:                                              ; preds = %211
  store float 0.000000e+00, ptr %10, align 4, !tbaa !78
  store float 0.000000e+00, ptr %213, align 4, !tbaa !78
  br label %231

231:                                              ; preds = %221, %230
  %232 = phi float [ 0.000000e+00, %230 ], [ %229, %221 ]
  store float %232, ptr %217, align 4, !tbaa !78
  br i1 %28, label %236, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr %202, align 8, !tbaa !75
  %235 = getelementptr inbounds %struct.Bone, ptr %234, i64 0, i32 13
  br label %238

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 29
  br label %238

238:                                              ; preds = %236, %233
  %239 = phi ptr [ %237, %236 ], [ %235, %233 ]
  call void @mul_m4_m4m4(ptr noundef nonnull %21, ptr noundef nonnull %13, ptr noundef nonnull %239) #15
  call void @copy_m3_m4(ptr noundef nonnull %22, ptr noundef nonnull %21) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %240 = load float, ptr %10, align 4, !tbaa !78
  %241 = load float, ptr %213, align 4, !tbaa !78
  %242 = fmul float %241, %241
  %243 = call float @llvm.fmuladd.f32(float %240, float %240, float %242)
  %244 = load float, ptr %217, align 4, !tbaa !78
  %245 = call float @llvm.fmuladd.f32(float %244, float %244, float %243)
  %246 = fcmp ogt float %245, 0x38AA95A5C0000000
  br i1 %246, label %247, label %257

247:                                              ; preds = %238
  %248 = call float @sqrtf(float noundef %245) #15
  %249 = fdiv float 1.000000e+00, %248
  %250 = load float, ptr %10, align 4, !tbaa !78
  %251 = fmul float %250, %249
  store float %251, ptr %5, align 4, !tbaa !78
  %252 = load float, ptr %213, align 4, !tbaa !78
  %253 = fmul float %249, %252
  %254 = getelementptr inbounds float, ptr %5, i64 1
  store float %253, ptr %254, align 4, !tbaa !78
  %255 = load float, ptr %217, align 4, !tbaa !78
  %256 = fmul float %249, %255
  br label %259

257:                                              ; preds = %238
  store float 0.000000e+00, ptr %5, align 4, !tbaa !78
  %258 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %258, align 4, !tbaa !78
  br label %259

259:                                              ; preds = %247, %257
  %260 = phi float [ %256, %247 ], [ 0.000000e+00, %257 ]
  %261 = getelementptr inbounds float, ptr %5, i64 2
  store float %260, ptr %261, align 4, !tbaa !78
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %5, float noundef 0.000000e+00, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  %262 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %23, ptr noundef nonnull %12) #15
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %23, ptr noundef nonnull %22) #15
  %263 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2
  %264 = load float, ptr %263, align 8, !tbaa !78
  %265 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2, i64 2
  %266 = load float, ptr %265, align 16, !tbaa !78
  %267 = call float @atan2f(float noundef %264, float noundef %266) #15
  %268 = fneg float %57
  %269 = load float, ptr %10, align 4, !tbaa !78
  %270 = fmul float %269, %268
  store float %270, ptr %10, align 4, !tbaa !78
  %271 = load float, ptr %213, align 4, !tbaa !78
  %272 = fmul float %271, %268
  store float %272, ptr %213, align 4, !tbaa !78
  %273 = load float, ptr %217, align 4, !tbaa !78
  %274 = fmul float %273, %268
  store float %274, ptr %217, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #15
  br label %279

275:                                              ; preds = %178
  store float 0.000000e+00, ptr %10, align 4, !tbaa !78
  %276 = fneg float %57
  %277 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %276, ptr %277, align 4, !tbaa !78
  %278 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %278, align 4, !tbaa !78
  br label %279

279:                                              ; preds = %275, %259
  %280 = phi float [ %267, %259 ], [ 0.000000e+00, %275 ]
  %281 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 26
  %282 = load i16, ptr %281, align 4, !tbaa !84
  %283 = icmp sgt i16 %282, 32
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  store i16 32, ptr %281, align 4, !tbaa !84
  br label %285

285:                                              ; preds = %284, %279
  %286 = load float, ptr %9, align 4, !tbaa !78
  %287 = load float, ptr %10, align 4, !tbaa !78
  call void @BKE_curve_forward_diff_bezier(float noundef 0.000000e+00, float noundef %286, float noundef %287, float noundef 0.000000e+00, ptr noundef nonnull %17, i32 noundef 32, i32 noundef 16) #15
  %288 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !78
  %290 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %291 = load float, ptr %290, align 4, !tbaa !78
  %292 = fadd float %48, %291
  %293 = getelementptr inbounds float, ptr %17, i64 1
  call void @BKE_curve_forward_diff_bezier(float noundef 0.000000e+00, float noundef %289, float noundef %292, float noundef %48, ptr noundef nonnull %293, i32 noundef 32, i32 noundef 16) #15
  %294 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %295 = load float, ptr %294, align 4, !tbaa !78
  %296 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %297 = load float, ptr %296, align 4, !tbaa !78
  %298 = getelementptr inbounds float, ptr %17, i64 2
  call void @BKE_curve_forward_diff_bezier(float noundef 0.000000e+00, float noundef %295, float noundef %297, float noundef 0.000000e+00, ptr noundef nonnull %298, i32 noundef 32, i32 noundef 16) #15
  %299 = fsub float %280, %179
  %300 = call float @llvm.fmuladd.f32(float %299, float 0x3FD8FD5CC0000000, float %179)
  %301 = call float @llvm.fmuladd.f32(float %299, float 0xBFD8FD5CC0000000, float %280)
  %302 = getelementptr inbounds float, ptr %17, i64 3
  call void @BKE_curve_forward_diff_bezier(float noundef %179, float noundef %300, float noundef %301, float noundef %280, ptr noundef nonnull %302, i32 noundef 32, i32 noundef 16) #15
  %303 = load i16, ptr %281, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %8) #15
  store float 0.000000e+00, ptr %7, align 16, !tbaa !78
  br label %304

304:                                              ; preds = %285, %304
  %305 = phi i64 [ 0, %285 ], [ %329, %304 ]
  %306 = phi ptr [ %17, %285 ], [ %310, %304 ]
  %307 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %305
  call void @copy_qt_qt(ptr noundef nonnull %307, ptr noundef nonnull %306) #15
  %308 = getelementptr inbounds [33 x float], ptr %7, i64 0, i64 %305
  %309 = load float, ptr %308, align 4, !tbaa !78
  %310 = getelementptr inbounds float, ptr %306, i64 4
  %311 = load float, ptr %310, align 4, !tbaa !78
  %312 = load float, ptr %306, align 4, !tbaa !78
  %313 = fsub float %311, %312
  %314 = getelementptr inbounds float, ptr %306, i64 5
  %315 = load float, ptr %314, align 4, !tbaa !78
  %316 = getelementptr inbounds float, ptr %306, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !78
  %318 = fsub float %315, %317
  %319 = getelementptr inbounds float, ptr %306, i64 6
  %320 = load float, ptr %319, align 4, !tbaa !78
  %321 = getelementptr inbounds float, ptr %306, i64 2
  %322 = load float, ptr %321, align 4, !tbaa !78
  %323 = fsub float %320, %322
  %324 = fmul float %318, %318
  %325 = call float @llvm.fmuladd.f32(float %313, float %313, float %324)
  %326 = call float @llvm.fmuladd.f32(float %323, float %323, float %325)
  %327 = call float @sqrtf(float noundef %326) #15
  %328 = fadd float %309, %327
  %329 = add nuw nsw i64 %305, 1
  %330 = getelementptr inbounds [33 x float], ptr %7, i64 0, i64 %329
  store float %328, ptr %330, align 4, !tbaa !78
  %331 = icmp eq i64 %329, 32
  br i1 %331, label %332, label %304, !llvm.loop !85

332:                                              ; preds = %304
  %333 = sext i16 %303 to i32
  %334 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 32
  call void @copy_qt_qt(ptr noundef nonnull %334, ptr noundef nonnull %310) #15
  %335 = getelementptr inbounds [33 x float], ptr %7, i64 0, i64 32
  %336 = load float, ptr %335, align 16, !tbaa !78
  %337 = sitofp i16 %303 to float
  %338 = fdiv float %336, %337
  %339 = getelementptr inbounds float, ptr %17, i64 4
  %340 = icmp sgt i16 %303, 1
  br i1 %340, label %341, label %404

341:                                              ; preds = %332, %361
  %342 = phi ptr [ %402, %361 ], [ %339, %332 ]
  %343 = phi i32 [ %362, %361 ], [ 1, %332 ]
  %344 = phi i32 [ %401, %361 ], [ 1, %332 ]
  %345 = phi ptr [ %342, %361 ], [ %17, %332 ]
  %346 = sitofp i32 %344 to float
  %347 = fmul float %338, %346
  %348 = icmp slt i32 %343, 32
  br i1 %348, label %349, label %361

349:                                              ; preds = %341
  %350 = sext i32 %343 to i64
  br label %351

351:                                              ; preds = %349, %356
  %352 = phi i64 [ %350, %349 ], [ %357, %356 ]
  %353 = getelementptr inbounds [33 x float], ptr %7, i64 0, i64 %352
  %354 = load float, ptr %353, align 4, !tbaa !78
  %355 = fcmp ult float %347, %354
  br i1 %355, label %359, label %356

356:                                              ; preds = %351
  %357 = add nsw i64 %352, 1
  %358 = icmp eq i64 %357, 32
  br i1 %358, label %361, label %351, !llvm.loop !86

359:                                              ; preds = %351
  %360 = trunc i64 %352 to i32
  br label %361

361:                                              ; preds = %359, %356, %341
  %362 = phi i32 [ %343, %341 ], [ %360, %359 ], [ 32, %356 ]
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [33 x float], ptr %7, i64 0, i64 %363
  %365 = load float, ptr %364, align 4, !tbaa !78
  %366 = add nsw i32 %362, -1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [33 x float], ptr %7, i64 0, i64 %367
  %369 = load float, ptr %368, align 4, !tbaa !78
  %370 = fsub float %365, %369
  %371 = fsub float %365, %347
  %372 = fdiv float %371, %370
  %373 = fsub float 1.000000e+00, %372
  %374 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %367
  %375 = load float, ptr %374, align 16, !tbaa !78
  %376 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %363
  %377 = load float, ptr %376, align 16, !tbaa !78
  %378 = fmul float %377, %373
  %379 = call float @llvm.fmuladd.f32(float %372, float %375, float %378)
  store float %379, ptr %342, align 4, !tbaa !78
  %380 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %367, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !78
  %382 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %363, i64 1
  %383 = load float, ptr %382, align 4, !tbaa !78
  %384 = fmul float %373, %383
  %385 = call float @llvm.fmuladd.f32(float %372, float %381, float %384)
  %386 = getelementptr inbounds float, ptr %345, i64 5
  store float %385, ptr %386, align 4, !tbaa !78
  %387 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %367, i64 2
  %388 = load float, ptr %387, align 8, !tbaa !78
  %389 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %363, i64 2
  %390 = load float, ptr %389, align 8, !tbaa !78
  %391 = fmul float %373, %390
  %392 = call float @llvm.fmuladd.f32(float %372, float %388, float %391)
  %393 = getelementptr inbounds float, ptr %345, i64 6
  store float %392, ptr %393, align 4, !tbaa !78
  %394 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %367, i64 3
  %395 = load float, ptr %394, align 4, !tbaa !78
  %396 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 %363, i64 3
  %397 = load float, ptr %396, align 4, !tbaa !78
  %398 = fmul float %373, %397
  %399 = call float @llvm.fmuladd.f32(float %372, float %395, float %398)
  %400 = getelementptr inbounds float, ptr %345, i64 7
  store float %399, ptr %400, align 4, !tbaa !78
  %401 = add nuw nsw i32 %344, 1
  %402 = getelementptr inbounds float, ptr %342, i64 4
  %403 = icmp eq i32 %401, %333
  br i1 %403, label %404, label %341, !llvm.loop !87

404:                                              ; preds = %361, %332
  %405 = phi ptr [ %339, %332 ], [ %402, %361 ]
  %406 = getelementptr inbounds [33 x [4 x float]], ptr %8, i64 0, i64 32
  call void @copy_qt_qt(ptr noundef nonnull %405, ptr noundef nonnull %406) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %7) #15
  %407 = load i16, ptr %281, align 4, !tbaa !84
  %408 = icmp sgt i16 %407, 0
  br i1 %408, label %409, label %461

409:                                              ; preds = %404
  %410 = getelementptr inbounds float, ptr %4, i64 1
  %411 = getelementptr inbounds float, ptr %4, i64 2
  %412 = getelementptr inbounds float, ptr %4, i64 1
  %413 = getelementptr inbounds float, ptr %4, i64 2
  br label %414

414:                                              ; preds = %409, %456
  %415 = phi i64 [ 0, %409 ], [ %457, %456 ]
  %416 = phi ptr [ %17, %409 ], [ %417, %456 ]
  %417 = getelementptr inbounds float, ptr %416, i64 4
  %418 = load float, ptr %417, align 4, !tbaa !78
  %419 = load float, ptr %416, align 4, !tbaa !78
  %420 = fsub float %418, %419
  store float %420, ptr %9, align 4, !tbaa !78
  %421 = getelementptr inbounds float, ptr %416, i64 5
  %422 = load float, ptr %421, align 4, !tbaa !78
  %423 = getelementptr inbounds float, ptr %416, i64 1
  %424 = load float, ptr %423, align 4, !tbaa !78
  %425 = fsub float %422, %424
  store float %425, ptr %288, align 4, !tbaa !78
  %426 = getelementptr inbounds float, ptr %416, i64 6
  %427 = load float, ptr %426, align 4, !tbaa !78
  %428 = getelementptr inbounds float, ptr %416, i64 2
  %429 = load float, ptr %428, align 4, !tbaa !78
  %430 = fsub float %427, %429
  store float %430, ptr %294, align 4, !tbaa !78
  %431 = getelementptr inbounds float, ptr %416, i64 3
  %432 = load float, ptr %431, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %433 = fmul float %425, %425
  %434 = call float @llvm.fmuladd.f32(float %420, float %420, float %433)
  %435 = call float @llvm.fmuladd.f32(float %430, float %430, float %434)
  %436 = fcmp ogt float %435, 0x38AA95A5C0000000
  br i1 %436, label %437, label %446

437:                                              ; preds = %414
  %438 = call float @sqrtf(float noundef %435) #15
  %439 = fdiv float 1.000000e+00, %438
  %440 = load float, ptr %9, align 4, !tbaa !78
  %441 = fmul float %440, %439
  store float %441, ptr %4, align 4, !tbaa !78
  %442 = load float, ptr %288, align 4, !tbaa !78
  %443 = fmul float %439, %442
  store float %443, ptr %412, align 4, !tbaa !78
  %444 = load float, ptr %294, align 4, !tbaa !78
  %445 = fmul float %439, %444
  store float %445, ptr %413, align 4, !tbaa !78
  br label %447

446:                                              ; preds = %414
  store float 0.000000e+00, ptr %4, align 4, !tbaa !78
  store float 0.000000e+00, ptr %410, align 4, !tbaa !78
  store float 0.000000e+00, ptr %411, align 4, !tbaa !78
  br label %447

447:                                              ; preds = %437, %446
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %4, float noundef %432, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  %448 = getelementptr inbounds %struct.Mat4, ptr %2, i64 %415
  call void @copy_m4_m3(ptr noundef %448, ptr noundef nonnull %12) #15
  %449 = getelementptr inbounds [4 x [4 x float]], ptr %448, i64 0, i64 3
  %450 = load float, ptr %416, align 4, !tbaa !78
  store float %450, ptr %449, align 4, !tbaa !78
  %451 = load float, ptr %423, align 4, !tbaa !78
  %452 = getelementptr inbounds [4 x [4 x float]], ptr %448, i64 0, i64 3, i64 1
  store float %451, ptr %452, align 4, !tbaa !78
  %453 = load float, ptr %428, align 4, !tbaa !78
  %454 = getelementptr inbounds [4 x [4 x float]], ptr %448, i64 0, i64 3, i64 2
  store float %453, ptr %454, align 4, !tbaa !78
  br i1 %49, label %456, label %455

455:                                              ; preds = %447
  call void @_va_mul_m4_series_4(ptr noundef %448, ptr noundef nonnull %16, ptr noundef %448, ptr noundef nonnull %15) #15
  br label %456

456:                                              ; preds = %447, %455
  %457 = add nuw nsw i64 %415, 1
  %458 = load i16, ptr %281, align 4, !tbaa !84
  %459 = sext i16 %458 to i64
  %460 = icmp slt i64 %457, %459
  br i1 %460, label %414, label %461, !llvm.loop !88

461:                                              ; preds = %456, %404
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  ret void
}

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @vec_roll_to_mat3(ptr nocapture noundef readonly %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %5 = load float, ptr %0, align 4, !tbaa !78
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !78
  %8 = fmul float %7, %7
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %8)
  %10 = getelementptr inbounds float, ptr %0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !78
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = fcmp ogt float %12, 0x38AA95A5C0000000
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = tail call float @sqrtf(float noundef %12) #15
  %16 = fdiv float 1.000000e+00, %15
  %17 = load float, ptr %0, align 4, !tbaa !78
  %18 = fmul float %17, %16
  store float %18, ptr %4, align 4, !tbaa !78
  %19 = load float, ptr %6, align 4, !tbaa !78
  %20 = fmul float %16, %19
  %21 = getelementptr inbounds float, ptr %4, i64 1
  store float %20, ptr %21, align 4, !tbaa !78
  %22 = load float, ptr %10, align 4, !tbaa !78
  %23 = fmul float %16, %22
  br label %26

24:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 4, !tbaa !78
  %25 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %25, align 4, !tbaa !78
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi float [ %23, %14 ], [ 0.000000e+00, %24 ]
  %28 = getelementptr inbounds float, ptr %4, i64 2
  store float %27, ptr %28, align 4, !tbaa !78
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %4, float noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #9

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @distfactor_to_bone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #10 {
  %7 = load float, ptr %2, align 4, !tbaa !78
  %8 = load float, ptr %1, align 4, !tbaa !78
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !78
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !78
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !78
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !78
  %19 = fsub float %16, %18
  %20 = fmul float %14, %14
  %21 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %21)
  %23 = fcmp ogt float %22, 0x38AA95A5C0000000
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = tail call float @sqrtf(float noundef %22) #15
  %26 = fdiv float 1.000000e+00, %25
  %27 = fmul float %9, %26
  %28 = fmul float %14, %26
  %29 = fmul float %19, %26
  br label %30

30:                                               ; preds = %6, %24
  %31 = phi float [ %27, %24 ], [ 0.000000e+00, %6 ]
  %32 = phi float [ %28, %24 ], [ 0.000000e+00, %6 ]
  %33 = phi float [ %29, %24 ], [ 0.000000e+00, %6 ]
  %34 = phi float [ %25, %24 ], [ 0.000000e+00, %6 ]
  %35 = load float, ptr %0, align 4, !tbaa !78
  %36 = load float, ptr %1, align 4, !tbaa !78
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds float, ptr %0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !78
  %40 = load float, ptr %12, align 4, !tbaa !78
  %41 = fsub float %39, %40
  %42 = getelementptr inbounds float, ptr %0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !78
  %44 = load float, ptr %17, align 4, !tbaa !78
  %45 = fsub float %43, %44
  %46 = fmul float %32, %41
  %47 = tail call float @llvm.fmuladd.f32(float %31, float %37, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %33, float %45, float %47)
  %49 = fmul float %41, %41
  %50 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %50)
  %52 = fcmp olt float %48, 0.000000e+00
  br i1 %52, label %74, label %53

53:                                               ; preds = %30
  %54 = fcmp ogt float %48, %34
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = load float, ptr %2, align 4, !tbaa !78
  %57 = fsub float %35, %56
  %58 = load float, ptr %10, align 4, !tbaa !78
  %59 = fsub float %39, %58
  %60 = load float, ptr %15, align 4, !tbaa !78
  %61 = fsub float %43, %60
  %62 = fmul float %59, %59
  %63 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %62)
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %61, float %63)
  br label %74

65:                                               ; preds = %53
  %66 = fneg float %48
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %48, float %51)
  %68 = fcmp une float %34, 0.000000e+00
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = fdiv float %48, %34
  %71 = fsub float 1.000000e+00, %70
  %72 = fmul float %71, %3
  %73 = tail call float @llvm.fmuladd.f32(float %70, float %4, float %72)
  br label %74

74:                                               ; preds = %30, %65, %55, %69
  %75 = phi float [ %64, %55 ], [ %67, %69 ], [ %67, %65 ], [ %51, %30 ]
  %76 = phi float [ %4, %55 ], [ %73, %69 ], [ %3, %65 ], [ %3, %30 ]
  %77 = fmul float %76, %76
  %78 = fcmp olt float %75, %77
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = fcmp oeq float %5, 0.000000e+00
  br i1 %80, label %92, label %81

81:                                               ; preds = %79
  %82 = fadd float %76, %5
  %83 = fmul float %82, %82
  %84 = fcmp ult float %75, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = tail call float @sqrtf(float noundef %75) #15
  %87 = fsub float %86, %76
  %88 = fmul float %87, %87
  %89 = fmul float %5, %5
  %90 = fdiv float %88, %89
  %91 = fsub float 1.000000e+00, %90
  br label %92

92:                                               ; preds = %79, %81, %74, %85
  %93 = phi float [ %91, %85 ], [ 1.000000e+00, %74 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %79 ]
  ret float %93
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @armature_deform_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca %struct.DualQuat, align 4
  %14 = alloca [32 x %struct.Mat4], align 16
  %15 = alloca [32 x %struct.Mat4], align 16
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca [4 x [4 x float]], align 16
  %19 = alloca [4 x [4 x float]], align 16
  %20 = alloca %struct.DualQuat, align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x [3 x float]], align 16
  %24 = alloca [3 x [3 x float]], align 16
  %25 = alloca [3 x [3 x float]], align 16
  %26 = alloca [3 x [3 x float]], align 16
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #15
  %29 = getelementptr inbounds %struct.bArmature, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %600

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %33) #15
  call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %33) #15
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %19, ptr noundef nonnull %17, ptr noundef nonnull %35) #15
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #15
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = call i32 @BLI_countlist(ptr noundef %38) #15
  %40 = and i32 %6, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %44 = sext i32 %39 to i64
  %45 = mul nsw i64 %44, 100
  %46 = call ptr %43(i64 noundef %45, ptr noundef nonnull @.str.7) #15
  br label %47

47:                                               ; preds = %42, %32
  %48 = phi ptr [ %46, %42 ], [ null, %32 ]
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %50 = sext i32 %39 to i64
  %51 = mul nsw i64 %50, 24
  %52 = call ptr %49(i64 noundef %51, ptr noundef nonnull @.str.8) #15
  %53 = load ptr, ptr %37, align 8, !tbaa !89
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = icmp eq ptr %54, null
  br i1 %55, label %120, label %56

56:                                               ; preds = %47, %115
  %57 = phi ptr [ %118, %115 ], [ %54, %47 ]
  %58 = phi ptr [ %117, %115 ], [ %52, %47 ]
  %59 = phi i32 [ %116, %115 ], [ 0, %47 ]
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 10
  %63 = load i32, ptr %62, align 8, !tbaa !81
  %64 = and i32 %63, 4096
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 26
  %68 = load i16, ptr %67, align 4, !tbaa !84
  %69 = icmp sgt i16 %68, 1
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %15) #15
  call void @b_bone_spline_setup(ptr noundef nonnull %57, i32 noundef 0, ptr noundef nonnull %14)
  call void @b_bone_spline_setup(ptr noundef nonnull %57, i32 noundef 1, ptr noundef nonnull %15)
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %72 = load i16, ptr %67, align 4, !tbaa !84
  %73 = sext i16 %72 to i64
  %74 = shl nsw i64 %73, 6
  %75 = add nsw i64 %74, 64
  %76 = call ptr %71(i64 noundef %75, ptr noundef nonnull @.str.12) #15
  store ptr %76, ptr %58, align 8, !tbaa !90
  br i1 %41, label %84, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %79 = load i16, ptr %67, align 4, !tbaa !84
  %80 = sext i16 %79 to i64
  %81 = mul nsw i64 %80, 100
  %82 = call ptr %78(i64 noundef %81, ptr noundef nonnull @.str.13) #15
  %83 = getelementptr inbounds %struct.bPoseChanDeform, ptr %58, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !92
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi ptr [ %82, %77 ], [ null, %70 ]
  %86 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 13
  %87 = call zeroext i8 @invert_m4_m4(ptr noundef %76, ptr noundef nonnull %86) #15
  %88 = load i16, ptr %67, align 4, !tbaa !84
  %89 = icmp sgt i16 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 28
  br label %92

92:                                               ; preds = %90, %101
  %93 = phi i64 [ 0, %90 ], [ %96, %101 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #15
  %94 = getelementptr inbounds [32 x %struct.Mat4], ptr %15, i64 0, i64 %93
  %95 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %94) #15
  %96 = add nuw nsw i64 %93, 1
  %97 = getelementptr inbounds %struct.Mat4, ptr %76, i64 %96
  %98 = getelementptr inbounds [32 x %struct.Mat4], ptr %14, i64 0, i64 %93
  call void @_va_mul_m4_series_6(ptr noundef nonnull %97, ptr noundef nonnull %91, ptr noundef nonnull %86, ptr noundef nonnull %98, ptr noundef nonnull %16, ptr noundef %76) #15
  br i1 %41, label %101, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.DualQuat, ptr %85, i64 %93
  call void @mat4_to_dquat(ptr noundef %100, ptr noundef nonnull %86, ptr noundef nonnull %97) #15
  br label %101

101:                                              ; preds = %99, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #15
  %102 = load i16, ptr %67, align 4, !tbaa !84
  %103 = sext i16 %102 to i64
  %104 = icmp slt i64 %96, %103
  br i1 %104, label %92, label %105, !llvm.loop !93

105:                                              ; preds = %101, %84
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %14) #15
  br label %106

106:                                              ; preds = %105, %66
  br i1 %41, label %115, label %107

107:                                              ; preds = %106
  %108 = add nsw i32 %59, 1
  %109 = sext i32 %59 to i64
  %110 = getelementptr inbounds %struct.DualQuat, ptr %48, i64 %109
  %111 = getelementptr inbounds %struct.bPoseChanDeform, ptr %58, i64 0, i32 1
  store ptr %110, ptr %111, align 8, !tbaa !94
  %112 = load ptr, ptr %60, align 8, !tbaa !75
  %113 = getelementptr inbounds %struct.Bone, ptr %112, i64 0, i32 13
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 28
  call void @mat4_to_dquat(ptr noundef %110, ptr noundef nonnull %113, ptr noundef nonnull %114) #15
  br label %115

115:                                              ; preds = %56, %107, %106
  %116 = phi i32 [ %59, %56 ], [ %108, %107 ], [ %59, %106 ]
  %117 = getelementptr inbounds %struct.bPoseChanDeform, ptr %58, i64 1
  %118 = load ptr, ptr %57, align 8, !tbaa !51
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %56, !llvm.loop !95

120:                                              ; preds = %115, %47
  %121 = call i32 @defgroup_name_index(ptr noundef %1, ptr noundef %8) #15
  %122 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %123 = load i16, ptr %122, align 8, !tbaa !45
  switch i16 %123, label %154 [
    i16 1, label %124
    i16 22, label %124
  ]

124:                                              ; preds = %120, %120
  %125 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %126 = call i32 @BLI_countlist(ptr noundef nonnull %125) #15
  %127 = load i16, ptr %122, align 8, !tbaa !45
  %128 = icmp eq i16 %127, 1
  %129 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  br i1 %128, label %131, label %138

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.Mesh, ptr %130, i64 0, i32 17
  %133 = load ptr, ptr %132, align 8, !tbaa !96
  %134 = icmp eq ptr %133, null
  br i1 %134, label %154, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.Mesh, ptr %130, i64 0, i32 26
  %137 = load i32, ptr %136, align 8, !tbaa !99
  br label %154

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.Lattice, ptr %130, i64 0, i32 24
  %140 = load ptr, ptr %139, align 8, !tbaa !100
  %141 = icmp eq ptr %140, null
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.Lattice, ptr %130, i64 0, i32 2
  %144 = load i16, ptr %143, align 8, !tbaa !102
  %145 = sext i16 %144 to i32
  %146 = getelementptr inbounds %struct.Lattice, ptr %130, i64 0, i32 3
  %147 = load i16, ptr %146, align 2, !tbaa !103
  %148 = sext i16 %147 to i32
  %149 = mul nsw i32 %148, %145
  %150 = getelementptr inbounds %struct.Lattice, ptr %130, i64 0, i32 4
  %151 = load i16, ptr %150, align 4, !tbaa !104
  %152 = sext i16 %151 to i32
  %153 = mul nsw i32 %149, %152
  br label %154

154:                                              ; preds = %138, %142, %131, %135, %120
  %155 = phi i32 [ 0, %120 ], [ %126, %135 ], [ %126, %131 ], [ %126, %142 ], [ %126, %138 ]
  %156 = phi i32 [ 0, %120 ], [ %137, %135 ], [ 0, %131 ], [ %153, %142 ], [ 0, %138 ]
  %157 = phi ptr [ null, %120 ], [ %133, %135 ], [ %133, %131 ], [ %140, %142 ], [ %140, %138 ]
  %158 = and i32 %6, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %206, label %160

160:                                              ; preds = %154
  %161 = load i16, ptr %122, align 8, !tbaa !45
  switch i16 %161, label %206 [
    i16 1, label %162
    i16 22, label %162
  ]

162:                                              ; preds = %160, %160
  %163 = icmp eq ptr %2, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %166 = load ptr, ptr %165, align 8, !tbaa !105
  %167 = call ptr %166(ptr noundef nonnull %2, i32 noundef 2) #15
  br label %168

168:                                              ; preds = %162, %164
  %169 = phi ptr [ %167, %164 ], [ %157, %162 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %206, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %173 = sext i32 %155 to i64
  %174 = shl nsw i64 %173, 3
  %175 = call ptr %172(i64 noundef %174, ptr noundef nonnull @.str.9) #15
  %176 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %177 = shl nsw i64 %173, 2
  %178 = call ptr %176(i64 noundef %177, ptr noundef nonnull @.str.10) #15
  %179 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %180 = load ptr, ptr %179, align 8, !tbaa !51
  %181 = icmp eq ptr %180, null
  br i1 %181, label %206, label %182

182:                                              ; preds = %171, %202
  %183 = phi i64 [ %203, %202 ], [ 0, %171 ]
  %184 = phi ptr [ %204, %202 ], [ %180, %171 ]
  %185 = load ptr, ptr %37, align 8, !tbaa !89
  %186 = getelementptr inbounds %struct.bDeformGroup, ptr %184, i64 0, i32 2
  %187 = call ptr @BKE_pose_channel_find_name(ptr noundef %185, ptr noundef nonnull %186) #15
  %188 = getelementptr inbounds ptr, ptr %175, i64 %183
  store ptr %187, ptr %188, align 8, !tbaa !51
  %189 = icmp eq ptr %187, null
  br i1 %189, label %202, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.bPoseChannel, ptr %187, i64 0, i32 12
  %192 = load ptr, ptr %191, align 8, !tbaa !75
  %193 = getelementptr inbounds %struct.Bone, ptr %192, i64 0, i32 10
  %194 = load i32, ptr %193, align 8, !tbaa !81
  %195 = and i32 %194, 4096
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %190
  store ptr null, ptr %188, align 8, !tbaa !51
  br label %202

198:                                              ; preds = %190
  %199 = load ptr, ptr %37, align 8, !tbaa !89
  %200 = call i32 @BLI_findindex(ptr noundef %199, ptr noundef nonnull %187) #15
  %201 = getelementptr inbounds i32, ptr %178, i64 %183
  store i32 %200, ptr %201, align 4, !tbaa !107
  br label %202

202:                                              ; preds = %182, %198, %197
  %203 = add nuw i64 %183, 1
  %204 = load ptr, ptr %184, align 8, !tbaa !51
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %182, !llvm.loop !108

206:                                              ; preds = %202, %171, %160, %168, %154
  %207 = phi i1 [ false, %168 ], [ false, %154 ], [ false, %160 ], [ true, %171 ], [ true, %202 ]
  %208 = phi ptr [ null, %168 ], [ null, %154 ], [ null, %160 ], [ %178, %171 ], [ %178, %202 ]
  %209 = phi ptr [ null, %168 ], [ null, %154 ], [ null, %160 ], [ %175, %171 ], [ %175, %202 ]
  %210 = icmp sgt i32 %5, 0
  br i1 %210, label %211, label %565

211:                                              ; preds = %206
  %212 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  %213 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  %214 = icmp eq ptr %4, null
  %215 = icmp ne i32 %121, -1
  %216 = select i1 %207, i1 true, i1 %215
  %217 = icmp eq ptr %2, null
  %218 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 46
  %219 = icmp ne ptr %157, null
  %220 = and i32 %6, 16
  %221 = icmp eq i32 %220, 0
  %222 = icmp eq ptr %7, null
  %223 = icmp eq ptr %7, null
  %224 = getelementptr inbounds float, ptr %11, i64 1
  %225 = getelementptr inbounds float, ptr %11, i64 2
  %226 = and i32 %6, 2
  %227 = icmp ne i32 %226, 0
  %228 = and i32 %6, 2
  %229 = icmp eq i32 %228, 0
  %230 = icmp eq ptr %4, null
  %231 = select i1 %230, ptr null, ptr %23
  %232 = getelementptr inbounds float, ptr %21, i64 1
  %233 = getelementptr inbounds float, ptr %21, i64 2
  %234 = icmp eq ptr %4, null
  %235 = select i1 %234, ptr null, ptr %23
  %236 = icmp eq ptr %4, null
  %237 = sext i32 %156 to i64
  %238 = zext nneg i32 %5 to i64
  br label %239

239:                                              ; preds = %211, %562
  %240 = phi i64 [ 0, %211 ], [ %563, %562 ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #15
  br i1 %41, label %242, label %241

241:                                              ; preds = %239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %20, i8 0, i64 100, i1 false)
  br label %244

242:                                              ; preds = %239
  store float 0.000000e+00, ptr %212, align 4, !tbaa !78
  store float 0.000000e+00, ptr %213, align 4, !tbaa !78
  store float 0.000000e+00, ptr %22, align 4, !tbaa !78
  br i1 %214, label %244, label %243

243:                                              ; preds = %242
  call void @zero_m3(ptr noundef nonnull %23) #15
  br label %244

244:                                              ; preds = %242, %243, %241
  %245 = phi ptr [ %20, %241 ], [ null, %243 ], [ null, %242 ]
  %246 = phi ptr [ null, %241 ], [ %22, %243 ], [ %22, %242 ]
  %247 = phi ptr [ null, %241 ], [ %23, %243 ], [ null, %242 ]
  br i1 %216, label %248, label %258

248:                                              ; preds = %244
  br i1 %217, label %253, label %249

249:                                              ; preds = %248
  %250 = load ptr, ptr %218, align 8, !tbaa !109
  %251 = trunc i64 %240 to i32
  %252 = call ptr %250(ptr noundef nonnull %2, i32 noundef %251, i32 noundef 2) #15
  br label %258

253:                                              ; preds = %248
  %254 = icmp slt i64 %240, %237
  %255 = select i1 %219, i1 %254, i1 false
  %256 = getelementptr inbounds %struct.MDeformVert, ptr %157, i64 %240
  %257 = select i1 %255, ptr %256, ptr null
  br label %258

258:                                              ; preds = %253, %244, %249
  %259 = phi ptr [ %252, %249 ], [ null, %244 ], [ %257, %253 ]
  %260 = icmp ne ptr %259, null
  %261 = select i1 %215, i1 %260, i1 false
  br i1 %261, label %262, label %267

262:                                              ; preds = %258
  %263 = call float @defvert_find_weight(ptr noundef nonnull %259, i32 noundef %121) #15
  %264 = fsub float 1.000000e+00, %263
  %265 = select i1 %221, float %263, float %264
  br i1 %222, label %267, label %266

266:                                              ; preds = %262
  br label %267

267:                                              ; preds = %262, %266, %258
  %268 = phi float [ 1.000000e+00, %266 ], [ %265, %262 ], [ 1.000000e+00, %258 ]
  %269 = phi float [ %265, %266 ], [ 1.000000e+00, %262 ], [ 1.000000e+00, %258 ]
  %270 = fcmp oeq float %268, 0.000000e+00
  br i1 %270, label %562, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds [3 x float], ptr %7, i64 %240
  %273 = getelementptr inbounds [3 x float], ptr %3, i64 %240
  %274 = select i1 %223, ptr %273, ptr %272
  call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef %274) #15
  %275 = select i1 %207, i1 %260, i1 false
  br i1 %275, label %276, label %467

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.MDeformVert, ptr %259, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !110
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %467, label %280

280:                                              ; preds = %276
  %281 = load ptr, ptr %259, align 8, !tbaa !112
  %282 = getelementptr inbounds float, ptr %274, i64 1
  %283 = getelementptr inbounds float, ptr %274, i64 2
  %284 = icmp eq ptr %246, null
  %285 = icmp eq ptr %247, null
  %286 = getelementptr inbounds float, ptr %246, i64 1
  %287 = getelementptr inbounds float, ptr %246, i64 2
  %288 = icmp eq ptr %247, null
  br label %289

289:                                              ; preds = %280, %436
  %290 = phi i32 [ %278, %280 ], [ %439, %436 ]
  %291 = phi i32 [ 0, %280 ], [ %438, %436 ]
  %292 = phi ptr [ %281, %280 ], [ %440, %436 ]
  %293 = phi float [ 0.000000e+00, %280 ], [ %437, %436 ]
  %294 = load i32, ptr %292, align 4, !tbaa !113
  %295 = icmp sgt i32 %294, -1
  %296 = icmp slt i32 %294, %155
  %297 = select i1 %295, i1 %296, i1 false
  br i1 %297, label %298, label %436

298:                                              ; preds = %289
  %299 = zext nneg i32 %294 to i64
  %300 = getelementptr inbounds ptr, ptr %209, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !51
  %302 = icmp eq ptr %301, null
  br i1 %302, label %436, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.MDeformWeight, ptr %292, i64 0, i32 1
  %305 = load float, ptr %304, align 4, !tbaa !115
  %306 = getelementptr inbounds %struct.bPoseChannel, ptr %301, i64 0, i32 12
  %307 = load ptr, ptr %306, align 8, !tbaa !75
  %308 = getelementptr inbounds i32, ptr %208, i64 %299
  %309 = load i32, ptr %308, align 4, !tbaa !107
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.bPoseChanDeform, ptr %52, i64 %310
  %312 = icmp eq ptr %307, null
  br i1 %312, label %329, label %313

313:                                              ; preds = %303
  %314 = getelementptr inbounds %struct.Bone, ptr %307, i64 0, i32 10
  %315 = load i32, ptr %314, align 8, !tbaa !81
  %316 = and i32 %315, 2048
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %329, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.Bone, ptr %307, i64 0, i32 11
  %320 = getelementptr inbounds %struct.Bone, ptr %307, i64 0, i32 12
  %321 = getelementptr inbounds %struct.Bone, ptr %307, i64 0, i32 22
  %322 = load float, ptr %321, align 4, !tbaa !116
  %323 = getelementptr inbounds %struct.Bone, ptr %307, i64 0, i32 23
  %324 = load float, ptr %323, align 8, !tbaa !117
  %325 = getelementptr inbounds %struct.Bone, ptr %307, i64 0, i32 15
  %326 = load float, ptr %325, align 8, !tbaa !118
  %327 = call float @distfactor_to_bone(ptr noundef %274, ptr noundef nonnull %319, ptr noundef nonnull %320, float noundef %322, float noundef %324, float noundef %326)
  %328 = fmul float %305, %327
  br label %329

329:                                              ; preds = %318, %313, %303
  %330 = phi float [ %328, %318 ], [ %305, %313 ], [ %305, %303 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %13) #15
  %331 = fcmp une float %330, 0.000000e+00
  br i1 %331, label %332, label %434

332:                                              ; preds = %329
  %333 = load float, ptr %274, align 4, !tbaa !78
  store float %333, ptr %11, align 4, !tbaa !78
  %334 = load float, ptr %282, align 4, !tbaa !78
  store float %334, ptr %224, align 4, !tbaa !78
  %335 = load float, ptr %283, align 4, !tbaa !78
  store float %335, ptr %225, align 4, !tbaa !78
  %336 = load ptr, ptr %306, align 8, !tbaa !75
  %337 = getelementptr inbounds %struct.Bone, ptr %336, i64 0, i32 26
  %338 = load i16, ptr %337, align 4, !tbaa !84
  %339 = icmp sgt i16 %338, 1
  br i1 %284, label %398, label %340

340:                                              ; preds = %332
  br i1 %339, label %341, label %371

341:                                              ; preds = %340
  %342 = load ptr, ptr %311, align 8, !tbaa !90
  %343 = getelementptr inbounds [4 x float], ptr %342, i64 0, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !78
  %345 = getelementptr inbounds [4 x float], ptr %342, i64 1, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !78
  %347 = fmul float %334, %346
  %348 = call float @llvm.fmuladd.f32(float %344, float %333, float %347)
  %349 = getelementptr inbounds [4 x float], ptr %342, i64 2, i64 1
  %350 = load float, ptr %349, align 4, !tbaa !78
  %351 = call float @llvm.fmuladd.f32(float %350, float %335, float %348)
  %352 = getelementptr inbounds [4 x float], ptr %342, i64 3, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !78
  %354 = fadd float %353, %351
  %355 = getelementptr inbounds %struct.Bone, ptr %336, i64 0, i32 18
  %356 = load float, ptr %355, align 4, !tbaa !77
  %357 = sitofp i16 %338 to float
  %358 = fdiv float %356, %357
  %359 = fdiv float %354, %358
  %360 = fptosi float %359 to i32
  %361 = icmp slt i32 %360, 0
  %362 = zext nneg i16 %338 to i32
  %363 = icmp sgt i32 %362, %360
  %364 = add nsw i32 %362, -1
  %365 = select i1 %363, i32 %360, i32 %364
  %366 = select i1 %361, i32 0, i32 %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr %struct.Mat4, ptr %342, i64 %367
  %369 = getelementptr %struct.Mat4, ptr %368, i64 1
  call void @mul_m4_v3(ptr noundef %369, ptr noundef nonnull %11) #15
  br i1 %285, label %373, label %370

370:                                              ; preds = %341
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef %369) #15
  br label %373

371:                                              ; preds = %340
  %372 = getelementptr inbounds %struct.bPoseChannel, ptr %301, i64 0, i32 28
  call void @mul_m4_v3(ptr noundef nonnull %372, ptr noundef nonnull %11) #15
  br label %373

373:                                              ; preds = %370, %341, %371
  %374 = load float, ptr %11, align 4, !tbaa !78
  %375 = load float, ptr %274, align 4, !tbaa !78
  %376 = fsub float %374, %375
  %377 = load float, ptr %246, align 4, !tbaa !78
  %378 = call float @llvm.fmuladd.f32(float %376, float %330, float %377)
  store float %378, ptr %246, align 4, !tbaa !78
  %379 = load float, ptr %224, align 4, !tbaa !78
  %380 = load float, ptr %282, align 4, !tbaa !78
  %381 = fsub float %379, %380
  %382 = load float, ptr %286, align 4, !tbaa !78
  %383 = call float @llvm.fmuladd.f32(float %381, float %330, float %382)
  store float %383, ptr %286, align 4, !tbaa !78
  %384 = load float, ptr %225, align 4, !tbaa !78
  %385 = load float, ptr %283, align 4, !tbaa !78
  %386 = fsub float %384, %385
  %387 = load float, ptr %287, align 4, !tbaa !78
  %388 = call float @llvm.fmuladd.f32(float %386, float %330, float %387)
  store float %388, ptr %287, align 4, !tbaa !78
  br i1 %288, label %432, label %389

389:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #15
  %390 = load ptr, ptr %306, align 8, !tbaa !75
  %391 = getelementptr inbounds %struct.Bone, ptr %390, i64 0, i32 26
  %392 = load i16, ptr %391, align 4, !tbaa !84
  %393 = icmp sgt i16 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  call void @copy_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  br label %397

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.bPoseChannel, ptr %301, i64 0, i32 28
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %396) #15
  br label %397

397:                                              ; preds = %394, %395
  call void @mul_m3_fl(ptr noundef nonnull %10, float noundef %330) #15
  call void @add_m3_m3m3(ptr noundef nonnull %247, ptr noundef nonnull %247, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #15
  br label %432

398:                                              ; preds = %332
  br i1 %339, label %399, label %429

399:                                              ; preds = %398
  %400 = load ptr, ptr %311, align 8, !tbaa !90
  %401 = getelementptr inbounds [4 x float], ptr %400, i64 0, i64 1
  %402 = load float, ptr %401, align 4, !tbaa !78
  %403 = getelementptr inbounds [4 x float], ptr %400, i64 1, i64 1
  %404 = load float, ptr %403, align 4, !tbaa !78
  %405 = fmul float %334, %404
  %406 = call float @llvm.fmuladd.f32(float %402, float %333, float %405)
  %407 = getelementptr inbounds [4 x float], ptr %400, i64 2, i64 1
  %408 = load float, ptr %407, align 4, !tbaa !78
  %409 = call float @llvm.fmuladd.f32(float %408, float %335, float %406)
  %410 = getelementptr inbounds [4 x float], ptr %400, i64 3, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !78
  %412 = fadd float %411, %409
  %413 = getelementptr inbounds %struct.Bone, ptr %336, i64 0, i32 18
  %414 = load float, ptr %413, align 4, !tbaa !77
  %415 = sitofp i16 %338 to float
  %416 = fdiv float %414, %415
  %417 = fdiv float %412, %416
  %418 = fptosi float %417 to i32
  %419 = icmp slt i32 %418, 0
  %420 = zext nneg i16 %338 to i32
  %421 = icmp sgt i32 %420, %418
  %422 = add nsw i32 %420, -1
  %423 = select i1 %421, i32 %418, i32 %422
  %424 = select i1 %419, i32 0, i32 %423
  %425 = getelementptr inbounds %struct.bPoseChanDeform, ptr %52, i64 %310, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !92
  %427 = sext i32 %424 to i64
  %428 = getelementptr inbounds %struct.DualQuat, ptr %426, i64 %427
  call void @copy_dq_dq(ptr noundef nonnull %13, ptr noundef %428) #15
  call void @add_weighted_dq_dq(ptr noundef %245, ptr noundef nonnull %13, float noundef %330) #15
  br label %432

429:                                              ; preds = %398
  %430 = getelementptr inbounds %struct.bPoseChanDeform, ptr %52, i64 %310, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !94
  call void @add_weighted_dq_dq(ptr noundef %245, ptr noundef %431, float noundef %330) #15
  br label %432

432:                                              ; preds = %429, %399, %397, %373
  %433 = fadd float %293, %330
  br label %434

434:                                              ; preds = %329, %432
  %435 = phi float [ %433, %432 ], [ %293, %329 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  br label %436

436:                                              ; preds = %434, %298, %289
  %437 = phi float [ %293, %298 ], [ %435, %434 ], [ %293, %289 ]
  %438 = phi i32 [ %291, %298 ], [ 1, %434 ], [ %291, %289 ]
  %439 = add i32 %290, -1
  %440 = getelementptr inbounds %struct.MDeformWeight, ptr %292, i64 1
  %441 = icmp eq i32 %439, 0
  br i1 %441, label %442, label %289, !llvm.loop !119

442:                                              ; preds = %436
  %443 = icmp eq i32 %438, 0
  %444 = and i1 %227, %443
  br i1 %444, label %445, label %490

445:                                              ; preds = %442
  %446 = load ptr, ptr %37, align 8, !tbaa !89
  %447 = load ptr, ptr %446, align 8, !tbaa !51
  %448 = icmp eq ptr %447, null
  br i1 %448, label %490, label %449

449:                                              ; preds = %445, %462
  %450 = phi ptr [ %465, %462 ], [ %447, %445 ]
  %451 = phi ptr [ %464, %462 ], [ %52, %445 ]
  %452 = phi float [ %463, %462 ], [ %437, %445 ]
  %453 = getelementptr inbounds %struct.bPoseChannel, ptr %450, i64 0, i32 12
  %454 = load ptr, ptr %453, align 8, !tbaa !75
  %455 = getelementptr inbounds %struct.Bone, ptr %454, i64 0, i32 10
  %456 = load i32, ptr %455, align 8, !tbaa !81
  %457 = and i32 %456, 4096
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %449
  %460 = call fastcc float @dist_bone_deform(ptr noundef nonnull %450, ptr noundef %451, ptr noundef %246, ptr noundef %245, ptr noundef %247, ptr noundef %274)
  %461 = fadd float %452, %460
  br label %462

462:                                              ; preds = %449, %459
  %463 = phi float [ %461, %459 ], [ %452, %449 ]
  %464 = getelementptr inbounds %struct.bPoseChanDeform, ptr %451, i64 1
  %465 = load ptr, ptr %450, align 8, !tbaa !51
  %466 = icmp eq ptr %465, null
  br i1 %466, label %490, label %449, !llvm.loop !120

467:                                              ; preds = %276, %271
  br i1 %229, label %490, label %468

468:                                              ; preds = %467
  %469 = load ptr, ptr %37, align 8, !tbaa !89
  %470 = load ptr, ptr %469, align 8, !tbaa !51
  %471 = icmp eq ptr %470, null
  br i1 %471, label %490, label %472

472:                                              ; preds = %468, %485
  %473 = phi ptr [ %488, %485 ], [ %470, %468 ]
  %474 = phi ptr [ %487, %485 ], [ %52, %468 ]
  %475 = phi float [ %486, %485 ], [ 0.000000e+00, %468 ]
  %476 = getelementptr inbounds %struct.bPoseChannel, ptr %473, i64 0, i32 12
  %477 = load ptr, ptr %476, align 8, !tbaa !75
  %478 = getelementptr inbounds %struct.Bone, ptr %477, i64 0, i32 10
  %479 = load i32, ptr %478, align 8, !tbaa !81
  %480 = and i32 %479, 4096
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %472
  %483 = call fastcc float @dist_bone_deform(ptr noundef nonnull %473, ptr noundef %474, ptr noundef %246, ptr noundef %245, ptr noundef %247, ptr noundef %274)
  %484 = fadd float %475, %483
  br label %485

485:                                              ; preds = %472, %482
  %486 = phi float [ %484, %482 ], [ %475, %472 ]
  %487 = getelementptr inbounds %struct.bPoseChanDeform, ptr %474, i64 1
  %488 = load ptr, ptr %473, align 8, !tbaa !51
  %489 = icmp eq ptr %488, null
  br i1 %489, label %490, label %472, !llvm.loop !121

490:                                              ; preds = %462, %485, %445, %468, %442, %467
  %491 = phi float [ 0.000000e+00, %467 ], [ %437, %442 ], [ 0.000000e+00, %468 ], [ %437, %445 ], [ %486, %485 ], [ %463, %462 ]
  %492 = fcmp ogt float %491, 0x3F1A36E2E0000000
  br i1 %492, label %493, label %543

493:                                              ; preds = %490
  br i1 %41, label %518, label %494

494:                                              ; preds = %493
  call void @normalize_dq(ptr noundef %245, float noundef %491) #15
  %495 = fcmp une float %268, 1.000000e+00
  br i1 %495, label %496, label %517

496:                                              ; preds = %494
  %497 = load float, ptr %274, align 4, !tbaa !78
  store float %497, ptr %21, align 4, !tbaa !78
  %498 = getelementptr inbounds float, ptr %274, i64 1
  %499 = load float, ptr %498, align 4, !tbaa !78
  store float %499, ptr %232, align 4, !tbaa !78
  %500 = getelementptr inbounds float, ptr %274, i64 2
  %501 = load float, ptr %500, align 4, !tbaa !78
  store float %501, ptr %233, align 4, !tbaa !78
  call void @mul_v3m3_dq(ptr noundef nonnull %21, ptr noundef %235, ptr noundef %245) #15
  %502 = load float, ptr %274, align 4, !tbaa !78
  %503 = load float, ptr %21, align 4, !tbaa !78
  %504 = fsub float %503, %502
  store float %504, ptr %21, align 4, !tbaa !78
  %505 = load float, ptr %498, align 4, !tbaa !78
  %506 = load float, ptr %232, align 4, !tbaa !78
  %507 = fsub float %506, %505
  store float %507, ptr %232, align 4, !tbaa !78
  %508 = load float, ptr %500, align 4, !tbaa !78
  %509 = load float, ptr %233, align 4, !tbaa !78
  %510 = fsub float %509, %508
  store float %510, ptr %233, align 4, !tbaa !78
  %511 = fmul float %268, %504
  store float %511, ptr %21, align 4, !tbaa !78
  %512 = fmul float %268, %507
  store float %512, ptr %232, align 4, !tbaa !78
  %513 = fmul float %268, %510
  store float %513, ptr %233, align 4, !tbaa !78
  %514 = fadd float %502, %511
  store float %514, ptr %274, align 4, !tbaa !78
  %515 = fadd float %505, %512
  store float %515, ptr %498, align 4, !tbaa !78
  %516 = fadd float %508, %513
  store float %516, ptr %500, align 4, !tbaa !78
  br label %536

517:                                              ; preds = %494
  call void @mul_v3m3_dq(ptr noundef %274, ptr noundef %231, ptr noundef %245) #15
  br label %536

518:                                              ; preds = %493
  %519 = fdiv float %268, %491
  %520 = load float, ptr %246, align 4, !tbaa !78
  %521 = fmul float %519, %520
  store float %521, ptr %246, align 4, !tbaa !78
  %522 = getelementptr inbounds float, ptr %246, i64 1
  %523 = load float, ptr %522, align 4, !tbaa !78
  %524 = fmul float %519, %523
  store float %524, ptr %522, align 4, !tbaa !78
  %525 = getelementptr inbounds float, ptr %246, i64 2
  %526 = load float, ptr %525, align 4, !tbaa !78
  %527 = fmul float %519, %526
  store float %527, ptr %525, align 4, !tbaa !78
  %528 = load float, ptr %274, align 4, !tbaa !78
  %529 = fadd float %521, %528
  store float %529, ptr %274, align 4, !tbaa !78
  %530 = getelementptr inbounds float, ptr %274, i64 1
  %531 = load float, ptr %530, align 4, !tbaa !78
  %532 = fadd float %524, %531
  store float %532, ptr %530, align 4, !tbaa !78
  %533 = getelementptr inbounds float, ptr %274, i64 2
  %534 = load float, ptr %533, align 4, !tbaa !78
  %535 = fadd float %527, %534
  store float %535, ptr %533, align 4, !tbaa !78
  br label %536

536:                                              ; preds = %496, %517, %518
  %537 = phi ptr [ %247, %518 ], [ %23, %517 ], [ %23, %496 ]
  br i1 %236, label %543, label %538

538:                                              ; preds = %536
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %26) #15
  call void @copy_m3_m4(ptr noundef nonnull %24, ptr noundef nonnull %18) #15
  call void @copy_m3_m4(ptr noundef nonnull %25, ptr noundef nonnull %19) #15
  %539 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 %240
  call void @copy_m3_m3(ptr noundef nonnull %26, ptr noundef nonnull %539) #15
  br i1 %41, label %540, label %542

540:                                              ; preds = %538
  %541 = fdiv float %268, %491
  call void @mul_m3_fl(ptr noundef %537, float noundef %541) #15
  br label %542

542:                                              ; preds = %540, %538
  call void @_va_mul_m3_series_5(ptr noundef nonnull %539, ptr noundef nonnull %25, ptr noundef %537, ptr noundef nonnull %24, ptr noundef nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #15
  br label %543

543:                                              ; preds = %536, %542, %490
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef %274) #15
  br i1 %223, label %562, label %544

544:                                              ; preds = %543
  %545 = fsub float 1.000000e+00, %269
  %546 = load float, ptr %273, align 4, !tbaa !78
  %547 = load float, ptr %274, align 4, !tbaa !78
  %548 = fmul float %545, %547
  %549 = call float @llvm.fmuladd.f32(float %269, float %546, float %548)
  store float %549, ptr %273, align 4, !tbaa !78
  %550 = getelementptr inbounds [3 x float], ptr %3, i64 %240, i64 1
  %551 = load float, ptr %550, align 4, !tbaa !78
  %552 = getelementptr inbounds float, ptr %274, i64 1
  %553 = load float, ptr %552, align 4, !tbaa !78
  %554 = fmul float %545, %553
  %555 = call float @llvm.fmuladd.f32(float %269, float %551, float %554)
  store float %555, ptr %550, align 4, !tbaa !78
  %556 = getelementptr inbounds [3 x float], ptr %3, i64 %240, i64 2
  %557 = load float, ptr %556, align 4, !tbaa !78
  %558 = getelementptr inbounds float, ptr %274, i64 2
  %559 = load float, ptr %558, align 4, !tbaa !78
  %560 = fmul float %545, %559
  %561 = call float @llvm.fmuladd.f32(float %269, float %557, float %560)
  store float %561, ptr %556, align 4, !tbaa !78
  br label %562

562:                                              ; preds = %543, %544, %267
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %20) #15
  %563 = add nuw nsw i64 %240, 1
  %564 = icmp eq i64 %563, %238
  br i1 %564, label %565, label %239, !llvm.loop !122

565:                                              ; preds = %562, %206
  %566 = icmp eq ptr %48, null
  br i1 %566, label %569, label %567

567:                                              ; preds = %565
  %568 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %568(ptr noundef nonnull %48) #15
  br label %569

569:                                              ; preds = %567, %565
  %570 = icmp eq ptr %209, null
  br i1 %570, label %573, label %571

571:                                              ; preds = %569
  %572 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %572(ptr noundef nonnull %209) #15
  br label %573

573:                                              ; preds = %571, %569
  %574 = icmp eq ptr %208, null
  br i1 %574, label %577, label %575

575:                                              ; preds = %573
  %576 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %576(ptr noundef nonnull %208) #15
  br label %577

577:                                              ; preds = %575, %573
  %578 = load ptr, ptr %37, align 8, !tbaa !89
  %579 = load ptr, ptr %578, align 8, !tbaa !51
  %580 = icmp eq ptr %579, null
  br i1 %580, label %598, label %581

581:                                              ; preds = %577, %594
  %582 = phi ptr [ %596, %594 ], [ %579, %577 ]
  %583 = phi ptr [ %595, %594 ], [ %52, %577 ]
  %584 = load ptr, ptr %583, align 8, !tbaa !90
  %585 = icmp eq ptr %584, null
  br i1 %585, label %588, label %586

586:                                              ; preds = %581
  %587 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %587(ptr noundef nonnull %584) #15
  br label %588

588:                                              ; preds = %586, %581
  %589 = getelementptr inbounds %struct.bPoseChanDeform, ptr %583, i64 0, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !92
  %591 = icmp eq ptr %590, null
  br i1 %591, label %594, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %593(ptr noundef nonnull %590) #15
  br label %594

594:                                              ; preds = %588, %592
  %595 = getelementptr inbounds %struct.bPoseChanDeform, ptr %583, i64 1
  %596 = load ptr, ptr %582, align 8, !tbaa !51
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %581, !llvm.loop !123

598:                                              ; preds = %594, %577
  %599 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %599(ptr noundef %52) #15
  br label %600

600:                                              ; preds = %9, %598
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #15
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @mat4_to_dquat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zero_m3(ptr noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @dist_bone_deform(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca %struct.DualQuat, align 4
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %144, label %14

14:                                               ; preds = %6
  %15 = load float, ptr %5, align 4, !tbaa !78
  store float %15, ptr %8, align 4, !tbaa !78
  %16 = getelementptr inbounds float, ptr %5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !78
  %18 = getelementptr inbounds float, ptr %8, i64 1
  store float %17, ptr %18, align 4, !tbaa !78
  %19 = getelementptr inbounds float, ptr %5, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !78
  %21 = getelementptr inbounds float, ptr %8, i64 2
  store float %20, ptr %21, align 4, !tbaa !78
  %22 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 11
  %23 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 12
  %24 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 22
  %25 = load float, ptr %24, align 4, !tbaa !116
  %26 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 23
  %27 = load float, ptr %26, align 8, !tbaa !117
  %28 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 15
  %29 = load float, ptr %28, align 8, !tbaa !118
  %30 = call float @distfactor_to_bone(ptr noundef nonnull %8, ptr noundef nonnull %22, ptr noundef nonnull %23, float noundef %25, float noundef %27, float noundef %29)
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %144

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 16
  %34 = load float, ptr %33, align 4, !tbaa !124
  %35 = fmul float %30, %34
  %36 = fcmp ogt float %35, 0.000000e+00
  br i1 %36, label %37, label %144

37:                                               ; preds = %32
  %38 = icmp eq ptr %2, null
  %39 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 26
  %40 = load i16, ptr %39, align 4, !tbaa !84
  %41 = icmp sgt i16 %40, 1
  br i1 %38, label %107, label %42

42:                                               ; preds = %37
  br i1 %41, label %43, label %77

43:                                               ; preds = %42
  %44 = icmp eq ptr %4, null
  %45 = load ptr, ptr %1, align 8, !tbaa !90
  %46 = getelementptr inbounds [4 x float], ptr %45, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !78
  %48 = load float, ptr %8, align 4, !tbaa !78
  %49 = getelementptr inbounds [4 x float], ptr %45, i64 1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !78
  %51 = load float, ptr %18, align 4, !tbaa !78
  %52 = fmul float %50, %51
  %53 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %52)
  %54 = getelementptr inbounds [4 x float], ptr %45, i64 2, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !78
  %56 = load float, ptr %21, align 4, !tbaa !78
  %57 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %53)
  %58 = getelementptr inbounds [4 x float], ptr %45, i64 3, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !78
  %60 = fadd float %57, %59
  %61 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 18
  %62 = load float, ptr %61, align 4, !tbaa !77
  %63 = sitofp i16 %40 to float
  %64 = fdiv float %62, %63
  %65 = fdiv float %60, %64
  %66 = fptosi float %65 to i32
  %67 = icmp slt i32 %66, 0
  %68 = zext nneg i16 %40 to i32
  %69 = icmp sgt i32 %68, %66
  %70 = add nsw i32 %68, -1
  %71 = select i1 %69, i32 %66, i32 %70
  %72 = select i1 %67, i32 0, i32 %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr %struct.Mat4, ptr %45, i64 %73
  %75 = getelementptr %struct.Mat4, ptr %74, i64 1
  call void @mul_m4_v3(ptr noundef %75, ptr noundef nonnull %8) #15
  br i1 %44, label %79, label %76

76:                                               ; preds = %43
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef %75) #15
  br label %79

77:                                               ; preds = %42
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  call void @mul_m4_v3(ptr noundef nonnull %78, ptr noundef nonnull %8) #15
  br label %79

79:                                               ; preds = %76, %43, %77
  %80 = load float, ptr %5, align 4, !tbaa !78
  %81 = load float, ptr %8, align 4, !tbaa !78
  %82 = fsub float %81, %80
  store float %82, ptr %8, align 4, !tbaa !78
  %83 = load float, ptr %16, align 4, !tbaa !78
  %84 = load float, ptr %18, align 4, !tbaa !78
  %85 = fsub float %84, %83
  store float %85, ptr %18, align 4, !tbaa !78
  %86 = load float, ptr %19, align 4, !tbaa !78
  %87 = load float, ptr %21, align 4, !tbaa !78
  %88 = fsub float %87, %86
  store float %88, ptr %21, align 4, !tbaa !78
  %89 = load float, ptr %2, align 4, !tbaa !78
  %90 = call float @llvm.fmuladd.f32(float %82, float %35, float %89)
  store float %90, ptr %2, align 4, !tbaa !78
  %91 = getelementptr inbounds float, ptr %2, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !78
  %93 = call float @llvm.fmuladd.f32(float %85, float %35, float %92)
  store float %93, ptr %91, align 4, !tbaa !78
  %94 = getelementptr inbounds float, ptr %2, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !78
  %96 = call float @llvm.fmuladd.f32(float %88, float %35, float %95)
  store float %96, ptr %94, align 4, !tbaa !78
  %97 = icmp eq ptr %4, null
  br i1 %97, label %144, label %98

98:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #15
  %99 = load ptr, ptr %11, align 8, !tbaa !75
  %100 = getelementptr inbounds %struct.Bone, ptr %99, i64 0, i32 26
  %101 = load i16, ptr %100, align 4, !tbaa !84
  %102 = icmp sgt i16 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %9) #15
  br label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %105) #15
  br label %106

106:                                              ; preds = %103, %104
  call void @mul_m3_fl(ptr noundef nonnull %7, float noundef %35) #15
  call void @add_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #15
  br label %144

107:                                              ; preds = %37
  br i1 %41, label %108, label %141

108:                                              ; preds = %107
  %109 = load ptr, ptr %1, align 8, !tbaa !90
  %110 = getelementptr inbounds [4 x float], ptr %109, i64 0, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !78
  %112 = load float, ptr %8, align 4, !tbaa !78
  %113 = getelementptr inbounds [4 x float], ptr %109, i64 1, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !78
  %115 = load float, ptr %18, align 4, !tbaa !78
  %116 = fmul float %114, %115
  %117 = tail call float @llvm.fmuladd.f32(float %111, float %112, float %116)
  %118 = getelementptr inbounds [4 x float], ptr %109, i64 2, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !78
  %120 = load float, ptr %21, align 4, !tbaa !78
  %121 = tail call float @llvm.fmuladd.f32(float %119, float %120, float %117)
  %122 = getelementptr inbounds [4 x float], ptr %109, i64 3, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !78
  %124 = fadd float %121, %123
  %125 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 18
  %126 = load float, ptr %125, align 4, !tbaa !77
  %127 = sitofp i16 %40 to float
  %128 = fdiv float %126, %127
  %129 = fdiv float %124, %128
  %130 = fptosi float %129 to i32
  %131 = icmp slt i32 %130, 0
  %132 = zext nneg i16 %40 to i32
  %133 = icmp sgt i32 %132, %130
  %134 = add nsw i32 %132, -1
  %135 = select i1 %133, i32 %130, i32 %134
  %136 = select i1 %131, i32 0, i32 %135
  %137 = getelementptr inbounds %struct.bPoseChanDeform, ptr %1, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !92
  %139 = sext i32 %136 to i64
  %140 = getelementptr inbounds %struct.DualQuat, ptr %138, i64 %139
  call void @copy_dq_dq(ptr noundef nonnull %10, ptr noundef %140) #15
  call void @add_weighted_dq_dq(ptr noundef %3, ptr noundef nonnull %10, float noundef %35) #15
  br label %144

141:                                              ; preds = %107
  %142 = getelementptr inbounds %struct.bPoseChanDeform, ptr %1, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !94
  tail call void @add_weighted_dq_dq(ptr noundef %3, ptr noundef %143, float noundef %35) #15
  br label %144

144:                                              ; preds = %14, %106, %79, %141, %108, %32, %6
  %145 = phi float [ 0.000000e+00, %6 ], [ %35, %106 ], [ %35, %79 ], [ %35, %108 ], [ %35, %141 ], [ %35, %32 ], [ 0.000000e+00, %14 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  ret float %145
}

declare void @normalize_dq(ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_v3m3_dq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_fl(ptr noundef, float noundef) local_unnamed_addr #2

declare void @_va_mul_m3_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @get_objectspace_bone_matrix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_mat_world_to_pose(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %4) #15
  br label %9

9:                                                ; preds = %3, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_loc_world_to_pose(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @unit_m4(ptr noundef nonnull %5) #15
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %8 = load float, ptr %1, align 4, !tbaa !78
  store float %8, ptr %7, align 16, !tbaa !78
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !78
  %11 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  store float %10, ptr %11, align 4, !tbaa !78
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !78
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  store float %13, ptr %14, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %15 = icmp eq ptr %0, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %17) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  br label %19

19:                                               ; preds = %3, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  %20 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %21 = load float, ptr %20, align 16, !tbaa !78
  store float %21, ptr %2, align 4, !tbaa !78
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !78
  %24 = getelementptr inbounds float, ptr %2, i64 1
  store float %23, ptr %24, align 4, !tbaa !78
  %25 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !78
  %27 = getelementptr inbounds float, ptr %2, i64 2
  store float %26, ptr %27, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %72, label %19

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %20 = load ptr, ptr %14, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 9
  call void @copy_m4_m3(ptr noundef nonnull %4, ptr noundef nonnull %23) #15
  %24 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %25 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 7
  %26 = load float, ptr %25, align 4, !tbaa !78
  store float %26, ptr %24, align 16, !tbaa !78
  %27 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 7, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !78
  %29 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  store float %28, ptr %29, align 4, !tbaa !78
  %30 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 7, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !78
  %32 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  store float %31, ptr %32, align 8, !tbaa !78
  %33 = load ptr, ptr %14, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.Bone, ptr %33, i64 0, i32 18
  %35 = load float, ptr %34, align 4, !tbaa !77
  %36 = fadd float %28, %35
  store float %36, ptr %29, align 4, !tbaa !78
  br label %37

37:                                               ; preds = %19, %22
  %38 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !81
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %39, 33280
  %43 = icmp eq i32 %42, 33280
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 13
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %45, ptr noundef nonnull %4) #15
  br label %57

46:                                               ; preds = %37
  %47 = and i32 %39, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %50) #15
  call void @size_to_mat4(ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %51 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 13
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %51) #15
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %57

52:                                               ; preds = %46
  br i1 %41, label %55, label %53

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %54) #15
  call void @normalize_m4(ptr noundef nonnull %7) #15
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  br label %57

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %56, ptr noundef nonnull %4) #15
  br label %57

57:                                               ; preds = %49, %55, %53, %44
  %58 = load i32, ptr %38, align 8, !tbaa !81
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #15
  call void @unit_m4(ptr noundef nonnull %8) #15
  call void @unit_m4(ptr noundef %2) #15
  call void @unit_m4(ptr noundef nonnull %10) #15
  %62 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  %64 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %62, ptr noundef nonnull %63, ptr noundef nonnull %64) #15
  call void @unit_m3(ptr noundef nonnull %9) #15
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %63) #15
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %9) #15
  call void @copy_m4_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  br label %71

65:                                               ; preds = %57
  %66 = and i32 %58, 33280
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %69, ptr noundef nonnull %4) #15
  br label %71

70:                                               ; preds = %65
  call void @copy_m4_m4(ptr noundef %2, ptr noundef %1) #15
  br label %71

71:                                               ; preds = %68, %70, %61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %91

72:                                               ; preds = %3
  %73 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %73) #15
  %74 = load ptr, ptr %12, align 8, !tbaa !75
  %75 = getelementptr inbounds %struct.Bone, ptr %74, i64 0, i32 10
  %76 = load i32, ptr %75, align 8, !tbaa !81
  %77 = and i32 %76, 4194304
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %72
  tail call void @unit_m4(ptr noundef %2) #15
  %80 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %81 = load ptr, ptr %12, align 8, !tbaa !75
  %82 = getelementptr inbounds %struct.Bone, ptr %81, i64 0, i32 13, i64 3
  %83 = load float, ptr %82, align 4, !tbaa !78
  store float %83, ptr %80, align 4, !tbaa !78
  %84 = getelementptr inbounds %struct.Bone, ptr %81, i64 0, i32 13, i64 3, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !78
  %86 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 1
  store float %85, ptr %86, align 4, !tbaa !78
  %87 = getelementptr inbounds %struct.Bone, ptr %81, i64 0, i32 13, i64 3, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !78
  %89 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 2
  store float %88, ptr %89, align 4, !tbaa !78
  br label %91

90:                                               ; preds = %72
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef %1) #15
  br label %91

91:                                               ; preds = %79, %90, %71
  ret void
}

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_mat_pose_to_bone(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #15
  call void @BKE_pchan_to_pose_mat(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = call zeroext i8 @invert_m4(ptr noundef nonnull %4) #15
  %8 = call zeroext i8 @invert_m4(ptr noundef nonnull %5) #15
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  %9 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_mat_bone_to_pose(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #15
  call void @BKE_pchan_to_pose_mat(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  %7 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %8 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_loc_pose_to_bone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @unit_m4(ptr noundef nonnull %7) #15
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %10 = load float, ptr %1, align 4, !tbaa !78
  store float %10, ptr %9, align 16, !tbaa !78
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !78
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 1
  store float %12, ptr %13, align 4, !tbaa !78
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !78
  %16 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 2
  store float %15, ptr %16, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  call void @BKE_pchan_to_pose_mat(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %17 = call zeroext i8 @invert_m4(ptr noundef nonnull %4) #15
  %18 = call zeroext i8 @invert_m4(ptr noundef nonnull %5) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  %19 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %20 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  %21 = load float, ptr %19, align 16, !tbaa !78
  store float %21, ptr %2, align 4, !tbaa !78
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !78
  %24 = getelementptr inbounds float, ptr %2, i64 1
  store float %23, ptr %24, align 4, !tbaa !78
  %25 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !78
  %27 = getelementptr inbounds float, ptr %2, i64 2
  store float %26, ptr %27, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_mat_pose_to_bone_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca %struct.bPoseChannel, align 8
  call void @llvm.lifetime.start.p0(i64 544, ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %9, ptr noundef nonnull align 8 dereferenceable(544) %1, i64 544, i1 false), !tbaa.struct !125
  call void @BKE_pose_where_is_bone(ptr noundef null, ptr noundef %0, ptr noundef nonnull %9, float noundef 0.000000e+00, i8 noundef zeroext 0)
  call void @unit_m4(ptr noundef %3) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #15
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 20
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 21
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef %3) #15
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 26
  %13 = load i16, ptr %12, align 4, !tbaa !127
  switch i16 %13, label %19 [
    i16 0, label %14
    i16 -1, label %16
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 23
  call void @mat3_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %8) #15
  br label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 24
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 25
  call void @mat3_to_axis_angle(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #15
  br label %21

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 22
  call void @mat3_to_eulO(ptr noundef nonnull %20, i16 noundef signext %13, ptr noundef nonnull %8) #15
  br label %21

21:                                               ; preds = %14, %16, %19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef %2) #15
  call void @BKE_pchan_to_pose_mat(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %22 = call zeroext i8 @invert_m4(ptr noundef nonnull %5) #15
  %23 = call zeroext i8 @invert_m4(ptr noundef nonnull %6) #15
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %7) #15
  %24 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %25 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %24, ptr noundef nonnull %6, ptr noundef nonnull %25) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 544, ptr nonnull %9) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_where_is_bone(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = icmp eq i8 %4, 0
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 28
  br i1 %9, label %12, label %11

11:                                               ; preds = %5
  tail call void @BKE_pchan_to_mat4(ptr noundef %2, ptr noundef nonnull %10)
  br label %13

12:                                               ; preds = %5
  tail call void @unit_m4(ptr noundef nonnull %10) #15
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 28
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %14) #15
  call void @BKE_pchan_to_pose_mat(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @mul_m4_m4m4(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef nonnull %8) #15
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.Bone, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !81
  %26 = and i32 %25, 262144
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.bPose, ptr %31, i64 0, i32 8
  %33 = load float, ptr %32, align 4, !tbaa !78
  %34 = load float, ptr %29, align 4, !tbaa !78
  %35 = fadd float %33, %34
  store float %35, ptr %29, align 4, !tbaa !78
  %36 = getelementptr inbounds %struct.bPose, ptr %31, i64 0, i32 8, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !78
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !78
  %40 = fadd float %37, %39
  store float %40, ptr %38, align 4, !tbaa !78
  %41 = getelementptr inbounds %struct.bPose, ptr %31, i64 0, i32 8, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !78
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !78
  %45 = fadd float %42, %44
  store float %45, ptr %43, align 4, !tbaa !78
  br label %46

46:                                               ; preds = %21, %28, %13
  br i1 %9, label %66, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !78
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !78
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !78
  %58 = call ptr @BKE_constraints_make_evalob(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext 2) #15
  call void @BKE_constraints_solve(ptr noundef nonnull %48, ptr noundef %58, float noundef %3) #15
  call void @BKE_constraints_clear_evalob(ptr noundef %58) #15
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = getelementptr inbounds %struct.Bone, ptr %60, i64 0, i32 10
  %62 = load i32, ptr %61, align 8, !tbaa !81
  %63 = and i32 %62, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %51
  store float %53, ptr %52, align 4, !tbaa !78
  store float %55, ptr %54, align 4, !tbaa !78
  store float %57, ptr %56, align 4, !tbaa !78
  br label %66

66:                                               ; preds = %51, %65, %47, %46
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !78
  store float %69, ptr %67, align 4, !tbaa !78
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !78
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31, i64 1
  store float %71, ptr %72, align 4, !tbaa !78
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 3, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !78
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31, i64 2
  store float %74, ptr %75, align 4, !tbaa !78
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !78
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !78
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29, i64 1, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !78
  %82 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  %84 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 18
  %85 = load float, ptr %84, align 4, !tbaa !77
  %86 = fmul float %77, %85
  %87 = fmul float %79, %85
  %88 = fmul float %81, %85
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 32
  %90 = fadd float %69, %86
  store float %90, ptr %89, align 4, !tbaa !78
  %91 = fadd float %71, %87
  %92 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 32, i64 1
  store float %91, ptr %92, align 4, !tbaa !78
  %93 = fadd float %74, %88
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 32, i64 2
  store float %93, ptr %94, align 4, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pchan_apply_mat4(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %8 = load i16, ptr %7, align 4, !tbaa !127
  switch i16 %8, label %14 [
    i16 0, label %9
    i16 -1, label %11
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %4) #15
  br label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  call void @mat3_to_axis_angle(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %4) #15
  br label %19

14:                                               ; preds = %3
  %15 = icmp eq i8 %2, 0
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  br i1 %15, label %18, label %17

17:                                               ; preds = %14
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %16, ptr noundef nonnull %16, i16 noundef signext %8, ptr noundef nonnull %4) #15
  br label %19

18:                                               ; preds = %14
  call void @mat3_to_eulO(ptr noundef nonnull %16, i16 noundef signext %8, ptr noundef nonnull %4) #15
  br label %19

19:                                               ; preds = %9, %11, %17, %18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pchan_mat3_to_rot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %5 = load i16, ptr %4, align 4, !tbaa !127
  switch i16 %5, label %11 [
    i16 0, label %6
    i16 -1, label %8
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  tail call void @mat3_to_quat(ptr noundef nonnull %7, ptr noundef %1) #15
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  tail call void @mat3_to_axis_angle(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %1) #15
  br label %16

11:                                               ; preds = %3
  %12 = icmp eq i8 %2, 0
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  br i1 %12, label %15, label %14

14:                                               ; preds = %11
  tail call void @mat3_to_compatible_eulO(ptr noundef nonnull %13, ptr noundef nonnull %13, i16 noundef signext %5, ptr noundef %1) #15
  br label %16

15:                                               ; preds = %11
  tail call void @mat3_to_eulO(ptr noundef nonnull %13, i16 noundef signext %5, ptr noundef %1) #15
  br label %16

16:                                               ; preds = %14, %15, %8, %6
  ret void
}

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @mat4_to_loc_rot_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_mat_pose_to_delta(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %5 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #15
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_rotMode_change_values(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  switch i16 %4, label %42 [
    i16 -1, label %9
    i16 0, label %11
  ]

9:                                                ; preds = %8
  %10 = load float, ptr %3, align 4, !tbaa !78
  tail call void @axis_angle_to_eulO(ptr noundef %1, i16 noundef signext %5, ptr noundef %2, float noundef %10) #15
  br label %42

11:                                               ; preds = %8
  %12 = tail call float @normalize_qt(ptr noundef %0) #15
  tail call void @quat_to_eulO(ptr noundef %1, i16 noundef signext %5, ptr noundef %0) #15
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
  %17 = load float, ptr %3, align 4, !tbaa !78
  tail call void @axis_angle_to_quat(ptr noundef %0, ptr noundef %2, float noundef %17) #15
  br label %42

18:                                               ; preds = %14
  %19 = icmp sgt i16 %4, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %18
  tail call void @eulO_to_quat(ptr noundef %0, ptr noundef %1, i16 noundef signext %4) #15
  br label %42

21:                                               ; preds = %13
  %22 = icmp sgt i16 %4, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @eulO_to_axis_angle(ptr noundef %2, ptr noundef %3, ptr noundef %1, i16 noundef signext %4) #15
  br label %28

24:                                               ; preds = %21
  %25 = icmp eq i16 %4, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call float @normalize_qt(ptr noundef %0) #15
  tail call void @quat_to_axis_angle(ptr noundef %2, ptr noundef %3, ptr noundef %0) #15
  br label %28

28:                                               ; preds = %24, %26, %23
  %29 = load float, ptr %2, align 4, !tbaa !78
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !78
  %32 = fsub float %29, %31
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fcmp ult float %33, 0x3E80000000000000
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = getelementptr inbounds float, ptr %2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !78
  %38 = fsub float %31, %37
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fcmp ult float %39, 0x3E80000000000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store float 1.000000e+00, ptr %30, align 4, !tbaa !78
  br label %42

42:                                               ; preds = %13, %8, %18, %20, %16, %28, %35, %41, %9, %11
  ret void
}

declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

declare float @normalize_qt(ptr noundef) local_unnamed_addr #2

declare void @quat_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @eulO_to_quat(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @quat_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_vec_roll(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = icmp eq ptr %1, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !78
  store float %11, ptr %1, align 4, !tbaa !78
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !78
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !78
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !78
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !78
  br label %18

18:                                               ; preds = %9, %3
  %19 = icmp eq ptr %2, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #15
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %22 = load float, ptr %21, align 4, !tbaa !78
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !78
  %25 = fmul float %24, %24
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %25)
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !78
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %26)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = tail call float @sqrtf(float noundef %29) #15
  %33 = fdiv float 1.000000e+00, %32
  %34 = load float, ptr %21, align 4, !tbaa !78
  %35 = fmul float %34, %33
  store float %35, ptr %4, align 4, !tbaa !78
  %36 = load float, ptr %23, align 4, !tbaa !78
  %37 = fmul float %33, %36
  %38 = getelementptr inbounds float, ptr %4, i64 1
  store float %37, ptr %38, align 4, !tbaa !78
  %39 = load float, ptr %27, align 4, !tbaa !78
  %40 = fmul float %33, %39
  br label %43

41:                                               ; preds = %20
  store float 0.000000e+00, ptr %4, align 4, !tbaa !78
  %42 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %42, align 4, !tbaa !78
  br label %43

43:                                               ; preds = %31, %41
  %44 = phi float [ %40, %31 ], [ 0.000000e+00, %41 ]
  %45 = getelementptr inbounds float, ptr %4, i64 2
  store float %44, ptr %45, align 4, !tbaa !78
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %4, float noundef 0.000000e+00, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  %46 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %0) #15
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !78
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %50 = load float, ptr %49, align 16, !tbaa !78
  %51 = call float @atan2f(float noundef %48, float noundef %50) #15
  store float %51, ptr %2, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  br label %52

52:                                               ; preds = %43, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @vec_roll_to_mat3_normalized(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !78
  %8 = fadd float %7, 1.000000e+00
  %9 = fcmp ogt float %8, 0x3EE4F8B580000000
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load float, ptr %0, align 4, !tbaa !78
  %12 = fcmp une float %11, 0.000000e+00
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !78
  %16 = fcmp une float %15, 0.000000e+00
  %17 = fcmp ogt float %8, 0x3E112E0BE0000000
  %18 = and i1 %17, %16
  br i1 %18, label %21, label %58

19:                                               ; preds = %10
  %20 = fcmp ogt float %8, 0x3E112E0BE0000000
  br i1 %20, label %21, label %58

21:                                               ; preds = %13, %19, %3
  %22 = load float, ptr %0, align 4, !tbaa !78
  %23 = fneg float %22
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %23, ptr %24, align 4, !tbaa !78
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  store float %22, ptr %25, align 4, !tbaa !78
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %7, ptr %26, align 16, !tbaa !78
  %27 = getelementptr inbounds float, ptr %0, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !78
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float %28, ptr %29, align 4, !tbaa !78
  %30 = fneg float %28
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %30, ptr %32, align 4, !tbaa !78
  br i1 %9, label %33, label %44

33:                                               ; preds = %21
  %34 = fmul float %22, %22
  %35 = fdiv float %34, %8
  %36 = fsub float 1.000000e+00, %35
  store float %36, ptr %5, align 16, !tbaa !78
  %37 = fmul float %28, %28
  %38 = fdiv float %37, %8
  %39 = fsub float 1.000000e+00, %38
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %39, ptr %40, align 16, !tbaa !78
  %41 = fmul float %28, %23
  %42 = fdiv float %41, %8
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %42, ptr %43, align 8, !tbaa !78
  store float %42, ptr %31, align 8, !tbaa !78
  br label %60

44:                                               ; preds = %21
  %45 = fmul float %28, %28
  %46 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %45)
  %47 = fadd float %22, %28
  %48 = fsub float %22, %28
  %49 = fmul float %47, %48
  %50 = fneg float %46
  %51 = fdiv float %49, %50
  store float %51, ptr %5, align 16, !tbaa !78
  %52 = fneg float %51
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %52, ptr %53, align 16, !tbaa !78
  %54 = fmul float %22, 2.000000e+00
  %55 = fmul float %54, %28
  %56 = fdiv float %55, %46
  %57 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %56, ptr %57, align 8, !tbaa !78
  store float %56, ptr %31, align 8, !tbaa !78
  br label %60

58:                                               ; preds = %19, %13
  call void @unit_m3(ptr noundef nonnull %5) #15
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %59, align 16, !tbaa !78
  store float -1.000000e+00, ptr %5, align 16, !tbaa !78
  br label %60

60:                                               ; preds = %33, %44, %58
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %4, ptr noundef %0, float noundef %1) #15
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  ret void
}

declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_where_is_bone(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 7
  %7 = load float, ptr %5, align 4, !tbaa !78
  %8 = load float, ptr %6, align 4, !tbaa !78
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 8, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !78
  %12 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !78
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 8, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !78
  %17 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 7, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !78
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 6
  %21 = load float, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %23 = fmul float %14, %14
  %24 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %24)
  %26 = fcmp ogt float %25, 0x38AA95A5C0000000
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = tail call float @sqrtf(float noundef %25) #15
  %29 = fdiv float 1.000000e+00, %28
  %30 = fmul float %9, %29
  store float %30, ptr %3, align 4, !tbaa !78
  %31 = fmul float %14, %29
  %32 = getelementptr inbounds float, ptr %3, i64 1
  store float %31, ptr %32, align 4, !tbaa !78
  %33 = fmul float %19, %29
  br label %36

34:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !78
  %35 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %35, align 4, !tbaa !78
  br label %36

36:                                               ; preds = %27, %34
  %37 = phi float [ %33, %27 ], [ 0.000000e+00, %34 ]
  %38 = getelementptr inbounds float, ptr %3, i64 2
  store float %37, ptr %38, align 4, !tbaa !78
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %3, float noundef %21, ptr noundef nonnull %22)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  %39 = load float, ptr %5, align 4, !tbaa !78
  %40 = load float, ptr %6, align 4, !tbaa !78
  %41 = fsub float %39, %40
  %42 = load float, ptr %10, align 4, !tbaa !78
  %43 = load float, ptr %12, align 4, !tbaa !78
  %44 = fsub float %42, %43
  %45 = load float, ptr %15, align 4, !tbaa !78
  %46 = load float, ptr %17, align 4, !tbaa !78
  %47 = fsub float %45, %46
  %48 = fmul float %44, %44
  %49 = call float @llvm.fmuladd.f32(float %41, float %41, float %48)
  %50 = call float @llvm.fmuladd.f32(float %47, float %47, float %49)
  %51 = call float @sqrtf(float noundef %50) #15
  %52 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 18
  store float %51, ptr %52, align 4, !tbaa !77
  %53 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 17
  %54 = load float, ptr %53, align 8, !tbaa !130
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  store float 0x3FB99999A0000000, ptr %53, align 8, !tbaa !130
  %57 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 19
  store float 0x3FB99999A0000000, ptr %57, align 8, !tbaa !131
  %58 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 26
  store i16 1, ptr %58, align 4, !tbaa !84
  br label %59

59:                                               ; preds = %56, %36
  %60 = icmp eq ptr %1, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %62 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  call void @copy_m4_m3(ptr noundef nonnull %4, ptr noundef nonnull %22) #15
  %66 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %67 = load float, ptr %6, align 4, !tbaa !78
  store float %67, ptr %66, align 16, !tbaa !78
  %68 = load float, ptr %12, align 4, !tbaa !78
  %69 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  store float %68, ptr %69, align 4, !tbaa !78
  %70 = load float, ptr %17, align 4, !tbaa !78
  %71 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  store float %70, ptr %71, align 8, !tbaa !78
  %72 = load ptr, ptr %62, align 8, !tbaa !66
  %73 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 18
  %74 = load float, ptr %73, align 4, !tbaa !77
  %75 = fadd float %68, %74
  store float %75, ptr %69, align 4, !tbaa !78
  br label %76

76:                                               ; preds = %61, %65
  %77 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  %78 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 13
  call void @mul_m4_m4m4(ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %87

79:                                               ; preds = %59
  %80 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  call void @copy_m4_m3(ptr noundef nonnull %80, ptr noundef nonnull %22) #15
  %81 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3
  %82 = load float, ptr %6, align 4, !tbaa !78
  store float %82, ptr %81, align 4, !tbaa !78
  %83 = load float, ptr %12, align 4, !tbaa !78
  %84 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3, i64 1
  store float %83, ptr %84, align 4, !tbaa !78
  %85 = load float, ptr %17, align 4, !tbaa !78
  %86 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3, i64 2
  store float %85, ptr %86, align 4, !tbaa !78
  br label %87

87:                                               ; preds = %79, %76
  %88 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !51
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %93, %91 ], [ %89, %87 ]
  call void @BKE_armature_where_is_bone(ptr noundef nonnull %92, ptr noundef %0)
  %93 = load ptr, ptr %92, align 8, !tbaa !51
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %91, !llvm.loop !132

95:                                               ; preds = %91, %87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_armature_where_is(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @BKE_armature_where_is_bone(ptr noundef nonnull %6, ptr noundef null)
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !133

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_rebuild(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bPoseChannel, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %11 = tail call ptr %10(i64 noundef 216, ptr noundef nonnull @.str.11) #15
  store ptr %11, ptr %6, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 14
  tail call void @animviz_settings_init(ptr noundef nonnull %12) #15
  br label %13

13:                                               ; preds = %9, %2
  %14 = load ptr, ptr %6, align 8, !tbaa !89
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %21, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  store ptr null, ptr %19, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 14
  store ptr null, ptr %20, align 8, !tbaa !83
  %21 = load ptr, ptr %18, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17, !llvm.loop !134

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %31, %27 ], [ %25, %23 ]
  %29 = phi i32 [ %30, %27 ], [ 0, %23 ]
  %30 = tail call fastcc i32 @rebuild_pose_bone(ptr noundef nonnull %14, ptr noundef nonnull %28, ptr noundef null, i32 noundef %29)
  %31 = load ptr, ptr %28, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %27, !llvm.loop !135

33:                                               ; preds = %27
  %34 = icmp sgt i32 %30, 1
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i1 [ false, %23 ], [ %34, %33 ]
  %37 = load ptr, ptr %14, align 8, !tbaa !136
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35, %46
  %40 = phi ptr [ %41, %46 ], [ %37, %35 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  tail call void @BKE_pose_channel_free(ptr noundef nonnull %40) #15
  tail call void @BKE_pose_channels_hash_free(ptr noundef nonnull %14) #15
  tail call void @BLI_freelinkN(ptr noundef nonnull %14, ptr noundef nonnull %40) #15
  br label %46

46:                                               ; preds = %39, %45
  %47 = icmp eq ptr %41, null
  br i1 %47, label %48, label %39, !llvm.loop !139

48:                                               ; preds = %46, %35
  %49 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !140
  %51 = icmp eq ptr %50, null
  br i1 %51, label %203, label %52

52:                                               ; preds = %48
  tail call void @BKE_object_copy_proxy_drivers(ptr noundef %0, ptr noundef nonnull %50) #15
  %53 = load ptr, ptr %49, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.bArmature, ptr %1, i64 0, i32 16
  %55 = load i32, ptr %54, align 4, !tbaa !141
  %56 = load ptr, ptr %6, align 8, !tbaa !89
  %57 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = icmp eq ptr %58, null
  br i1 %59, label %203, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %56, align 8, !tbaa !51
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 4
  br label %65

65:                                               ; preds = %63, %80
  %66 = phi ptr [ %61, %63 ], [ %82, %80 ]
  %67 = phi i32 [ 0, %63 ], [ %81, %80 ]
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = getelementptr inbounds %struct.Bone, ptr %69, i64 0, i32 25
  %71 = load i32, ptr %70, align 8, !tbaa !142
  %72 = and i32 %71, %55
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 4
  %76 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %58, ptr noundef nonnull %75) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %64, ptr noundef nonnull %75)
  br label %80

80:                                               ; preds = %78, %74, %65
  %81 = phi i32 [ 1, %78 ], [ %67, %74 ], [ %67, %65 ]
  %82 = load ptr, ptr %66, align 8, !tbaa !51
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %65, !llvm.loop !143

84:                                               ; preds = %80
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %86, label %203

86:                                               ; preds = %60, %84
  tail call void @BKE_pose_rest(ptr noundef nonnull %58) #15
  %87 = getelementptr inbounds %struct.bPose, ptr %56, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %87) #15
  %88 = getelementptr inbounds %struct.bPose, ptr %58, i64 0, i32 9
  tail call void @BLI_duplicatelist(ptr noundef nonnull %87, ptr noundef nonnull %88) #15
  %89 = getelementptr inbounds %struct.bPose, ptr %58, i64 0, i32 10
  %90 = load i32, ptr %89, align 8, !tbaa !144
  %91 = getelementptr inbounds %struct.bPose, ptr %56, i64 0, i32 10
  store i32 %90, ptr %91, align 8, !tbaa !144
  %92 = load ptr, ptr %56, align 8, !tbaa !51
  %93 = icmp eq ptr %92, null
  br i1 %93, label %203, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 1
  %96 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 13
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 14
  %98 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 17
  %99 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 2
  %100 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 3
  br label %101

101:                                              ; preds = %94, %200
  %102 = phi ptr [ %92, %94 ], [ %201, %200 ]
  %103 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 4
  %104 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %58, ptr noundef nonnull %103) #15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %200, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 12
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  %109 = getelementptr inbounds %struct.Bone, ptr %108, i64 0, i32 25
  %110 = load i32, ptr %109, align 8, !tbaa !142
  %111 = and i32 %110, %55
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %171, label %113

113:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 544, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %4, ptr noundef nonnull align 8 dereferenceable(544) %104, i64 544, i1 false), !tbaa.struct !125
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !145
  store ptr %115, ptr %95, align 8, !tbaa !145
  %116 = load ptr, ptr %102, align 8, !tbaa !138
  store ptr %116, ptr %4, align 8, !tbaa !138
  %117 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 13
  %118 = load ptr, ptr %117, align 8, !tbaa !82
  store ptr %118, ptr %96, align 8, !tbaa !82
  %119 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 14
  %120 = load ptr, ptr %119, align 8, !tbaa !83
  store ptr %120, ptr %97, align 8, !tbaa !83
  %121 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 17
  %122 = load ptr, ptr %121, align 8, !tbaa !146
  store ptr %122, ptr %98, align 8, !tbaa !146
  store ptr null, ptr %121, align 8, !tbaa !146
  %123 = load ptr, ptr %99, align 8, !tbaa !147
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %113
  %126 = call ptr @IDP_CopyProperty(ptr noundef nonnull %123) #15
  store ptr %126, ptr %99, align 8, !tbaa !147
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !147
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  call void @IDP_SyncGroupValues(ptr noundef %126, ptr noundef nonnull %128) #15
  br label %131

131:                                              ; preds = %130, %125, %113
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 3
  call void @BKE_constraints_proxylocal_extract(ptr noundef nonnull %3, ptr noundef nonnull %132) #15
  %133 = getelementptr inbounds %struct.bPoseChannel, ptr %104, i64 0, i32 3
  call void @BKE_constraints_copy(ptr noundef nonnull %100, ptr noundef nonnull %133, i8 noundef zeroext 0) #15
  call void @BLI_movelisttolist(ptr noundef nonnull %100, ptr noundef nonnull %3) #15
  %134 = load ptr, ptr %100, align 8, !tbaa !128
  %135 = icmp eq ptr %134, null
  br i1 %135, label %165, label %136

136:                                              ; preds = %131, %162
  %137 = phi ptr [ %163, %162 ], [ %134, %131 ]
  %138 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %137) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %139 = icmp eq ptr %138, null
  br i1 %139, label %162, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %138, i64 0, i32 8
  %142 = load ptr, ptr %141, align 8, !tbaa !148
  %143 = icmp eq ptr %142, null
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = call i32 %142(ptr noundef nonnull %137, ptr noundef nonnull %5) #15
  %146 = load ptr, ptr %5, align 8, !tbaa !51
  %147 = icmp eq ptr %146, null
  br i1 %147, label %157, label %148

148:                                              ; preds = %144, %154
  %149 = phi ptr [ %155, %154 ], [ %146, %144 ]
  %150 = getelementptr inbounds %struct.bConstraintTarget, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !150
  %152 = icmp eq ptr %151, %53
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store ptr %0, ptr %150, align 8, !tbaa !150
  br label %154

154:                                              ; preds = %153, %148
  %155 = load ptr, ptr %149, align 8, !tbaa !51
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %148, !llvm.loop !152

157:                                              ; preds = %154, %144
  %158 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %138, i64 0, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !153
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  call void %159(ptr noundef nonnull %137, ptr noundef nonnull %5, i8 noundef zeroext 0) #15
  br label %162

162:                                              ; preds = %161, %157, %140, %136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  %163 = load ptr, ptr %137, align 8, !tbaa !154
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %136, !llvm.loop !156

165:                                              ; preds = %162, %131
  call void @BKE_pose_channel_free(ptr noundef nonnull %102) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %102, ptr noundef nonnull align 8 dereferenceable(544) %4, i64 544, i1 false), !tbaa.struct !125
  %166 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 18
  %167 = load ptr, ptr %166, align 8, !tbaa !157
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  call void @id_us_plus(ptr noundef nonnull %167) #15
  br label %170

170:                                              ; preds = %169, %165
  call void @llvm.lifetime.end.p0(i64 544, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %200

171:                                              ; preds = %106
  %172 = getelementptr inbounds %struct.bPoseChannel, ptr %104, i64 0, i32 18
  %173 = load ptr, ptr %172, align 8, !tbaa !157
  %174 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 18
  store ptr %173, ptr %174, align 8, !tbaa !157
  %175 = icmp eq ptr %173, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  call void @id_us_plus(ptr noundef nonnull %173) #15
  br label %177

177:                                              ; preds = %176, %171
  %178 = getelementptr inbounds %struct.bPoseChannel, ptr %104, i64 0, i32 19
  %179 = load ptr, ptr %178, align 8, !tbaa !158
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.bPoseChannel, ptr %179, i64 0, i32 4
  %183 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %56, ptr noundef nonnull %182) #15
  %184 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 19
  store ptr %183, ptr %184, align 8, !tbaa !158
  br label %185

185:                                              ; preds = %181, %177
  %186 = getelementptr inbounds %struct.bPoseChannel, ptr %102, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !147
  %188 = getelementptr inbounds %struct.bPoseChannel, ptr %104, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !147
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = call ptr @IDP_CopyProperty(ptr noundef nonnull %189) #15
  store ptr %192, ptr %186, align 8, !tbaa !147
  %193 = icmp eq ptr %187, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  call void @IDP_SyncGroupValues(ptr noundef %192, ptr noundef nonnull %187) #15
  br label %196

195:                                              ; preds = %185
  store ptr null, ptr %186, align 8, !tbaa !147
  br label %196

196:                                              ; preds = %195, %194
  %197 = icmp eq ptr %187, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %196
  call void @IDP_FreeProperty(ptr noundef nonnull %187) #15
  %199 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %199(ptr noundef nonnull %187) #15
  br label %200

200:                                              ; preds = %198, %196, %191, %170, %101
  %201 = load ptr, ptr %102, align 8, !tbaa !51
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %101, !llvm.loop !159

203:                                              ; preds = %200, %86, %84, %52, %48
  %204 = load ptr, ptr %6, align 8, !tbaa !89
  call void @BKE_pose_update_constraint_flags(ptr noundef %204) #15
  br i1 %36, label %205, label %206

205:                                              ; preds = %203
  call void @DAG_pose_sort(ptr noundef %0) #15
  br label %206

206:                                              ; preds = %205, %203
  %207 = load ptr, ptr %6, align 8, !tbaa !89
  %208 = getelementptr inbounds %struct.bPose, ptr %207, i64 0, i32 2
  %209 = load i16, ptr %208, align 8, !tbaa !160
  %210 = and i16 %209, -34
  %211 = or disjoint i16 %210, 32
  store i16 %211, ptr %208, align 8, !tbaa !160
  call void @BKE_pose_channels_hash_make(ptr noundef %207) #15
  ret void
}

declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rebuild_pose_bone(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %6 = tail call ptr @BKE_pose_channel_verify(ptr noundef %0, ptr noundef nonnull %5) #15
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  store ptr %1, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 13
  store ptr %2, ptr %8, align 8, !tbaa !82
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
  %18 = tail call fastcc i32 @rebuild_pose_bone(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %6, i32 noundef %17)
  %19 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 5
  %25 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef nonnull %24) #15
  store ptr %25, ptr %14, align 8, !tbaa !83
  br label %26

26:                                               ; preds = %15, %23
  %27 = load ptr, ptr %16, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !161

29:                                               ; preds = %26, %4
  %30 = phi i32 [ %9, %4 ], [ %18, %26 ]
  ret i32 %30
}

declare void @BKE_pose_channel_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_channels_hash_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_copy_proxy_drivers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_update_constraint_flags(ptr noundef) local_unnamed_addr #2

declare void @DAG_pose_sort(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_channels_hash_make(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pchan_to_mat4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  call void @size_to_mat3(ptr noundef nonnull %3, ptr noundef nonnull %7) #15
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %9 = load i16, ptr %8, align 4, !tbaa !127
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %12, i16 noundef signext %9) #15
  br label %22

13:                                               ; preds = %2
  %14 = icmp eq i16 %9, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  %18 = load float, ptr %17, align 8, !tbaa !162
  call void @axis_angle_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %16, float noundef %18) #15
  br label %22

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  %21 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %20) #15
  call void @quat_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %22

22:                                               ; preds = %15, %19, %11
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %5) #15
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !81
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  %34 = load float, ptr %33, align 4, !tbaa !78
  store float %34, ptr %32, align 4, !tbaa !78
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !78
  %37 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  store float %36, ptr %37, align 4, !tbaa !78
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !78
  %40 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  store float %39, ptr %40, align 4, !tbaa !78
  br label %41

41:                                               ; preds = %31, %26
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #15
  ret void
}

declare void @size_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pchan_calc_mat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  tail call void @BKE_pchan_to_mat4(ptr noundef %0, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pose_where_is_bone_tail(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !78
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29, i64 1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !78
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29, i64 1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !78
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.Bone, ptr %9, i64 0, i32 18
  %11 = load float, ptr %10, align 4, !tbaa !77
  %12 = fmul float %3, %11
  %13 = fmul float %5, %11
  %14 = fmul float %7, %11
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 31
  %17 = load float, ptr %16, align 4, !tbaa !78
  %18 = fadd float %17, %12
  store float %18, ptr %15, align 4, !tbaa !78
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 31, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !78
  %21 = fadd float %13, %20
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32, i64 1
  store float %21, ptr %22, align 4, !tbaa !78
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 31, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !78
  %25 = fadd float %14, %24
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32, i64 2
  store float %25, ptr %26, align 4, !tbaa !78
  ret void
}

declare ptr @BKE_constraints_make_evalob(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_constraints_solve(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_constraints_clear_evalob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_where_is(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [255 x ptr], align 16
  %14 = alloca [255 x float], align 16
  %15 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #15
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i16 %17, 25
  br i1 %18, label %19, label %683

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %0, null
  %24 = or i1 %23, %22
  br i1 %24, label %683, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bPose, ptr %27, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !160
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %25
  tail call void @BKE_pose_rebuild(ptr noundef %1, ptr noundef %21)
  br label %35

35:                                               ; preds = %34, %29
  %36 = tail call float @BKE_scene_frame_get(ptr noundef %0) #15
  %37 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !43
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %40, %35
  %46 = load ptr, ptr %26, align 8, !tbaa !89
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  br i1 %48, label %666, label %49

49:                                               ; preds = %45, %75
  %50 = phi ptr [ %76, %75 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 29
  %56 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef nonnull %55, ptr noundef nonnull %56) #15
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 31
  %58 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 11
  %59 = load float, ptr %58, align 4, !tbaa !78
  store float %59, ptr %57, align 4, !tbaa !78
  %60 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 11, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !78
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 31, i64 1
  store float %61, ptr %62, align 4, !tbaa !78
  %63 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 11, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !78
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 31, i64 2
  store float %64, ptr %65, align 4, !tbaa !78
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 32
  %67 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 12
  %68 = load float, ptr %67, align 4, !tbaa !78
  store float %68, ptr %66, align 4, !tbaa !78
  %69 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 12, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !78
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 32, i64 1
  store float %70, ptr %71, align 4, !tbaa !78
  %72 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 12, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !78
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 32, i64 2
  store float %73, ptr %74, align 4, !tbaa !78
  br label %75

75:                                               ; preds = %49, %54
  %76 = load ptr, ptr %50, align 8, !tbaa !51
  %77 = icmp eq ptr %76, null
  br i1 %77, label %666, label %49, !llvm.loop !163

78:                                               ; preds = %40
  %79 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %80 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %81 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %79, ptr noundef nonnull %80) #15
  %82 = load ptr, ptr %26, align 8, !tbaa !89
  %83 = load ptr, ptr %82, align 8, !tbaa !51
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %78, %85
  %86 = phi ptr [ %90, %85 ], [ %83, %78 ]
  %87 = getelementptr inbounds %struct.bPoseChannel, ptr %86, i64 0, i32 5
  %88 = load i16, ptr %87, align 8, !tbaa !164
  %89 = and i16 %88, 23039
  store i16 %89, ptr %87, align 8, !tbaa !164
  %90 = load ptr, ptr %86, align 8, !tbaa !51
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %85, !llvm.loop !165

92:                                               ; preds = %85, %78
  tail call void @BIK_initialize_tree(ptr noundef %0, ptr noundef %1, float noundef %36) #15
  %93 = load ptr, ptr %26, align 8, !tbaa !89
  %94 = load ptr, ptr %93, align 8, !tbaa !51
  %95 = icmp eq ptr %94, null
  br i1 %95, label %305, label %96

96:                                               ; preds = %92, %302
  %97 = phi ptr [ %303, %302 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.bPoseChannel, ptr %97, i64 0, i32 9
  %99 = load i8, ptr %98, align 8, !tbaa !166
  %100 = and i8 %99, 32
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %302, label %102

102:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 2040, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 1020, ptr nonnull %14) #15
  %103 = getelementptr inbounds %struct.bPoseChannel, ptr %97, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !51
  %105 = icmp eq ptr %104, null
  br i1 %105, label %135, label %106

106:                                              ; preds = %102, %131
  %107 = phi i1 [ %134, %131 ], [ %105, %102 ]
  %108 = phi ptr [ %133, %131 ], [ %104, %102 ]
  %109 = phi ptr [ %132, %131 ], [ null, %102 ]
  %110 = getelementptr inbounds %struct.bConstraint, ptr %108, i64 0, i32 3
  %111 = load i16, ptr %110, align 8, !tbaa !167
  %112 = icmp eq i16 %111, 22
  br i1 %112, label %113, label %131

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.bConstraint, ptr %108, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !168
  %116 = load ptr, ptr %115, align 8, !tbaa !169
  %117 = icmp eq ptr %116, null
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 3
  %120 = load i16, ptr %119, align 8, !tbaa !45
  %121 = icmp eq i16 %120, 2
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bConstraint, ptr %108, i64 0, i32 9
  %124 = load float, ptr %123, align 8, !tbaa !171
  %125 = fcmp oeq float %124, 0.000000e+00
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.bConstraint, ptr %108, i64 0, i32 4
  %128 = load i16, ptr %127, align 2, !tbaa !172
  %129 = and i16 %128, 516
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126, %122, %118, %113, %106
  %132 = phi ptr [ %115, %113 ], [ %115, %118 ], [ %115, %122 ], [ %115, %126 ], [ %109, %106 ]
  %133 = load ptr, ptr %108, align 8, !tbaa !51
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %106, !llvm.loop !173

135:                                              ; preds = %131, %126, %102
  %136 = phi ptr [ %104, %102 ], [ %133, %131 ], [ %108, %126 ]
  %137 = phi i1 [ %105, %102 ], [ %134, %131 ], [ %107, %126 ]
  %138 = phi ptr [ null, %102 ], [ %132, %131 ], [ %115, %126 ]
  br i1 %137, label %301, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %138, align 8, !tbaa !169
  %141 = icmp eq ptr %140, null
  br i1 %141, label %163, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.Object, ptr %140, i64 0, i32 118
  %144 = load ptr, ptr %143, align 8, !tbaa !174
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.CurveCache, ptr %144, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !175
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %148, align 8, !tbaa !177
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %150, %146, %142
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef nonnull %140, i8 noundef zeroext 0) #15
  %154 = load ptr, ptr %138, align 8, !tbaa !169
  %155 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 118
  %156 = load ptr, ptr %155, align 8, !tbaa !174
  %157 = getelementptr inbounds %struct.CurveCache, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !175
  %159 = icmp eq ptr %158, null
  br i1 %159, label %301, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr %158, align 8, !tbaa !177
  %162 = icmp eq ptr %161, null
  br i1 %162, label %301, label %163

163:                                              ; preds = %160, %150, %139
  %164 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 3
  %165 = load i16, ptr %164, align 2, !tbaa !179
  %166 = tail call i16 @llvm.smax.i16(i16 %165, i16 0)
  %167 = zext nneg i16 %166 to i32
  %168 = zext nneg i16 %166 to i64
  br label %169

169:                                              ; preds = %163, %174
  %170 = phi i64 [ 0, %163 ], [ %184, %174 ]
  %171 = phi ptr [ %97, %163 ], [ %183, %174 ]
  %172 = phi float [ 0.000000e+00, %163 ], [ %181, %174 ]
  %173 = icmp eq i64 %170, %168
  br i1 %173, label %188, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds [255 x ptr], ptr %13, i64 0, i64 %170
  store ptr %171, ptr %175, align 8, !tbaa !51
  %176 = getelementptr inbounds %struct.bPoseChannel, ptr %171, i64 0, i32 12
  %177 = load ptr, ptr %176, align 8, !tbaa !75
  %178 = getelementptr inbounds %struct.Bone, ptr %177, i64 0, i32 18
  %179 = load float, ptr %178, align 4, !tbaa !77
  %180 = getelementptr inbounds [255 x float], ptr %14, i64 0, i64 %170
  store float %179, ptr %180, align 4, !tbaa !78
  %181 = fadd float %172, %179
  %182 = getelementptr inbounds %struct.bPoseChannel, ptr %171, i64 0, i32 13
  %183 = load ptr, ptr %182, align 8, !tbaa !82
  %184 = add nuw nsw i64 %170, 1
  %185 = icmp eq ptr %183, null
  br i1 %185, label %186, label %169, !llvm.loop !180

186:                                              ; preds = %174
  %187 = trunc i64 %184 to i32
  br label %188

188:                                              ; preds = %169, %186
  %189 = phi float [ %181, %186 ], [ %172, %169 ]
  %190 = phi i32 [ %187, %186 ], [ %167, %169 ]
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %301, label %192

192:                                              ; preds = %188
  %193 = add nsw i32 %190, -1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [255 x ptr], ptr %13, i64 0, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !51
  %197 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 4
  %198 = load i16, ptr %197, align 4, !tbaa !181
  %199 = and i16 %198, 1
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %248

201:                                              ; preds = %192
  %202 = sitofp i32 %190 to float
  %203 = fdiv float 1.000000e+00, %202
  %204 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !182
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %201
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %208(ptr noundef nonnull %205) #15
  br label %209

209:                                              ; preds = %207, %201
  %210 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 3
  %211 = load i16, ptr %210, align 2, !tbaa !179
  %212 = add i16 %211, 1
  %213 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 2
  store i16 %212, ptr %213, align 8, !tbaa !183
  %214 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %215 = sext i16 %212 to i64
  %216 = shl nsw i64 %215, 2
  %217 = tail call ptr %214(i64 noundef %216, ptr noundef nonnull @.str.15) #15
  store ptr %217, ptr %204, align 8, !tbaa !182
  store float 1.000000e+00, ptr %217, align 4, !tbaa !78
  %218 = load i16, ptr %197, align 4, !tbaa !181
  %219 = and i16 %218, 8
  %220 = icmp ne i16 %219, 0
  %221 = fcmp oeq float %189, 0.000000e+00
  %222 = select i1 %220, i1 true, i1 %221
  %223 = tail call i32 @llvm.umax.i32(i32 %190, i32 1)
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %209, %233
  %226 = phi i64 [ 0, %209 ], [ %237, %233 ]
  %227 = getelementptr inbounds float, ptr %217, i64 %226
  %228 = load float, ptr %227, align 4, !tbaa !78
  br i1 %222, label %233, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds [255 x float], ptr %14, i64 0, i64 %226
  %231 = load float, ptr %230, align 4, !tbaa !78
  %232 = fdiv float %231, %189
  br label %233

233:                                              ; preds = %225, %229
  %234 = phi float [ %232, %229 ], [ %203, %225 ]
  %235 = fsub float %228, %234
  %236 = getelementptr float, ptr %227, i64 1
  store float %235, ptr %236, align 4, !tbaa !78
  %237 = add nuw nsw i64 %226, 1
  %238 = icmp eq i64 %237, %224
  br i1 %238, label %239, label %225, !llvm.loop !184

239:                                              ; preds = %233
  %240 = zext nneg i32 %190 to i64
  %241 = getelementptr inbounds float, ptr %217, i64 %240
  %242 = load float, ptr %241, align 4, !tbaa !78
  %243 = fcmp olt float %242, 0.000000e+00
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store float 0.000000e+00, ptr %241, align 4, !tbaa !78
  br label %245

245:                                              ; preds = %244, %239
  %246 = load i16, ptr %197, align 4, !tbaa !181
  %247 = or i16 %246, 1
  store i16 %247, ptr %197, align 4, !tbaa !181
  br label %248

248:                                              ; preds = %245, %192
  %249 = load i16, ptr %197, align 4, !tbaa !181
  %250 = and i16 %249, 4
  %251 = icmp ne i16 %250, 0
  %252 = fcmp une float %189, 0.000000e+00
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %276

254:                                              ; preds = %248
  %255 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %256 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !182
  %258 = tail call ptr %255(ptr noundef %257) #15
  %259 = load ptr, ptr %138, align 8, !tbaa !169
  %260 = getelementptr inbounds %struct.Object, ptr %259, i64 0, i32 118
  %261 = load ptr, ptr %260, align 8, !tbaa !174
  %262 = getelementptr inbounds %struct.CurveCache, ptr %261, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !175
  %264 = getelementptr inbounds %struct.Path, ptr %263, i64 0, i32 2
  %265 = load float, ptr %264, align 4, !tbaa !185
  %266 = fdiv float %189, %265
  %267 = tail call i32 @llvm.umax.i32(i32 %190, i32 1)
  %268 = zext i32 %267 to i64
  br label %269

269:                                              ; preds = %254, %269
  %270 = phi i64 [ 0, %254 ], [ %274, %269 ]
  %271 = getelementptr inbounds float, ptr %258, i64 %270
  %272 = load float, ptr %271, align 4, !tbaa !78
  %273 = fmul float %266, %272
  store float %273, ptr %271, align 4, !tbaa !78
  %274 = add nuw nsw i64 %270, 1
  %275 = icmp eq i64 %274, %268
  br i1 %275, label %279, label %269, !llvm.loop !186

276:                                              ; preds = %248
  %277 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %138, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !182
  br label %279

279:                                              ; preds = %269, %276
  %280 = phi ptr [ %278, %276 ], [ %258, %269 ]
  %281 = phi i8 [ 0, %276 ], [ 1, %269 ]
  %282 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %283 = tail call ptr %282(i64 noundef 64, ptr noundef nonnull @.str.16) #15
  %284 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 2
  store i32 22, ptr %284, align 8, !tbaa !187
  %285 = trunc i32 %190 to i16
  %286 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 4
  store i16 %285, ptr %286, align 2, !tbaa !189
  %287 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %288 = zext nneg i32 %190 to i64
  %289 = shl nuw nsw i64 %288, 3
  %290 = tail call ptr %287(i64 noundef %289, ptr noundef nonnull @.str.17) #15
  %291 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 6
  store ptr %290, ptr %291, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %290, ptr nonnull align 16 %13, i64 %289, i1 false)
  %292 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 5
  store ptr %280, ptr %292, align 8, !tbaa !191
  %293 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 3
  store i8 %281, ptr %293, align 4, !tbaa !192
  %294 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 7
  store ptr %196, ptr %294, align 8, !tbaa !193
  %295 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 8
  store ptr %136, ptr %295, align 8, !tbaa !194
  %296 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %283, i64 0, i32 9
  store ptr %138, ptr %296, align 8, !tbaa !195
  %297 = getelementptr inbounds %struct.bPoseChannel, ptr %196, i64 0, i32 16
  tail call void @BLI_addtail(ptr noundef nonnull %297, ptr noundef %283) #15
  %298 = getelementptr inbounds %struct.bPoseChannel, ptr %196, i64 0, i32 5
  %299 = load i16, ptr %298, align 8, !tbaa !164
  %300 = or i16 %299, -32768
  store i16 %300, ptr %298, align 8, !tbaa !164
  br label %301

301:                                              ; preds = %279, %188, %160, %153, %135
  call void @llvm.lifetime.end.p0(i64 1020, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 2040, ptr nonnull %13) #15
  br label %302

302:                                              ; preds = %301, %96
  %303 = load ptr, ptr %97, align 8, !tbaa !51
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %96, !llvm.loop !196

305:                                              ; preds = %302, %92
  %306 = load ptr, ptr %26, align 8, !tbaa !89
  %307 = load ptr, ptr %306, align 8, !tbaa !51
  %308 = icmp eq ptr %307, null
  br i1 %308, label %665, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds float, ptr %3, i64 1
  %311 = getelementptr inbounds float, ptr %3, i64 2
  %312 = getelementptr inbounds float, ptr %4, i64 1
  %313 = getelementptr inbounds float, ptr %4, i64 2
  %314 = getelementptr inbounds float, ptr %6, i64 1
  %315 = getelementptr inbounds float, ptr %6, i64 2
  %316 = getelementptr inbounds float, ptr %10, i64 1
  %317 = getelementptr inbounds float, ptr %10, i64 2
  %318 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %319 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %320 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %321 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %322 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %323 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  %324 = getelementptr inbounds float, ptr %12, i64 1
  %325 = getelementptr inbounds float, ptr %12, i64 2
  %326 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1
  %327 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 1
  %328 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 2
  %329 = getelementptr inbounds float, ptr %5, i64 1
  %330 = getelementptr inbounds float, ptr %5, i64 2
  %331 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %332 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 1
  %333 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %334 = getelementptr inbounds float, ptr %5, i64 1
  %335 = getelementptr inbounds float, ptr %5, i64 2
  %336 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %337 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 1
  %338 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %339 = getelementptr inbounds float, ptr %5, i64 1
  %340 = getelementptr inbounds float, ptr %5, i64 2
  %341 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %342 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 1
  %343 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %344 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %345 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %346 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  br label %347

347:                                              ; preds = %309, %662
  %348 = phi ptr [ %307, %309 ], [ %663, %662 ]
  %349 = getelementptr inbounds %struct.bPoseChannel, ptr %348, i64 0, i32 5
  %350 = load i16, ptr %349, align 8, !tbaa !164
  %351 = zext i16 %350 to i32
  %352 = and i32 %351, 8192
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %347
  call void @BIK_execute_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %348, float noundef %36) #15
  br label %662

355:                                              ; preds = %347
  %356 = icmp sgt i16 %350, -1
  br i1 %356, label %658, label %357

357:                                              ; preds = %355
  %358 = getelementptr inbounds %struct.bPoseChannel, ptr %348, i64 0, i32 16
  %359 = load ptr, ptr %358, align 8, !tbaa !197
  %360 = icmp eq ptr %359, null
  br i1 %360, label %662, label %361

361:                                              ; preds = %357, %655
  %362 = phi ptr [ %656, %655 ], [ %359, %357 ]
  %363 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 4
  %364 = load i16, ptr %363, align 2, !tbaa !189
  %365 = icmp sgt i16 %364, 0
  br i1 %365, label %366, label %641

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 6
  %368 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 9
  %369 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 5
  %370 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 8
  %371 = zext nneg i16 %364 to i64
  br label %372

372:                                              ; preds = %366, %639
  %373 = phi i64 [ %371, %366 ], [ %374, %639 ]
  %374 = add nsw i64 %373, -1
  %375 = load ptr, ptr %367, align 8, !tbaa !190
  %376 = getelementptr inbounds ptr, ptr %375, i64 %374
  %377 = load ptr, ptr %376, align 8, !tbaa !51
  %378 = load ptr, ptr %368, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @BKE_pose_where_is_bone(ptr noundef %0, ptr noundef %1, ptr noundef %377, float noundef %36, i8 noundef zeroext 1)
  %379 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 31
  %380 = load float, ptr %379, align 4, !tbaa !78
  store float %380, ptr %3, align 4, !tbaa !78
  %381 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 31, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !78
  store float %382, ptr %310, align 4, !tbaa !78
  %383 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 31, i64 2
  %384 = load float, ptr %383, align 4, !tbaa !78
  store float %384, ptr %311, align 4, !tbaa !78
  %385 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 32
  %386 = load float, ptr %385, align 4, !tbaa !78
  store float %386, ptr %4, align 4, !tbaa !78
  %387 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 32, i64 1
  %388 = load float, ptr %387, align 4, !tbaa !78
  store float %388, ptr %312, align 4, !tbaa !78
  %389 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 32, i64 2
  %390 = load float, ptr %389, align 4, !tbaa !78
  store float %390, ptr %313, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %391 = load ptr, ptr %369, align 8, !tbaa !191
  %392 = getelementptr inbounds float, ptr %391, i64 %373
  %393 = load float, ptr %392, align 4, !tbaa !78
  %394 = fcmp ult float %393, 1.000000e+00
  br i1 %394, label %399, label %395

395:                                              ; preds = %372
  %396 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 5
  %397 = load i16, ptr %396, align 8, !tbaa !164
  %398 = or i16 %397, 1024
  store i16 %398, ptr %396, align 8, !tbaa !164
  br label %445

399:                                              ; preds = %372
  %400 = getelementptr inbounds float, ptr %391, i64 %374
  %401 = load float, ptr %400, align 4, !tbaa !78
  %402 = fcmp oge float %401, 1.000000e+00
  %403 = fcmp olt float %393, 1.000000e+00
  %404 = and i1 %403, %402
  %405 = fsub float 1.000000e+00, %393
  %406 = fsub float %401, %393
  %407 = fdiv float %405, %406
  %408 = select i1 %404, float %407, float 1.000000e+00
  %409 = load ptr, ptr %378, align 8, !tbaa !169
  %410 = call i32 @where_on_path(ptr noundef %409, float noundef %401, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #15
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %422, label %412

412:                                              ; preds = %399
  %413 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %378, i64 0, i32 4
  %414 = load i16, ptr %413, align 4, !tbaa !181
  %415 = and i16 %414, 2
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load ptr, ptr %378, align 8, !tbaa !169
  %419 = getelementptr inbounds %struct.Object, ptr %418, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %419, ptr noundef nonnull %6) #15
  br label %420

420:                                              ; preds = %417, %412
  call void @mul_m4_v3(ptr noundef nonnull %79, ptr noundef nonnull %6) #15
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %385, ptr noundef nonnull %6, float noundef %408) #15
  %421 = load float, ptr %8, align 4, !tbaa !78
  br label %422

422:                                              ; preds = %420, %399
  %423 = phi float [ %421, %420 ], [ 1.000000e+00, %399 ]
  %424 = load ptr, ptr %378, align 8, !tbaa !169
  %425 = load ptr, ptr %369, align 8, !tbaa !191
  %426 = getelementptr inbounds float, ptr %425, i64 %373
  %427 = load float, ptr %426, align 4, !tbaa !78
  %428 = call i32 @where_on_path(ptr noundef %424, float noundef %427, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #15
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %445, label %430

430:                                              ; preds = %422
  %431 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %378, i64 0, i32 4
  %432 = load i16, ptr %431, align 4, !tbaa !181
  %433 = and i16 %432, 2
  %434 = icmp eq i16 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load ptr, ptr %378, align 8, !tbaa !169
  %437 = getelementptr inbounds %struct.Object, ptr %436, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %437, ptr noundef nonnull %6) #15
  br label %438

438:                                              ; preds = %435, %430
  call void @mul_m4_v3(ptr noundef nonnull %79, ptr noundef nonnull %6) #15
  %439 = load float, ptr %6, align 16, !tbaa !78
  store float %439, ptr %3, align 4, !tbaa !78
  %440 = load float, ptr %314, align 4, !tbaa !78
  store float %440, ptr %310, align 4, !tbaa !78
  %441 = load float, ptr %315, align 8, !tbaa !78
  store float %441, ptr %311, align 4, !tbaa !78
  %442 = load float, ptr %8, align 4, !tbaa !78
  %443 = fadd float %423, %442
  %444 = fmul float %443, 5.000000e-01
  br label %445

445:                                              ; preds = %438, %422, %395
  %446 = phi float [ 1.000000e+00, %395 ], [ %444, %438 ], [ %423, %422 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br i1 %394, label %447, label %639

447:                                              ; preds = %445
  %448 = load float, ptr %4, align 4, !tbaa !78
  %449 = load float, ptr %3, align 4, !tbaa !78
  %450 = fsub float %448, %449
  %451 = load float, ptr %312, align 4, !tbaa !78
  %452 = load float, ptr %310, align 4, !tbaa !78
  %453 = fsub float %451, %452
  %454 = load float, ptr %313, align 4, !tbaa !78
  %455 = load float, ptr %311, align 4, !tbaa !78
  %456 = fsub float %454, %455
  %457 = fmul float %453, %453
  %458 = call float @llvm.fmuladd.f32(float %450, float %450, float %457)
  %459 = call float @llvm.fmuladd.f32(float %456, float %456, float %458)
  %460 = call float @sqrtf(float noundef %459) #15
  %461 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 12
  %462 = load ptr, ptr %461, align 8, !tbaa !75
  %463 = getelementptr inbounds %struct.Bone, ptr %462, i64 0, i32 18
  %464 = load float, ptr %463, align 4, !tbaa !77
  %465 = fdiv float %460, %464
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  %466 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29
  %467 = load float, ptr %466, align 4, !tbaa !78
  store float %467, ptr %10, align 16, !tbaa !78
  %468 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 0, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !78
  store float %469, ptr %316, align 4, !tbaa !78
  %470 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 0, i64 2
  %471 = load float, ptr %470, align 4, !tbaa !78
  store float %471, ptr %317, align 8, !tbaa !78
  %472 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !78
  store float %473, ptr %318, align 4, !tbaa !78
  %474 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 1, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !78
  store float %475, ptr %319, align 16, !tbaa !78
  %476 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 1, i64 2
  %477 = load float, ptr %476, align 4, !tbaa !78
  store float %477, ptr %320, align 4, !tbaa !78
  %478 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 2
  %479 = load float, ptr %478, align 4, !tbaa !78
  store float %479, ptr %321, align 8, !tbaa !78
  %480 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 2, i64 1
  %481 = load float, ptr %480, align 4, !tbaa !78
  store float %481, ptr %322, align 4, !tbaa !78
  %482 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 29, i64 2, i64 2
  %483 = load float, ptr %482, align 4, !tbaa !78
  store float %483, ptr %323, align 16, !tbaa !78
  call void @normalize_m3(ptr noundef nonnull %10) #15
  %484 = fcmp ogt float %459, 0x38AA95A5C0000000
  br i1 %484, label %485, label %491

485:                                              ; preds = %447
  %486 = call float @sqrtf(float noundef %459) #15
  %487 = fdiv float 1.000000e+00, %486
  %488 = fmul float %450, %487
  %489 = fmul float %453, %487
  %490 = fmul float %456, %487
  br label %491

491:                                              ; preds = %485, %447
  %492 = phi float [ %489, %485 ], [ 0.000000e+00, %447 ]
  %493 = phi float [ %488, %485 ], [ 0.000000e+00, %447 ]
  %494 = phi float [ %490, %485 ], [ 0.000000e+00, %447 ]
  %495 = load float, ptr %319, align 16, !tbaa !78
  %496 = load float, ptr %320, align 4, !tbaa !78
  %497 = fneg float %496
  %498 = fmul float %492, %497
  %499 = call float @llvm.fmuladd.f32(float %495, float %494, float %498)
  store float %499, ptr %12, align 4, !tbaa !78
  %500 = load float, ptr %318, align 4, !tbaa !78
  %501 = fneg float %500
  %502 = fmul float %494, %501
  %503 = call float @llvm.fmuladd.f32(float %496, float %493, float %502)
  store float %503, ptr %324, align 4, !tbaa !78
  %504 = fneg float %495
  %505 = fmul float %493, %504
  %506 = call float @llvm.fmuladd.f32(float %500, float %492, float %505)
  store float %506, ptr %325, align 4, !tbaa !78
  %507 = fmul float %492, %495
  %508 = call float @llvm.fmuladd.f32(float %500, float %493, float %507)
  %509 = call float @llvm.fmuladd.f32(float %496, float %494, float %508)
  %510 = fcmp olt float %509, -1.000000e+00
  br i1 %510, label %514, label %511

511:                                              ; preds = %491
  %512 = fcmp ogt float %509, 1.000000e+00
  br i1 %512, label %513, label %514

513:                                              ; preds = %511
  br label %514

514:                                              ; preds = %513, %511, %491
  %515 = phi float [ 1.000000e+00, %513 ], [ %509, %511 ], [ -1.000000e+00, %491 ]
  %516 = call float @acosf(float noundef %515) #15
  %517 = load ptr, ptr %370, align 8, !tbaa !194
  %518 = getelementptr inbounds %struct.bConstraint, ptr %517, i64 0, i32 9
  %519 = load float, ptr %518, align 8, !tbaa !171
  %520 = fmul float %516, %519
  call void @axis_angle_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %12, float noundef %520) #15
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  call void @normalize_m3(ptr noundef nonnull %11) #15
  call void @copy_m4_m3(ptr noundef nonnull %5, ptr noundef nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  %521 = load float, ptr %326, align 16, !tbaa !78
  %522 = fmul float %465, %521
  store float %522, ptr %326, align 16, !tbaa !78
  %523 = load float, ptr %327, align 4, !tbaa !78
  %524 = fmul float %465, %523
  store float %524, ptr %327, align 4, !tbaa !78
  %525 = load float, ptr %328, align 8, !tbaa !78
  %526 = fmul float %465, %525
  store float %526, ptr %328, align 8, !tbaa !78
  %527 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %378, i64 0, i32 5
  %528 = load i16, ptr %527, align 2, !tbaa !198
  switch i16 %528, label %578 [
    i16 1, label %529
    i16 2, label %550
  ]

529:                                              ; preds = %514
  %530 = load float, ptr %466, align 4, !tbaa !78
  %531 = load float, ptr %468, align 4, !tbaa !78
  %532 = fmul float %531, %531
  %533 = call float @llvm.fmuladd.f32(float %530, float %530, float %532)
  %534 = load float, ptr %470, align 4, !tbaa !78
  %535 = call float @llvm.fmuladd.f32(float %534, float %534, float %533)
  %536 = call float @sqrtf(float noundef %535) #15
  %537 = load float, ptr %5, align 16, !tbaa !78
  %538 = fmul float %536, %537
  store float %538, ptr %5, align 16, !tbaa !78
  %539 = load float, ptr %334, align 4, !tbaa !78
  %540 = fmul float %536, %539
  store float %540, ptr %334, align 4, !tbaa !78
  %541 = load float, ptr %335, align 8, !tbaa !78
  %542 = fmul float %536, %541
  store float %542, ptr %335, align 8, !tbaa !78
  %543 = load float, ptr %478, align 4, !tbaa !78
  %544 = load float, ptr %480, align 4, !tbaa !78
  %545 = fmul float %544, %544
  %546 = call float @llvm.fmuladd.f32(float %543, float %543, float %545)
  %547 = load float, ptr %482, align 4, !tbaa !78
  %548 = call float @llvm.fmuladd.f32(float %547, float %547, float %546)
  %549 = call float @sqrtf(float noundef %548) #15
  br label %567

550:                                              ; preds = %514
  %551 = fcmp une float %465, 0.000000e+00
  br i1 %551, label %552, label %559

552:                                              ; preds = %550
  %553 = call float @llvm.fabs.f32(float %465)
  %554 = fdiv float 1.000000e+00, %553
  %555 = fcmp olt float %554, 0x3F1A36E2E0000000
  br i1 %555, label %559, label %556

556:                                              ; preds = %552
  %557 = fcmp ogt float %554, 1.000000e+05
  br i1 %557, label %558, label %559

558:                                              ; preds = %556
  br label %559

559:                                              ; preds = %558, %556, %552, %550
  %560 = phi float [ 1.000000e+05, %558 ], [ %554, %556 ], [ 0x3F1A36E2E0000000, %552 ], [ 1.000000e+00, %550 ]
  %561 = load float, ptr %5, align 16, !tbaa !78
  %562 = fmul float %560, %561
  store float %562, ptr %5, align 16, !tbaa !78
  %563 = load float, ptr %329, align 4, !tbaa !78
  %564 = fmul float %560, %563
  store float %564, ptr %329, align 4, !tbaa !78
  %565 = load float, ptr %330, align 8, !tbaa !78
  %566 = fmul float %560, %565
  store float %566, ptr %330, align 8, !tbaa !78
  br label %567

567:                                              ; preds = %529, %559
  %568 = phi ptr [ %331, %559 ], [ %336, %529 ]
  %569 = phi float [ %560, %559 ], [ %549, %529 ]
  %570 = phi ptr [ %332, %559 ], [ %337, %529 ]
  %571 = phi ptr [ %333, %559 ], [ %338, %529 ]
  %572 = load float, ptr %568, align 16, !tbaa !78
  %573 = fmul float %569, %572
  store float %573, ptr %568, align 16, !tbaa !78
  %574 = load float, ptr %570, align 4, !tbaa !78
  %575 = fmul float %569, %574
  store float %575, ptr %570, align 4, !tbaa !78
  %576 = load float, ptr %571, align 8, !tbaa !78
  %577 = fmul float %569, %576
  store float %577, ptr %571, align 8, !tbaa !78
  br label %578

578:                                              ; preds = %567, %514
  %579 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %378, i64 0, i32 4
  %580 = load i16, ptr %579, align 4, !tbaa !181
  %581 = and i16 %580, 16
  %582 = icmp eq i16 %581, 0
  br i1 %582, label %583, label %596

583:                                              ; preds = %578
  %584 = load float, ptr %5, align 16, !tbaa !78
  %585 = fmul float %446, %584
  store float %585, ptr %5, align 16, !tbaa !78
  %586 = load float, ptr %339, align 4, !tbaa !78
  %587 = fmul float %446, %586
  store float %587, ptr %339, align 4, !tbaa !78
  %588 = load float, ptr %340, align 8, !tbaa !78
  %589 = fmul float %446, %588
  store float %589, ptr %340, align 8, !tbaa !78
  %590 = load float, ptr %341, align 16, !tbaa !78
  %591 = fmul float %446, %590
  store float %591, ptr %341, align 16, !tbaa !78
  %592 = load float, ptr %342, align 4, !tbaa !78
  %593 = fmul float %446, %592
  store float %593, ptr %342, align 4, !tbaa !78
  %594 = load float, ptr %343, align 8, !tbaa !78
  %595 = fmul float %446, %594
  store float %595, ptr %343, align 8, !tbaa !78
  br label %596

596:                                              ; preds = %583, %578
  %597 = and i16 %580, 2
  %598 = icmp eq i16 %597, 0
  br i1 %598, label %603, label %599

599:                                              ; preds = %596
  %600 = load float, ptr %379, align 4, !tbaa !78
  store float %600, ptr %3, align 4, !tbaa !78
  %601 = load float, ptr %381, align 4, !tbaa !78
  store float %601, ptr %310, align 4, !tbaa !78
  %602 = load float, ptr %383, align 4, !tbaa !78
  store float %602, ptr %311, align 4, !tbaa !78
  br label %617

603:                                              ; preds = %596
  %604 = load ptr, ptr %370, align 8, !tbaa !194
  %605 = getelementptr inbounds %struct.bConstraint, ptr %604, i64 0, i32 9
  %606 = load float, ptr %605, align 8, !tbaa !171
  %607 = fcmp olt float %606, 1.000000e+00
  br i1 %607, label %608, label %617

608:                                              ; preds = %603
  %609 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 13
  %610 = load ptr, ptr %609, align 8, !tbaa !82
  %611 = icmp eq ptr %610, null
  br i1 %611, label %616, label %612

612:                                              ; preds = %608
  %613 = load float, ptr %379, align 4, !tbaa !78
  store float %613, ptr %3, align 4, !tbaa !78
  %614 = load float, ptr %381, align 4, !tbaa !78
  store float %614, ptr %310, align 4, !tbaa !78
  %615 = load float, ptr %383, align 4, !tbaa !78
  store float %615, ptr %311, align 4, !tbaa !78
  br label %617

616:                                              ; preds = %608
  call void @interp_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %379, ptr noundef nonnull %3, float noundef %606) #15
  br label %617

617:                                              ; preds = %616, %612, %603, %599
  %618 = load float, ptr %3, align 4, !tbaa !78
  store float %618, ptr %344, align 16, !tbaa !78
  %619 = load float, ptr %310, align 4, !tbaa !78
  store float %619, ptr %345, align 4, !tbaa !78
  %620 = load float, ptr %311, align 4, !tbaa !78
  store float %620, ptr %346, align 8, !tbaa !78
  call void @copy_m4_m4(ptr noundef nonnull %466, ptr noundef nonnull %5) #15
  %621 = load float, ptr %3, align 4, !tbaa !78
  store float %621, ptr %379, align 4, !tbaa !78
  %622 = load float, ptr %310, align 4, !tbaa !78
  store float %622, ptr %381, align 4, !tbaa !78
  %623 = load float, ptr %311, align 4, !tbaa !78
  store float %623, ptr %383, align 4, !tbaa !78
  %624 = load float, ptr %472, align 4, !tbaa !78
  %625 = load float, ptr %474, align 4, !tbaa !78
  %626 = load float, ptr %476, align 4, !tbaa !78
  %627 = load ptr, ptr %461, align 8, !tbaa !75
  %628 = getelementptr inbounds %struct.Bone, ptr %627, i64 0, i32 18
  %629 = load float, ptr %628, align 4, !tbaa !77
  %630 = fmul float %624, %629
  %631 = fmul float %625, %629
  %632 = fmul float %626, %629
  %633 = fadd float %621, %630
  store float %633, ptr %385, align 4, !tbaa !78
  %634 = fadd float %622, %631
  store float %634, ptr %387, align 4, !tbaa !78
  %635 = fadd float %623, %632
  store float %635, ptr %389, align 4, !tbaa !78
  %636 = getelementptr inbounds %struct.bPoseChannel, ptr %377, i64 0, i32 5
  %637 = load i16, ptr %636, align 8, !tbaa !164
  %638 = or i16 %637, 1024
  store i16 %638, ptr %636, align 8, !tbaa !164
  br label %639

639:                                              ; preds = %617, %445
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  %640 = icmp sgt i64 %373, 1
  br i1 %640, label %372, label %641, !llvm.loop !199

641:                                              ; preds = %639, %361
  %642 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 6
  %643 = load ptr, ptr %642, align 8, !tbaa !190
  %644 = icmp eq ptr %643, null
  br i1 %644, label %647, label %645

645:                                              ; preds = %641
  %646 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %646(ptr noundef nonnull %643) #15
  br label %647

647:                                              ; preds = %645, %641
  %648 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 3
  %649 = load i8, ptr %648, align 4, !tbaa !192
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %655, label %651

651:                                              ; preds = %647
  %652 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %653 = getelementptr inbounds %struct.tSplineIK_Tree, ptr %362, i64 0, i32 5
  %654 = load ptr, ptr %653, align 8, !tbaa !191
  call void %652(ptr noundef %654) #15
  br label %655

655:                                              ; preds = %651, %647
  call void @BLI_freelinkN(ptr noundef nonnull %358, ptr noundef nonnull %362) #15
  %656 = load ptr, ptr %358, align 8, !tbaa !197
  %657 = icmp eq ptr %656, null
  br i1 %657, label %662, label %361, !llvm.loop !200

658:                                              ; preds = %355
  %659 = and i32 %351, 1024
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %662

661:                                              ; preds = %658
  call void @BKE_pose_where_is_bone(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %348, float noundef %36, i8 noundef zeroext 1)
  br label %662

662:                                              ; preds = %655, %357, %354, %658, %661
  %663 = load ptr, ptr %348, align 8, !tbaa !51
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %347, !llvm.loop !201

665:                                              ; preds = %662, %305
  call void @BIK_release_tree(ptr noundef %0, ptr noundef %1, float noundef %36) #15
  br label %666

666:                                              ; preds = %75, %45, %665
  %667 = load ptr, ptr %26, align 8, !tbaa !89
  %668 = load ptr, ptr %667, align 8, !tbaa !51
  %669 = icmp eq ptr %668, null
  br i1 %669, label %683, label %670

670:                                              ; preds = %666, %680
  %671 = phi ptr [ %681, %680 ], [ %668, %666 ]
  %672 = getelementptr inbounds %struct.bPoseChannel, ptr %671, i64 0, i32 12
  %673 = load ptr, ptr %672, align 8, !tbaa !75
  %674 = icmp eq ptr %673, null
  br i1 %674, label %680, label %675

675:                                              ; preds = %670
  %676 = getelementptr inbounds %struct.Bone, ptr %673, i64 0, i32 13
  %677 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %676) #15
  %678 = getelementptr inbounds %struct.bPoseChannel, ptr %671, i64 0, i32 28
  %679 = getelementptr inbounds %struct.bPoseChannel, ptr %671, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %678, ptr noundef nonnull %679, ptr noundef nonnull %15) #15
  br label %680

680:                                              ; preds = %670, %675
  %681 = load ptr, ptr %671, align 8, !tbaa !51
  %682 = icmp eq ptr %681, null
  br i1 %682, label %683, label %670, !llvm.loop !202

683:                                              ; preds = %680, %666, %19, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #15
  ret void
}

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

declare void @BIK_initialize_tree(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BIK_execute_tree(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BIK_release_tree(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_armature_boundbox_get(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %10 = tail call ptr %9(i64 noundef 104, ptr noundef nonnull @.str.18) #15
  store ptr %10, ptr %5, align 8, !tbaa !203
  br label %11

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %5, align 8, !tbaa !203
  %13 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %13, align 4, !tbaa !78
  %14 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float 0x46293E5940000000, ptr %14, align 4, !tbaa !78
  store float 0x46293E5940000000, ptr %2, align 4, !tbaa !78
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !78
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !78
  store float 0xC6293E5940000000, ptr %3, align 4, !tbaa !78
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %11, %21
  %22 = phi ptr [ %25, %21 ], [ %19, %11 ]
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 31
  call void @minmax_v3v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %23) #15
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 32
  call void @minmax_v3v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %24) #15
  %25 = load ptr, ptr %22, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %21, !llvm.loop !204

27:                                               ; preds = %21, %11
  %28 = load ptr, ptr %17, align 8, !tbaa !89
  %29 = load ptr, ptr %28, align 8, !tbaa !205
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store float -1.000000e+00, ptr %13, align 4, !tbaa !78
  store float -1.000000e+00, ptr %14, align 4, !tbaa !78
  store float -1.000000e+00, ptr %2, align 4, !tbaa !78
  store float 1.000000e+00, ptr %15, align 4, !tbaa !78
  store float 1.000000e+00, ptr %16, align 4, !tbaa !78
  store float 1.000000e+00, ptr %3, align 4, !tbaa !78
  br label %32

32:                                               ; preds = %27, %31
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  call void @BKE_boundbox_init_from_minmax(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  %33 = load ptr, ptr %5, align 8, !tbaa !203
  ret ptr %33
}

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_va_mul_m4_series_6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @add_weighted_dq_dq(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @copy_dq_dq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @add_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

declare void @BKE_pose_rest(ptr noundef) local_unnamed_addr #2

declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_proxylocal_extract(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!35, !37, i64 160}
!58 = !{!35, !37, i64 184}
!59 = !{!35, !37, i64 120}
!60 = !{!61, !37, i64 0}
!61 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!62 = !{!35, !37, i64 24}
!63 = !{!35, !41, i64 100}
!64 = !{!46, !37, i64 24}
!65 = distinct !{!65, !55, !56}
!66 = !{!53, !37, i64 24}
!67 = !{!35, !37, i64 168}
!68 = distinct !{!68, !55, !56}
!69 = distinct !{!69, !55, !56}
!70 = distinct !{!70, !55, !56}
!71 = distinct !{!71, !55, !56}
!72 = distinct !{!72, !55, !56}
!73 = !{!38, !38, i64 0}
!74 = distinct !{!74, !55, !56}
!75 = !{!76, !37, i64 120}
!76 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !48, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !48, i64 524, !48, i64 528, !48, i64 532, !37, i64 536}
!77 = !{!53, !48, i64 284}
!78 = !{!48, !48, i64 0}
!79 = !{!53, !48, i64 292}
!80 = !{!53, !48, i64 296}
!81 = !{!53, !41, i64 176}
!82 = !{!76, !37, i64 128}
!83 = !{!76, !37, i64 136}
!84 = !{!53, !40, i64 324}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = !{!46, !37, i64 288}
!90 = !{!91, !37, i64 0}
!91 = !{!"bPoseChanDeform", !37, i64 0, !37, i64 8, !37, i64 16}
!92 = !{!91, !37, i64 16}
!93 = distinct !{!93, !55, !56}
!94 = !{!91, !37, i64 8}
!95 = distinct !{!95, !55, !56}
!96 = !{!97, !37, i64 248}
!97 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !98, i64 280, !98, i64 480, !98, i64 680, !98, i64 880, !98, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !48, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!98 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!99 = !{!97, !41, i64 1280}
!100 = !{!101, !37, i64 200}
!101 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!102 = !{!101, !40, i64 128}
!103 = !{!101, !40, i64 130}
!104 = !{!101, !40, i64 132}
!105 = !{!106, !37, i64 1320}
!106 = !{!"DerivedMesh", !98, i64 0, !98, i64 200, !98, i64 400, !98, i64 600, !98, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !48, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!107 = !{!41, !41, i64 0}
!108 = distinct !{!108, !55, !56}
!109 = !{!106, !37, i64 1288}
!110 = !{!111, !41, i64 8}
!111 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!112 = !{!111, !37, i64 0}
!113 = !{!114, !41, i64 0}
!114 = !{!"MDeformWeight", !41, i64 0, !48, i64 4}
!115 = !{!114, !48, i64 4}
!116 = !{!53, !48, i64 300}
!117 = !{!53, !48, i64 304}
!118 = !{!53, !48, i64 272}
!119 = distinct !{!119, !55, !56}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = distinct !{!122, !55, !56}
!123 = distinct !{!123, !55, !56}
!124 = !{!53, !48, i64 276}
!125 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 8, !51, i64 32, i64 8, !51, i64 40, i64 64, !73, i64 104, i64 2, !126, i64 106, i64 2, !126, i64 108, i64 2, !126, i64 110, i64 2, !126, i64 112, i64 1, !73, i64 113, i64 1, !73, i64 114, i64 6, !73, i64 120, i64 8, !51, i64 128, i64 8, !51, i64 136, i64 8, !51, i64 144, i64 8, !51, i64 152, i64 8, !51, i64 160, i64 8, !51, i64 168, i64 8, !51, i64 176, i64 8, !51, i64 184, i64 8, !51, i64 192, i64 8, !51, i64 200, i64 12, !73, i64 212, i64 12, !73, i64 224, i64 12, !73, i64 236, i64 16, !73, i64 252, i64 12, !73, i64 264, i64 4, !78, i64 268, i64 2, !126, i64 270, i64 2, !126, i64 272, i64 64, !73, i64 336, i64 64, !73, i64 400, i64 64, !73, i64 464, i64 12, !73, i64 476, i64 12, !73, i64 488, i64 12, !73, i64 500, i64 12, !73, i64 512, i64 12, !73, i64 524, i64 4, !78, i64 528, i64 4, !78, i64 532, i64 4, !78, i64 536, i64 8, !51}
!126 = !{!40, !40, i64 0}
!127 = !{!76, !40, i64 268}
!128 = !{!76, !37, i64 24}
!129 = !{!53, !48, i64 112}
!130 = !{!53, !48, i64 280}
!131 = !{!53, !48, i64 288}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = distinct !{!134, !55, !56}
!135 = distinct !{!135, !55, !56}
!136 = !{!137, !37, i64 0}
!137 = !{!"bPose", !42, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !48, i64 36, !38, i64 40, !38, i64 52, !42, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !47, i64 104, !38, i64 152}
!138 = !{!76, !37, i64 0}
!139 = distinct !{!139, !55, !56}
!140 = !{!46, !37, i64 232}
!141 = !{!35, !41, i64 220}
!142 = !{!53, !41, i64 320}
!143 = distinct !{!143, !55, !56}
!144 = !{!137, !41, i64 80}
!145 = !{!76, !37, i64 8}
!146 = !{!76, !37, i64 176}
!147 = !{!76, !37, i64 16}
!148 = !{!149, !37, i64 104}
!149 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!150 = !{!151, !37, i64 16}
!151 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!152 = distinct !{!152, !55, !56}
!153 = !{!149, !37, i64 112}
!154 = !{!155, !37, i64 0}
!155 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !48, i64 96, !48, i64 100, !37, i64 104, !48, i64 112, !48, i64 116}
!156 = distinct !{!156, !55, !56}
!157 = !{!76, !37, i64 184}
!158 = !{!76, !37, i64 192}
!159 = distinct !{!159, !55, !56}
!160 = !{!137, !40, i64 24}
!161 = distinct !{!161, !55, !56}
!162 = !{!76, !48, i64 264}
!163 = distinct !{!163, !55, !56}
!164 = !{!76, !40, i64 104}
!165 = distinct !{!165, !55, !56}
!166 = !{!76, !38, i64 112}
!167 = !{!155, !40, i64 24}
!168 = !{!155, !37, i64 16}
!169 = !{!170, !37, i64 0}
!170 = !{!"bSplineIKConstraint", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!171 = !{!155, !48, i64 96}
!172 = !{!155, !40, i64 26}
!173 = distinct !{!173, !55, !56}
!174 = !{!46, !37, i64 1280}
!175 = !{!176, !37, i64 48}
!176 = !{!"CurveCache", !42, i64 0, !42, i64 16, !42, i64 32, !37, i64 48}
!177 = !{!178, !37, i64 0}
!178 = !{!"Path", !37, i64 0, !41, i64 8, !48, i64 12}
!179 = !{!170, !40, i64 18}
!180 = distinct !{!180, !55, !56}
!181 = !{!170, !40, i64 20}
!182 = !{!170, !37, i64 8}
!183 = !{!170, !40, i64 16}
!184 = distinct !{!184, !55, !56}
!185 = !{!178, !48, i64 12}
!186 = distinct !{!186, !55, !56}
!187 = !{!188, !41, i64 16}
!188 = !{!"tSplineIK_Tree", !37, i64 0, !37, i64 8, !41, i64 16, !38, i64 20, !40, i64 22, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!189 = !{!188, !40, i64 22}
!190 = !{!188, !37, i64 32}
!191 = !{!188, !37, i64 24}
!192 = !{!188, !38, i64 20}
!193 = !{!188, !37, i64 40}
!194 = !{!188, !37, i64 48}
!195 = !{!188, !37, i64 56}
!196 = distinct !{!196, !55, !56}
!197 = !{!76, !37, i64 160}
!198 = !{!170, !40, i64 22}
!199 = distinct !{!199, !55, !56}
!200 = distinct !{!200, !55, !56}
!201 = distinct !{!201, !55, !56}
!202 = distinct !{!202, !55, !56}
!203 = !{!46, !37, i64 264}
!204 = distinct !{!204, !55, !56}
!205 = !{!42, !37, i64 0}
