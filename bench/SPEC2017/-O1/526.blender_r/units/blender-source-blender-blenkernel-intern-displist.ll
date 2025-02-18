; ModuleID = 'blender/source/blender/blenkernel/intern/displist.c'
source_filename = "blender/source/blender/blenkernel/intern/displist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.ScanFillVert = type { ptr, ptr, %union.anon, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon = type { ptr }
%struct.ScanFillFace = type { ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"find_disp\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"dlnors\00", align 1
@__func__.BKE_displist_fill = private unnamed_addr constant [18 x i8] c"BKE_displist_fill\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"filldisplist\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"dlindex\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dlverts\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CurveCache for MBall\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"makeDispListsurf\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CurveCache for curve types\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"CurveCache for Curve\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"index array nurbs\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dfmv\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"displist_get_allverts allverts\00", align 1
@__const.bevels_to_filledpoly.z_up = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"filldisp\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"filldisp1\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"makeDispListbev\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"makeDispListbev1\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"bevelSplitFlag\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"makeDispListbez\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"makeDispListpoly\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"makeDispListbev2\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"dm orco\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"boundbox\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_elem_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %8(ptr noundef nonnull %5) #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %26(ptr noundef nonnull %23) #10
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %28(ptr noundef nonnull %0) #10
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1, %29
  %5 = phi ptr [ %31, %29 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %10(ptr noundef nonnull %7) #10
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %16(ptr noundef nonnull %13) #10
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %22(ptr noundef nonnull %19) #10
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %28(ptr noundef nonnull %25) #10
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %30(ptr noundef nonnull %5) #10
  %31 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %4, !llvm.loop !45

33:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_displist_find_or_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !48
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %17, label %3, !llvm.loop !49

12:                                               ; preds = %3
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %14 = tail call ptr %13(i64 noundef 72, ptr noundef nonnull @.str) #10
  %15 = trunc i32 %1 to i16
  %16 = getelementptr inbounds %struct.DispList, ptr %14, i64 0, i32 2
  store i16 %15, ptr %16, align 8, !tbaa !48
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %14) #10
  br label %17

17:                                               ; preds = %7, %12
  %18 = phi ptr [ %14, %12 ], [ %5, %7 ]
  ret ptr %18
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_displist_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !48
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %3, !llvm.loop !50

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_displist_has_faces(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DispList, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !48
  switch i16 %8, label %2 [
    i16 4, label %9
    i16 5, label %9
    i16 2, label %9
  ], !llvm.loop !51

9:                                                ; preds = %2, %6, %6, %6
  %10 = phi i8 [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %33, %2
  %6 = load ptr, ptr %1, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %37

8:                                                ; preds = %2, %33
  %9 = phi ptr [ %35, %33 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %26(ptr noundef nonnull %23) #10
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %32(ptr noundef nonnull %29) #10
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %34(ptr noundef nonnull %9) #10
  %35 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %5, label %8, !llvm.loop !45

37:                                               ; preds = %5, %63
  %38 = phi ptr [ %64, %63 ], [ %6, %5 ]
  %39 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %40 = tail call ptr %39(ptr noundef nonnull %38) #10
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %40) #10
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %42 = getelementptr inbounds %struct.DispList, ptr %38, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = tail call ptr %41(ptr noundef %43) #10
  %45 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !34
  %46 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.DispList, ptr %38, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = tail call ptr %46(ptr noundef %48) #10
  %50 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 9
  store ptr %49, ptr %50, align 8, !tbaa !42
  %51 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.DispList, ptr %38, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = tail call ptr %51(ptr noundef %53) #10
  %55 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 10
  store ptr %54, ptr %55, align 8, !tbaa !43
  %56 = getelementptr inbounds %struct.DispList, ptr %38, i64 0, i32 13
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %37
  %60 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %61 = tail call ptr %60(ptr noundef nonnull %57) #10
  %62 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 13
  store ptr %61, ptr %62, align 8, !tbaa !44
  br label %63

63:                                               ; preds = %59, %37
  %64 = load ptr, ptr %38, align 8, !tbaa !41
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %37, !llvm.loop !52

66:                                               ; preds = %63, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_normals_add(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %225, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = getelementptr inbounds float, ptr %2, i64 2
  br label %8

8:                                                ; preds = %5, %217
  %9 = phi ptr [ %3, %5 ], [ %223, %217 ]
  %10 = phi i32 [ undef, %5 ], [ %222, %217 ]
  %11 = phi i32 [ undef, %5 ], [ %221, %217 ]
  %12 = phi i32 [ undef, %5 ], [ %220, %217 ]
  %13 = phi i32 [ undef, %5 ], [ %219, %217 ]
  %14 = phi i32 [ undef, %5 ], [ %218, %217 ]
  %15 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !48
  switch i16 %16, label %217 [
    i16 4, label %17
    i16 2, label %31
  ]

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %217

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %23 = call ptr %22(i64 noundef 12, ptr noundef nonnull @.str.1) #10
  store ptr %23, ptr %18, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds float, ptr %25, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !53
  %28 = fcmp olt float %27, 0.000000e+00
  %29 = getelementptr inbounds float, ptr %23, i64 2
  %30 = select i1 %28, float -1.000000e+00, float 1.000000e+00
  store float %30, ptr %29, align 4, !tbaa !53
  br label %217

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %217

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !55
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, 12
  %41 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !56
  %43 = sext i32 %42 to i64
  %44 = mul i64 %40, %43
  %45 = call ptr %36(i64 noundef %44, ptr noundef nonnull @.str.1) #10
  store ptr %45, ptr %32, align 8, !tbaa !42
  %46 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = load i32, ptr %41, align 4, !tbaa !56
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %180

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.DispList, ptr %9, i64 0, i32 3
  br label %52

52:                                               ; preds = %50, %175
  %53 = phi i32 [ %48, %50 ], [ %178, %175 ]
  %54 = phi i32 [ 0, %50 ], [ %177, %175 ]
  %55 = phi i32 [ %10, %50 ], [ %92, %175 ]
  %56 = phi i32 [ %11, %50 ], [ %91, %175 ]
  %57 = phi i32 [ %12, %50 ], [ %90, %175 ]
  %58 = phi i32 [ %13, %50 ], [ %89, %175 ]
  %59 = phi i32 [ %14, %50 ], [ %176, %175 ]
  %60 = load i16, ptr %51, align 2, !tbaa !57
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  %63 = add nsw i32 %53, -1
  %64 = icmp eq i32 %63, %54
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %87, label %66

66:                                               ; preds = %52
  %67 = and i16 %60, 1
  %68 = icmp eq i16 %67, 0
  %69 = load i32, ptr %37, align 8, !tbaa !55
  %70 = mul nsw i32 %69, %54
  %71 = add nsw i32 %70, 1
  %72 = add i32 %70, %69
  %73 = add i32 %72, -1
  %74 = select i1 %68, i32 %71, i32 %70
  %75 = select i1 %68, i32 %70, i32 %73
  %76 = select i1 %68, i32 1, i32 0
  %77 = add nsw i32 %75, %69
  %78 = add nsw i32 %74, %69
  %79 = add nsw i32 %53, -1
  %80 = icmp ne i32 %79, %54
  %81 = select i1 %62, i1 true, i1 %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %66
  %83 = load i32, ptr %37, align 8, !tbaa !55
  %84 = mul nsw i32 %83, %53
  %85 = sub nsw i32 %78, %84
  %86 = sub nsw i32 %77, %84
  br label %87

87:                                               ; preds = %52, %66, %82
  %88 = phi i32 [ %76, %66 ], [ %76, %82 ], [ %59, %52 ]
  %89 = phi i32 [ %74, %66 ], [ %74, %82 ], [ %58, %52 ]
  %90 = phi i32 [ %75, %66 ], [ %75, %82 ], [ %57, %52 ]
  %91 = phi i32 [ %78, %66 ], [ %85, %82 ], [ %56, %52 ]
  %92 = phi i32 [ %77, %66 ], [ %86, %82 ], [ %55, %52 ]
  br i1 %65, label %180, label %93

93:                                               ; preds = %87
  %94 = load i32, ptr %37, align 8, !tbaa !55
  %95 = icmp slt i32 %88, %94
  br i1 %95, label %96, label %175

96:                                               ; preds = %93
  %97 = mul nsw i32 %92, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, ptr %45, i64 %98
  %100 = getelementptr inbounds float, ptr %47, i64 %98
  %101 = mul nsw i32 %91, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, ptr %45, i64 %102
  %104 = getelementptr inbounds float, ptr %47, i64 %102
  %105 = mul nsw i32 %90, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr %45, i64 %106
  %108 = getelementptr inbounds float, ptr %47, i64 %106
  %109 = mul nsw i32 %89, 3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr %45, i64 %110
  %112 = getelementptr inbounds float, ptr %47, i64 %110
  br label %113

113:                                              ; preds = %96, %113
  %114 = phi ptr [ %115, %113 ], [ %99, %96 ]
  %115 = phi ptr [ %171, %113 ], [ %103, %96 ]
  %116 = phi ptr [ %117, %113 ], [ %107, %96 ]
  %117 = phi ptr [ %170, %113 ], [ %111, %96 ]
  %118 = phi ptr [ %119, %113 ], [ %100, %96 ]
  %119 = phi ptr [ %169, %113 ], [ %104, %96 ]
  %120 = phi ptr [ %121, %113 ], [ %108, %96 ]
  %121 = phi ptr [ %168, %113 ], [ %112, %96 ]
  %122 = phi i32 [ %172, %113 ], [ %88, %96 ]
  %123 = call float @normal_quad_v3(ptr noundef nonnull %2, ptr noundef %121, ptr noundef %119, ptr noundef %118, ptr noundef %120) #10
  %124 = load float, ptr %2, align 4, !tbaa !53
  %125 = load float, ptr %117, align 4, !tbaa !53
  %126 = fadd float %124, %125
  store float %126, ptr %117, align 4, !tbaa !53
  %127 = load float, ptr %6, align 4, !tbaa !53
  %128 = getelementptr inbounds float, ptr %117, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !53
  %130 = fadd float %127, %129
  store float %130, ptr %128, align 4, !tbaa !53
  %131 = load float, ptr %7, align 4, !tbaa !53
  %132 = getelementptr inbounds float, ptr %117, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !53
  %134 = fadd float %131, %133
  store float %134, ptr %132, align 4, !tbaa !53
  %135 = load float, ptr %2, align 4, !tbaa !53
  %136 = load float, ptr %116, align 4, !tbaa !53
  %137 = fadd float %135, %136
  store float %137, ptr %116, align 4, !tbaa !53
  %138 = load float, ptr %6, align 4, !tbaa !53
  %139 = getelementptr inbounds float, ptr %116, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !53
  %141 = fadd float %138, %140
  store float %141, ptr %139, align 4, !tbaa !53
  %142 = load float, ptr %7, align 4, !tbaa !53
  %143 = getelementptr inbounds float, ptr %116, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !53
  %145 = fadd float %142, %144
  store float %145, ptr %143, align 4, !tbaa !53
  %146 = load float, ptr %2, align 4, !tbaa !53
  %147 = load float, ptr %115, align 4, !tbaa !53
  %148 = fadd float %146, %147
  store float %148, ptr %115, align 4, !tbaa !53
  %149 = load float, ptr %6, align 4, !tbaa !53
  %150 = getelementptr inbounds float, ptr %115, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !53
  %152 = fadd float %149, %151
  store float %152, ptr %150, align 4, !tbaa !53
  %153 = load float, ptr %7, align 4, !tbaa !53
  %154 = getelementptr inbounds float, ptr %115, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !53
  %156 = fadd float %153, %155
  store float %156, ptr %154, align 4, !tbaa !53
  %157 = load float, ptr %2, align 4, !tbaa !53
  %158 = load float, ptr %114, align 4, !tbaa !53
  %159 = fadd float %157, %158
  store float %159, ptr %114, align 4, !tbaa !53
  %160 = load float, ptr %6, align 4, !tbaa !53
  %161 = getelementptr inbounds float, ptr %114, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !53
  %163 = fadd float %160, %162
  store float %163, ptr %161, align 4, !tbaa !53
  %164 = load float, ptr %7, align 4, !tbaa !53
  %165 = getelementptr inbounds float, ptr %114, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !53
  %167 = fadd float %164, %166
  store float %167, ptr %165, align 4, !tbaa !53
  %168 = getelementptr inbounds float, ptr %121, i64 3
  %169 = getelementptr inbounds float, ptr %119, i64 3
  %170 = getelementptr inbounds float, ptr %117, i64 3
  %171 = getelementptr inbounds float, ptr %115, i64 3
  %172 = add nsw i32 %122, 1
  %173 = load i32, ptr %37, align 8, !tbaa !55
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %113, label %175, !llvm.loop !58

175:                                              ; preds = %113, %93
  %176 = phi i32 [ %88, %93 ], [ %172, %113 ]
  %177 = add nuw nsw i32 %54, 1
  %178 = load i32, ptr %41, align 4, !tbaa !56
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %52, label %180, !llvm.loop !59

180:                                              ; preds = %175, %87, %35
  %181 = phi i32 [ %48, %35 ], [ %178, %175 ], [ %53, %87 ]
  %182 = phi i32 [ %14, %35 ], [ %176, %175 ], [ %88, %87 ]
  %183 = phi i32 [ %13, %35 ], [ %89, %87 ], [ %89, %175 ]
  %184 = phi i32 [ %12, %35 ], [ %90, %87 ], [ %90, %175 ]
  %185 = phi i32 [ %11, %35 ], [ %91, %87 ], [ %91, %175 ]
  %186 = phi i32 [ %10, %35 ], [ %92, %87 ], [ %92, %175 ]
  %187 = load i32, ptr %37, align 8, !tbaa !55
  %188 = mul nsw i32 %187, %181
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %217, label %190

190:                                              ; preds = %180, %213
  %191 = phi i32 [ %193, %213 ], [ %188, %180 ]
  %192 = phi ptr [ %215, %213 ], [ %45, %180 ]
  %193 = add nsw i32 %191, -1
  %194 = load float, ptr %192, align 4, !tbaa !53
  %195 = getelementptr inbounds float, ptr %192, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !53
  %197 = fmul float %196, %196
  %198 = call float @llvm.fmuladd.f32(float %194, float %194, float %197)
  %199 = getelementptr inbounds float, ptr %192, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !53
  %201 = call float @llvm.fmuladd.f32(float %200, float %200, float %198)
  %202 = fcmp ogt float %201, 0x38AA95A5C0000000
  br i1 %202, label %203, label %212

203:                                              ; preds = %190
  %204 = call float @sqrtf(float noundef %201) #10
  %205 = fdiv float 1.000000e+00, %204
  %206 = load float, ptr %192, align 4, !tbaa !53
  %207 = fmul float %206, %205
  store float %207, ptr %192, align 4, !tbaa !53
  %208 = load float, ptr %195, align 4, !tbaa !53
  %209 = fmul float %205, %208
  store float %209, ptr %195, align 4, !tbaa !53
  %210 = load float, ptr %199, align 4, !tbaa !53
  %211 = fmul float %205, %210
  br label %213

212:                                              ; preds = %190
  store float 0.000000e+00, ptr %192, align 4, !tbaa !53
  store float 0.000000e+00, ptr %195, align 4, !tbaa !53
  br label %213

213:                                              ; preds = %203, %212
  %214 = phi float [ 0.000000e+00, %212 ], [ %211, %203 ]
  store float %214, ptr %199, align 4, !tbaa !53
  %215 = getelementptr inbounds float, ptr %192, i64 3
  %216 = icmp eq i32 %193, 0
  br i1 %216, label %217, label %190, !llvm.loop !60

217:                                              ; preds = %213, %21, %180, %8, %31, %17
  %218 = phi i32 [ %14, %8 ], [ %14, %31 ], [ %14, %17 ], [ %182, %180 ], [ %14, %21 ], [ %182, %213 ]
  %219 = phi i32 [ %13, %8 ], [ %13, %31 ], [ %13, %17 ], [ %183, %180 ], [ %13, %21 ], [ %183, %213 ]
  %220 = phi i32 [ %12, %8 ], [ %12, %31 ], [ %12, %17 ], [ %184, %180 ], [ %12, %21 ], [ %184, %213 ]
  %221 = phi i32 [ %11, %8 ], [ %11, %31 ], [ %11, %17 ], [ %185, %180 ], [ %11, %21 ], [ %185, %213 ]
  %222 = phi i32 [ %10, %8 ], [ %10, %31 ], [ %10, %17 ], [ %186, %180 ], [ %10, %21 ], [ %186, %213 ]
  %223 = load ptr, ptr %9, align 8, !tbaa !41
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %8, !llvm.loop !61

225:                                              ; preds = %217, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BKE_displist_surfindex_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #4 {
  %8 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !57
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = add nsw i32 %14, -1
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %57, label %17

17:                                               ; preds = %12, %7
  %18 = and i16 %9, 1
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = mul nsw i32 %21, %1
  br i1 %19, label %27, label %23

23:                                               ; preds = %17
  store i32 %22, ptr %3, align 4, !tbaa !62
  %24 = load i32, ptr %20, align 8, !tbaa !55
  %25 = add i32 %22, -1
  %26 = add i32 %25, %24
  store i32 %26, ptr %4, align 4, !tbaa !62
  br label %29

27:                                               ; preds = %17
  store i32 %22, ptr %4, align 4, !tbaa !62
  %28 = add nsw i32 %22, 1
  store i32 %28, ptr %3, align 4, !tbaa !62
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %4, %27 ], [ %3, %23 ]
  %31 = phi ptr [ %6, %27 ], [ %5, %23 ]
  %32 = phi ptr [ %3, %27 ], [ %4, %23 ]
  %33 = phi ptr [ %5, %27 ], [ %6, %23 ]
  %34 = phi i32 [ 1, %27 ], [ 0, %23 ]
  %35 = load i32, ptr %30, align 4, !tbaa !62
  %36 = load i32, ptr %20, align 8, !tbaa !55
  %37 = add nsw i32 %36, %35
  store i32 %37, ptr %31, align 4, !tbaa !62
  %38 = load i32, ptr %32, align 4, !tbaa !62
  %39 = load i32, ptr %20, align 8, !tbaa !55
  %40 = add nsw i32 %39, %38
  store i32 %40, ptr %33, align 4, !tbaa !62
  store i32 %34, ptr %2, align 4, !tbaa !62
  br i1 %11, label %57, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !56
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !55
  %49 = mul nsw i32 %48, %43
  %50 = load i32, ptr %5, align 4, !tbaa !62
  %51 = sub nsw i32 %50, %49
  store i32 %51, ptr %5, align 4, !tbaa !62
  %52 = load i32, ptr %47, align 8, !tbaa !55
  %53 = load i32, ptr %42, align 4, !tbaa !56
  %54 = mul nsw i32 %53, %52
  %55 = load i32, ptr %6, align 4, !tbaa !62
  %56 = sub nsw i32 %55, %54
  store i32 %56, ptr %6, align 4, !tbaa !62
  br label %57

57:                                               ; preds = %29, %41, %46, %12
  %58 = phi i8 [ 0, %12 ], [ 1, %46 ], [ 1, %41 ], [ 1, %29 ]
  ret i8 %58
}

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_displist_count(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %4, %38
  %8 = phi ptr [ %48, %38 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !48
  switch i16 %10, label %38 [
    i16 2, label %11
    i16 4, label %21
    i16 5, label %26
    i16 0, label %32
    i16 1, label %32
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = mul nsw i32 %15, %13
  %17 = add nsw i32 %13, -1
  %18 = add nsw i32 %15, -1
  %19 = mul nsw i32 %18, %17
  %20 = shl nsw i32 %19, 1
  br label %38

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !56
  br label %38

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !56
  %31 = shl nsw i32 %30, 1
  br label %38

32:                                               ; preds = %7, %7
  %33 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !56
  %37 = mul nsw i32 %36, %34
  br label %38

38:                                               ; preds = %7, %32, %26, %21, %11
  %39 = phi i32 [ 0, %7 ], [ %37, %32 ], [ %28, %26 ], [ %23, %21 ], [ %16, %11 ]
  %40 = phi i32 [ 0, %7 ], [ 0, %32 ], [ %30, %26 ], [ %25, %21 ], [ %19, %11 ]
  %41 = phi i32 [ 0, %7 ], [ 0, %32 ], [ %31, %26 ], [ %25, %21 ], [ %20, %11 ]
  %42 = load i32, ptr %1, align 4, !tbaa !62
  %43 = add nsw i32 %42, %39
  store i32 %43, ptr %1, align 4, !tbaa !62
  %44 = load i32, ptr %2, align 4, !tbaa !62
  %45 = add nsw i32 %44, %40
  store i32 %45, ptr %2, align 4, !tbaa !62
  %46 = load i32, ptr %3, align 4, !tbaa !62
  %47 = add nsw i32 %46, %41
  store i32 %47, ptr %3, align 4, !tbaa !62
  %48 = load ptr, ptr %8, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %7, !llvm.loop !63

50:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_fill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ScanFillContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %6 = icmp eq ptr %0, null
  br i1 %6, label %166, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %166, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BKE_displist_fill) #10
  %12 = getelementptr inbounds %struct.ScanFillContext, ptr %5, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ScanFillContext, ptr %5, i64 0, i32 2
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %10, %158
  %16 = phi i32 [ 0, %10 ], [ %163, %158 ]
  %17 = phi i32 [ 0, %10 ], [ %161, %158 ]
  call void @BLI_scanfill_begin_arena(ptr noundef nonnull %5, ptr noundef %11) #10
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %83, label %20

20:                                               ; preds = %15, %77
  %21 = phi ptr [ %81, %77 ], [ %18, %15 ]
  %22 = phi i32 [ %80, %77 ], [ 0, %15 ]
  %23 = phi i32 [ %79, %77 ], [ 0, %15 ]
  %24 = phi i32 [ %78, %77 ], [ 0, %15 ]
  %25 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !48
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = icmp slt i32 %16, %30
  br i1 %31, label %77, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %16, %30
  br i1 %33, label %34, label %77

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 6
  %36 = load i16, ptr %35, align 4, !tbaa !67
  %37 = sext i16 %36 to i32
  %38 = icmp eq i32 %17, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = load i16, ptr %12, align 8, !tbaa !68
  %41 = add i16 %40, 1
  store i16 %41, ptr %12, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !55
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %45, %58
  %49 = phi i32 [ %53, %58 ], [ %43, %45 ]
  %50 = phi ptr [ %54, %58 ], [ null, %45 ]
  %51 = phi ptr [ %59, %58 ], [ null, %45 ]
  %52 = phi ptr [ %60, %58 ], [ %47, %45 ]
  %53 = add nsw i32 %49, -1
  %54 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %5, ptr noundef %52) #10
  %55 = icmp eq ptr %50, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %5, ptr noundef nonnull %50, ptr noundef %54) #10
  br label %58

58:                                               ; preds = %48, %56
  %59 = phi ptr [ %51, %56 ], [ %54, %48 ]
  %60 = getelementptr inbounds float, ptr %52, i64 3
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %62, label %48, !llvm.loop !70

62:                                               ; preds = %58
  %63 = add i32 %22, %43
  br label %64

64:                                               ; preds = %62, %39
  %65 = phi i32 [ %22, %39 ], [ %63, %62 ]
  %66 = phi ptr [ null, %39 ], [ %59, %62 ]
  %67 = phi ptr [ null, %39 ], [ %54, %62 ]
  %68 = icmp ne ptr %67, null
  %69 = icmp ne ptr %66, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %5, ptr noundef nonnull %67, ptr noundef nonnull %66) #10
  br label %77

73:                                               ; preds = %34
  %74 = icmp slt i32 %17, %37
  %75 = select i1 %74, i32 1, i32 %24
  %76 = select i1 %74, i32 1, i32 %23
  br label %77

77:                                               ; preds = %73, %28, %71, %64, %32, %20
  %78 = phi i32 [ %24, %71 ], [ %24, %64 ], [ %24, %32 ], [ %24, %20 ], [ 1, %28 ], [ %75, %73 ]
  %79 = phi i32 [ %23, %71 ], [ %23, %64 ], [ %23, %32 ], [ %23, %20 ], [ %23, %28 ], [ %76, %73 ]
  %80 = phi i32 [ %65, %71 ], [ %65, %64 ], [ %22, %32 ], [ %22, %20 ], [ %22, %28 ], [ %22, %73 ]
  %81 = load ptr, ptr %21, align 8, !tbaa !41
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %20, !llvm.loop !71

83:                                               ; preds = %77, %15
  %84 = phi i32 [ 0, %15 ], [ %78, %77 ]
  %85 = phi i32 [ 0, %15 ], [ %79, %77 ]
  %86 = phi i32 [ 0, %15 ], [ %80, %77 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %158, label %88

88:                                               ; preds = %83
  %89 = call i32 @BLI_scanfill_calc_ex(ptr noundef nonnull %5, i32 noundef 14, ptr noundef %2) #10
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %158, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %93 = call ptr %92(i64 noundef 72, ptr noundef nonnull @.str.2) #10
  %94 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 2
  store i16 4, ptr %94, align 8, !tbaa !48
  %95 = trunc i32 %17 to i16
  %96 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 6
  store i16 %95, ptr %96, align 4, !tbaa !67
  %97 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 5
  store i32 %86, ptr %97, align 8, !tbaa !55
  %98 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 4
  store i32 %89, ptr %98, align 4, !tbaa !56
  %99 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %100 = mul nsw i32 %89, 3
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 2
  %103 = call ptr %99(i64 noundef %102, ptr noundef nonnull @.str.3) #10
  %104 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 10
  store ptr %103, ptr %104, align 8, !tbaa !43
  %105 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %106 = mul nsw i32 %86, 3
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 2
  %109 = call ptr %105(i64 noundef %108, ptr noundef nonnull @.str.4) #10
  %110 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 8
  store ptr %109, ptr %110, align 8, !tbaa !34
  %111 = load ptr, ptr %5, align 8, !tbaa !41
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113

113:                                              ; preds = %91, %113
  %114 = phi ptr [ %128, %113 ], [ %111, %91 ]
  %115 = phi i32 [ %127, %113 ], [ 0, %91 ]
  %116 = phi ptr [ %125, %113 ], [ %109, %91 ]
  %117 = getelementptr inbounds %struct.ScanFillVert, ptr %114, i64 0, i32 3
  %118 = load float, ptr %117, align 4, !tbaa !53
  store float %118, ptr %116, align 4, !tbaa !53
  %119 = getelementptr inbounds %struct.ScanFillVert, ptr %114, i64 0, i32 3, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !53
  %121 = getelementptr inbounds float, ptr %116, i64 1
  store float %120, ptr %121, align 4, !tbaa !53
  %122 = getelementptr inbounds %struct.ScanFillVert, ptr %114, i64 0, i32 3, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !53
  %124 = getelementptr inbounds float, ptr %116, i64 2
  store float %123, ptr %124, align 4, !tbaa !53
  %125 = getelementptr inbounds float, ptr %116, i64 3
  %126 = getelementptr inbounds %struct.ScanFillVert, ptr %114, i64 0, i32 2
  store i32 %115, ptr %126, align 8, !tbaa !72
  %127 = add nuw nsw i32 %115, 1
  %128 = load ptr, ptr %114, align 8, !tbaa !41
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %113, !llvm.loop !73

130:                                              ; preds = %113, %91
  %131 = load ptr, ptr %13, align 8, !tbaa !74
  %132 = icmp eq ptr %131, null
  br i1 %132, label %157, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %104, align 8, !tbaa !43
  br label %135

135:                                              ; preds = %133, %153
  %136 = phi ptr [ %154, %153 ], [ %134, %133 ]
  %137 = phi ptr [ %155, %153 ], [ %131, %133 ]
  %138 = getelementptr inbounds %struct.ScanFillFace, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !75
  %140 = getelementptr inbounds %struct.ScanFillVert, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !72
  store i32 %141, ptr %136, align 4, !tbaa !62
  %142 = getelementptr inbounds %struct.ScanFillFace, ptr %137, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !77
  %144 = getelementptr inbounds %struct.ScanFillVert, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !72
  %146 = getelementptr inbounds i32, ptr %136, i64 1
  store i32 %145, ptr %146, align 4, !tbaa !62
  %147 = getelementptr inbounds %struct.ScanFillFace, ptr %137, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !78
  %149 = getelementptr inbounds %struct.ScanFillVert, ptr %148, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !72
  %151 = getelementptr inbounds i32, ptr %136, i64 2
  store i32 %150, ptr %151, align 4, !tbaa !62
  br i1 %14, label %153, label %152

152:                                              ; preds = %135
  store i32 %150, ptr %136, align 4, !tbaa !62
  store i32 %141, ptr %151, align 4, !tbaa !62
  br label %153

153:                                              ; preds = %152, %135
  %154 = getelementptr inbounds i32, ptr %136, i64 3
  %155 = load ptr, ptr %137, align 8, !tbaa !79
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %135, !llvm.loop !80

157:                                              ; preds = %153, %130
  call void @BLI_addhead(ptr noundef %1, ptr noundef %93) #10
  br label %158

158:                                              ; preds = %157, %88, %83
  call void @BLI_scanfill_end_arena(ptr noundef nonnull %5, ptr noundef %11) #10
  %159 = icmp eq i32 %85, 0
  %160 = add nsw i32 %17, 1
  %161 = select i1 %159, i32 0, i32 %160
  %162 = zext i1 %159 to i32
  %163 = add nuw nsw i32 %16, %162
  %164 = icmp eq i32 %84, 0
  br i1 %164, label %165, label %15, !llvm.loop !81

165:                                              ; preds = %158
  call void @BLI_memarena_free(ptr noundef %11) #10
  br label %166

166:                                              ; preds = %7, %4, %165
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret void
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_scanfill_begin_arena(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_scanfill_calc_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_scanfill_end_arena(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @BKE_displist_calc_taper(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sitofp i32 %2 to float
  %6 = add nsw i32 %3, -1
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %5, %7
  %9 = tail call fastcc float @displist_calc_taper(ptr noundef %0, ptr noundef %1, float noundef %8)
  ret float %9
}

; Function Attrs: nounwind uwtable
define internal fastcc float @displist_calc_taper(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %155, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !82
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %155

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !88
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi ptr [ %16, %15 ], [ null, %11 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %92

20:                                               ; preds = %17
  %21 = add nsw i16 %9, -2
  %22 = icmp ult i16 %21, 3
  br i1 %22, label %23, label %89

23:                                               ; preds = %20
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %1) #10
  %24 = load ptr, ptr %12, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %28 = tail call ptr %27(i64 noundef 56, ptr noundef nonnull @.str.7) #10
  store ptr %28, ptr %12, align 8, !tbaa !87
  br label %29

29:                                               ; preds = %26, %23
  %30 = load ptr, ptr %12, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %30, ptr noundef nonnull %31, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %32 = load i16, ptr %8, align 8, !tbaa !82
  %33 = add i16 %32, -2
  %34 = icmp ult i16 %33, 3
  br i1 %34, label %35, label %89

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %41 = tail call ptr %40(i64 noundef 104, ptr noundef nonnull @.str.21) #10
  store ptr %41, ptr %36, align 8, !tbaa !90
  br label %42

42:                                               ; preds = %39, %35
  %43 = load ptr, ptr %31, align 8, !tbaa !91
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @DM_set_object_boundbox(ptr noundef nonnull %1, ptr noundef nonnull %43) #10
  br label %89

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %47 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %47, align 4, !tbaa !53
  %48 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %48, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !53
  %49 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %49, align 4, !tbaa !53
  %50 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %50, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !53
  %51 = load ptr, ptr %12, align 8, !tbaa !87
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %86, label %54

54:                                               ; preds = %46, %78
  %55 = phi ptr [ %82, %78 ], [ %52, %46 ]
  %56 = phi i32 [ %81, %78 ], [ 0, %46 ]
  %57 = getelementptr inbounds %struct.DispList, ptr %55, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !48
  %59 = icmp eq i16 %58, 4
  %60 = getelementptr inbounds %struct.DispList, ptr %55, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !55
  br i1 %59, label %66, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.DispList, ptr %55, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !56
  %65 = mul nsw i32 %64, %61
  br label %66

66:                                               ; preds = %54, %62
  %67 = phi i32 [ %65, %62 ], [ %61, %54 ]
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.DispList, ptr %55, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %75, %72 ], [ 0, %69 ]
  %74 = phi ptr [ %76, %72 ], [ %71, %69 ]
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %74) #10
  %75 = add nuw nsw i32 %73, 1
  %76 = getelementptr inbounds float, ptr %74, i64 3
  %77 = icmp eq i32 %75, %67
  br i1 %77, label %78, label %72, !llvm.loop !92

78:                                               ; preds = %72, %66
  %79 = icmp ne i32 %67, 0
  %80 = zext i1 %79 to i32
  %81 = or i32 %56, %80
  %82 = load ptr, ptr %55, align 8, !tbaa !41
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %54, !llvm.loop !93

84:                                               ; preds = %78
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %84, %46
  store float 0.000000e+00, ptr %4, align 4, !tbaa !53
  store float 0.000000e+00, ptr %48, align 4, !tbaa !53
  store float 0.000000e+00, ptr %47, align 4, !tbaa !53
  store float 0.000000e+00, ptr %5, align 4, !tbaa !53
  store float 0.000000e+00, ptr %50, align 4, !tbaa !53
  store float 0.000000e+00, ptr %49, align 4, !tbaa !53
  br label %87

87:                                               ; preds = %84, %86
  %88 = load ptr, ptr %36, align 8, !tbaa !90
  call void @BKE_boundbox_init_from_minmax(ptr noundef %88, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %89

89:                                               ; preds = %87, %45, %29, %20
  %90 = load ptr, ptr %12, align 8, !tbaa !87
  %91 = load ptr, ptr %90, align 8, !tbaa !88
  br label %92

92:                                               ; preds = %89, %17
  %93 = phi ptr [ %91, %89 ], [ %18, %17 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %154, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = load float, ptr %97, align 4, !tbaa !53
  %99 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !55
  %101 = mul i32 %100, 3
  %102 = add i32 %101, -3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, ptr %97, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !53
  %106 = fsub float %105, %98
  %107 = fcmp ule float %106, 0.000000e+00
  br i1 %107, label %152, label %108

108:                                              ; preds = %95
  %109 = icmp sgt i32 %100, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %108, %142
  %111 = phi i32 [ %143, %142 ], [ 0, %108 ]
  %112 = phi ptr [ %144, %142 ], [ %97, %108 ]
  %113 = load float, ptr %112, align 4, !tbaa !53
  %114 = fsub float %113, %98
  %115 = fdiv float %114, %106
  %116 = fcmp ult float %115, %2
  br i1 %116, label %142, label %117

117:                                              ; preds = %110
  %118 = icmp eq i32 %111, 0
  br i1 %118, label %140, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds float, ptr %112, i64 -3
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = fsub float %121, %98
  %123 = fdiv float %122, %106
  %124 = fcmp oeq float %123, %115
  br i1 %124, label %138, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds float, ptr %112, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !53
  %128 = fsub float %123, %2
  %129 = fmul float %128, %127
  %130 = fsub float %123, %115
  %131 = fdiv float %129, %130
  %132 = getelementptr inbounds float, ptr %112, i64 -2
  %133 = load float, ptr %132, align 4, !tbaa !53
  %134 = fsub float %2, %115
  %135 = fmul float %134, %133
  %136 = fdiv float %135, %130
  %137 = fadd float %131, %136
  br label %138

138:                                              ; preds = %119, %125
  %139 = phi float [ %137, %125 ], [ undef, %119 ]
  br i1 %124, label %140, label %152

140:                                              ; preds = %138, %117
  %141 = getelementptr inbounds float, ptr %112, i64 1
  br label %149

142:                                              ; preds = %110
  %143 = add nuw nsw i32 %111, 1
  %144 = getelementptr inbounds float, ptr %112, i64 3
  %145 = icmp eq i32 %143, %100
  br i1 %145, label %146, label %110, !llvm.loop !94

146:                                              ; preds = %142, %108
  %147 = phi ptr [ %97, %108 ], [ %144, %142 ]
  %148 = getelementptr inbounds float, ptr %147, i64 -2
  br label %149

149:                                              ; preds = %140, %146
  %150 = phi ptr [ %148, %146 ], [ %141, %140 ]
  %151 = load float, ptr %150, align 4, !tbaa !53
  br label %152

152:                                              ; preds = %149, %95, %138
  %153 = phi float [ %139, %138 ], [ undef, %95 ], [ %151, %149 ]
  br i1 %107, label %154, label %155

154:                                              ; preds = %152, %92
  br label %155

155:                                              ; preds = %3, %7, %152, %154
  %156 = phi float [ 1.000000e+00, %154 ], [ %153, %152 ], [ 1.000000e+00, %7 ], [ 1.000000e+00, %3 ]
  ret float %156
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_make_mball(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %115, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !82
  %10 = icmp eq i16 %9, 5
  br i1 %10, label %11, label %115

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_mball_basis_find(ptr noundef %1, ptr noundef nonnull %2) #10
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %115

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BLI_pophead(ptr noundef nonnull %16) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %18, %46
  %22 = phi ptr [ %48, %46 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %27(ptr noundef nonnull %24) #10
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %33(ptr noundef nonnull %30) #10
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %39(ptr noundef nonnull %36) #10
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 13
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %45(ptr noundef nonnull %42) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %47(ptr noundef nonnull %22) #10
  %48 = tail call ptr @BLI_pophead(ptr noundef nonnull %16) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %21, !llvm.loop !45

50:                                               ; preds = %14
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %52 = tail call ptr %51(i64 noundef 56, ptr noundef nonnull @.str.5) #10
  store ptr %52, ptr %15, align 8, !tbaa !87
  br label %53

53:                                               ; preds = %46, %18, %50
  %54 = load ptr, ptr %15, align 8, !tbaa !87
  tail call void @BKE_mball_polygonize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %54) #10
  tail call void @BKE_mball_texspace_calc(ptr noundef nonnull %2) #10
  %55 = load ptr, ptr %15, align 8, !tbaa !87
  %56 = tail call zeroext i8 @object_deform_mball(ptr noundef nonnull %2, ptr noundef %55) #10
  %57 = load i16, ptr %8, align 8, !tbaa !82
  %58 = add i16 %57, -2
  %59 = icmp ult i16 %58, 3
  br i1 %59, label %60, label %115

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !90
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %66 = tail call ptr %65(i64 noundef 104, ptr noundef nonnull @.str.21) #10
  store ptr %66, ptr %61, align 8, !tbaa !90
  br label %67

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 120
  %69 = load ptr, ptr %68, align 8, !tbaa !91
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void @DM_set_object_boundbox(ptr noundef nonnull %2, ptr noundef nonnull %69) #10
  br label %115

72:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %73 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %73, align 4, !tbaa !53
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %74, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !53
  %75 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %75, align 4, !tbaa !53
  %76 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %76, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !53
  %77 = load ptr, ptr %15, align 8, !tbaa !87
  %78 = load ptr, ptr %77, align 8, !tbaa !41
  %79 = icmp eq ptr %78, null
  br i1 %79, label %112, label %80

80:                                               ; preds = %72, %104
  %81 = phi ptr [ %108, %104 ], [ %78, %72 ]
  %82 = phi i32 [ %107, %104 ], [ 0, %72 ]
  %83 = getelementptr inbounds %struct.DispList, ptr %81, i64 0, i32 2
  %84 = load i16, ptr %83, align 8, !tbaa !48
  %85 = icmp eq i16 %84, 4
  %86 = getelementptr inbounds %struct.DispList, ptr %81, i64 0, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !55
  br i1 %85, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.DispList, ptr %81, i64 0, i32 4
  %90 = load i32, ptr %89, align 4, !tbaa !56
  %91 = mul nsw i32 %90, %87
  br label %92

92:                                               ; preds = %80, %88
  %93 = phi i32 [ %91, %88 ], [ %87, %80 ]
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.DispList, ptr %81, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  br label %98

98:                                               ; preds = %98, %95
  %99 = phi i32 [ %101, %98 ], [ 0, %95 ]
  %100 = phi ptr [ %102, %98 ], [ %97, %95 ]
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %100) #10
  %101 = add nuw nsw i32 %99, 1
  %102 = getelementptr inbounds float, ptr %100, i64 3
  %103 = icmp eq i32 %101, %93
  br i1 %103, label %104, label %98, !llvm.loop !92

104:                                              ; preds = %98, %92
  %105 = icmp ne i32 %93, 0
  %106 = zext i1 %105 to i32
  %107 = or i32 %82, %106
  %108 = load ptr, ptr %81, align 8, !tbaa !41
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %80, !llvm.loop !93

110:                                              ; preds = %104
  %111 = icmp eq i32 %107, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %110, %72
  store float 0.000000e+00, ptr %4, align 4, !tbaa !53
  store float 0.000000e+00, ptr %74, align 4, !tbaa !53
  store float 0.000000e+00, ptr %73, align 4, !tbaa !53
  store float 0.000000e+00, ptr %5, align 4, !tbaa !53
  store float 0.000000e+00, ptr %76, align 4, !tbaa !53
  store float 0.000000e+00, ptr %75, align 4, !tbaa !53
  br label %113

113:                                              ; preds = %110, %112
  %114 = load ptr, ptr %61, align 8, !tbaa !90
  call void @BKE_boundbox_init_from_minmax(ptr noundef %114, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %115

115:                                              ; preds = %113, %71, %53, %3, %7, %11
  ret void
}

declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mball_polygonize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mball_texspace_calc(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @object_deform_mball(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_make_mball_forRender(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @BKE_mball_polygonize(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  tail call void @BKE_mball_texspace_calc(ptr noundef %2) #10
  %5 = tail call zeroext i8 @object_deform_mball(ptr noundef %2, ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_make_surf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %10) #10
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %8, ptr noundef %17) #10
  br label %20

18:                                               ; preds = %12, %7
  %19 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 3
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %8, ptr noundef nonnull %19) #10
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp eq i8 %5, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call fastcc void @curve_calc_modifiers_pre(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext %4, i8 noundef zeroext %6)
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %8, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %146, label %26

26:                                               ; preds = %23
  %27 = icmp eq i8 %6, 0
  %28 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 29
  %29 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 30
  br label %30

30:                                               ; preds = %26, %143
  %31 = phi ptr [ %24, %26 ], [ %144, %143 ]
  br i1 %11, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !99
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %143

36:                                               ; preds = %32, %30
  %37 = call zeroext i8 @BKE_nurb_check_valid_uv(ptr noundef nonnull %31) #10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %143, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 9
  %41 = load i16, ptr %40, align 4, !tbaa !101
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 10
  %44 = load i16, ptr %43, align 2, !tbaa !102
  br i1 %27, label %53, label %45

45:                                               ; preds = %39
  %46 = load i16, ptr %28, align 8, !tbaa !103
  %47 = icmp eq i16 %46, 0
  %48 = sext i16 %46 to i32
  %49 = select i1 %47, i32 %42, i32 %48
  %50 = load i16, ptr %29, align 2, !tbaa !104
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i16 %44, i16 %50
  br label %53

53:                                               ; preds = %45, %39
  %54 = phi i32 [ %42, %39 ], [ %49, %45 ]
  %55 = phi i16 [ %44, %39 ], [ %52, %45 ]
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !105
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %94

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 13
  %62 = load i16, ptr %61, align 4, !tbaa !106
  %63 = and i16 %62, 1
  %64 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !107
  %66 = add nsw i16 %63, -1
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = mul nsw i32 %68, %54
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %71 = call ptr %70(i64 noundef 72, ptr noundef nonnull @.str.6) #10
  %72 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %73 = sext i32 %69 to i64
  %74 = mul nsw i64 %73, 12
  %75 = call ptr %72(i64 noundef %74, ptr noundef nonnull @.str.4) #10
  %76 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 8
  store ptr %75, ptr %76, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %71) #10
  %77 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 4
  store i32 1, ptr %77, align 4, !tbaa !56
  %78 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 5
  store i32 %69, ptr %78, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 3
  %80 = load i16, ptr %79, align 2, !tbaa !108
  %81 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 6
  store i16 %80, ptr %81, align 4, !tbaa !67
  %82 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 21
  %83 = load i32, ptr %82, align 4, !tbaa !109
  %84 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 11
  store i32 %83, ptr %84, align 8, !tbaa !66
  %85 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !110
  %87 = and i16 %86, -9
  %88 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 7
  store i16 %87, ptr %88, align 2, !tbaa !111
  %89 = load ptr, ptr %76, align 8, !tbaa !34
  %90 = load i16, ptr %61, align 4, !tbaa !106
  %91 = and i16 %90, 1
  %92 = xor i16 %91, 1
  %93 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 2
  store i16 %92, ptr %93, align 8, !tbaa !48
  call void @BKE_nurb_makeCurve(ptr noundef nonnull %31, ptr noundef %89, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %54, i32 noundef 12) #10
  br label %143

94:                                               ; preds = %53
  %95 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !107
  %97 = mul nsw i32 %54, %56
  %98 = mul i32 %97, %58
  %99 = mul i32 %98, %96
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %101 = call ptr %100(i64 noundef 72, ptr noundef nonnull @.str.6) #10
  %102 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %103 = sext i32 %99 to i64
  %104 = mul nsw i64 %103, 12
  %105 = call ptr %102(i64 noundef %104, ptr noundef nonnull @.str.4) #10
  %106 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 8
  store ptr %105, ptr %106, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %101) #10
  %107 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !108
  %109 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 6
  store i16 %108, ptr %109, align 4, !tbaa !67
  %110 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 21
  %111 = load i32, ptr %110, align 4, !tbaa !109
  %112 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 11
  store i32 %111, ptr %112, align 8, !tbaa !66
  %113 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !110
  %115 = and i16 %114, -9
  %116 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 7
  store i16 %115, ptr %116, align 2, !tbaa !111
  %117 = load ptr, ptr %106, align 8, !tbaa !34
  %118 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 2
  store i16 2, ptr %118, align 8, !tbaa !48
  %119 = load i32, ptr %95, align 8, !tbaa !107
  %120 = mul nsw i32 %119, %54
  %121 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 4
  store i32 %120, ptr %121, align 4, !tbaa !56
  %122 = load i32, ptr %57, align 4, !tbaa !105
  %123 = mul nsw i32 %122, %56
  %124 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 5
  store i32 %123, ptr %124, align 8, !tbaa !55
  %125 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 14
  %126 = load i16, ptr %125, align 2, !tbaa !112
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %94
  %130 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 3
  %131 = load i16, ptr %130, align 2, !tbaa !57
  %132 = or i16 %131, 1
  store i16 %132, ptr %130, align 2, !tbaa !57
  br label %133

133:                                              ; preds = %129, %94
  %134 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 13
  %135 = load i16, ptr %134, align 4, !tbaa !106
  %136 = and i16 %135, 1
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 3
  %140 = load i16, ptr %139, align 2, !tbaa !57
  %141 = or i16 %140, 2
  store i16 %141, ptr %139, align 2, !tbaa !57
  br label %142

142:                                              ; preds = %138, %133
  call void @BKE_nurb_makeFaces(ptr noundef nonnull %31, ptr noundef %117, i32 noundef 0, i32 noundef %54, i32 noundef %56) #10
  call fastcc void @displist_surf_indices(ptr noundef %101)
  br label %143

143:                                              ; preds = %60, %142, %32, %36
  %144 = load ptr, ptr %31, align 8, !tbaa !41
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %30, !llvm.loop !113

146:                                              ; preds = %143, %23
  br i1 %21, label %147, label %151

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %149 = load ptr, ptr %148, align 8, !tbaa !87
  %150 = getelementptr inbounds %struct.CurveCache, ptr %149, i64 0, i32 2
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %150, ptr noundef nonnull %8) #10
  call fastcc void @curve_calc_modifiers_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %6)
  br label %151

151:                                              ; preds = %147, %146
  call void @BKE_nurbList_free(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @BKE_nurbList_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @curve_calc_modifiers_pre(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.VirtualModifierData, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #10
  %8 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %6) #10
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !tbaa !62
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %12, %16, %5
  %22 = phi i8 [ 0, %5 ], [ 1, %12 ], [ %20, %16 ]
  call void @modifiers_clearErrors(ptr noundef %1) #10
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 0, i32 2
  %25 = icmp ne i8 %4, 0
  %26 = zext i1 %25 to i32
  %27 = or disjoint i32 %24, %26
  %28 = select i1 %25, i32 2, i32 1
  %29 = call fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %4, i8 noundef zeroext %22)
  %30 = or disjoint i32 %28, 4
  %31 = select i1 %23, i32 %28, i32 %30
  %32 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call ptr @BKE_curve_nurbs_keyVertexCos_get(ptr noundef %2, ptr noundef nonnull %36) #10
  br label %40

40:                                               ; preds = %35, %38, %21
  %41 = phi ptr [ %39, %38 ], [ null, %35 ], [ null, %21 ]
  %42 = phi ptr [ %36, %38 ], [ null, %35 ], [ null, %21 ]
  %43 = icmp ne ptr %29, null
  %44 = icmp ne ptr %8, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %75

46:                                               ; preds = %40, %72
  %47 = phi ptr [ %70, %72 ], [ %41, %40 ]
  %48 = phi ptr [ %73, %72 ], [ %8, %40 ]
  %49 = getelementptr inbounds %struct.ModifierData, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !115
  %51 = call ptr @modifierType_getInfo(i32 noundef %50) #10
  %52 = getelementptr inbounds %struct.ModifierData, ptr %48, i64 0, i32 7
  store ptr %0, ptr %52, align 8, !tbaa !117
  %53 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %48, i32 noundef %31) #10
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %51, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !118
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = icmp eq ptr %47, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = call ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef %2, ptr noundef nonnull %7) #10
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi ptr [ %47, %59 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %51, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !120
  %67 = load i32, ptr %7, align 4, !tbaa !62
  call void %66(ptr noundef nonnull %48, ptr noundef %1, ptr noundef null, ptr noundef %64, i32 noundef %67, i32 noundef %27) #10
  %68 = icmp eq ptr %48, %29
  br label %69

69:                                               ; preds = %63, %55, %46
  %70 = phi ptr [ %47, %46 ], [ %47, %55 ], [ %64, %63 ]
  %71 = phi i1 [ false, %46 ], [ false, %55 ], [ %68, %63 ]
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %48, align 8, !tbaa !121
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %46

75:                                               ; preds = %69, %72, %40
  %76 = phi ptr [ %41, %40 ], [ %70, %72 ], [ %70, %69 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  call void @BK_curve_nurbs_vertexCos_apply(ptr noundef %2, ptr noundef nonnull %76) #10
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %79(ptr noundef nonnull %76) #10
  br label %80

80:                                               ; preds = %78, %75
  %81 = icmp eq ptr %42, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  call void @BKE_curve_nurbs_keyVertexTilts_apply(ptr noundef %2, ptr noundef nonnull %42) #10
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %83(ptr noundef nonnull %42) #10
  br label %84

84:                                               ; preds = %80, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #10
  ret void
}

declare zeroext i8 @BKE_nurb_check_valid_uv(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_makeCurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_nurb_makeFaces(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @displist_surf_indices(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 12
  store i32 0, ptr %2, align 4, !tbaa !122
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 4
  %9 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %8, %12
  %14 = tail call ptr %3(i64 noundef %13, ptr noundef nonnull @.str.9) #10
  %15 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 10
  store ptr %14, ptr %15, align 8, !tbaa !43
  %16 = load i32, ptr %4, align 4, !tbaa !56
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %93

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !57
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  %23 = and i16 %20, 1
  %24 = icmp eq i16 %23, 0
  br label %25

25:                                               ; preds = %18, %83
  %26 = phi i32 [ %16, %18 ], [ %91, %83 ]
  %27 = phi ptr [ %14, %18 ], [ %89, %83 ]
  %28 = phi i32 [ 0, %18 ], [ %90, %83 ]
  %29 = phi i32 [ undef, %18 ], [ %88, %83 ]
  %30 = phi i32 [ undef, %18 ], [ %87, %83 ]
  %31 = phi i32 [ undef, %18 ], [ %86, %83 ]
  %32 = phi i32 [ undef, %18 ], [ %85, %83 ]
  %33 = phi i32 [ undef, %18 ], [ %84, %83 ]
  %34 = add nsw i32 %26, -1
  %35 = icmp eq i32 %34, %28
  %36 = select i1 %22, i1 %35, i1 false
  br i1 %36, label %56, label %37

37:                                               ; preds = %25
  %38 = load i32, ptr %9, align 8, !tbaa !55
  %39 = mul nsw i32 %38, %28
  %40 = add nsw i32 %39, 1
  %41 = add i32 %39, %38
  %42 = add i32 %41, -1
  %43 = select i1 %24, i32 %40, i32 %39
  %44 = select i1 %24, i32 %39, i32 %42
  %45 = select i1 %24, i32 1, i32 0
  %46 = add nsw i32 %44, %38
  %47 = add nsw i32 %43, %38
  %48 = add nsw i32 %26, -1
  %49 = icmp ne i32 %48, %28
  %50 = select i1 %22, i1 true, i1 %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %37
  %52 = load i32, ptr %9, align 8, !tbaa !55
  %53 = mul nsw i32 %52, %26
  %54 = sub nsw i32 %47, %53
  %55 = sub nsw i32 %46, %53
  br label %56

56:                                               ; preds = %25, %37, %51
  %57 = phi i32 [ %45, %37 ], [ %45, %51 ], [ %33, %25 ]
  %58 = phi i32 [ %43, %37 ], [ %43, %51 ], [ %32, %25 ]
  %59 = phi i32 [ %44, %37 ], [ %44, %51 ], [ %31, %25 ]
  %60 = phi i32 [ %47, %37 ], [ %54, %51 ], [ %30, %25 ]
  %61 = phi i32 [ %46, %37 ], [ %55, %51 ], [ %29, %25 ]
  br i1 %36, label %93, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %9, align 8, !tbaa !55
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %80, %65 ], [ %27, %62 ]
  %67 = phi i32 [ %68, %65 ], [ %61, %62 ]
  %68 = phi i32 [ %78, %65 ], [ %60, %62 ]
  %69 = phi i32 [ %70, %65 ], [ %59, %62 ]
  %70 = phi i32 [ %77, %65 ], [ %58, %62 ]
  %71 = phi i32 [ %79, %65 ], [ %57, %62 ]
  store i32 %70, ptr %66, align 4, !tbaa !62
  %72 = getelementptr inbounds i32, ptr %66, i64 1
  store i32 %69, ptr %72, align 4, !tbaa !62
  %73 = getelementptr inbounds i32, ptr %66, i64 2
  store i32 %67, ptr %73, align 4, !tbaa !62
  %74 = getelementptr inbounds i32, ptr %66, i64 3
  store i32 %68, ptr %74, align 4, !tbaa !62
  %75 = load i32, ptr %2, align 4, !tbaa !122
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %2, align 4, !tbaa !122
  %77 = add nsw i32 %70, 1
  %78 = add nsw i32 %68, 1
  %79 = add nsw i32 %71, 1
  %80 = getelementptr inbounds i32, ptr %66, i64 4
  %81 = load i32, ptr %9, align 8, !tbaa !55
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %65, label %83, !llvm.loop !123

83:                                               ; preds = %65, %62
  %84 = phi i32 [ %57, %62 ], [ %79, %65 ]
  %85 = phi i32 [ %58, %62 ], [ %77, %65 ]
  %86 = phi i32 [ %59, %62 ], [ %70, %65 ]
  %87 = phi i32 [ %60, %62 ], [ %78, %65 ]
  %88 = phi i32 [ %61, %62 ], [ %68, %65 ]
  %89 = phi ptr [ %27, %62 ], [ %80, %65 ]
  %90 = add nuw nsw i32 %28, 1
  %91 = load i32, ptr %4, align 4, !tbaa !56
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %25, label %93, !llvm.loop !124

93:                                               ; preds = %83, %56, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @curve_calc_modifiers_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %7) #10
  %8 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %7) #10
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp ne ptr %18, null
  br label %20

20:                                               ; preds = %12, %16, %6
  %21 = phi i1 [ false, %6 ], [ true, %12 ], [ %19, %16 ]
  %22 = zext i1 %21 to i8
  %23 = icmp ne i8 %5, 0
  %24 = zext i1 %23 to i32
  %25 = select i1 %23, i32 2, i32 1
  %26 = call fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %22)
  %27 = or disjoint i32 %25, 4
  %28 = select i1 %21, i32 %27, i32 %25
  %29 = icmp eq ptr %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %26, align 8, !tbaa !121
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi ptr [ %31, %30 ], [ %8, %20 ]
  %34 = icmp eq ptr %3, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 8, !tbaa !41
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %36, i64 0, i32 95
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  call void %40(ptr noundef nonnull %36) #10
  br label %41

41:                                               ; preds = %38, %35, %32
  %42 = icmp eq ptr %33, null
  br i1 %42, label %219, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %45 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 23
  %46 = or disjoint i32 %24, 2
  %47 = select i1 %11, i32 %46, i32 %24
  %48 = or disjoint i32 %24, 2
  %49 = select i1 %21, i32 %48, i32 %24
  br label %50

50:                                               ; preds = %43, %216
  %51 = phi ptr [ %33, %43 ], [ %217, %216 ]
  %52 = phi ptr [ null, %43 ], [ %214, %216 ]
  %53 = phi ptr [ null, %43 ], [ %213, %216 ]
  %54 = phi i32 [ 0, %43 ], [ %212, %216 ]
  %55 = getelementptr inbounds %struct.ModifierData, ptr %51, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !115
  %57 = call ptr @modifierType_getInfo(i32 noundef %56) #10
  %58 = getelementptr inbounds %struct.ModifierData, ptr %51, i64 0, i32 7
  store ptr %0, ptr %58, align 8, !tbaa !117
  %59 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %51, i32 noundef %28) #10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %211, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %57, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !118
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = icmp ne i32 %63, 4
  %67 = icmp ne ptr %52, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %150, label %69

69:                                               ; preds = %65, %61
  %70 = icmp eq ptr %52, null
  %71 = icmp eq ptr %53, null
  br i1 %70, label %88, label %72

72:                                               ; preds = %69
  br i1 %71, label %73, label %83

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 23
  %75 = load ptr, ptr %74, align 8, !tbaa !128
  %76 = call i32 %75(ptr noundef nonnull %52) #10
  %77 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %78 = sext i32 %76 to i64
  %79 = mul nsw i64 %78, 12
  %80 = call ptr %77(i64 noundef %79, ptr noundef nonnull @.str.10) #10
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 77
  %82 = load ptr, ptr %81, align 8, !tbaa !129
  call void %82(ptr noundef nonnull %52, ptr noundef %80) #10
  br label %83

83:                                               ; preds = %73, %72
  %84 = phi i32 [ %76, %73 ], [ %54, %72 ]
  %85 = phi ptr [ %80, %73 ], [ %53, %72 ]
  %86 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %57, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !120
  call void %87(ptr noundef nonnull %51, ptr noundef %1, ptr noundef nonnull %52, ptr noundef %85, i32 noundef %84, i32 noundef %49) #10
  br label %211

88:                                               ; preds = %69
  br i1 %71, label %89, label %145

89:                                               ; preds = %88
  %90 = load ptr, ptr %2, align 8, !tbaa !41
  %91 = icmp eq ptr %90, null
  br i1 %91, label %112, label %92

92:                                               ; preds = %89, %107
  %93 = phi ptr [ %110, %107 ], [ %90, %89 ]
  %94 = phi i32 [ %109, %107 ], [ 0, %89 ]
  %95 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 2
  %96 = load i16, ptr %95, align 8, !tbaa !48
  %97 = icmp eq i16 %96, 4
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !55
  br label %107

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !56
  %104 = getelementptr inbounds %struct.DispList, ptr %93, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !55
  %106 = mul nsw i32 %105, %103
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i32 [ %100, %98 ], [ %106, %101 ]
  %109 = add nsw i32 %108, %94
  %110 = load ptr, ptr %93, align 8, !tbaa !41
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %92, !llvm.loop !130

112:                                              ; preds = %107, %89
  %113 = phi i32 [ 0, %89 ], [ %109, %107 ]
  %114 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %115 = sext i32 %113 to i64
  %116 = mul nsw i64 %115, 12
  %117 = call ptr %114(i64 noundef %116, ptr noundef nonnull @.str.11) #10
  %118 = load ptr, ptr %2, align 8, !tbaa !41
  %119 = icmp eq ptr %118, null
  br i1 %119, label %145, label %120

120:                                              ; preds = %112, %135
  %121 = phi ptr [ %143, %135 ], [ %118, %112 ]
  %122 = phi ptr [ %142, %135 ], [ %117, %112 ]
  %123 = getelementptr inbounds %struct.DispList, ptr %121, i64 0, i32 2
  %124 = load i16, ptr %123, align 8, !tbaa !48
  %125 = icmp eq i16 %124, 4
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.DispList, ptr %121, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !55
  br label %135

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.DispList, ptr %121, i64 0, i32 4
  %131 = load i32, ptr %130, align 4, !tbaa !56
  %132 = getelementptr inbounds %struct.DispList, ptr %121, i64 0, i32 5
  %133 = load i32, ptr %132, align 8, !tbaa !55
  %134 = mul nsw i32 %133, %131
  br label %135

135:                                              ; preds = %129, %126
  %136 = phi i32 [ %128, %126 ], [ %134, %129 ]
  %137 = mul nsw i32 %136, 3
  %138 = getelementptr inbounds %struct.DispList, ptr %121, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = sext i32 %137 to i64
  %141 = shl nsw i64 %140, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %122, ptr align 4 %139, i64 %141, i1 false)
  %142 = getelementptr inbounds float, ptr %122, i64 %140
  %143 = load ptr, ptr %121, align 8, !tbaa !41
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %120, !llvm.loop !131

145:                                              ; preds = %135, %112, %88
  %146 = phi i32 [ %54, %88 ], [ %113, %112 ], [ %113, %135 ]
  %147 = phi ptr [ %53, %88 ], [ %117, %112 ], [ %117, %135 ]
  %148 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %57, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !120
  call void %149(ptr noundef nonnull %51, ptr noundef %1, ptr noundef null, ptr noundef %147, i32 noundef %146, i32 noundef %49) #10
  br label %211

150:                                              ; preds = %65
  br i1 %34, label %211, label %151

151:                                              ; preds = %150
  %152 = icmp eq ptr %53, null
  br i1 %67, label %153, label %158

153:                                              ; preds = %151
  br i1 %152, label %196, label %154

154:                                              ; preds = %153
  %155 = call ptr @CDDM_copy(ptr noundef nonnull %52) #10
  %156 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 95
  %157 = load ptr, ptr %156, align 8, !tbaa !125
  call void %157(ptr noundef nonnull %52) #10
  call void @CDDM_apply_vert_coords(ptr noundef %155, ptr noundef nonnull %53) #10
  br label %196

158:                                              ; preds = %151
  br i1 %152, label %187, label %159

159:                                              ; preds = %158
  %160 = load ptr, ptr %2, align 8, !tbaa !41
  %161 = icmp eq ptr %160, null
  br i1 %161, label %187, label %162

162:                                              ; preds = %159, %177
  %163 = phi ptr [ %185, %177 ], [ %160, %159 ]
  %164 = phi ptr [ %184, %177 ], [ %53, %159 ]
  %165 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 2
  %166 = load i16, ptr %165, align 8, !tbaa !48
  %167 = icmp eq i16 %166, 4
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 5
  %170 = load i32, ptr %169, align 8, !tbaa !55
  br label %177

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 4
  %173 = load i32, ptr %172, align 4, !tbaa !56
  %174 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 5
  %175 = load i32, ptr %174, align 8, !tbaa !55
  %176 = mul nsw i32 %175, %173
  br label %177

177:                                              ; preds = %171, %168
  %178 = phi i32 [ %170, %168 ], [ %176, %171 ]
  %179 = mul nsw i32 %178, 3
  %180 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 8
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = sext i32 %179 to i64
  %183 = shl nsw i64 %182, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %181, ptr align 4 %164, i64 %183, i1 false)
  %184 = getelementptr inbounds float, ptr %164, i64 %182
  %185 = load ptr, ptr %163, align 8, !tbaa !41
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %162, !llvm.loop !132

187:                                              ; preds = %177, %159, %158
  %188 = load i16, ptr %44, align 8, !tbaa !82
  switch i16 %188, label %194 [
    i16 2, label %189
    i16 4, label %189
  ]

189:                                              ; preds = %187, %187
  %190 = load i32, ptr %45, align 4, !tbaa !133
  %191 = and i32 %190, 8192
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  call fastcc void @curve_to_filledpoly(ptr noundef %10, ptr noundef %2)
  br label %194

194:                                              ; preds = %187, %193, %189
  %195 = call ptr @CDDM_from_curve_displist(ptr noundef %1, ptr noundef %2) #10
  br label %196

196:                                              ; preds = %153, %154, %194
  %197 = phi ptr [ %155, %154 ], [ %52, %153 ], [ %195, %194 ]
  %198 = icmp eq ptr %53, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %200(ptr noundef nonnull %53) #10
  br label %201

201:                                              ; preds = %199, %196
  %202 = call ptr @modwrap_applyModifier(ptr noundef nonnull %51, ptr noundef %1, ptr noundef %197, i32 noundef %47) #10
  %203 = icmp eq ptr %202, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = icmp eq ptr %197, null
  %206 = icmp eq ptr %197, %202
  %207 = or i1 %205, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.DerivedMesh, ptr %197, i64 0, i32 95
  %210 = load ptr, ptr %209, align 8, !tbaa !125
  call void %210(ptr noundef nonnull %197) #10
  br label %211

211:                                              ; preds = %145, %83, %201, %208, %204, %150, %50
  %212 = phi i32 [ %54, %50 ], [ %146, %145 ], [ %84, %83 ], [ %54, %150 ], [ %54, %201 ], [ %54, %204 ], [ %54, %208 ]
  %213 = phi ptr [ %53, %50 ], [ %147, %145 ], [ %85, %83 ], [ %53, %150 ], [ null, %201 ], [ null, %204 ], [ null, %208 ]
  %214 = phi ptr [ %52, %50 ], [ null, %145 ], [ %52, %83 ], [ %52, %150 ], [ %197, %201 ], [ %202, %204 ], [ %202, %208 ]
  %215 = phi i1 [ false, %50 ], [ false, %145 ], [ false, %83 ], [ true, %150 ], [ false, %201 ], [ false, %204 ], [ false, %208 ]
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = load ptr, ptr %51, align 8, !tbaa !121
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %50, !llvm.loop !134

219:                                              ; preds = %216, %211, %41
  %220 = phi ptr [ null, %41 ], [ %213, %211 ], [ %213, %216 ]
  %221 = phi ptr [ null, %41 ], [ %214, %211 ], [ %214, %216 ]
  %222 = icmp eq ptr %220, null
  br i1 %222, label %260, label %223

223:                                              ; preds = %219
  %224 = icmp eq ptr %221, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %223
  %226 = load ptr, ptr %2, align 8, !tbaa !41
  %227 = icmp eq ptr %226, null
  br i1 %227, label %257, label %232

228:                                              ; preds = %223
  %229 = call ptr @CDDM_copy(ptr noundef nonnull %221) #10
  %230 = getelementptr inbounds %struct.DerivedMesh, ptr %221, i64 0, i32 95
  %231 = load ptr, ptr %230, align 8, !tbaa !125
  call void %231(ptr noundef nonnull %221) #10
  call void @CDDM_apply_vert_coords(ptr noundef %229, ptr noundef nonnull %220) #10
  call void @CDDM_calc_normals_mapping(ptr noundef %229) #10
  br label %257

232:                                              ; preds = %225, %247
  %233 = phi ptr [ %255, %247 ], [ %226, %225 ]
  %234 = phi ptr [ %254, %247 ], [ %220, %225 ]
  %235 = getelementptr inbounds %struct.DispList, ptr %233, i64 0, i32 2
  %236 = load i16, ptr %235, align 8, !tbaa !48
  %237 = icmp eq i16 %236, 4
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.DispList, ptr %233, i64 0, i32 5
  %240 = load i32, ptr %239, align 8, !tbaa !55
  br label %247

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.DispList, ptr %233, i64 0, i32 4
  %243 = load i32, ptr %242, align 4, !tbaa !56
  %244 = getelementptr inbounds %struct.DispList, ptr %233, i64 0, i32 5
  %245 = load i32, ptr %244, align 8, !tbaa !55
  %246 = mul nsw i32 %245, %243
  br label %247

247:                                              ; preds = %241, %238
  %248 = phi i32 [ %240, %238 ], [ %246, %241 ]
  %249 = mul nsw i32 %248, 3
  %250 = getelementptr inbounds %struct.DispList, ptr %233, i64 0, i32 8
  %251 = load ptr, ptr %250, align 8, !tbaa !34
  %252 = sext i32 %249 to i64
  %253 = shl nsw i64 %252, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %251, ptr align 4 %234, i64 %253, i1 false)
  %254 = getelementptr inbounds float, ptr %234, i64 %252
  %255 = load ptr, ptr %233, align 8, !tbaa !41
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %232, !llvm.loop !132

257:                                              ; preds = %247, %225, %228
  %258 = phi ptr [ %229, %228 ], [ null, %225 ], [ null, %247 ]
  %259 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %259(ptr noundef nonnull %220) #10
  br label %260

260:                                              ; preds = %257, %219
  %261 = phi ptr [ %221, %219 ], [ %258, %257 ]
  br i1 %34, label %289, label %262

262:                                              ; preds = %260
  %263 = icmp eq ptr %261, null
  br i1 %263, label %288, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.DerivedMesh, ptr %261, i64 0, i32 25
  %266 = load ptr, ptr %265, align 8, !tbaa !135
  %267 = call i32 %266(ptr noundef nonnull %261) #10
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.DerivedMesh, ptr %261, i64 0, i32 22
  %271 = load ptr, ptr %270, align 8, !tbaa !136
  call void %271(ptr noundef nonnull %261) #10
  br label %278

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.DerivedMesh, ptr %261, i64 0, i32 16
  %274 = load i32, ptr %273, align 8, !tbaa !137
  %275 = and i32 %274, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  call void @DM_update_tessface_data(ptr noundef nonnull %261) #10
  br label %278

278:                                              ; preds = %272, %277, %269
  %279 = getelementptr inbounds %struct.DerivedMesh, ptr %261, i64 0, i32 14
  %280 = load i32, ptr %279, align 8, !tbaa !138
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.DerivedMesh, ptr %261, i64 0, i32 16
  %284 = load i32, ptr %283, align 8, !tbaa !137
  %285 = and i32 %284, 4
  %286 = icmp eq i32 %285, 0
  %287 = zext i1 %286 to i8
  call void @CDDM_calc_normals_mapping_ex(ptr noundef nonnull %261, i8 noundef zeroext %287) #10
  br label %288

288:                                              ; preds = %278, %282, %262
  store ptr %261, ptr %3, align 8, !tbaa !41
  br label %289

289:                                              ; preds = %288, %260
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %7) #10
  ret void
}

declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = add i16 %7, -2
  %9 = icmp ult i16 %8, 3
  br i1 %9, label %10, label %77

10:                                               ; preds = %3
  tail call void @BKE_object_free_derived_caches(ptr noundef %1) #10
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %16 = tail call ptr %15(i64 noundef 56, ptr noundef nonnull @.str.7) #10
  store ptr %16, ptr %11, align 8, !tbaa !87
  br label %17

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr %11, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef %1, ptr noundef %18, ptr noundef nonnull %19, i8 noundef zeroext 0, i8 noundef zeroext %2, i8 noundef zeroext 0)
  %20 = load i16, ptr %6, align 8, !tbaa !82
  %21 = add i16 %20, -2
  %22 = icmp ult i16 %21, 3
  br i1 %22, label %23, label %77

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %29 = tail call ptr %28(i64 noundef 104, ptr noundef nonnull @.str.21) #10
  store ptr %29, ptr %24, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %19, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @DM_set_object_boundbox(ptr noundef %1, ptr noundef nonnull %31) #10
  br label %77

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %35 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %35, align 4, !tbaa !53
  %36 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %36, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !53
  %37 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %37, align 4, !tbaa !53
  %38 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %38, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !53
  %39 = load ptr, ptr %11, align 8, !tbaa !87
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %34, %66
  %43 = phi ptr [ %70, %66 ], [ %40, %34 ]
  %44 = phi i32 [ %69, %66 ], [ 0, %34 ]
  %45 = getelementptr inbounds %struct.DispList, ptr %43, i64 0, i32 2
  %46 = load i16, ptr %45, align 8, !tbaa !48
  %47 = icmp eq i16 %46, 4
  %48 = getelementptr inbounds %struct.DispList, ptr %43, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !55
  br i1 %47, label %54, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.DispList, ptr %43, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !56
  %53 = mul nsw i32 %52, %49
  br label %54

54:                                               ; preds = %42, %50
  %55 = phi i32 [ %53, %50 ], [ %49, %42 ]
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.DispList, ptr %43, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ %63, %60 ], [ 0, %57 ]
  %62 = phi ptr [ %64, %60 ], [ %59, %57 ]
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %62) #10
  %63 = add nuw nsw i32 %61, 1
  %64 = getelementptr inbounds float, ptr %62, i64 3
  %65 = icmp eq i32 %63, %55
  br i1 %65, label %66, label %60, !llvm.loop !92

66:                                               ; preds = %60, %54
  %67 = icmp ne i32 %55, 0
  %68 = zext i1 %67 to i32
  %69 = or i32 %44, %68
  %70 = load ptr, ptr %43, align 8, !tbaa !41
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %42, !llvm.loop !93

72:                                               ; preds = %66
  %73 = icmp eq i32 %69, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %72, %34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !53
  store float 0.000000e+00, ptr %36, align 4, !tbaa !53
  store float 0.000000e+00, ptr %35, align 4, !tbaa !53
  store float 0.000000e+00, ptr %5, align 4, !tbaa !53
  store float 0.000000e+00, ptr %38, align 4, !tbaa !53
  store float 0.000000e+00, ptr %37, align 4, !tbaa !53
  br label %75

75:                                               ; preds = %72, %74
  %76 = load ptr, ptr %24, align 8, !tbaa !90
  call void @BKE_boundbox_init_from_minmax(ptr noundef %76, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %77

77:                                               ; preds = %75, %33, %17, %3
  ret void
}

declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca %struct.ListBase, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !82
  %19 = add i16 %18, -2
  %20 = icmp ult i16 %19, 3
  br i1 %20, label %21, label %1019

21:                                               ; preds = %7
  switch i16 %18, label %1019 [
    i16 3, label %22
    i16 2, label %23
    i16 4, label %23
  ]

22:                                               ; preds = %21
  tail call void @BKE_displist_make_surf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6)
  br label %1019

23:                                               ; preds = %21, %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = getelementptr inbounds %struct.CurveCache, ptr %25, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %26) #10
  %27 = icmp eq i8 %5, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 8, !tbaa !87
  %30 = getelementptr inbounds %struct.CurveCache, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @free_path(ptr noundef nonnull %31) #10
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %24, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.CurveCache, ptr %35, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !139
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i16, ptr %17, align 8, !tbaa !82
  %39 = icmp eq i16 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @G, align 8, !tbaa !140
  %42 = call zeroext i8 @BKE_vfont_to_curve_nubase(ptr noundef %41, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %9) #10
  br label %45

43:                                               ; preds = %37
  %44 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %16) #10
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %9, ptr noundef %44) #10
  br label %45

45:                                               ; preds = %43, %40
  br i1 %27, label %46, label %47

46:                                               ; preds = %45
  call fastcc void @curve_calc_modifiers_pre(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i8 noundef zeroext %4, i8 noundef zeroext %6)
  br label %47

47:                                               ; preds = %46, %45
  %48 = icmp ne i8 %4, 0
  %49 = zext i1 %48 to i8
  call void @BKE_curve_bevelList_make(ptr noundef %1, ptr noundef nonnull %9, i8 noundef zeroext %49) #10
  call void @BKE_curve_bevel_make(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext %4, i8 noundef zeroext %6) #10
  %50 = load ptr, ptr %8, align 8, !tbaa !64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %307

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 24
  %54 = load float, ptr %53, align 8, !tbaa !142
  %55 = fcmp oeq float %54, 1.000000e+00
  br i1 %55, label %56, label %307

56:                                               ; preds = %52
  %57 = icmp eq i8 %4, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !96
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 53
  %64 = load ptr, ptr %63, align 8, !tbaa !114
  %65 = icmp ne ptr %64, null
  br label %66

66:                                               ; preds = %62, %58, %56
  %67 = phi i1 [ false, %56 ], [ true, %58 ], [ %65, %62 ]
  %68 = load ptr, ptr %9, align 8, !tbaa !41
  %69 = icmp eq ptr %68, null
  br i1 %69, label %990, label %70

70:                                               ; preds = %66
  %71 = icmp eq i8 %6, 0
  %72 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 29
  br label %73

73:                                               ; preds = %70, %304
  %74 = phi ptr [ %68, %70 ], [ %305, %304 ]
  %75 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 4
  %76 = load i16, ptr %75, align 4, !tbaa !99
  %77 = icmp ne i16 %76, 0
  %78 = select i1 %77, i1 %67, i1 false
  br i1 %78, label %304, label %79

79:                                               ; preds = %73
  br i1 %71, label %83, label %80

80:                                               ; preds = %79
  %81 = load i16, ptr %72, align 8, !tbaa !103
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %79
  %84 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 9
  %85 = load i16, ptr %84, align 4, !tbaa !101
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i16 [ %85, %83 ], [ %81, %80 ]
  %88 = sext i16 %87 to i32
  %89 = call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef nonnull %74) #10
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %304, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 2
  %93 = load i16, ptr %92, align 8, !tbaa !143
  switch i16 %93, label %304 [
    i16 1, label %94
    i16 4, label %231
    i16 0, label %261
  ]

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !107
  %97 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 13
  %98 = load i16, ptr %97, align 4, !tbaa !106
  %99 = and i16 %98, 1
  %100 = add nsw i16 %99, -1
  %101 = sext i16 %100 to i32
  %102 = add nsw i32 %96, %101
  %103 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 18
  %104 = load ptr, ptr %103, align 8, !tbaa !144
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %133, label %106

106:                                              ; preds = %94
  %107 = icmp eq i16 %99, 0
  %108 = xor i16 %99, 1
  %109 = zext nneg i16 %108 to i32
  br label %110

110:                                              ; preds = %106, %127
  %111 = phi i32 [ %102, %106 ], [ %114, %127 ]
  %112 = phi i32 [ 0, %106 ], [ %131, %127 ]
  %113 = phi ptr [ %104, %106 ], [ %118, %127 ]
  %114 = add nsw i32 %111, -1
  %115 = getelementptr inbounds %struct.BezTriple, ptr %113, i64 1
  %116 = icmp ne i32 %114, 0
  %117 = or i1 %116, %107
  %118 = select i1 %117, ptr %115, ptr %104
  %119 = getelementptr inbounds %struct.BezTriple, ptr %113, i64 0, i32 6
  %120 = load i8, ptr %119, align 2, !tbaa !145
  %121 = icmp eq i8 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.BezTriple, ptr %118, i64 0, i32 5
  %124 = load i8, ptr %123, align 1, !tbaa !147
  %125 = icmp eq i8 %124, 2
  br i1 %125, label %127, label %126

126:                                              ; preds = %122, %110
  br label %127

127:                                              ; preds = %122, %126
  %128 = phi i32 [ %88, %126 ], [ 1, %122 ]
  %129 = add nsw i32 %112, %128
  %130 = select i1 %116, i32 0, i32 %109
  %131 = add i32 %129, %130
  %132 = icmp eq i32 %114, 0
  br i1 %132, label %133, label %110, !llvm.loop !148

133:                                              ; preds = %127, %94
  %134 = phi i32 [ 0, %94 ], [ %131, %127 ]
  %135 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %136 = call ptr %135(i64 noundef 72, ptr noundef nonnull @.str.17) #10
  %137 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %138 = add nsw i32 %134, 1
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, 12
  %141 = call ptr %137(i64 noundef %140, ptr noundef nonnull @.str.4) #10
  %142 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 8
  store ptr %141, ptr %142, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %136) #10
  %143 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 4
  store i32 1, ptr %143, align 4, !tbaa !56
  %144 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 5
  store i32 %134, ptr %144, align 8, !tbaa !55
  %145 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 3
  %146 = load i16, ptr %145, align 2, !tbaa !108
  %147 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 6
  store i16 %146, ptr %147, align 4, !tbaa !67
  %148 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 21
  %149 = load i32, ptr %148, align 4, !tbaa !109
  %150 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 11
  store i32 %149, ptr %150, align 8, !tbaa !66
  %151 = load ptr, ptr %142, align 8, !tbaa !34
  %152 = load i16, ptr %97, align 4, !tbaa !106
  %153 = and i16 %152, 1
  %154 = icmp eq i16 %153, 0
  %155 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 2
  br i1 %154, label %158, label %156

156:                                              ; preds = %133
  store i16 0, ptr %155, align 8, !tbaa !48
  %157 = load i32, ptr %95, align 8, !tbaa !107
  br label %161

158:                                              ; preds = %133
  store i16 1, ptr %155, align 8, !tbaa !48
  %159 = load i32, ptr %95, align 8, !tbaa !107
  %160 = add nsw i32 %159, -1
  br label %161

161:                                              ; preds = %158, %156
  %162 = phi i32 [ %157, %156 ], [ %160, %158 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %304, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %103, align 8, !tbaa !144
  %166 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 2
  %167 = mul nsw i32 %88, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.DispList, ptr %136, i64 0, i32 2
  br label %170

170:                                              ; preds = %164, %229
  %171 = phi i32 [ %162, %164 ], [ %175, %229 ]
  %172 = phi ptr [ %151, %164 ], [ %216, %229 ]
  %173 = phi ptr [ %165, %164 ], [ %183, %229 ]
  %174 = getelementptr inbounds %struct.BezTriple, ptr %173, i64 1
  %175 = add nsw i32 %171, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load i16, ptr %166, align 8, !tbaa !48
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load ptr, ptr %103, align 8, !tbaa !144
  br label %182

182:                                              ; preds = %180, %177, %170
  %183 = phi ptr [ %181, %180 ], [ %174, %177 ], [ %174, %170 ]
  %184 = getelementptr inbounds %struct.BezTriple, ptr %173, i64 0, i32 6
  %185 = load i8, ptr %184, align 2, !tbaa !145
  %186 = icmp eq i8 %185, 2
  br i1 %186, label %188, label %187

187:                                              ; preds = %188, %182
  br label %201

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.BezTriple, ptr %183, i64 0, i32 5
  %190 = load i8, ptr %189, align 1, !tbaa !147
  %191 = icmp eq i8 %190, 2
  br i1 %191, label %192, label %187

192:                                              ; preds = %188
  %193 = getelementptr inbounds [3 x [3 x float]], ptr %173, i64 0, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !53
  store float %194, ptr %172, align 4, !tbaa !53
  %195 = getelementptr inbounds [3 x [3 x float]], ptr %173, i64 0, i64 1, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !53
  %197 = getelementptr inbounds float, ptr %172, i64 1
  store float %196, ptr %197, align 4, !tbaa !53
  %198 = getelementptr inbounds [3 x [3 x float]], ptr %173, i64 0, i64 1, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !53
  %200 = getelementptr inbounds float, ptr %172, i64 2
  store float %199, ptr %200, align 4, !tbaa !53
  br label %214

201:                                              ; preds = %187, %201
  %202 = phi i64 [ %212, %201 ], [ 0, %187 ]
  %203 = getelementptr inbounds [3 x [3 x float]], ptr %173, i64 0, i64 1, i64 %202
  %204 = load float, ptr %203, align 4, !tbaa !53
  %205 = getelementptr inbounds [3 x [3 x float]], ptr %173, i64 0, i64 2, i64 %202
  %206 = load float, ptr %205, align 4, !tbaa !53
  %207 = getelementptr inbounds [3 x float], ptr %183, i64 0, i64 %202
  %208 = load float, ptr %207, align 4, !tbaa !53
  %209 = getelementptr inbounds [3 x [3 x float]], ptr %183, i64 0, i64 1, i64 %202
  %210 = load float, ptr %209, align 4, !tbaa !53
  %211 = getelementptr inbounds float, ptr %172, i64 %202
  call void @BKE_curve_forward_diff_bezier(float noundef %204, float noundef %206, float noundef %208, float noundef %210, ptr noundef %211, i32 noundef %88, i32 noundef 12) #10
  %212 = add nuw nsw i64 %202, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %214, label %201, !llvm.loop !149

214:                                              ; preds = %201, %192
  %215 = phi i64 [ 3, %192 ], [ %168, %201 ]
  %216 = getelementptr inbounds float, ptr %172, i64 %215
  br i1 %176, label %217, label %229

217:                                              ; preds = %214
  %218 = load i16, ptr %169, align 8, !tbaa !48
  %219 = icmp eq i16 %218, 1
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = getelementptr inbounds [3 x [3 x float]], ptr %183, i64 0, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !53
  store float %222, ptr %216, align 4, !tbaa !53
  %223 = getelementptr inbounds [3 x [3 x float]], ptr %183, i64 0, i64 1, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !53
  %225 = getelementptr inbounds float, ptr %216, i64 1
  store float %224, ptr %225, align 4, !tbaa !53
  %226 = getelementptr inbounds [3 x [3 x float]], ptr %183, i64 0, i64 1, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !53
  %228 = getelementptr inbounds float, ptr %216, i64 2
  store float %227, ptr %228, align 4, !tbaa !53
  br label %229

229:                                              ; preds = %220, %217, %214
  %230 = icmp eq i32 %175, 0
  br i1 %230, label %304, label %170, !llvm.loop !150

231:                                              ; preds = %91
  %232 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 13
  %233 = load i16, ptr %232, align 4, !tbaa !106
  %234 = and i16 %233, 1
  %235 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 6
  %236 = load i32, ptr %235, align 8, !tbaa !107
  %237 = add nsw i16 %234, -1
  %238 = sext i16 %237 to i32
  %239 = add nsw i32 %236, %238
  %240 = mul nsw i32 %239, %88
  %241 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %242 = call ptr %241(i64 noundef 72, ptr noundef nonnull @.str.6) #10
  %243 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %244 = sext i32 %240 to i64
  %245 = mul nsw i64 %244, 12
  %246 = call ptr %243(i64 noundef %245, ptr noundef nonnull @.str.4) #10
  %247 = getelementptr inbounds %struct.DispList, ptr %242, i64 0, i32 8
  store ptr %246, ptr %247, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %242) #10
  %248 = getelementptr inbounds %struct.DispList, ptr %242, i64 0, i32 4
  store i32 1, ptr %248, align 4, !tbaa !56
  %249 = getelementptr inbounds %struct.DispList, ptr %242, i64 0, i32 5
  store i32 %240, ptr %249, align 8, !tbaa !55
  %250 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 3
  %251 = load i16, ptr %250, align 2, !tbaa !108
  %252 = getelementptr inbounds %struct.DispList, ptr %242, i64 0, i32 6
  store i16 %251, ptr %252, align 4, !tbaa !67
  %253 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 21
  %254 = load i32, ptr %253, align 4, !tbaa !109
  %255 = getelementptr inbounds %struct.DispList, ptr %242, i64 0, i32 11
  store i32 %254, ptr %255, align 8, !tbaa !66
  %256 = load ptr, ptr %247, align 8, !tbaa !34
  %257 = load i16, ptr %232, align 4, !tbaa !106
  %258 = and i16 %257, 1
  %259 = xor i16 %258, 1
  %260 = getelementptr inbounds %struct.DispList, ptr %242, i64 0, i32 2
  store i16 %259, ptr %260, align 8, !tbaa !48
  call void @BKE_nurb_makeCurve(ptr noundef nonnull %74, ptr noundef %256, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %88, i32 noundef 12) #10
  br label %304

261:                                              ; preds = %91
  %262 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 6
  %263 = load i32, ptr %262, align 8, !tbaa !107
  %264 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %265 = call ptr %264(i64 noundef 72, ptr noundef nonnull @.str.18) #10
  %266 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %267 = sext i32 %263 to i64
  %268 = mul nsw i64 %267, 12
  %269 = call ptr %266(i64 noundef %268, ptr noundef nonnull @.str.4) #10
  %270 = getelementptr inbounds %struct.DispList, ptr %265, i64 0, i32 8
  store ptr %269, ptr %270, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %265) #10
  %271 = getelementptr inbounds %struct.DispList, ptr %265, i64 0, i32 4
  store i32 1, ptr %271, align 4, !tbaa !56
  %272 = getelementptr inbounds %struct.DispList, ptr %265, i64 0, i32 5
  store i32 %263, ptr %272, align 8, !tbaa !55
  %273 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 3
  %274 = load i16, ptr %273, align 2, !tbaa !108
  %275 = getelementptr inbounds %struct.DispList, ptr %265, i64 0, i32 6
  store i16 %274, ptr %275, align 4, !tbaa !67
  %276 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 21
  %277 = load i32, ptr %276, align 4, !tbaa !109
  %278 = getelementptr inbounds %struct.DispList, ptr %265, i64 0, i32 11
  store i32 %277, ptr %278, align 8, !tbaa !66
  %279 = load ptr, ptr %270, align 8, !tbaa !34
  %280 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 13
  %281 = load i16, ptr %280, align 4, !tbaa !106
  %282 = and i16 %281, 1
  %283 = getelementptr inbounds %struct.DispList, ptr %265, i64 0, i32 2
  %284 = xor i16 %282, 1
  store i16 %284, ptr %283, align 8, !tbaa !48
  %285 = icmp eq i32 %263, 0
  br i1 %285, label %304, label %286

286:                                              ; preds = %261
  %287 = getelementptr inbounds %struct.Nurb, ptr %74, i64 0, i32 17
  %288 = load ptr, ptr %287, align 8, !tbaa !151
  br label %289

289:                                              ; preds = %286, %289
  %290 = phi i32 [ %293, %289 ], [ %263, %286 ]
  %291 = phi ptr [ %302, %289 ], [ %279, %286 ]
  %292 = phi ptr [ %301, %289 ], [ %288, %286 ]
  %293 = add nsw i32 %290, -1
  %294 = load float, ptr %292, align 4, !tbaa !53
  store float %294, ptr %291, align 4, !tbaa !53
  %295 = getelementptr inbounds float, ptr %292, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !53
  %297 = getelementptr inbounds float, ptr %291, i64 1
  store float %296, ptr %297, align 4, !tbaa !53
  %298 = getelementptr inbounds float, ptr %292, i64 2
  %299 = load float, ptr %298, align 4, !tbaa !53
  %300 = getelementptr inbounds float, ptr %291, i64 2
  store float %299, ptr %300, align 4, !tbaa !53
  %301 = getelementptr inbounds %struct.BPoint, ptr %292, i64 1
  %302 = getelementptr inbounds float, ptr %291, i64 3
  %303 = icmp eq i32 %293, 0
  br i1 %303, label %304, label %289, !llvm.loop !152

304:                                              ; preds = %289, %229, %261, %161, %231, %91, %86, %73
  %305 = load ptr, ptr %74, align 8, !tbaa !41
  %306 = icmp eq ptr %305, null
  br i1 %306, label %990, label %73, !llvm.loop !153

307:                                              ; preds = %52, %47
  %308 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 24
  %309 = load float, ptr %308, align 8, !tbaa !142
  %310 = fadd float %309, -1.000000e+00
  %311 = load ptr, ptr %24, align 8, !tbaa !87
  %312 = getelementptr inbounds %struct.CurveCache, ptr %311, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !41
  %314 = load ptr, ptr %9, align 8, !tbaa !41
  %315 = icmp ne ptr %313, null
  %316 = icmp ne ptr %314, null
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %318, label %331

318:                                              ; preds = %307
  %319 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 66
  %320 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 65
  %321 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 67
  %322 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 68
  %323 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 6
  %324 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %325 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 5
  %326 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %327 = getelementptr inbounds float, ptr %13, i64 1
  %328 = getelementptr inbounds float, ptr %13, i64 2
  %329 = getelementptr inbounds float, ptr %14, i64 1
  %330 = getelementptr inbounds float, ptr %14, i64 2
  br label %334

331:                                              ; preds = %953, %307
  %332 = call ptr @BLI_pophead(ptr noundef nonnull %8) #10
  %333 = icmp eq ptr %332, null
  br i1 %333, label %990, label %961

334:                                              ; preds = %318, %953
  %335 = phi ptr [ %314, %318 ], [ %957, %953 ]
  %336 = phi ptr [ %313, %318 ], [ %956, %953 ]
  %337 = phi i32 [ undef, %318 ], [ %955, %953 ]
  %338 = phi i32 [ undef, %318 ], [ %954, %953 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %339 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 2
  %340 = load i32, ptr %339, align 8, !tbaa !62
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %953, label %342

342:                                              ; preds = %334
  %343 = load ptr, ptr %8, align 8, !tbaa !64
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %400

345:                                              ; preds = %342
  %346 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %347 = call ptr %346(i64 noundef 72, ptr noundef nonnull @.str.14) #10
  %348 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %349 = load i32, ptr %339, align 8, !tbaa !62
  %350 = sext i32 %349 to i64
  %351 = mul nsw i64 %350, 12
  %352 = call ptr %348(i64 noundef %351, ptr noundef nonnull @.str.4) #10
  %353 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 8
  store ptr %352, ptr %353, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %347) #10
  %354 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 4
  %355 = load i32, ptr %354, align 8, !tbaa !62
  %356 = icmp eq i32 %355, -1
  %357 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 2
  %358 = zext i1 %356 to i16
  store i16 %358, ptr %357, align 8, !tbaa !48
  br i1 %356, label %359, label %361

359:                                              ; preds = %345
  %360 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 3
  store i16 12, ptr %360, align 2, !tbaa !57
  br label %361

361:                                              ; preds = %359, %345
  %362 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 4
  store i32 1, ptr %362, align 4, !tbaa !56
  %363 = load i32, ptr %339, align 8, !tbaa !62
  %364 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 5
  store i32 %363, ptr %364, align 8, !tbaa !55
  %365 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 3
  %366 = load i16, ptr %365, align 2, !tbaa !108
  %367 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 6
  store i16 %366, ptr %367, align 4, !tbaa !67
  %368 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 21
  %369 = load i32, ptr %368, align 4, !tbaa !109
  %370 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 11
  store i32 %369, ptr %370, align 8, !tbaa !66
  %371 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 5
  %372 = load i16, ptr %371, align 2, !tbaa !110
  %373 = and i16 %372, -9
  %374 = getelementptr inbounds %struct.DispList, ptr %347, i64 0, i32 7
  store i16 %373, ptr %374, align 2, !tbaa !111
  %375 = load ptr, ptr %353, align 8, !tbaa !34
  %376 = icmp eq i32 %363, 0
  br i1 %376, label %951, label %377

377:                                              ; preds = %361
  %378 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 9
  br label %379

379:                                              ; preds = %377, %379
  %380 = phi ptr [ %397, %379 ], [ %378, %377 ]
  %381 = phi i32 [ %383, %379 ], [ %363, %377 ]
  %382 = phi ptr [ %398, %379 ], [ %375, %377 ]
  %383 = add nsw i32 %381, -1
  %384 = load float, ptr %380, align 4, !tbaa !53
  %385 = getelementptr inbounds %struct.BevPoint, ptr %380, i64 0, i32 5
  %386 = load float, ptr %385, align 4, !tbaa !154
  %387 = call float @llvm.fmuladd.f32(float %310, float %386, float %384)
  store float %387, ptr %382, align 4, !tbaa !53
  %388 = getelementptr inbounds [3 x float], ptr %380, i64 0, i64 1
  %389 = load float, ptr %388, align 4, !tbaa !53
  %390 = getelementptr inbounds %struct.BevPoint, ptr %380, i64 0, i32 6
  %391 = load float, ptr %390, align 4, !tbaa !156
  %392 = call float @llvm.fmuladd.f32(float %310, float %391, float %389)
  %393 = getelementptr inbounds float, ptr %382, i64 1
  store float %392, ptr %393, align 4, !tbaa !53
  %394 = getelementptr inbounds [3 x float], ptr %380, i64 0, i64 2
  %395 = load float, ptr %394, align 4, !tbaa !53
  %396 = getelementptr inbounds float, ptr %382, i64 2
  store float %395, ptr %396, align 4, !tbaa !53
  %397 = getelementptr inbounds %struct.BevPoint, ptr %380, i64 1
  %398 = getelementptr inbounds float, ptr %382, i64 3
  %399 = icmp eq i32 %383, 0
  br i1 %399, label %951, label %379, !llvm.loop !157

400:                                              ; preds = %342
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %401 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 13
  %402 = load i16, ptr %401, align 4, !tbaa !106
  %403 = and i16 %402, 1
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %405, label %645

405:                                              ; preds = %400
  %406 = load float, ptr %319, align 8, !tbaa !158
  %407 = load float, ptr %320, align 4, !tbaa !159
  %408 = fsub float %406, %407
  %409 = call float @llvm.fabs.f32(float %408)
  %410 = fcmp olt float %409, 0x3E80000000000000
  br i1 %410, label %950, label %411

411:                                              ; preds = %405
  %412 = call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef nonnull %335) #10
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %424, label %414

414:                                              ; preds = %411
  %415 = load float, ptr %320, align 4, !tbaa !159
  %416 = load float, ptr %319, align 8, !tbaa !158
  %417 = fcmp olt float %415, %416
  %418 = select i1 %417, float %415, float %416
  %419 = fcmp oeq float %418, 0.000000e+00
  br i1 %419, label %420, label %426

420:                                              ; preds = %414
  %421 = fcmp ogt float %415, %416
  %422 = select i1 %421, float %415, float %416
  %423 = fcmp oeq float %422, 1.000000e+00
  br i1 %423, label %424, label %426

424:                                              ; preds = %420, %411
  %425 = load i32, ptr %339, align 8, !tbaa !62
  br label %645

426:                                              ; preds = %420, %414
  %427 = load i8, ptr %321, align 4, !tbaa !160
  %428 = add i8 %427, -1
  %429 = icmp ult i8 %428, 2
  br i1 %429, label %430, label %455

430:                                              ; preds = %426
  %431 = load i16, ptr %401, align 4, !tbaa !106
  %432 = and i16 %431, 1
  %433 = icmp eq i16 %432, 0
  %434 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 6
  %435 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 6
  %436 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 8
  br label %437

437:                                              ; preds = %430, %449
  %438 = phi i64 [ 0, %430 ], [ %454, %449 ]
  %439 = phi float [ 0.000000e+00, %430 ], [ %453, %449 ]
  br i1 %433, label %442, label %440

440:                                              ; preds = %437
  %441 = load i32, ptr %434, align 8, !tbaa !107
  br label %445

442:                                              ; preds = %437
  %443 = load i32, ptr %435, align 8, !tbaa !107
  %444 = add nsw i32 %443, -1
  br label %445

445:                                              ; preds = %442, %440
  %446 = phi i32 [ %441, %440 ], [ %444, %442 ]
  %447 = sext i32 %446 to i64
  %448 = icmp slt i64 %438, %447
  br i1 %448, label %449, label %455

449:                                              ; preds = %445
  %450 = load ptr, ptr %436, align 8, !tbaa !41
  %451 = getelementptr inbounds float, ptr %450, i64 %438
  %452 = load float, ptr %451, align 4, !tbaa !53
  %453 = fadd float %439, %452
  %454 = add nuw nsw i64 %438, 1
  br label %437, !llvm.loop !161

455:                                              ; preds = %445, %426
  %456 = phi float [ 0.000000e+00, %426 ], [ %439, %445 ]
  switch i8 %427, label %535 [
    i8 0, label %457
    i8 1, label %466
    i8 2, label %507
  ]

457:                                              ; preds = %455
  %458 = load i32, ptr %339, align 8, !tbaa !62
  %459 = add nsw i32 %458, -1
  %460 = sitofp i32 %459 to float
  %461 = fmul float %415, %460
  %462 = fptosi float %461 to i32
  %463 = sitofp i32 %462 to float
  %464 = fsub float %463, %461
  %465 = fadd float %464, 1.000000e+00
  br label %535

466:                                              ; preds = %455
  %467 = load i32, ptr %339, align 8, !tbaa !62
  %468 = add nsw i32 %467, -1
  %469 = sitofp i32 %468 to float
  %470 = fmul float %415, %469
  %471 = fptosi float %470 to i32
  %472 = icmp sgt i32 %467, 1
  br i1 %472, label %473, label %503

473:                                              ; preds = %466
  %474 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 7
  %475 = load ptr, ptr %474, align 8, !tbaa !41
  %476 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 8
  %477 = load ptr, ptr %476, align 8, !tbaa !41
  br label %478

478:                                              ; preds = %473, %497
  %479 = phi float [ %485, %497 ], [ 0.000000e+00, %473 ]
  %480 = phi i32 [ %499, %497 ], [ 0, %473 ]
  %481 = phi ptr [ %500, %497 ], [ %475, %473 ]
  %482 = phi ptr [ %501, %497 ], [ %477, %473 ]
  %483 = load float, ptr %482, align 4, !tbaa !53
  %484 = fdiv float %483, %456
  %485 = fadd float %479, %484
  %486 = fcmp ogt float %485, %415
  br i1 %486, label %487, label %497

487:                                              ; preds = %478
  %488 = sitofp i32 %480 to float
  %489 = fsub float %415, %479
  %490 = fdiv float %489, %484
  %491 = load i32, ptr %481, align 4, !tbaa !62
  %492 = sitofp i32 %491 to float
  %493 = call float @llvm.fmuladd.f32(float %490, float %492, float %488)
  %494 = fptosi float %493 to i32
  %495 = sitofp i32 %494 to float
  %496 = fsub float %493, %495
  br label %503

497:                                              ; preds = %478
  %498 = load i32, ptr %481, align 4, !tbaa !62
  %499 = add nsw i32 %498, %480
  %500 = getelementptr inbounds i32, ptr %481, i64 1
  %501 = getelementptr inbounds float, ptr %482, i64 1
  %502 = icmp slt i32 %499, %468
  br i1 %502, label %478, label %503, !llvm.loop !162

503:                                              ; preds = %497, %466, %487
  %504 = phi float [ %496, %487 ], [ 0.000000e+00, %466 ], [ 0.000000e+00, %497 ]
  %505 = phi i32 [ %494, %487 ], [ %471, %466 ], [ %471, %497 ]
  %506 = fsub float 1.000000e+00, %504
  br label %535

507:                                              ; preds = %455
  %508 = fmul float %415, %456
  %509 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 9
  %510 = load i32, ptr %339, align 8, !tbaa !62
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %526, label %512

512:                                              ; preds = %507, %522
  %513 = phi i32 [ %523, %522 ], [ %510, %507 ]
  %514 = phi i32 [ %524, %522 ], [ 0, %507 ]
  %515 = phi float [ %520, %522 ], [ 0.000000e+00, %507 ]
  %516 = phi ptr [ %517, %522 ], [ %509, %507 ]
  %517 = getelementptr inbounds %struct.BevPoint, ptr %516, i64 1
  %518 = getelementptr inbounds %struct.BevPoint, ptr %516, i64 1, i32 4
  %519 = load float, ptr %518, align 4, !tbaa !163
  %520 = fadd float %515, %519
  %521 = fcmp ogt float %520, %508
  br i1 %521, label %526, label %522

522:                                              ; preds = %512
  %523 = add nsw i32 %513, -1
  %524 = add nuw nsw i32 %514, 1
  %525 = icmp eq i32 %523, 0
  br i1 %525, label %526, label %512, !llvm.loop !164

526:                                              ; preds = %522, %512, %507
  %527 = phi float [ 0.000000e+00, %507 ], [ %520, %522 ], [ %515, %512 ]
  %528 = phi i32 [ 0, %507 ], [ %510, %522 ], [ %514, %512 ]
  %529 = phi ptr [ %509, %507 ], [ %517, %512 ], [ %517, %522 ]
  %530 = fsub float %508, %527
  %531 = getelementptr inbounds %struct.BevPoint, ptr %529, i64 0, i32 4
  %532 = load float, ptr %531, align 4, !tbaa !163
  %533 = fdiv float %530, %532
  %534 = fsub float 1.000000e+00, %533
  br label %535

535:                                              ; preds = %526, %503, %457, %455
  %536 = phi float [ 0.000000e+00, %455 ], [ %534, %526 ], [ %506, %503 ], [ %465, %457 ]
  %537 = phi i32 [ %338, %455 ], [ %528, %526 ], [ %505, %503 ], [ %462, %457 ]
  %538 = load i8, ptr %322, align 1, !tbaa !165
  switch i8 %538, label %620 [
    i8 0, label %539
    i8 1, label %549
    i8 2, label %591
  ]

539:                                              ; preds = %535
  %540 = load i32, ptr %339, align 8, !tbaa !62
  %541 = add nsw i32 %540, -1
  %542 = sitofp i32 %541 to float
  %543 = fmul float %416, %542
  %544 = fptosi float %543 to i32
  %545 = sub i32 %544, %537
  %546 = add i32 %545, 2
  %547 = sitofp i32 %544 to float
  %548 = fsub float %543, %547
  br label %620

549:                                              ; preds = %535
  %550 = load i32, ptr %339, align 8, !tbaa !62
  %551 = add nsw i32 %550, -1
  %552 = sitofp i32 %551 to float
  %553 = fmul float %416, %552
  %554 = fptosi float %553 to i32
  %555 = icmp sgt i32 %550, 1
  br i1 %555, label %556, label %586

556:                                              ; preds = %549
  %557 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 7
  %558 = load ptr, ptr %557, align 8, !tbaa !41
  %559 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 8
  %560 = load ptr, ptr %559, align 8, !tbaa !41
  br label %561

561:                                              ; preds = %556, %580
  %562 = phi float [ %568, %580 ], [ 0.000000e+00, %556 ]
  %563 = phi i32 [ %582, %580 ], [ 0, %556 ]
  %564 = phi ptr [ %583, %580 ], [ %558, %556 ]
  %565 = phi ptr [ %584, %580 ], [ %560, %556 ]
  %566 = load float, ptr %565, align 4, !tbaa !53
  %567 = fdiv float %566, %456
  %568 = fadd float %562, %567
  %569 = fcmp ogt float %568, %416
  br i1 %569, label %570, label %580

570:                                              ; preds = %561
  %571 = sitofp i32 %563 to float
  %572 = fsub float %416, %562
  %573 = fdiv float %572, %567
  %574 = load i32, ptr %564, align 4, !tbaa !62
  %575 = sitofp i32 %574 to float
  %576 = call float @llvm.fmuladd.f32(float %573, float %575, float %571)
  %577 = fptosi float %576 to i32
  %578 = sitofp i32 %577 to float
  %579 = fsub float %576, %578
  br label %586

580:                                              ; preds = %561
  %581 = load i32, ptr %564, align 4, !tbaa !62
  %582 = add nsw i32 %581, %563
  %583 = getelementptr inbounds i32, ptr %564, i64 1
  %584 = getelementptr inbounds float, ptr %565, i64 1
  %585 = icmp slt i32 %582, %551
  br i1 %585, label %561, label %586, !llvm.loop !162

586:                                              ; preds = %580, %549, %570
  %587 = phi i32 [ %577, %570 ], [ %554, %549 ], [ %554, %580 ]
  %588 = phi float [ %579, %570 ], [ 0.000000e+00, %549 ], [ 0.000000e+00, %580 ]
  %589 = sub i32 %587, %537
  %590 = add i32 %589, 2
  br label %620

591:                                              ; preds = %535
  %592 = fmul float %416, %456
  %593 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 9
  %594 = load i32, ptr %339, align 8, !tbaa !62
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %610, label %596

596:                                              ; preds = %591, %606
  %597 = phi i32 [ %607, %606 ], [ %594, %591 ]
  %598 = phi i32 [ %608, %606 ], [ 0, %591 ]
  %599 = phi float [ %604, %606 ], [ 0.000000e+00, %591 ]
  %600 = phi ptr [ %601, %606 ], [ %593, %591 ]
  %601 = getelementptr inbounds %struct.BevPoint, ptr %600, i64 1
  %602 = getelementptr inbounds %struct.BevPoint, ptr %600, i64 1, i32 4
  %603 = load float, ptr %602, align 4, !tbaa !163
  %604 = fadd float %599, %603
  %605 = fcmp ogt float %604, %592
  br i1 %605, label %610, label %606

606:                                              ; preds = %596
  %607 = add nsw i32 %597, -1
  %608 = add nuw nsw i32 %598, 1
  %609 = icmp eq i32 %607, 0
  br i1 %609, label %610, label %596, !llvm.loop !164

610:                                              ; preds = %606, %596, %591
  %611 = phi float [ 0.000000e+00, %591 ], [ %604, %606 ], [ %599, %596 ]
  %612 = phi i32 [ 0, %591 ], [ %594, %606 ], [ %598, %596 ]
  %613 = phi ptr [ %593, %591 ], [ %601, %596 ], [ %601, %606 ]
  %614 = fsub float %592, %611
  %615 = getelementptr inbounds %struct.BevPoint, ptr %613, i64 0, i32 4
  %616 = load float, ptr %615, align 4, !tbaa !163
  %617 = fdiv float %614, %616
  %618 = sub i32 %612, %537
  %619 = add i32 %618, 2
  br label %620

620:                                              ; preds = %610, %586, %539, %535
  %621 = phi i32 [ 0, %535 ], [ %612, %610 ], [ %587, %586 ], [ %544, %539 ]
  %622 = phi float [ 0.000000e+00, %535 ], [ %617, %610 ], [ %588, %586 ], [ %548, %539 ]
  %623 = phi i32 [ %337, %535 ], [ %619, %610 ], [ %590, %586 ], [ %546, %539 ]
  %624 = icmp slt i32 %621, %537
  br i1 %624, label %630, label %625

625:                                              ; preds = %620
  %626 = icmp eq i32 %621, %537
  %627 = fsub float 1.000000e+00, %536
  %628 = fcmp olt float %622, %627
  %629 = select i1 %626, i1 %628, i1 false
  br i1 %629, label %630, label %635

630:                                              ; preds = %625, %620
  %631 = fsub float 1.000000e+00, %536
  %632 = fsub float 1.000000e+00, %622
  %633 = add i32 %537, 2
  %634 = sub i32 %633, %621
  br label %635

635:                                              ; preds = %630, %625
  %636 = phi float [ %632, %630 ], [ %536, %625 ]
  %637 = phi float [ %631, %630 ], [ %622, %625 ]
  %638 = phi i32 [ %621, %630 ], [ %537, %625 ]
  %639 = phi i32 [ %634, %630 ], [ %623, %625 ]
  %640 = add nsw i32 %639, %638
  %641 = load i32, ptr %339, align 8, !tbaa !62
  %642 = icmp sgt i32 %640, %641
  br i1 %642, label %643, label %645

643:                                              ; preds = %635
  %644 = sub nsw i32 %641, %638
  br label %645

645:                                              ; preds = %400, %643, %635, %424
  %646 = phi float [ 1.000000e+00, %424 ], [ %636, %643 ], [ %636, %635 ], [ 1.000000e+00, %400 ]
  %647 = phi float [ 1.000000e+00, %424 ], [ 1.000000e+00, %643 ], [ %637, %635 ], [ 1.000000e+00, %400 ]
  %648 = phi i32 [ 0, %424 ], [ %638, %643 ], [ %638, %635 ], [ 0, %400 ]
  %649 = phi i32 [ %425, %424 ], [ %644, %643 ], [ %639, %635 ], [ %340, %400 ]
  %650 = load ptr, ptr %8, align 8, !tbaa !41
  %651 = icmp eq ptr %650, null
  br i1 %651, label %882, label %652

652:                                              ; preds = %645
  %653 = sext i32 %649 to i64
  %654 = mul nsw i64 %653, 12
  %655 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 4
  %656 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 3
  %657 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 21
  %658 = getelementptr inbounds %struct.Nurb, ptr %335, i64 0, i32 5
  %659 = add nsw i32 %649, 31
  %660 = ashr i32 %659, 5
  %661 = sext i32 %660 to i64
  %662 = shl nsw i64 %661, 2
  %663 = sext i32 %648 to i64
  %664 = mul nsw i64 %663, 80
  %665 = add nsw i64 %664, 56
  %666 = icmp sgt i32 %649, 0
  %667 = add nsw i32 %649, -3
  %668 = sitofp i32 %667 to float
  %669 = fadd float %646, %668
  %670 = fadd float %647, %669
  %671 = add nsw i32 %649, -1
  %672 = fadd float %646, -1.000000e+00
  %673 = add nsw i32 %649, -1
  %674 = fsub float 1.000000e+00, %647
  %675 = fsub float 1.000000e+00, %646
  %676 = fsub float 1.000000e+00, %646
  %677 = add nsw i32 %649, -1
  %678 = fsub float 1.000000e+00, %647
  %679 = add nsw i32 %649, -1
  br label %680

680:                                              ; preds = %652, %879
  %681 = phi ptr [ %650, %652 ], [ %880, %879 ]
  %682 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %683 = call ptr %682(i64 noundef 72, ptr noundef nonnull @.str.15) #10
  %684 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %685 = getelementptr inbounds %struct.DispList, ptr %681, i64 0, i32 5
  %686 = load i32, ptr %685, align 8, !tbaa !55
  %687 = sext i32 %686 to i64
  %688 = mul i64 %654, %687
  %689 = call ptr %684(i64 noundef %688, ptr noundef nonnull @.str.4) #10
  store ptr %689, ptr %10, align 8, !tbaa !41
  %690 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 8
  store ptr %689, ptr %690, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %683) #10
  %691 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 2
  store i16 2, ptr %691, align 8, !tbaa !48
  %692 = getelementptr inbounds %struct.DispList, ptr %681, i64 0, i32 3
  %693 = load i16, ptr %692, align 2, !tbaa !57
  %694 = and i16 %693, 12
  %695 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 3
  store i16 %694, ptr %695, align 2, !tbaa !57
  %696 = getelementptr inbounds %struct.DispList, ptr %681, i64 0, i32 2
  %697 = load i16, ptr %696, align 8, !tbaa !48
  %698 = icmp eq i16 %697, 0
  br i1 %698, label %699, label %701

699:                                              ; preds = %680
  %700 = or disjoint i16 %694, 1
  store i16 %700, ptr %695, align 2, !tbaa !57
  br label %701

701:                                              ; preds = %699, %680
  %702 = load i32, ptr %655, align 8, !tbaa !62
  %703 = icmp sgt i32 %702, -1
  br i1 %703, label %704, label %707

704:                                              ; preds = %701
  %705 = load i16, ptr %695, align 2, !tbaa !57
  %706 = or i16 %705, 2
  store i16 %706, ptr %695, align 2, !tbaa !57
  br label %707

707:                                              ; preds = %704, %701
  %708 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 4
  store i32 %649, ptr %708, align 4, !tbaa !56
  %709 = load i32, ptr %685, align 8, !tbaa !55
  %710 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 5
  store i32 %709, ptr %710, align 8, !tbaa !55
  %711 = load i16, ptr %656, align 2, !tbaa !108
  %712 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 6
  store i16 %711, ptr %712, align 4, !tbaa !67
  %713 = load i32, ptr %657, align 4, !tbaa !109
  %714 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 11
  store i32 %713, ptr %714, align 8, !tbaa !66
  %715 = load i16, ptr %658, align 2, !tbaa !110
  %716 = and i16 %715, -9
  %717 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 7
  store i16 %716, ptr %717, align 2, !tbaa !111
  %718 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %719 = call ptr %718(i64 noundef %662, ptr noundef nonnull @.str.16) #10
  %720 = getelementptr inbounds %struct.DispList, ptr %683, i64 0, i32 13
  store ptr %719, ptr %720, align 8, !tbaa !44
  %721 = load i32, ptr %339, align 8, !tbaa !62
  %722 = add nsw i32 %721, -1
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.BevList, ptr %336, i64 0, i32 9, i64 %723
  br i1 %666, label %725, label %879

725:                                              ; preds = %707, %874
  %726 = phi i64 [ %876, %874 ], [ %665, %707 ]
  %727 = phi i32 [ %875, %874 ], [ %648, %707 ]
  %728 = phi i32 [ %877, %874 ], [ 0, %707 ]
  %729 = getelementptr inbounds i8, ptr %336, i64 %726
  %730 = load ptr, ptr %10, align 8, !tbaa !41
  %731 = load ptr, ptr %323, align 8, !tbaa !166
  %732 = icmp eq ptr %731, null
  br i1 %732, label %733, label %736

733:                                              ; preds = %725
  %734 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 2
  %735 = load float, ptr %734, align 4, !tbaa !167
  br label %766

736:                                              ; preds = %725
  %737 = load i32, ptr %324, align 4, !tbaa !133
  %738 = and i32 %737, 32768
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %748, label %740

740:                                              ; preds = %736
  %741 = icmp eq i32 %728, 0
  br i1 %741, label %763, label %742

742:                                              ; preds = %740
  %743 = icmp eq i32 %728, %671
  br i1 %743, label %763, label %744

744:                                              ; preds = %742
  %745 = sitofp i32 %728 to float
  %746 = fadd float %672, %745
  %747 = fdiv float %746, %670
  br label %763

748:                                              ; preds = %736
  %749 = load i32, ptr %339, align 8, !tbaa !62
  %750 = add nsw i32 %749, -1
  %751 = sitofp i32 %750 to float
  %752 = sitofp i32 %727 to float
  %753 = fdiv float %752, %751
  %754 = icmp eq i32 %728, 0
  br i1 %754, label %755, label %758

755:                                              ; preds = %748
  %756 = fdiv float %675, %751
  %757 = fadd float %753, %756
  br label %763

758:                                              ; preds = %748
  %759 = icmp eq i32 %728, %673
  br i1 %759, label %760, label %763

760:                                              ; preds = %758
  %761 = fdiv float %674, %751
  %762 = fsub float %753, %761
  br label %763

763:                                              ; preds = %742, %740, %755, %760, %758, %744
  %764 = phi float [ %747, %744 ], [ %757, %755 ], [ %762, %760 ], [ %753, %758 ], [ 0.000000e+00, %740 ], [ 1.000000e+00, %742 ]
  %765 = call fastcc float @displist_calc_taper(ptr noundef %0, ptr noundef nonnull %731, float noundef %764)
  br label %766

766:                                              ; preds = %763, %733
  %767 = phi float [ %735, %733 ], [ %765, %763 ]
  %768 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 10
  %769 = load i16, ptr %768, align 4, !tbaa !168
  %770 = icmp eq i16 %769, 0
  br i1 %770, label %780, label %771

771:                                              ; preds = %766
  %772 = and i32 %728, 31
  %773 = shl nuw i32 1, %772
  %774 = load ptr, ptr %720, align 8, !tbaa !44
  %775 = lshr i32 %728, 5
  %776 = zext nneg i32 %775 to i64
  %777 = getelementptr inbounds i32, ptr %774, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !62
  %779 = or i32 %778, %773
  store i32 %779, ptr %777, align 4, !tbaa !62
  br label %780

780:                                              ; preds = %771, %766
  %781 = icmp ne i32 %728, 0
  %782 = icmp eq ptr %729, %724
  %783 = select i1 %781, i1 true, i1 %782
  br i1 %783, label %786, label %784

784:                                              ; preds = %780
  %785 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 1
  call fastcc void @rotateBevelPiece(ptr noundef %16, ptr noundef nonnull %729, ptr noundef nonnull %785, ptr noundef nonnull %681, float noundef %676, float noundef %310, float noundef %767, ptr noundef nonnull %10)
  br label %793

786:                                              ; preds = %780
  %787 = icmp ne i32 %728, %677
  %788 = icmp eq i64 %726, 56
  %789 = select i1 %787, i1 true, i1 %788
  br i1 %789, label %792, label %790

790:                                              ; preds = %786
  %791 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 -1
  call fastcc void @rotateBevelPiece(ptr noundef %16, ptr noundef nonnull %729, ptr noundef nonnull %791, ptr noundef nonnull %681, float noundef %678, float noundef %310, float noundef %767, ptr noundef nonnull %10)
  br label %793

792:                                              ; preds = %786
  call fastcc void @rotateBevelPiece(ptr noundef %16, ptr noundef nonnull %729, ptr noundef null, ptr noundef nonnull %681, float noundef 0.000000e+00, float noundef %310, float noundef %767, ptr noundef nonnull %10)
  br label %793

793:                                              ; preds = %790, %792, %784
  %794 = load ptr, ptr %325, align 8, !tbaa !169
  %795 = icmp eq ptr %794, null
  br i1 %795, label %874, label %796

796:                                              ; preds = %793
  %797 = load i32, ptr %326, align 4, !tbaa !133
  %798 = and i32 %797, 16384
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %874, label %800

800:                                              ; preds = %796
  %801 = load i16, ptr %401, align 4, !tbaa !106
  %802 = and i16 %801, 1
  %803 = icmp eq i16 %802, 0
  br i1 %803, label %804, label %874

804:                                              ; preds = %800
  %805 = icmp eq i32 %728, 1
  br i1 %805, label %806, label %843

806:                                              ; preds = %804
  %807 = load i32, ptr %685, align 8, !tbaa !55
  %808 = mul nsw i32 %807, 3
  %809 = sext i32 %808 to i64
  %810 = sub nsw i64 0, %809
  %811 = getelementptr inbounds float, ptr %730, i64 %810
  %812 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %813 = call ptr %812(i64 noundef 72, ptr noundef nonnull @.str.19) #10
  %814 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %815 = load i32, ptr %685, align 8, !tbaa !55
  %816 = sext i32 %815 to i64
  %817 = mul nsw i64 %816, 12
  %818 = call ptr %814(i64 noundef %817, ptr noundef nonnull @.str.4) #10
  %819 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 8
  store ptr %818, ptr %819, align 8, !tbaa !34
  %820 = load i32, ptr %685, align 8, !tbaa !55
  %821 = sext i32 %820 to i64
  %822 = mul nsw i64 %821, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %818, ptr align 4 %811, i64 %822, i1 false)
  %823 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 2
  store i16 0, ptr %823, align 8, !tbaa !48
  %824 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 4
  store i32 1, ptr %824, align 4, !tbaa !56
  %825 = load i32, ptr %685, align 8, !tbaa !55
  %826 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 5
  store i32 %825, ptr %826, align 8, !tbaa !55
  %827 = load i16, ptr %656, align 2, !tbaa !108
  %828 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 6
  store i16 %827, ptr %828, align 4, !tbaa !67
  %829 = load i32, ptr %657, align 4, !tbaa !109
  %830 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 11
  store i32 %829, ptr %830, align 8, !tbaa !66
  %831 = load i16, ptr %658, align 2, !tbaa !110
  %832 = and i16 %831, -9
  %833 = getelementptr inbounds %struct.DispList, ptr %813, i64 0, i32 7
  store i16 %832, ptr %833, align 2, !tbaa !111
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %813) #10
  %834 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 7
  %835 = load float, ptr %834, align 4, !tbaa !53
  %836 = fneg float %835
  store float %836, ptr %13, align 4, !tbaa !53
  %837 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 7, i64 1
  %838 = load float, ptr %837, align 4, !tbaa !53
  %839 = fneg float %838
  store float %839, ptr %327, align 4, !tbaa !53
  %840 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 7, i64 2
  %841 = load float, ptr %840, align 4, !tbaa !53
  %842 = fneg float %841
  store float %842, ptr %328, align 4, !tbaa !53
  br label %843

843:                                              ; preds = %806, %804
  %844 = icmp eq i32 %728, %679
  br i1 %844, label %845, label %874

845:                                              ; preds = %843
  %846 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %847 = call ptr %846(i64 noundef 72, ptr noundef nonnull @.str.19) #10
  %848 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %849 = load i32, ptr %685, align 8, !tbaa !55
  %850 = sext i32 %849 to i64
  %851 = mul nsw i64 %850, 12
  %852 = call ptr %848(i64 noundef %851, ptr noundef nonnull @.str.4) #10
  %853 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 8
  store ptr %852, ptr %853, align 8, !tbaa !34
  %854 = load i32, ptr %685, align 8, !tbaa !55
  %855 = sext i32 %854 to i64
  %856 = mul nsw i64 %855, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %852, ptr align 4 %730, i64 %856, i1 false)
  %857 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 2
  store i16 0, ptr %857, align 8, !tbaa !48
  %858 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 4
  store i32 1, ptr %858, align 4, !tbaa !56
  %859 = load i32, ptr %685, align 8, !tbaa !55
  %860 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 5
  store i32 %859, ptr %860, align 8, !tbaa !55
  %861 = load i16, ptr %656, align 2, !tbaa !108
  %862 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 6
  store i16 %861, ptr %862, align 4, !tbaa !67
  %863 = load i32, ptr %657, align 4, !tbaa !109
  %864 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 11
  store i32 %863, ptr %864, align 8, !tbaa !66
  %865 = load i16, ptr %658, align 2, !tbaa !110
  %866 = and i16 %865, -9
  %867 = getelementptr inbounds %struct.DispList, ptr %847, i64 0, i32 7
  store i16 %866, ptr %867, align 2, !tbaa !111
  call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %847) #10
  %868 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 7
  %869 = load float, ptr %868, align 4, !tbaa !53
  store float %869, ptr %14, align 4, !tbaa !53
  %870 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 7, i64 1
  %871 = load float, ptr %870, align 4, !tbaa !53
  store float %871, ptr %329, align 4, !tbaa !53
  %872 = getelementptr inbounds %struct.BevPoint, ptr %729, i64 0, i32 7, i64 2
  %873 = load float, ptr %872, align 4, !tbaa !53
  store float %873, ptr %330, align 4, !tbaa !53
  br label %874

874:                                              ; preds = %843, %845, %800, %796, %793
  %875 = add nsw i32 %727, 1
  %876 = add nsw i64 %726, 80
  %877 = add nuw nsw i32 %728, 1
  %878 = icmp eq i32 %877, %649
  br i1 %878, label %879, label %725, !llvm.loop !170

879:                                              ; preds = %874, %707
  call fastcc void @displist_surf_indices(ptr noundef %683)
  %880 = load ptr, ptr %681, align 8, !tbaa !41
  %881 = icmp eq ptr %880, null
  br i1 %881, label %882, label %680, !llvm.loop !171

882:                                              ; preds = %879, %645
  %883 = load ptr, ptr %11, align 8, !tbaa !64
  %884 = icmp eq ptr %883, null
  br i1 %884, label %949, label %885

885:                                              ; preds = %882
  call void @BKE_displist_fill(ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %13, i8 noundef zeroext 0)
  call void @BKE_displist_fill(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %14, i8 noundef zeroext 0)
  %886 = call ptr @BLI_pophead(ptr noundef nonnull %11) #10
  %887 = icmp eq ptr %886, null
  br i1 %887, label %888, label %891

888:                                              ; preds = %916, %885
  %889 = call ptr @BLI_pophead(ptr noundef nonnull %12) #10
  %890 = icmp eq ptr %889, null
  br i1 %890, label %949, label %920

891:                                              ; preds = %885, %916
  %892 = phi ptr [ %918, %916 ], [ %886, %885 ]
  %893 = getelementptr inbounds %struct.DispList, ptr %892, i64 0, i32 8
  %894 = load ptr, ptr %893, align 8, !tbaa !34
  %895 = icmp eq ptr %894, null
  br i1 %895, label %898, label %896

896:                                              ; preds = %891
  %897 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %897(ptr noundef nonnull %894) #10
  br label %898

898:                                              ; preds = %896, %891
  %899 = getelementptr inbounds %struct.DispList, ptr %892, i64 0, i32 9
  %900 = load ptr, ptr %899, align 8, !tbaa !42
  %901 = icmp eq ptr %900, null
  br i1 %901, label %904, label %902

902:                                              ; preds = %898
  %903 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %903(ptr noundef nonnull %900) #10
  br label %904

904:                                              ; preds = %902, %898
  %905 = getelementptr inbounds %struct.DispList, ptr %892, i64 0, i32 10
  %906 = load ptr, ptr %905, align 8, !tbaa !43
  %907 = icmp eq ptr %906, null
  br i1 %907, label %910, label %908

908:                                              ; preds = %904
  %909 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %909(ptr noundef nonnull %906) #10
  br label %910

910:                                              ; preds = %908, %904
  %911 = getelementptr inbounds %struct.DispList, ptr %892, i64 0, i32 13
  %912 = load ptr, ptr %911, align 8, !tbaa !44
  %913 = icmp eq ptr %912, null
  br i1 %913, label %916, label %914

914:                                              ; preds = %910
  %915 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %915(ptr noundef nonnull %912) #10
  br label %916

916:                                              ; preds = %914, %910
  %917 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %917(ptr noundef nonnull %892) #10
  %918 = call ptr @BLI_pophead(ptr noundef nonnull %11) #10
  %919 = icmp eq ptr %918, null
  br i1 %919, label %888, label %891, !llvm.loop !45

920:                                              ; preds = %888, %945
  %921 = phi ptr [ %947, %945 ], [ %889, %888 ]
  %922 = getelementptr inbounds %struct.DispList, ptr %921, i64 0, i32 8
  %923 = load ptr, ptr %922, align 8, !tbaa !34
  %924 = icmp eq ptr %923, null
  br i1 %924, label %927, label %925

925:                                              ; preds = %920
  %926 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %926(ptr noundef nonnull %923) #10
  br label %927

927:                                              ; preds = %925, %920
  %928 = getelementptr inbounds %struct.DispList, ptr %921, i64 0, i32 9
  %929 = load ptr, ptr %928, align 8, !tbaa !42
  %930 = icmp eq ptr %929, null
  br i1 %930, label %933, label %931

931:                                              ; preds = %927
  %932 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %932(ptr noundef nonnull %929) #10
  br label %933

933:                                              ; preds = %931, %927
  %934 = getelementptr inbounds %struct.DispList, ptr %921, i64 0, i32 10
  %935 = load ptr, ptr %934, align 8, !tbaa !43
  %936 = icmp eq ptr %935, null
  br i1 %936, label %939, label %937

937:                                              ; preds = %933
  %938 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %938(ptr noundef nonnull %935) #10
  br label %939

939:                                              ; preds = %937, %933
  %940 = getelementptr inbounds %struct.DispList, ptr %921, i64 0, i32 13
  %941 = load ptr, ptr %940, align 8, !tbaa !44
  %942 = icmp eq ptr %941, null
  br i1 %942, label %945, label %943

943:                                              ; preds = %939
  %944 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %944(ptr noundef nonnull %941) #10
  br label %945

945:                                              ; preds = %943, %939
  %946 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %946(ptr noundef nonnull %921) #10
  %947 = call ptr @BLI_pophead(ptr noundef nonnull %12) #10
  %948 = icmp eq ptr %947, null
  br i1 %948, label %949, label %920, !llvm.loop !45

949:                                              ; preds = %945, %888, %882
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  br label %953

950:                                              ; preds = %405
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  br label %953

951:                                              ; preds = %379, %361
  %952 = phi ptr [ %375, %361 ], [ %398, %379 ]
  store ptr %952, ptr %10, align 8, !tbaa !41
  br label %953

953:                                              ; preds = %951, %334, %949, %950
  %954 = phi i32 [ %338, %334 ], [ %338, %950 ], [ %648, %949 ], [ %338, %951 ]
  %955 = phi i32 [ %337, %334 ], [ %337, %950 ], [ %649, %949 ], [ %337, %951 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  %956 = load ptr, ptr %336, align 8, !tbaa !41
  %957 = load ptr, ptr %335, align 8, !tbaa !41
  %958 = icmp ne ptr %956, null
  %959 = icmp ne ptr %957, null
  %960 = select i1 %958, i1 %959, i1 false
  br i1 %960, label %334, label %331, !llvm.loop !172

961:                                              ; preds = %331, %986
  %962 = phi ptr [ %988, %986 ], [ %332, %331 ]
  %963 = getelementptr inbounds %struct.DispList, ptr %962, i64 0, i32 8
  %964 = load ptr, ptr %963, align 8, !tbaa !34
  %965 = icmp eq ptr %964, null
  br i1 %965, label %968, label %966

966:                                              ; preds = %961
  %967 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %967(ptr noundef nonnull %964) #10
  br label %968

968:                                              ; preds = %966, %961
  %969 = getelementptr inbounds %struct.DispList, ptr %962, i64 0, i32 9
  %970 = load ptr, ptr %969, align 8, !tbaa !42
  %971 = icmp eq ptr %970, null
  br i1 %971, label %974, label %972

972:                                              ; preds = %968
  %973 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %973(ptr noundef nonnull %970) #10
  br label %974

974:                                              ; preds = %972, %968
  %975 = getelementptr inbounds %struct.DispList, ptr %962, i64 0, i32 10
  %976 = load ptr, ptr %975, align 8, !tbaa !43
  %977 = icmp eq ptr %976, null
  br i1 %977, label %980, label %978

978:                                              ; preds = %974
  %979 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %979(ptr noundef nonnull %976) #10
  br label %980

980:                                              ; preds = %978, %974
  %981 = getelementptr inbounds %struct.DispList, ptr %962, i64 0, i32 13
  %982 = load ptr, ptr %981, align 8, !tbaa !44
  %983 = icmp eq ptr %982, null
  br i1 %983, label %986, label %984

984:                                              ; preds = %980
  %985 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %985(ptr noundef nonnull %982) #10
  br label %986

986:                                              ; preds = %984, %980
  %987 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %987(ptr noundef nonnull %962) #10
  %988 = call ptr @BLI_pophead(ptr noundef nonnull %8) #10
  %989 = icmp eq ptr %988, null
  br i1 %989, label %990, label %961, !llvm.loop !45

990:                                              ; preds = %986, %304, %331, %66
  %991 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %992 = load i32, ptr %991, align 4, !tbaa !133
  %993 = and i32 %992, 8192
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %996

995:                                              ; preds = %990
  call fastcc void @curve_to_filledpoly(ptr noundef %16, ptr noundef %2)
  br label %996

996:                                              ; preds = %995, %990
  br i1 %27, label %997, label %1009

997:                                              ; preds = %996
  %998 = load i32, ptr %991, align 4, !tbaa !133
  %999 = and i32 %998, 8
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1005

1001:                                             ; preds = %997
  %1002 = call signext i16 @DAG_get_eval_flags_for_object(ptr noundef %0, ptr noundef %1) #10
  %1003 = and i16 %1002, 1
  %1004 = icmp eq i16 %1003, 0
  br i1 %1004, label %1006, label %1005

1005:                                             ; preds = %1001, %997
  call void @calc_curvepath(ptr noundef %1, ptr noundef nonnull %9) #10
  br label %1006

1006:                                             ; preds = %1005, %1001
  %1007 = load ptr, ptr %24, align 8, !tbaa !87
  %1008 = getelementptr inbounds %struct.CurveCache, ptr %1007, i64 0, i32 2
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %1008, ptr noundef nonnull %9) #10
  call fastcc void @curve_calc_modifiers_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %6)
  br label %1009

1009:                                             ; preds = %996, %1006
  %1010 = load i32, ptr %991, align 4, !tbaa !133
  %1011 = and i32 %1010, 8192
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1018, label %1013

1013:                                             ; preds = %1009
  %1014 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  %1015 = load ptr, ptr %1014, align 8, !tbaa !91
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1013
  call fastcc void @curve_to_filledpoly(ptr noundef %16, ptr noundef %2)
  br label %1018

1018:                                             ; preds = %1017, %1013, %1009
  call void @BKE_nurbList_free(ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %1019

1019:                                             ; preds = %7, %22, %1018, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_make_curveTypes_forRender(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %12 = tail call ptr %11(i64 noundef 56, ptr noundef nonnull @.str.8) #10
  store ptr %12, ptr %7, align 8, !tbaa !87
  br label %13

13:                                               ; preds = %10, %6
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4, i8 noundef zeroext %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_make_curveTypes_forOrco(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @.str.8) #10
  store ptr %9, ptr %4, align 8, !tbaa !87
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_displist_make_orco(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.VirtualModifierData, align 8
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %2, %5 ]
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 50
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = tail call ptr %15(ptr noundef %13, i32 noundef 14) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %172

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %7) #10
  %19 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %7) #10
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 53
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = icmp ne ptr %29, null
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %27, %23, %18
  %33 = phi i8 [ 0, %18 ], [ 1, %23 ], [ %31, %27 ]
  %34 = icmp eq i8 %4, 0
  %35 = select i1 %34, i32 1, i32 2
  %36 = select i1 %34, i32 4, i32 5
  %37 = call fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %4, i8 noundef zeroext %33)
  %38 = icmp eq i8 %33, 0
  %39 = or disjoint i32 %35, 4
  %40 = select i1 %38, i32 %35, i32 %39
  %41 = icmp eq ptr %37, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %37, align 8, !tbaa !121
  br label %44

44:                                               ; preds = %42, %32
  %45 = phi ptr [ %43, %42 ], [ %19, %32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %51 = call ptr %50(i64 noundef 56, ptr noundef nonnull @.str.8) #10
  store ptr %51, ptr %46, align 8, !tbaa !87
  br label %52

52:                                               ; preds = %49, %44
  call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %53 = call ptr @CDDM_from_curve_displist(ptr noundef %1, ptr noundef nonnull %6) #10
  %54 = call ptr @BLI_pophead(ptr noundef nonnull %6) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %52, %81
  %57 = phi ptr [ %83, %81 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.DispList, ptr %57, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %62(ptr noundef nonnull %59) #10
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %struct.DispList, ptr %57, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %68(ptr noundef nonnull %65) #10
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.DispList, ptr %57, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %74(ptr noundef nonnull %71) #10
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds %struct.DispList, ptr %57, i64 0, i32 13
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %80(ptr noundef nonnull %77) #10
  br label %81

81:                                               ; preds = %79, %75
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %82(ptr noundef nonnull %57) #10
  %83 = call ptr @BLI_pophead(ptr noundef nonnull %6) #10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %56, !llvm.loop !45

85:                                               ; preds = %81, %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %86 = icmp eq ptr %45, null
  br i1 %86, label %114, label %87

87:                                               ; preds = %85, %110
  %88 = phi ptr [ %112, %110 ], [ %45, %85 ]
  %89 = phi ptr [ %111, %110 ], [ %53, %85 ]
  %90 = getelementptr inbounds %struct.ModifierData, ptr %88, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !115
  %92 = call ptr @modifierType_getInfo(i32 noundef %91) #10
  %93 = getelementptr inbounds %struct.ModifierData, ptr %88, i64 0, i32 7
  store ptr %0, ptr %93, align 8, !tbaa !117
  %94 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %88, i32 noundef %40) #10
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %92, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !118
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = call ptr @modwrap_applyModifier(ptr noundef nonnull %88, ptr noundef %1, ptr noundef %89, i32 noundef %36) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = icmp eq ptr %89, null
  %105 = icmp eq ptr %89, %101
  %106 = or i1 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %89, i64 0, i32 95
  %109 = load ptr, ptr %108, align 8, !tbaa !125
  call void %109(ptr noundef nonnull %89) #10
  br label %110

110:                                              ; preds = %107, %103, %100, %96, %87
  %111 = phi ptr [ %89, %87 ], [ %89, %96 ], [ %89, %100 ], [ %101, %107 ], [ %101, %103 ]
  %112 = load ptr, ptr %88, align 8, !tbaa !121
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %87, !llvm.loop !174

114:                                              ; preds = %110, %85
  %115 = phi ptr [ %53, %85 ], [ %111, %110 ]
  %116 = load ptr, ptr %20, align 8, !tbaa !95
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 23
  %118 = load ptr, ptr %117, align 8, !tbaa !128
  %119 = call i32 %118(ptr noundef %13) #10
  %120 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %121 = sext i32 %119 to i64
  %122 = mul nsw i64 %121, 12
  %123 = call ptr %120(i64 noundef %122, ptr noundef nonnull @.str.20) #10
  %124 = getelementptr inbounds %struct.DerivedMesh, ptr %115, i64 0, i32 23
  %125 = load ptr, ptr %124, align 8, !tbaa !128
  %126 = call i32 %125(ptr noundef %115) #10
  %127 = icmp eq i32 %126, %119
  %128 = select i1 %127, ptr %115, ptr %13
  %129 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 77
  %130 = load ptr, ptr %129, align 8, !tbaa !129
  call void %130(ptr noundef %128, ptr noundef %123) #10
  %131 = icmp sgt i32 %119, 0
  br i1 %131, label %132, label %162

132:                                              ; preds = %114
  %133 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 11
  %134 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 12
  %135 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 11, i64 1
  %136 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 12, i64 1
  %137 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 11, i64 2
  %138 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 12, i64 2
  %139 = zext nneg i32 %119 to i64
  br label %140

140:                                              ; preds = %132, %140
  %141 = phi i64 [ 0, %132 ], [ %160, %140 ]
  %142 = getelementptr inbounds [3 x float], ptr %123, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !53
  %144 = load float, ptr %133, align 8, !tbaa !53
  %145 = fsub float %143, %144
  %146 = load float, ptr %134, align 4, !tbaa !53
  %147 = fdiv float %145, %146
  store float %147, ptr %142, align 4, !tbaa !53
  %148 = getelementptr inbounds float, ptr %142, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !53
  %150 = load float, ptr %135, align 4, !tbaa !53
  %151 = fsub float %149, %150
  %152 = load float, ptr %136, align 4, !tbaa !53
  %153 = fdiv float %151, %152
  store float %153, ptr %148, align 4, !tbaa !53
  %154 = getelementptr inbounds float, ptr %142, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !53
  %156 = load float, ptr %137, align 8, !tbaa !53
  %157 = fsub float %155, %156
  %158 = load float, ptr %138, align 4, !tbaa !53
  %159 = fdiv float %157, %158
  store float %159, ptr %154, align 4, !tbaa !53
  %160 = add nuw nsw i64 %141, 1
  %161 = icmp eq i64 %160, %139
  br i1 %161, label %162, label %140, !llvm.loop !175

162:                                              ; preds = %140, %114
  %163 = call ptr @DM_get_vert_data_layer(ptr noundef %13, i32 noundef 14) #10
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = shl nsw i64 %121, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %163, ptr align 4 %123, i64 %166, i1 false)
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %167(ptr noundef %123) #10
  br label %169

168:                                              ; preds = %162
  call void @DM_add_vert_layer(ptr noundef %13, i32 noundef 14, i32 noundef 0, ptr noundef %123) #10
  br label %169

169:                                              ; preds = %165, %168
  %170 = getelementptr inbounds %struct.DerivedMesh, ptr %115, i64 0, i32 95
  %171 = load ptr, ptr %170, align 8, !tbaa !125
  call void %171(ptr noundef %115) #10
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %7) #10
  br label %172

172:                                              ; preds = %169, %12
  %173 = load ptr, ptr %14, align 8, !tbaa !173
  %174 = call ptr %173(ptr noundef %13, i32 noundef 14) #10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %178 = call ptr %177(ptr noundef nonnull %174) #10
  br label %179

179:                                              ; preds = %176, %172
  %180 = phi ptr [ %178, %176 ], [ null, %172 ]
  ret ptr %180
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_displist_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3, %30
  %7 = phi ptr [ %34, %30 ], [ %4, %3 ]
  %8 = phi i32 [ %33, %30 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !48
  %11 = icmp eq i16 %10, 4
  %12 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !55
  br i1 %11, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = mul nsw i32 %16, %13
  br label %18

18:                                               ; preds = %6, %14
  %19 = phi i32 [ %17, %14 ], [ %13, %6 ]
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %21 ]
  %26 = phi ptr [ %28, %24 ], [ %23, %21 ]
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %26) #10
  %27 = add nuw nsw i32 %25, 1
  %28 = getelementptr inbounds float, ptr %26, i64 3
  %29 = icmp eq i32 %27, %19
  br i1 %29, label %30, label %24, !llvm.loop !92

30:                                               ; preds = %24, %18
  %31 = icmp ne i32 %19, 0
  %32 = zext i1 %31 to i32
  %33 = or i32 %8, %32
  %34 = load ptr, ptr %7, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %6, !llvm.loop !93

36:                                               ; preds = %30
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3, %36
  store float 0.000000e+00, ptr %1, align 4, !tbaa !53
  %39 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %39, align 4, !tbaa !53
  %40 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %40, align 4, !tbaa !53
  store float 0.000000e+00, ptr %2, align 4, !tbaa !53
  %41 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %41, align 4, !tbaa !53
  %42 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %42, align 4, !tbaa !53
  br label %43

43:                                               ; preds = %38, %36
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @modifiers_clearErrors(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %5) #10
  %6 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %5) #10
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = icmp eq i8 %3, 0
  %10 = or disjoint i32 %8, 4
  %11 = select i1 %9, i32 %8, i32 %10
  %12 = icmp eq ptr %6, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %4, %42
  %14 = phi ptr [ %40, %42 ], [ undef, %4 ]
  %15 = phi ptr [ %39, %42 ], [ null, %4 ]
  %16 = phi ptr [ %43, %42 ], [ %6, %4 ]
  %17 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !115
  %19 = call ptr @modifierType_getInfo(i32 noundef %18) #10
  %20 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %11) #10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %19, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !118
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %17, align 8, !tbaa !115
  switch i32 %27, label %32 [
    i32 9, label %28
    i32 10, label %28
    i32 18, label %28
  ]

28:                                               ; preds = %26, %26, %26
  %29 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !176
  %31 = or i32 %30, 64
  store i32 %31, ptr %29, align 4, !tbaa !176
  br label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !176
  %35 = and i32 %34, 64
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr %15, ptr %16
  br label %38

38:                                               ; preds = %32, %28, %22, %13
  %39 = phi ptr [ %15, %13 ], [ %15, %22 ], [ %16, %28 ], [ %37, %32 ]
  %40 = phi ptr [ %14, %13 ], [ %15, %22 ], [ %14, %28 ], [ %14, %32 ]
  %41 = phi i32 [ 4, %13 ], [ 1, %22 ], [ 0, %28 ], [ 0, %32 ]
  switch i32 %41, label %45 [
    i32 0, label %42
    i32 4, label %42
  ]

42:                                               ; preds = %38, %38
  %43 = load ptr, ptr %16, align 8, !tbaa !121
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !llvm.loop !177

45:                                               ; preds = %38, %42, %4
  %46 = phi ptr [ null, %4 ], [ %40, %38 ], [ %39, %42 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %5) #10
  ret ptr %46
}

declare ptr @BKE_key_evaluate_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_nurbs_keyVertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BK_curve_nurbs_vertexCos_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_nurbs_keyVertexTilts_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @curve_to_filledpoly(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %8 = load i32, ptr %7, align 4, !tbaa !133
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %8, 6
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %10, %12
  br i1 %13, label %210, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %209, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.DispList, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !48
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %209

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.bevels_to_filledpoly.z_up, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr %1, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %144, label %24

24:                                               ; preds = %21, %141
  %25 = phi ptr [ %142, %141 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !48
  %28 = icmp eq i16 %27, 2
  br i1 %28, label %29, label %141

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !57
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %141

35:                                               ; preds = %29
  %36 = load i32, ptr %7, align 4, !tbaa !133
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %32, 8
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %40, %38
  br i1 %41, label %86, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %44 = call ptr %43(i64 noundef 72, ptr noundef nonnull @.str.12) #10
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %44) #10
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !56
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 12
  %50 = call ptr %45(i64 noundef %49, ptr noundef nonnull @.str.13) #10
  %51 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 8
  store ptr %50, ptr %51, align 8, !tbaa !34
  %52 = load i32, ptr %46, align 4, !tbaa !56
  %53 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 5
  store i32 %52, ptr %53, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 4
  store i32 1, ptr %54, align 4, !tbaa !56
  %55 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 2
  store i16 0, ptr %55, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 6
  %57 = load i16, ptr %56, align 4, !tbaa !67
  %58 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 6
  store i16 %57, ptr %58, align 4, !tbaa !67
  %59 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !66
  %61 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 11
  store i32 %60, ptr %61, align 8, !tbaa !66
  %62 = load i32, ptr %46, align 4, !tbaa !56
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !55
  %67 = mul nsw i32 %66, 3
  %68 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = sext i32 %67 to i64
  br label %71

71:                                               ; preds = %64, %71
  %72 = phi i32 [ %62, %64 ], [ %75, %71 ]
  %73 = phi ptr [ %50, %64 ], [ %83, %71 ]
  %74 = phi ptr [ %69, %64 ], [ %84, %71 ]
  %75 = add nsw i32 %72, -1
  %76 = load float, ptr %74, align 4, !tbaa !53
  store float %76, ptr %73, align 4, !tbaa !53
  %77 = getelementptr inbounds float, ptr %74, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !53
  %79 = getelementptr inbounds float, ptr %73, i64 1
  store float %78, ptr %79, align 4, !tbaa !53
  %80 = getelementptr inbounds float, ptr %74, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !53
  %82 = getelementptr inbounds float, ptr %73, i64 2
  store float %81, ptr %82, align 4, !tbaa !53
  %83 = getelementptr inbounds float, ptr %73, i64 3
  %84 = getelementptr inbounds float, ptr %74, i64 %70
  %85 = icmp eq i32 %75, 0
  br i1 %85, label %86, label %71, !llvm.loop !178

86:                                               ; preds = %71, %42, %35
  %87 = load i32, ptr %7, align 4, !tbaa !133
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %141, label %90

90:                                               ; preds = %86
  %91 = load i16, ptr %30, align 2, !tbaa !57
  %92 = and i16 %91, 4
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %141, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %96 = call ptr %95(i64 noundef 72, ptr noundef nonnull @.str.12) #10
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %96) #10
  %97 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %98 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !56
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, 12
  %102 = call ptr %97(i64 noundef %101, ptr noundef nonnull @.str.13) #10
  %103 = getelementptr inbounds %struct.DispList, ptr %96, i64 0, i32 8
  store ptr %102, ptr %103, align 8, !tbaa !34
  %104 = load i32, ptr %98, align 4, !tbaa !56
  %105 = getelementptr inbounds %struct.DispList, ptr %96, i64 0, i32 5
  store i32 %104, ptr %105, align 8, !tbaa !55
  %106 = getelementptr inbounds %struct.DispList, ptr %96, i64 0, i32 4
  store i32 1, ptr %106, align 4, !tbaa !56
  %107 = getelementptr inbounds %struct.DispList, ptr %96, i64 0, i32 2
  store i16 0, ptr %107, align 8, !tbaa !48
  %108 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 6
  %109 = load i16, ptr %108, align 4, !tbaa !67
  %110 = getelementptr inbounds %struct.DispList, ptr %96, i64 0, i32 6
  store i16 %109, ptr %110, align 4, !tbaa !67
  %111 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 11
  %112 = load i32, ptr %111, align 8, !tbaa !66
  %113 = getelementptr inbounds %struct.DispList, ptr %96, i64 0, i32 11
  store i32 %112, ptr %113, align 8, !tbaa !66
  %114 = load i32, ptr %98, align 4, !tbaa !56
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %141, label %116

116:                                              ; preds = %94
  %117 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 5
  %120 = load i32, ptr %119, align 8, !tbaa !55
  %121 = mul i32 %120, 3
  %122 = add i32 %121, -3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, ptr %118, i64 %123
  %125 = sext i32 %121 to i64
  br label %126

126:                                              ; preds = %116, %126
  %127 = phi i32 [ %114, %116 ], [ %130, %126 ]
  %128 = phi ptr [ %102, %116 ], [ %138, %126 ]
  %129 = phi ptr [ %124, %116 ], [ %139, %126 ]
  %130 = add nsw i32 %127, -1
  %131 = load float, ptr %129, align 4, !tbaa !53
  store float %131, ptr %128, align 4, !tbaa !53
  %132 = getelementptr inbounds float, ptr %129, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !53
  %134 = getelementptr inbounds float, ptr %128, i64 1
  store float %133, ptr %134, align 4, !tbaa !53
  %135 = getelementptr inbounds float, ptr %129, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !53
  %137 = getelementptr inbounds float, ptr %128, i64 2
  store float %136, ptr %137, align 4, !tbaa !53
  %138 = getelementptr inbounds float, ptr %128, i64 3
  %139 = getelementptr inbounds float, ptr %129, i64 %125
  %140 = icmp eq i32 %130, 0
  br i1 %140, label %141, label %126, !llvm.loop !179

141:                                              ; preds = %126, %94, %90, %86, %29, %24
  %142 = load ptr, ptr %25, align 8, !tbaa !41
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %24, !llvm.loop !180

144:                                              ; preds = %141, %21
  call void @BKE_displist_fill(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 1)
  call void @BKE_displist_fill(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 0)
  %145 = call ptr @BLI_pophead(ptr noundef nonnull %4) #10
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %175, %144
  %148 = call ptr @BLI_pophead(ptr noundef nonnull %5) #10
  %149 = icmp eq ptr %148, null
  br i1 %149, label %208, label %179

150:                                              ; preds = %144, %175
  %151 = phi ptr [ %177, %175 ], [ %145, %144 ]
  %152 = getelementptr inbounds %struct.DispList, ptr %151, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !34
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %156(ptr noundef nonnull %153) #10
  br label %157

157:                                              ; preds = %155, %150
  %158 = getelementptr inbounds %struct.DispList, ptr %151, i64 0, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !42
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %162(ptr noundef nonnull %159) #10
  br label %163

163:                                              ; preds = %161, %157
  %164 = getelementptr inbounds %struct.DispList, ptr %151, i64 0, i32 10
  %165 = load ptr, ptr %164, align 8, !tbaa !43
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %168(ptr noundef nonnull %165) #10
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr inbounds %struct.DispList, ptr %151, i64 0, i32 13
  %171 = load ptr, ptr %170, align 8, !tbaa !44
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %174(ptr noundef nonnull %171) #10
  br label %175

175:                                              ; preds = %173, %169
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %176(ptr noundef nonnull %151) #10
  %177 = call ptr @BLI_pophead(ptr noundef nonnull %4) #10
  %178 = icmp eq ptr %177, null
  br i1 %178, label %147, label %150, !llvm.loop !45

179:                                              ; preds = %147, %204
  %180 = phi ptr [ %206, %204 ], [ %148, %147 ]
  %181 = getelementptr inbounds %struct.DispList, ptr %180, i64 0, i32 8
  %182 = load ptr, ptr %181, align 8, !tbaa !34
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %185(ptr noundef nonnull %182) #10
  br label %186

186:                                              ; preds = %184, %179
  %187 = getelementptr inbounds %struct.DispList, ptr %180, i64 0, i32 9
  %188 = load ptr, ptr %187, align 8, !tbaa !42
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %191(ptr noundef nonnull %188) #10
  br label %192

192:                                              ; preds = %190, %186
  %193 = getelementptr inbounds %struct.DispList, ptr %180, i64 0, i32 10
  %194 = load ptr, ptr %193, align 8, !tbaa !43
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %197(ptr noundef nonnull %194) #10
  br label %198

198:                                              ; preds = %196, %192
  %199 = getelementptr inbounds %struct.DispList, ptr %180, i64 0, i32 13
  %200 = load ptr, ptr %199, align 8, !tbaa !44
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %203(ptr noundef nonnull %200) #10
  br label %204

204:                                              ; preds = %202, %198
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %205(ptr noundef nonnull %180) #10
  %206 = call ptr @BLI_pophead(ptr noundef nonnull %5) #10
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %179, !llvm.loop !45

208:                                              ; preds = %204, %147
  call void @BKE_displist_fill(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %210

209:                                              ; preds = %17, %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.bevels_to_filledpoly.z_up, i64 12, i1 false)
  call void @BKE_displist_fill(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %210

210:                                              ; preds = %2, %209, %208
  ret void
}

declare ptr @CDDM_from_curve_displist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modwrap_applyModifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CDDM_calc_normals_mapping(ptr noundef) local_unnamed_addr #2

declare void @DM_update_tessface_data(ptr noundef) local_unnamed_addr #2

declare void @CDDM_calc_normals_mapping_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @BKE_curve_bevelList_free(ptr noundef) local_unnamed_addr #2

declare void @free_path(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_vfont_to_curve_nubase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_bevelList_make(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_curve_bevel_make(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @rotateBevelPiece(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, float noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = load ptr, ptr %7, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %113

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %19 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %21 = icmp eq ptr %2, null
  %22 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  %23 = getelementptr inbounds %struct.BevPoint, ptr %2, i64 0, i32 9
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  %27 = icmp eq ptr %2, null
  %28 = getelementptr inbounds %struct.BevPoint, ptr %2, i64 0, i32 5
  %29 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 5
  %30 = fsub float 1.000000e+00, %4
  %31 = getelementptr inbounds %struct.BevPoint, ptr %2, i64 0, i32 6
  %32 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 6
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = getelementptr inbounds float, ptr %1, i64 2
  %35 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 5
  %36 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 6
  br label %37

37:                                               ; preds = %15, %107
  %38 = phi i32 [ 0, %15 ], [ %108, %107 ]
  %39 = phi ptr [ %11, %15 ], [ %110, %107 ]
  %40 = phi ptr [ %17, %15 ], [ %109, %107 ]
  %41 = load i32, ptr %18, align 4, !tbaa !133
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  %45 = getelementptr inbounds float, ptr %40, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = fadd float %46, %5
  store float %47, ptr %9, align 4, !tbaa !53
  %48 = getelementptr inbounds float, ptr %40, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !53
  store float %49, ptr %19, align 4, !tbaa !53
  store float 0.000000e+00, ptr %20, align 4, !tbaa !53
  br i1 %21, label %50, label %56

50:                                               ; preds = %44
  %51 = load float, ptr %1, align 4, !tbaa !53
  store float %51, ptr %39, align 4, !tbaa !53
  %52 = load float, ptr %24, align 4, !tbaa !53
  %53 = getelementptr inbounds float, ptr %39, i64 1
  store float %52, ptr %53, align 4, !tbaa !53
  %54 = load float, ptr %25, align 4, !tbaa !53
  %55 = getelementptr inbounds float, ptr %39, i64 2
  store float %54, ptr %55, align 4, !tbaa !53
  call void @copy_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %26) #10
  br label %57

56:                                               ; preds = %44
  call void @interp_v3_v3v3(ptr noundef %39, ptr noundef %1, ptr noundef nonnull %2, float noundef %4) #10
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %22, ptr noundef nonnull %23, float noundef %4) #10
  br label %57

57:                                               ; preds = %56, %50
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #10
  %58 = load float, ptr %9, align 4, !tbaa !53
  %59 = load float, ptr %39, align 4, !tbaa !53
  %60 = call float @llvm.fmuladd.f32(float %6, float %58, float %59)
  store float %60, ptr %39, align 4, !tbaa !53
  %61 = load float, ptr %19, align 4, !tbaa !53
  %62 = getelementptr inbounds float, ptr %39, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = call float @llvm.fmuladd.f32(float %6, float %61, float %63)
  store float %64, ptr %62, align 4, !tbaa !53
  %65 = load float, ptr %20, align 4, !tbaa !53
  %66 = getelementptr inbounds float, ptr %39, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !53
  %68 = call float @llvm.fmuladd.f32(float %6, float %65, float %67)
  store float %68, ptr %66, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  br label %107

69:                                               ; preds = %37
  br i1 %27, label %70, label %78

70:                                               ; preds = %69
  %71 = load float, ptr %1, align 4, !tbaa !53
  store float %71, ptr %39, align 4, !tbaa !53
  %72 = load float, ptr %33, align 4, !tbaa !53
  %73 = getelementptr inbounds float, ptr %39, i64 1
  store float %72, ptr %73, align 4, !tbaa !53
  %74 = load float, ptr %34, align 4, !tbaa !53
  %75 = getelementptr inbounds float, ptr %39, i64 2
  store float %74, ptr %75, align 4, !tbaa !53
  %76 = load float, ptr %35, align 4, !tbaa !154
  %77 = load float, ptr %36, align 4, !tbaa !156
  br label %87

78:                                               ; preds = %69
  call void @interp_v3_v3v3(ptr noundef %39, ptr noundef %1, ptr noundef nonnull %2, float noundef %4) #10
  %79 = load float, ptr %28, align 4, !tbaa !154
  %80 = load float, ptr %29, align 4, !tbaa !154
  %81 = fmul float %30, %80
  %82 = call float @llvm.fmuladd.f32(float %79, float %4, float %81)
  %83 = load float, ptr %31, align 4, !tbaa !156
  %84 = load float, ptr %32, align 4, !tbaa !156
  %85 = fmul float %30, %84
  %86 = call float @llvm.fmuladd.f32(float %83, float %4, float %85)
  br label %87

87:                                               ; preds = %78, %70
  %88 = phi float [ %76, %70 ], [ %82, %78 ]
  %89 = phi float [ %77, %70 ], [ %86, %78 ]
  %90 = getelementptr inbounds float, ptr %40, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !53
  %92 = fadd float %91, %5
  %93 = fmul float %92, %6
  %94 = load float, ptr %39, align 4, !tbaa !53
  %95 = call float @llvm.fmuladd.f32(float %93, float %88, float %94)
  store float %95, ptr %39, align 4, !tbaa !53
  %96 = load float, ptr %90, align 4, !tbaa !53
  %97 = fadd float %96, %5
  %98 = fmul float %97, %6
  %99 = getelementptr inbounds float, ptr %39, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !53
  %101 = call float @llvm.fmuladd.f32(float %98, float %89, float %100)
  store float %101, ptr %99, align 4, !tbaa !53
  %102 = getelementptr inbounds float, ptr %40, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !53
  %104 = getelementptr inbounds float, ptr %39, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !53
  %106 = call float @llvm.fmuladd.f32(float %6, float %103, float %105)
  store float %106, ptr %104, align 4, !tbaa !53
  br label %107

107:                                              ; preds = %57, %87
  %108 = add nuw nsw i32 %38, 1
  %109 = getelementptr inbounds float, ptr %40, i64 3
  %110 = getelementptr inbounds float, ptr %39, i64 3
  %111 = load i32, ptr %12, align 8, !tbaa !55
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %37, label %113, !llvm.loop !181

113:                                              ; preds = %107, %8
  %114 = phi ptr [ %11, %8 ], [ %110, %107 ]
  store ptr %114, ptr %7, align 8, !tbaa !41
  ret void
}

declare signext i16 @DAG_get_eval_flags_for_object(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @calc_curvepath(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nurb_check_valid_u(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_set_object_boundbox(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }

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
!34 = !{!35, !36, i64 32}
!35 = !{!"DispList", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20, !40, i64 24, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60, !36, i64 64}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!35, !36, i64 40}
!43 = !{!35, !36, i64 48}
!44 = !{!35, !36, i64 64}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!35, !39, i64 16}
!49 = distinct !{!49, !46, !47}
!50 = distinct !{!50, !46, !47}
!51 = distinct !{!51, !46, !47}
!52 = distinct !{!52, !46, !47}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!35, !40, i64 24}
!56 = !{!35, !40, i64 20}
!57 = !{!35, !39, i64 18}
!58 = distinct !{!58, !46, !47}
!59 = distinct !{!59, !46, !47}
!60 = distinct !{!60, !46, !47}
!61 = distinct !{!61, !46, !47}
!62 = !{!40, !40, i64 0}
!63 = distinct !{!63, !46, !47}
!64 = !{!65, !36, i64 0}
!65 = !{!"ListBase", !36, i64 0, !36, i64 8}
!66 = !{!35, !40, i64 56}
!67 = !{!35, !39, i64 28}
!68 = !{!69, !39, i64 48}
!69 = !{!"ScanFillContext", !65, i64 0, !65, i64 16, !65, i64 32, !39, i64 48, !36, i64 56}
!70 = distinct !{!70, !46, !47}
!71 = distinct !{!71, !46, !47}
!72 = !{!37, !37, i64 0}
!73 = distinct !{!73, !46, !47}
!74 = !{!69, !36, i64 32}
!75 = !{!76, !36, i64 16}
!76 = !{!"ScanFillFace", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!77 = !{!76, !36, i64 24}
!78 = !{!76, !36, i64 32}
!79 = !{!76, !36, i64 0}
!80 = distinct !{!80, !46, !47}
!81 = distinct !{!81, !46, !47}
!82 = !{!83, !39, i64 136}
!83 = !{!"Object", !84, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !85, i64 312, !36, i64 360, !65, i64 368, !65, i64 384, !65, i64 400, !65, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !65, i64 1056, !65, i64 1072, !65, i64 1088, !65, i64 1104, !54, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !65, i64 1176, !65, i64 1192, !65, i64 1208, !65, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !86, i64 1304, !86, i64 1312, !40, i64 1320, !40, i64 1324, !65, i64 1328, !65, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !65, i64 1400, !36, i64 1416}
!84 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!85 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!86 = !{!"long", !37, i64 0}
!87 = !{!83, !36, i64 1280}
!88 = !{!89, !36, i64 0}
!89 = !{!"CurveCache", !65, i64 0, !65, i64 16, !65, i64 32, !36, i64 48}
!90 = !{!83, !36, i64 264}
!91 = !{!83, !36, i64 1296}
!92 = distinct !{!92, !46, !47}
!93 = distinct !{!93, !46, !47}
!94 = distinct !{!94, !46, !47}
!95 = !{!83, !36, i64 296}
!96 = !{!97, !36, i64 152}
!97 = !{!"Curve", !84, i64 0, !36, i64 120, !36, i64 128, !65, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !54, i64 252, !54, i64 256, !40, i64 260, !39, i64 264, !39, i64 266, !40, i64 268, !54, i64 272, !54, i64 276, !54, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !54, i64 324, !54, i64 328, !54, i64 332, !54, i64 336, !54, i64 340, !54, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !98, i64 504, !54, i64 512, !54, i64 516, !54, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!98 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!99 = !{!100, !39, i64 20}
!100 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !40, i64 84}
!101 = !{!100, !39, i64 36}
!102 = !{!100, !39, i64 38}
!103 = !{!97, !39, i64 288}
!104 = !{!97, !39, i64 290}
!105 = !{!100, !40, i64 28}
!106 = !{!100, !39, i64 44}
!107 = !{!100, !40, i64 24}
!108 = !{!100, !39, i64 18}
!109 = !{!100, !40, i64 84}
!110 = !{!100, !39, i64 22}
!111 = !{!35, !39, i64 30}
!112 = !{!100, !39, i64 46}
!113 = distinct !{!113, !46, !47}
!114 = !{!97, !36, i64 376}
!115 = !{!116, !40, i64 16}
!116 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!117 = !{!116, !36, i64 96}
!118 = !{!119, !40, i64 68}
!119 = !{!"ModifierTypeInfo", !37, i64 0, !37, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!120 = !{!119, !36, i64 88}
!121 = !{!116, !36, i64 0}
!122 = !{!35, !40, i64 60}
!123 = distinct !{!123, !46, !47}
!124 = distinct !{!124, !46, !47}
!125 = !{!126, !36, i64 1680}
!126 = !{!"DerivedMesh", !127, i64 0, !127, i64 200, !127, i64 400, !127, i64 600, !127, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !36, i64 1032, !36, i64 1040, !40, i64 1048, !54, i64 1052, !40, i64 1056, !40, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!127 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!128 = !{!126, !36, i64 1104}
!129 = !{!126, !36, i64 1536}
!130 = distinct !{!130, !46, !47}
!131 = distinct !{!131, !46, !47}
!132 = distinct !{!132, !46, !47}
!133 = !{!97, !40, i64 268}
!134 = distinct !{!134, !46, !47}
!135 = !{!126, !36, i64 1120}
!136 = !{!126, !36, i64 1096}
!137 = !{!126, !40, i64 1056}
!138 = !{!126, !40, i64 1048}
!139 = !{!89, !36, i64 48}
!140 = !{!141, !36, i64 0}
!141 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !65, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!142 = !{!97, !54, i64 272}
!143 = !{!100, !39, i64 16}
!144 = !{!100, !36, i64 72}
!145 = !{!146, !37, i64 50}
!146 = !{!"BezTriple", !37, i64 0, !54, i64 36, !54, i64 40, !54, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !54, i64 56, !54, i64 60, !54, i64 64, !37, i64 68}
!147 = !{!146, !37, i64 49}
!148 = distinct !{!148, !46, !47}
!149 = distinct !{!149, !46, !47}
!150 = distinct !{!150, !46, !47}
!151 = !{!100, !36, i64 64}
!152 = distinct !{!152, !46, !47}
!153 = distinct !{!153, !46, !47}
!154 = !{!155, !54, i64 28}
!155 = !{!"BevPoint", !37, i64 0, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !37, i64 36, !37, i64 48, !37, i64 60, !39, i64 76, !39, i64 78}
!156 = !{!155, !54, i64 32}
!157 = distinct !{!157, !46, !47}
!158 = !{!97, !54, i64 520}
!159 = !{!97, !54, i64 516}
!160 = !{!97, !37, i64 524}
!161 = distinct !{!161, !46, !47}
!162 = distinct !{!162, !46, !47}
!163 = !{!155, !54, i64 24}
!164 = distinct !{!164, !46, !47}
!165 = !{!97, !37, i64 525}
!166 = !{!97, !36, i64 168}
!167 = !{!155, !54, i64 16}
!168 = !{!155, !39, i64 76}
!169 = !{!97, !36, i64 160}
!170 = distinct !{!170, !46, !47}
!171 = distinct !{!171, !46, !47}
!172 = distinct !{!172, !46, !47}
!173 = !{!126, !36, i64 1320}
!174 = distinct !{!174, !46, !47}
!175 = distinct !{!175, !46, !47}
!176 = !{!116, !40, i64 20}
!177 = distinct !{!177, !46, !47}
!178 = distinct !{!178, !46, !47}
!179 = distinct !{!179, !46, !47}
!180 = distinct !{!180, !46, !47}
!181 = distinct !{!181, !46, !47}
