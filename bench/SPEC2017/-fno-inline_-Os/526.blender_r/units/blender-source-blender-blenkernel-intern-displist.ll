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
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %8(ptr noundef nonnull %5) #17
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %14(ptr noundef nonnull %11) #17
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %20(ptr noundef nonnull %17) #17
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %26(ptr noundef nonnull %23) #17
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %28(ptr noundef nonnull %0) #17
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_displist_elem_free(ptr noundef nonnull %5) #18
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !45

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_displist_find_or_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !47
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %17, label %3, !llvm.loop !48

12:                                               ; preds = %3
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %14 = tail call ptr %13(i64 noundef 72, ptr noundef nonnull @.str) #17
  %15 = trunc i32 %1 to i16
  %16 = getelementptr inbounds %struct.DispList, ptr %14, i64 0, i32 2
  store i16 %15, ptr %16, align 8, !tbaa !47
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %14) #17
  br label %17

17:                                               ; preds = %7, %12
  %18 = phi ptr [ %14, %12 ], [ %5, %7 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_displist_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DispList, ptr %5, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !47
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %3, !llvm.loop !49

12:                                               ; preds = %3, %7
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_displist_has_faces(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DispList, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !47
  switch i16 %8, label %2 [
    i16 4, label %9
    i16 5, label %9
    i16 2, label %9
  ], !llvm.loop !50

9:                                                ; preds = %2, %6, %6, %6
  %10 = phi i8 [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @BKE_displist_free(ptr noundef %0) #18
  %3 = load ptr, ptr %1, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2, %31
  %6 = phi ptr [ %32, %31 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %8 = tail call ptr %7(ptr noundef nonnull %6) #17
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %8) #17
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call ptr %9(ptr noundef %11) #17
  %13 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 8
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = tail call ptr %14(ptr noundef %16) #17
  %18 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 9
  store ptr %17, ptr %18, align 8, !tbaa !42
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = tail call ptr %19(ptr noundef %21) #17
  %23 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 10
  store ptr %22, ptr %23, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %29 = tail call ptr %28(ptr noundef nonnull %25) #17
  %30 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 13
  store ptr %29, ptr %30, align 8, !tbaa !44
  br label %31

31:                                               ; preds = %27, %5
  %32 = load ptr, ptr %6, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %5, !llvm.loop !51

34:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_normals_add(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %114, label %10

10:                                               ; preds = %1, %111
  %11 = phi ptr [ %112, %111 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !47
  switch i16 %13, label %111 [
    i16 4, label %14
    i16 2, label %28
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %111

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %20 = call ptr %19(i64 noundef 12, ptr noundef nonnull @.str.1) #17
  store ptr %20, ptr %15, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds float, ptr %22, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !52
  %25 = fcmp olt float %24, 0.000000e+00
  %26 = getelementptr inbounds float, ptr %20, i64 2
  %27 = select i1 %25, float -1.000000e+00, float 1.000000e+00
  store float %27, ptr %26, align 4, !tbaa !52
  br label %111

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %111

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !54
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %36, 12
  %38 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !55
  %40 = sext i32 %39 to i64
  %41 = mul i64 %37, %40
  %42 = call ptr %33(i64 noundef %41, ptr noundef nonnull @.str.1) #17
  store ptr %42, ptr %29, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = load i32, ptr %38, align 4, !tbaa !55
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %32, %96
  %48 = phi i32 [ %97, %96 ], [ 0, %32 ]
  %49 = call zeroext i8 @BKE_displist_surfindex_get(ptr noundef nonnull %11, i32 noundef %48, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18, !range !56
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, ptr %38, align 4, !tbaa !55
  br label %100

53:                                               ; preds = %47
  %54 = load i32, ptr %3, align 4, !tbaa !57
  %55 = load i32, ptr %34, align 8, !tbaa !54
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = load i32, ptr %7, align 4, !tbaa !57
  %59 = mul nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, ptr %42, i64 %60
  %62 = getelementptr inbounds float, ptr %44, i64 %60
  %63 = load i32, ptr %6, align 4, !tbaa !57
  %64 = mul nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %42, i64 %65
  %67 = getelementptr inbounds float, ptr %44, i64 %65
  %68 = load i32, ptr %5, align 4, !tbaa !57
  %69 = mul nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, ptr %42, i64 %70
  %72 = getelementptr inbounds float, ptr %44, i64 %70
  %73 = load i32, ptr %4, align 4, !tbaa !57
  %74 = mul nsw i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, ptr %42, i64 %75
  %77 = getelementptr inbounds float, ptr %44, i64 %75
  br label %78

78:                                               ; preds = %57, %78
  %79 = phi ptr [ %80, %78 ], [ %61, %57 ]
  %80 = phi ptr [ %91, %78 ], [ %66, %57 ]
  %81 = phi ptr [ %82, %78 ], [ %71, %57 ]
  %82 = phi ptr [ %90, %78 ], [ %76, %57 ]
  %83 = phi ptr [ %84, %78 ], [ %62, %57 ]
  %84 = phi ptr [ %89, %78 ], [ %67, %57 ]
  %85 = phi ptr [ %86, %78 ], [ %72, %57 ]
  %86 = phi ptr [ %88, %78 ], [ %77, %57 ]
  %87 = call float @normal_quad_v3(ptr noundef nonnull %2, ptr noundef %86, ptr noundef %84, ptr noundef %83, ptr noundef %85) #17
  call fastcc void @add_v3_v3(ptr noundef %82, ptr noundef nonnull %2) #18
  call fastcc void @add_v3_v3(ptr noundef %81, ptr noundef nonnull %2) #18
  call fastcc void @add_v3_v3(ptr noundef %80, ptr noundef nonnull %2) #18
  call fastcc void @add_v3_v3(ptr noundef %79, ptr noundef nonnull %2) #18
  %88 = getelementptr inbounds float, ptr %86, i64 3
  %89 = getelementptr inbounds float, ptr %84, i64 3
  %90 = getelementptr inbounds float, ptr %82, i64 3
  %91 = getelementptr inbounds float, ptr %80, i64 3
  %92 = load i32, ptr %3, align 4, !tbaa !57
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %3, align 4, !tbaa !57
  %94 = load i32, ptr %34, align 8, !tbaa !54
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %78, label %96, !llvm.loop !58

96:                                               ; preds = %78, %53
  %97 = add nuw nsw i32 %48, 1
  %98 = load i32, ptr %38, align 4, !tbaa !55
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %47, label %100, !llvm.loop !59

100:                                              ; preds = %96, %51, %32
  %101 = phi i32 [ %45, %32 ], [ %52, %51 ], [ %98, %96 ]
  %102 = load i32, ptr %34, align 8, !tbaa !54
  %103 = mul nsw i32 %102, %101
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %100, %105
  %106 = phi i32 [ %108, %105 ], [ %103, %100 ]
  %107 = phi ptr [ %109, %105 ], [ %42, %100 ]
  %108 = add nsw i32 %106, -1
  call fastcc void @normalize_v3(ptr noundef %107) #18
  %109 = getelementptr inbounds float, ptr %107, i64 3
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %111, label %105, !llvm.loop !60

111:                                              ; preds = %105, %18, %100, %10, %28, %14
  %112 = load ptr, ptr %11, align 8, !tbaa !41
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %10, !llvm.loop !61

114:                                              ; preds = %111, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_displist_surfindex_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #4 {
  %8 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !62
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !55
  %15 = add nsw i32 %14, -1
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %57, label %17

17:                                               ; preds = %12, %7
  %18 = and i16 %9, 1
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !54
  %22 = mul nsw i32 %21, %1
  br i1 %19, label %27, label %23

23:                                               ; preds = %17
  store i32 %22, ptr %3, align 4, !tbaa !57
  %24 = load i32, ptr %20, align 8, !tbaa !54
  %25 = add i32 %22, -1
  %26 = add i32 %25, %24
  store i32 %26, ptr %4, align 4, !tbaa !57
  br label %29

27:                                               ; preds = %17
  store i32 %22, ptr %4, align 4, !tbaa !57
  %28 = add nsw i32 %22, 1
  store i32 %28, ptr %3, align 4, !tbaa !57
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %4, %27 ], [ %3, %23 ]
  %31 = phi ptr [ %6, %27 ], [ %5, %23 ]
  %32 = phi ptr [ %3, %27 ], [ %4, %23 ]
  %33 = phi ptr [ %5, %27 ], [ %6, %23 ]
  %34 = phi i32 [ 1, %27 ], [ 0, %23 ]
  %35 = load i32, ptr %30, align 4, !tbaa !57
  %36 = load i32, ptr %20, align 8, !tbaa !54
  %37 = add nsw i32 %36, %35
  store i32 %37, ptr %31, align 4, !tbaa !57
  %38 = load i32, ptr %32, align 4, !tbaa !57
  %39 = load i32, ptr %20, align 8, !tbaa !54
  %40 = add nsw i32 %39, %38
  store i32 %40, ptr %33, align 4, !tbaa !57
  store i32 %34, ptr %2, align 4, !tbaa !57
  br i1 %11, label %57, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !55
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = mul nsw i32 %48, %43
  %50 = load i32, ptr %5, align 4, !tbaa !57
  %51 = sub nsw i32 %50, %49
  store i32 %51, ptr %5, align 4, !tbaa !57
  %52 = load i32, ptr %47, align 8, !tbaa !54
  %53 = load i32, ptr %42, align 4, !tbaa !55
  %54 = mul nsw i32 %53, %52
  %55 = load i32, ptr %6, align 4, !tbaa !57
  %56 = sub nsw i32 %55, %54
  store i32 %56, ptr %6, align 4, !tbaa !57
  br label %57

57:                                               ; preds = %29, %41, %46, %12
  %58 = phi i8 [ 0, %12 ], [ 1, %46 ], [ 1, %41 ], [ 1, %29 ]
  ret i8 %58
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !63 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  %4 = load float, ptr %0, align 4, !tbaa !52
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !52
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !64 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_displist_count(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #7 {
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %4, %38
  %8 = phi ptr [ %48, %38 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !47
  switch i16 %10, label %38 [
    i16 2, label %11
    i16 4, label %21
    i16 5, label %26
    i16 0, label %32
    i16 1, label %32
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = mul nsw i32 %15, %13
  %17 = add nsw i32 %13, -1
  %18 = add nsw i32 %15, -1
  %19 = mul nsw i32 %18, %17
  %20 = shl nsw i32 %19, 1
  br label %38

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !55
  br label %38

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !55
  %31 = shl nsw i32 %30, 1
  br label %38

32:                                               ; preds = %7, %7
  %33 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !55
  %37 = mul nsw i32 %36, %34
  br label %38

38:                                               ; preds = %7, %32, %26, %21, %11
  %39 = phi i32 [ 0, %7 ], [ %37, %32 ], [ %28, %26 ], [ %23, %21 ], [ %16, %11 ]
  %40 = phi i32 [ 0, %7 ], [ 0, %32 ], [ %30, %26 ], [ %25, %21 ], [ %19, %11 ]
  %41 = phi i32 [ 0, %7 ], [ 0, %32 ], [ %31, %26 ], [ %25, %21 ], [ %20, %11 ]
  %42 = load i32, ptr %1, align 4, !tbaa !57
  %43 = add nsw i32 %42, %39
  store i32 %43, ptr %1, align 4, !tbaa !57
  %44 = load i32, ptr %2, align 4, !tbaa !57
  %45 = add nsw i32 %44, %40
  store i32 %45, ptr %2, align 4, !tbaa !57
  %46 = load i32, ptr %3, align 4, !tbaa !57
  %47 = add nsw i32 %46, %41
  store i32 %47, ptr %3, align 4, !tbaa !57
  %48 = load ptr, ptr %8, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %7, !llvm.loop !65

50:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_fill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ScanFillContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %6 = icmp eq ptr %0, null
  br i1 %6, label %154, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %0) #18, !range !56
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %154

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BKE_displist_fill) #17
  %12 = getelementptr inbounds %struct.ScanFillContext, ptr %5, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ScanFillContext, ptr %5, i64 0, i32 2
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %10, %144
  %16 = phi i32 [ 0, %10 ], [ %151, %144 ]
  %17 = phi i32 [ 0, %10 ], [ %149, %144 ]
  call void @BLI_scanfill_begin_arena(ptr noundef nonnull %5, ptr noundef %11) #17
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %144, label %20

20:                                               ; preds = %15, %73
  %21 = phi ptr [ %77, %73 ], [ %18, %15 ]
  %22 = phi i32 [ %76, %73 ], [ 0, %15 ]
  %23 = phi i32 [ %75, %73 ], [ 0, %15 ]
  %24 = phi i32 [ %74, %73 ], [ 0, %15 ]
  %25 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !47
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = icmp slt i32 %16, %30
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %16, %30
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 6
  %36 = load i16, ptr %35, align 4, !tbaa !67
  %37 = sext i16 %36 to i32
  %38 = icmp eq i32 %17, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load i16, ptr %12, align 8, !tbaa !68
  %41 = add i16 %40, 1
  store i16 %41, ptr %12, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !54
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %45

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
  %54 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %5, ptr noundef %52) #17
  %55 = icmp eq ptr %50, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %5, ptr noundef nonnull %50, ptr noundef %54) #17
  br label %58

58:                                               ; preds = %48, %56
  %59 = phi ptr [ %51, %56 ], [ %54, %48 ]
  %60 = getelementptr inbounds float, ptr %52, i64 3
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %62, label %48, !llvm.loop !71

62:                                               ; preds = %58
  %63 = add i32 %22, %43
  %64 = icmp ne ptr %54, null
  %65 = icmp ne ptr %59, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %5, ptr noundef nonnull %54, ptr noundef nonnull %59) #17
  br label %73

69:                                               ; preds = %34
  %70 = icmp slt i32 %17, %37
  %71 = select i1 %70, i32 1, i32 %24
  %72 = select i1 %70, i32 1, i32 %23
  br label %73

73:                                               ; preds = %39, %69, %28, %67, %62, %32, %20
  %74 = phi i32 [ %24, %67 ], [ %24, %62 ], [ %24, %32 ], [ %24, %20 ], [ 1, %28 ], [ %71, %69 ], [ %24, %39 ]
  %75 = phi i32 [ %23, %67 ], [ %23, %62 ], [ %23, %32 ], [ %23, %20 ], [ %23, %28 ], [ %72, %69 ], [ %23, %39 ]
  %76 = phi i32 [ %63, %67 ], [ %63, %62 ], [ %22, %32 ], [ %22, %20 ], [ %22, %28 ], [ %22, %69 ], [ %22, %39 ]
  %77 = load ptr, ptr %21, align 8, !tbaa !41
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %20, !llvm.loop !72

79:                                               ; preds = %73
  %80 = icmp eq i32 %76, 0
  br i1 %80, label %144, label %81

81:                                               ; preds = %79
  %82 = call i32 @BLI_scanfill_calc_ex(ptr noundef nonnull %5, i32 noundef 14, ptr noundef %2) #17
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %144, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %86 = call ptr %85(i64 noundef 72, ptr noundef nonnull @.str.2) #17
  %87 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 2
  store i16 4, ptr %87, align 8, !tbaa !47
  %88 = trunc i32 %17 to i16
  %89 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 6
  store i16 %88, ptr %89, align 4, !tbaa !67
  %90 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 5
  store i32 %76, ptr %90, align 8, !tbaa !54
  %91 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 4
  store i32 %82, ptr %91, align 4, !tbaa !55
  %92 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %93 = mul nsw i32 %82, 3
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  %96 = call ptr %92(i64 noundef %95, ptr noundef nonnull @.str.3) #17
  %97 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 10
  store ptr %96, ptr %97, align 8, !tbaa !43
  %98 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %99 = mul nsw i32 %76, 3
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 2
  %102 = call ptr %98(i64 noundef %101, ptr noundef nonnull @.str.4) #17
  %103 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 8
  store ptr %102, ptr %103, align 8, !tbaa !34
  %104 = load ptr, ptr %5, align 8, !tbaa !41
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %84, %106
  %107 = phi ptr [ %114, %106 ], [ %104, %84 ]
  %108 = phi i32 [ %113, %106 ], [ 0, %84 ]
  %109 = phi ptr [ %111, %106 ], [ %102, %84 ]
  %110 = getelementptr inbounds %struct.ScanFillVert, ptr %107, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %109, ptr noundef nonnull %110) #18
  %111 = getelementptr inbounds float, ptr %109, i64 3
  %112 = getelementptr inbounds %struct.ScanFillVert, ptr %107, i64 0, i32 2
  store i32 %108, ptr %112, align 8, !tbaa !73
  %113 = add nuw nsw i32 %108, 1
  %114 = load ptr, ptr %107, align 8, !tbaa !41
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %106, !llvm.loop !74

116:                                              ; preds = %106, %84
  %117 = load ptr, ptr %13, align 8, !tbaa !75
  %118 = icmp eq ptr %117, null
  br i1 %118, label %143, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %97, align 8, !tbaa !43
  br label %121

121:                                              ; preds = %119, %139
  %122 = phi ptr [ %140, %139 ], [ %120, %119 ]
  %123 = phi ptr [ %141, %139 ], [ %117, %119 ]
  %124 = getelementptr inbounds %struct.ScanFillFace, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !76
  %126 = getelementptr inbounds %struct.ScanFillVert, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !73
  store i32 %127, ptr %122, align 4, !tbaa !57
  %128 = getelementptr inbounds %struct.ScanFillFace, ptr %123, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !78
  %130 = getelementptr inbounds %struct.ScanFillVert, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !73
  %132 = getelementptr inbounds i32, ptr %122, i64 1
  store i32 %131, ptr %132, align 4, !tbaa !57
  %133 = getelementptr inbounds %struct.ScanFillFace, ptr %123, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !79
  %135 = getelementptr inbounds %struct.ScanFillVert, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !73
  %137 = getelementptr inbounds i32, ptr %122, i64 2
  store i32 %136, ptr %137, align 4, !tbaa !57
  br i1 %14, label %139, label %138

138:                                              ; preds = %121
  store i32 %136, ptr %122, align 4, !tbaa !57
  store i32 %127, ptr %137, align 4, !tbaa !57
  br label %139

139:                                              ; preds = %138, %121
  %140 = getelementptr inbounds i32, ptr %122, i64 3
  %141 = load ptr, ptr %123, align 8, !tbaa !80
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %121, !llvm.loop !81

143:                                              ; preds = %139, %116
  call void @BLI_addhead(ptr noundef %1, ptr noundef %86) #17
  br label %144

144:                                              ; preds = %15, %143, %81, %79
  %145 = phi i32 [ %75, %143 ], [ %75, %81 ], [ %75, %79 ], [ 0, %15 ]
  %146 = phi i32 [ %74, %143 ], [ %74, %81 ], [ %74, %79 ], [ 0, %15 ]
  call void @BLI_scanfill_end_arena(ptr noundef nonnull %5, ptr noundef %11) #17
  %147 = icmp eq i32 %145, 0
  %148 = add nsw i32 %17, 1
  %149 = select i1 %147, i32 0, i32 %148
  %150 = zext i1 %147 to i32
  %151 = add nuw nsw i32 %16, %150
  %152 = icmp eq i32 %146, 0
  br i1 %152, label %153, label %15, !llvm.loop !82

153:                                              ; preds = %144
  call void @BLI_memarena_free(ptr noundef %11) #17
  br label %154

154:                                              ; preds = %7, %4, %153
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !83 {
  %2 = load ptr, ptr %0, align 8, !tbaa !84
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_scanfill_begin_arena(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_scanfill_calc_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !85 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_scanfill_end_arena(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_displist_calc_taper(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sitofp i32 %2 to float
  %6 = add nsw i32 %3, -1
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %5, %7
  %9 = tail call fastcc float @displist_calc_taper(ptr noundef %0, ptr noundef %1, float noundef %8) #18
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @displist_calc_taper(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !86 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %82, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !87
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %82

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !93
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9, %13
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  %17 = load ptr, ptr %10, align 8, !tbaa !92
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = icmp eq ptr %18, null
  br i1 %19, label %82, label %20

20:                                               ; preds = %13, %16
  %21 = phi ptr [ %18, %16 ], [ %14, %13 ]
  %22 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = load float, ptr %23, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !54
  %27 = mul i32 %26, 3
  %28 = add i32 %27, -3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %23, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !52
  %32 = fsub float %31, %24
  %33 = fcmp ule float %32, 0.000000e+00
  br i1 %33, label %82, label %34

34:                                               ; preds = %20
  %35 = icmp sgt i32 %26, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %34, %74
  %37 = phi i32 [ %75, %74 ], [ 0, %34 ]
  %38 = phi ptr [ %76, %74 ], [ %23, %34 ]
  %39 = load float, ptr %38, align 4, !tbaa !52
  %40 = fsub float %39, %24
  %41 = fdiv float %40, %32
  %42 = fcmp ult float %41, %2
  br i1 %42, label %74, label %43

43:                                               ; preds = %36
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds float, ptr %38, i64 -3
  %47 = load float, ptr %46, align 4, !tbaa !52
  %48 = fsub float %47, %24
  %49 = fdiv float %48, %32
  %50 = fcmp oeq float %49, %41
  br i1 %50, label %71, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds float, ptr %38, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !52
  %54 = insertelement <2 x float> poison, float %49, i64 0
  %55 = insertelement <2 x float> %54, float %2, i64 1
  %56 = insertelement <2 x float> poison, float %2, i64 0
  %57 = insertelement <2 x float> %56, float %41, i64 1
  %58 = fsub <2 x float> %55, %57
  %59 = fsub float %49, %41
  %60 = getelementptr inbounds float, ptr %38, i64 -2
  %61 = load float, ptr %60, align 4, !tbaa !52
  %62 = insertelement <2 x float> poison, float %53, i64 0
  %63 = insertelement <2 x float> %62, float %61, i64 1
  %64 = fmul <2 x float> %58, %63
  %65 = insertelement <2 x float> poison, float %59, i64 0
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = fdiv <2 x float> %64, %66
  %68 = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %69 = fadd <2 x float> %67, %68
  %70 = extractelement <2 x float> %69, i64 0
  br label %82

71:                                               ; preds = %45, %43
  %72 = getelementptr inbounds float, ptr %38, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !52
  br label %82

74:                                               ; preds = %36
  %75 = add nuw nsw i32 %37, 1
  %76 = getelementptr inbounds float, ptr %38, i64 3
  %77 = icmp eq i32 %75, %26
  br i1 %77, label %78, label %36, !llvm.loop !95

78:                                               ; preds = %74, %34
  %79 = phi ptr [ %23, %34 ], [ %76, %74 ]
  %80 = getelementptr inbounds float, ptr %79, i64 -2
  %81 = load float, ptr %80, align 4, !tbaa !52
  br label %82

82:                                               ; preds = %16, %20, %71, %78, %51, %3, %5
  %83 = phi float [ 1.000000e+00, %5 ], [ 1.000000e+00, %3 ], [ %73, %71 ], [ %70, %51 ], [ %81, %78 ], [ 1.000000e+00, %20 ], [ 1.000000e+00, %16 ]
  ret float %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_make_mball(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !87
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_mball_basis_find(ptr noundef %1, ptr noundef nonnull %2) #17
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void @BKE_displist_free(ptr noundef nonnull %14) #18
  %17 = load ptr, ptr %13, align 8, !tbaa !92
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %20 = tail call ptr %19(i64 noundef 56, ptr noundef nonnull @.str.5) #17
  store ptr %20, ptr %13, align 8, !tbaa !92
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %17, %16 ]
  tail call void @BKE_mball_polygonize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %22) #17
  tail call void @BKE_mball_texspace_calc(ptr noundef nonnull %2) #17
  %23 = load ptr, ptr %13, align 8, !tbaa !92
  %24 = tail call zeroext i8 @object_deform_mball(ptr noundef nonnull %2, ptr noundef %23) #17
  tail call fastcc void @boundbox_displist_object(ptr noundef nonnull %2) #18
  br label %25

25:                                               ; preds = %3, %5, %21, %9
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mball_polygonize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mball_texspace_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @object_deform_mball(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @boundbox_displist_object(ptr noundef %0) unnamed_addr #0 !PGOFuncName !96 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !87
  %6 = add i16 %5, -2
  %7 = icmp ult i16 %6, 3
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %14 = tail call ptr %13(i64 noundef 104, ptr noundef nonnull @.str.21) #17
  store ptr %14, ptr %9, align 8, !tbaa !97
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @DM_set_object_boundbox(ptr noundef nonnull %0, ptr noundef nonnull %17) #17
  br label %26

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %21 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %21, align 8, !tbaa !52
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %2, align 8, !tbaa !52
  %22 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %22, align 8, !tbaa !52
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %3, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  call void @BKE_displist_minmax(ptr noundef %24, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %25 = load ptr, ptr %9, align 8, !tbaa !97
  call void @BKE_boundbox_init_from_minmax(ptr noundef %25, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #19
  br label %26

26:                                               ; preds = %1, %19, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_make_mball_forRender(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @BKE_mball_polygonize(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  tail call void @BKE_mball_texspace_calc(ptr noundef %2) #17
  %5 = tail call zeroext i8 @object_deform_mball(ptr noundef %2, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_make_surf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef nonnull %10) #17
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %8, ptr noundef %17) #17
  br label %20

18:                                               ; preds = %12, %7
  %19 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 3
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %8, ptr noundef nonnull %19) #17
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp eq i8 %5, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call fastcc void @curve_calc_modifiers_pre(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i8 noundef zeroext %4, i8 noundef zeroext %6) #18
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
  %34 = load i16, ptr %33, align 4, !tbaa !103
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %143

36:                                               ; preds = %32, %30
  %37 = call zeroext i8 @BKE_nurb_check_valid_uv(ptr noundef nonnull %31) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %143, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 9
  %41 = load i16, ptr %40, align 4, !tbaa !105
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 10
  %44 = load i16, ptr %43, align 2, !tbaa !106
  br i1 %27, label %53, label %45

45:                                               ; preds = %39
  %46 = load i16, ptr %28, align 8, !tbaa !107
  %47 = icmp eq i16 %46, 0
  %48 = sext i16 %46 to i32
  %49 = select i1 %47, i32 %42, i32 %48
  %50 = load i16, ptr %29, align 2, !tbaa !108
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i16 %44, i16 %50
  br label %53

53:                                               ; preds = %45, %39
  %54 = phi i32 [ %42, %39 ], [ %49, %45 ]
  %55 = phi i16 [ %44, %39 ], [ %52, %45 ]
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !109
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %94

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 13
  %62 = load i16, ptr %61, align 4, !tbaa !110
  %63 = and i16 %62, 1
  %64 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !111
  %66 = add nsw i16 %63, -1
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = mul nsw i32 %68, %54
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %71 = call ptr %70(i64 noundef 72, ptr noundef nonnull @.str.6) #17
  %72 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %73 = sext i32 %69 to i64
  %74 = mul nsw i64 %73, 12
  %75 = call ptr %72(i64 noundef %74, ptr noundef nonnull @.str.4) #17
  %76 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 8
  store ptr %75, ptr %76, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %71) #17
  %77 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 4
  store i32 1, ptr %77, align 4, !tbaa !55
  %78 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 5
  store i32 %69, ptr %78, align 8, !tbaa !54
  %79 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 3
  %80 = load i16, ptr %79, align 2, !tbaa !112
  %81 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 6
  store i16 %80, ptr %81, align 4, !tbaa !67
  %82 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 21
  %83 = load i32, ptr %82, align 4, !tbaa !113
  %84 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 11
  store i32 %83, ptr %84, align 8, !tbaa !66
  %85 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !114
  %87 = and i16 %86, -9
  %88 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 7
  store i16 %87, ptr %88, align 2, !tbaa !115
  %89 = load ptr, ptr %76, align 8, !tbaa !34
  %90 = load i16, ptr %61, align 4, !tbaa !110
  %91 = and i16 %90, 1
  %92 = xor i16 %91, 1
  %93 = getelementptr inbounds %struct.DispList, ptr %71, i64 0, i32 2
  store i16 %92, ptr %93, align 8
  call void @BKE_nurb_makeCurve(ptr noundef nonnull %31, ptr noundef %89, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %54, i32 noundef 12) #17
  br label %143

94:                                               ; preds = %53
  %95 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !111
  %97 = mul nsw i32 %54, %56
  %98 = mul i32 %97, %58
  %99 = mul i32 %98, %96
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %101 = call ptr %100(i64 noundef 72, ptr noundef nonnull @.str.6) #17
  %102 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %103 = sext i32 %99 to i64
  %104 = mul nsw i64 %103, 12
  %105 = call ptr %102(i64 noundef %104, ptr noundef nonnull @.str.4) #17
  %106 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 8
  store ptr %105, ptr %106, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %101) #17
  %107 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !112
  %109 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 6
  store i16 %108, ptr %109, align 4, !tbaa !67
  %110 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 21
  %111 = load i32, ptr %110, align 4, !tbaa !113
  %112 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 11
  store i32 %111, ptr %112, align 8, !tbaa !66
  %113 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !114
  %115 = and i16 %114, -9
  %116 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 7
  store i16 %115, ptr %116, align 2, !tbaa !115
  %117 = load ptr, ptr %106, align 8, !tbaa !34
  %118 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 2
  store i16 2, ptr %118, align 8, !tbaa !47
  %119 = load i32, ptr %95, align 8, !tbaa !111
  %120 = mul nsw i32 %119, %54
  %121 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 4
  store i32 %120, ptr %121, align 4, !tbaa !55
  %122 = load i32, ptr %57, align 4, !tbaa !109
  %123 = mul nsw i32 %122, %56
  %124 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 5
  store i32 %123, ptr %124, align 8, !tbaa !54
  %125 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 14
  %126 = load i16, ptr %125, align 2, !tbaa !116
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %94
  %130 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 3
  %131 = load i16, ptr %130, align 2, !tbaa !62
  %132 = or i16 %131, 1
  store i16 %132, ptr %130, align 2, !tbaa !62
  br label %133

133:                                              ; preds = %129, %94
  %134 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 13
  %135 = load i16, ptr %134, align 4, !tbaa !110
  %136 = and i16 %135, 1
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 3
  %140 = load i16, ptr %139, align 2, !tbaa !62
  %141 = or i16 %140, 2
  store i16 %141, ptr %139, align 2, !tbaa !62
  br label %142

142:                                              ; preds = %138, %133
  call void @BKE_nurb_makeFaces(ptr noundef nonnull %31, ptr noundef %117, i32 noundef 0, i32 noundef %54, i32 noundef %56) #17
  call fastcc void @displist_surf_indices(ptr noundef nonnull %101) #18
  br label %143

143:                                              ; preds = %60, %142, %32, %36
  %144 = load ptr, ptr %31, align 8, !tbaa !41
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %30, !llvm.loop !117

146:                                              ; preds = %143, %23
  br i1 %21, label %147, label %151

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %149 = load ptr, ptr %148, align 8, !tbaa !92
  %150 = getelementptr inbounds %struct.CurveCache, ptr %149, i64 0, i32 2
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %150, ptr noundef nonnull %8) #17
  call fastcc void @curve_calc_modifiers_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %6) #18
  br label %151

151:                                              ; preds = %147, %146
  call void @BKE_nurbList_free(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @BKE_nurbList_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_calc_modifiers_pre(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !118 {
  %6 = alloca %struct.VirtualModifierData, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #19
  %8 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %6) #17
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !57
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %12, %16, %5
  %22 = phi i8 [ 0, %5 ], [ 1, %12 ], [ %20, %16 ]
  call void @modifiers_clearErrors(ptr noundef nonnull %1) #17
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 0, i32 2
  %25 = icmp ne i8 %4, 0
  %26 = zext i1 %25 to i32
  %27 = or disjoint i32 %24, %26
  %28 = select i1 %25, i32 2, i32 1
  %29 = call fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %4, i8 noundef zeroext %22) #18
  %30 = or disjoint i32 %28, 4
  %31 = select i1 %23, i32 %28, i32 %30
  %32 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call ptr @BKE_curve_nurbs_keyVertexCos_get(ptr noundef %2, ptr noundef nonnull %36) #17
  br label %40

40:                                               ; preds = %35, %38, %21
  %41 = phi ptr [ %39, %38 ], [ null, %35 ], [ null, %21 ]
  %42 = phi ptr [ %36, %38 ], [ null, %35 ], [ null, %21 ]
  %43 = icmp ne ptr %29, null
  %44 = icmp ne ptr %8, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %73

46:                                               ; preds = %40, %69
  %47 = phi ptr [ %70, %69 ], [ %41, %40 ]
  %48 = phi ptr [ %71, %69 ], [ %8, %40 ]
  %49 = getelementptr inbounds %struct.ModifierData, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !120
  %51 = call ptr @modifierType_getInfo(i32 noundef %50) #17
  %52 = getelementptr inbounds %struct.ModifierData, ptr %48, i64 0, i32 7
  store ptr %0, ptr %52, align 8, !tbaa !122
  %53 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %48, i32 noundef %31) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %51, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !123
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = icmp eq ptr %47, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = call ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef %2, ptr noundef nonnull %7) #17
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi ptr [ %47, %59 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %51, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !125
  %67 = load i32, ptr %7, align 4, !tbaa !57
  call void %66(ptr noundef nonnull %48, ptr noundef %1, ptr noundef null, ptr noundef %64, i32 noundef %67, i32 noundef %27) #17
  %68 = icmp eq ptr %48, %29
  br i1 %68, label %73, label %69

69:                                               ; preds = %55, %46, %63
  %70 = phi ptr [ %64, %63 ], [ %47, %46 ], [ %47, %55 ]
  %71 = load ptr, ptr %48, align 8, !tbaa !126
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %46

73:                                               ; preds = %63, %69, %40
  %74 = phi ptr [ %41, %40 ], [ %70, %69 ], [ %64, %63 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  call void @BK_curve_nurbs_vertexCos_apply(ptr noundef %2, ptr noundef nonnull %74) #17
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %77(ptr noundef nonnull %74) #17
  br label %78

78:                                               ; preds = %76, %73
  %79 = icmp eq ptr %42, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  call void @BKE_curve_nurbs_keyVertexTilts_apply(ptr noundef %2, ptr noundef nonnull %42) #17
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %81(ptr noundef nonnull %42) #17
  br label %82

82:                                               ; preds = %78, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_nurb_check_valid_uv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_makeCurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_makeFaces(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @displist_surf_indices(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !127 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 12
  store i32 0, ptr %7, align 4, !tbaa !128
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !55
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 4
  %14 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %13, %17
  %19 = tail call ptr %8(i64 noundef %18, ptr noundef nonnull @.str.9) #17
  %20 = getelementptr inbounds %struct.DispList, ptr %0, i64 0, i32 10
  store ptr %19, ptr %20, align 8, !tbaa !43
  %21 = load i32, ptr %9, align 4, !tbaa !55
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %1, %53
  %24 = phi ptr [ %54, %53 ], [ %19, %1 ]
  %25 = phi i32 [ %55, %53 ], [ 0, %1 ]
  %26 = call zeroext i8 @BKE_displist_surfindex_get(ptr noundef nonnull %0, i32 noundef %25, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18, !range !56
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %2, align 4, !tbaa !57
  %30 = load i32, ptr %14, align 8, !tbaa !54
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, ptr %3, align 4, !tbaa !57
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %46, %34 ], [ %33, %32 ]
  %36 = phi ptr [ %50, %34 ], [ %24, %32 ]
  store i32 %35, ptr %36, align 4, !tbaa !57
  %37 = load i32, ptr %4, align 4, !tbaa !57
  %38 = getelementptr inbounds i32, ptr %36, i64 1
  store i32 %37, ptr %38, align 4, !tbaa !57
  %39 = load i32, ptr %6, align 4, !tbaa !57
  %40 = getelementptr inbounds i32, ptr %36, i64 2
  store i32 %39, ptr %40, align 4, !tbaa !57
  %41 = load i32, ptr %5, align 4, !tbaa !57
  %42 = getelementptr inbounds i32, ptr %36, i64 3
  store i32 %41, ptr %42, align 4, !tbaa !57
  %43 = load i32, ptr %7, align 4, !tbaa !128
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %7, align 4, !tbaa !128
  %45 = load i32, ptr %3, align 4, !tbaa !57
  store i32 %45, ptr %4, align 4, !tbaa !57
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %3, align 4, !tbaa !57
  store i32 %41, ptr %6, align 4, !tbaa !57
  %47 = add nsw i32 %41, 1
  store i32 %47, ptr %5, align 4, !tbaa !57
  %48 = load i32, ptr %2, align 4, !tbaa !57
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %2, align 4, !tbaa !57
  %50 = getelementptr inbounds i32, ptr %36, i64 4
  %51 = load i32, ptr %14, align 8, !tbaa !54
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %34, label %53, !llvm.loop !129

53:                                               ; preds = %34, %28
  %54 = phi ptr [ %24, %28 ], [ %50, %34 ]
  %55 = add nuw nsw i32 %25, 1
  %56 = load i32, ptr %9, align 4, !tbaa !55
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %23, label %58, !llvm.loop !130

58:                                               ; preds = %53, %23, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_calc_modifiers_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !131 {
  %7 = alloca %struct.VirtualModifierData, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %7) #19
  %9 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %7) #17
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !tbaa !57
  %12 = icmp eq i8 %4, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 53
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = freeze ptr %19
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %13, %17, %6
  %23 = phi i1 [ false, %6 ], [ true, %13 ], [ %21, %17 ]
  %24 = zext i1 %23 to i8
  %25 = icmp ne i8 %5, 0
  %26 = zext i1 %25 to i32
  %27 = select i1 %25, i32 2, i32 1
  %28 = call fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %5, i8 noundef zeroext %24) #18
  %29 = or disjoint i32 %27, 4
  %30 = select i1 %23, i32 %29, i32 %27
  %31 = icmp eq ptr %28, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = load ptr, ptr %28, align 8, !tbaa !126
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi ptr [ %33, %32 ], [ %9, %22 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 8, !tbaa !41
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %38, i64 0, i32 95
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  call void %42(ptr noundef nonnull %38) #17
  br label %43

43:                                               ; preds = %40, %37
  %44 = icmp eq ptr %35, null
  br i1 %44, label %150, label %47

45:                                               ; preds = %34
  %46 = icmp eq ptr %35, null
  br i1 %46, label %181, label %47

47:                                               ; preds = %45, %43
  %48 = or disjoint i32 %26, 2
  %49 = select i1 %23, i32 %48, i32 %26
  %50 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %51 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 23
  %52 = select i1 %12, i32 %48, i32 %26
  br label %53

53:                                               ; preds = %47, %132
  %54 = phi ptr [ %35, %47 ], [ %135, %132 ]
  %55 = phi ptr [ null, %47 ], [ %134, %132 ]
  %56 = phi ptr [ null, %47 ], [ %133, %132 ]
  %57 = getelementptr inbounds %struct.ModifierData, ptr %54, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !120
  %59 = call ptr @modifierType_getInfo(i32 noundef %58) #17
  %60 = getelementptr inbounds %struct.ModifierData, ptr %54, i64 0, i32 7
  store ptr %0, ptr %60, align 8, !tbaa !122
  %61 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %54, i32 noundef %30) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %132, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %59, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !123
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = icmp ne i32 %65, 4
  %69 = icmp ne ptr %55, null
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %99, label %90

71:                                               ; preds = %63
  %72 = icmp eq ptr %55, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %71
  %74 = icmp eq ptr %56, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 23
  %77 = load ptr, ptr %76, align 8, !tbaa !135
  %78 = call i32 %77(ptr noundef nonnull %55) #17
  store i32 %78, ptr %8, align 4, !tbaa !57
  %79 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %80 = sext i32 %78 to i64
  %81 = mul nsw i64 %80, 12
  %82 = call ptr %79(i64 noundef %81, ptr noundef nonnull @.str.10) #17
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 77
  %84 = load ptr, ptr %83, align 8, !tbaa !136
  call void %84(ptr noundef nonnull %55, ptr noundef %82) #17
  br label %85

85:                                               ; preds = %75, %73
  %86 = phi ptr [ %56, %73 ], [ %82, %75 ]
  %87 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %59, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !125
  %89 = load i32, ptr %8, align 4, !tbaa !57
  call void %88(ptr noundef nonnull %54, ptr noundef %1, ptr noundef nonnull %55, ptr noundef %86, i32 noundef %89, i32 noundef %49) #17
  br label %132

90:                                               ; preds = %67, %71
  %91 = icmp eq ptr %56, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = call fastcc ptr @displist_get_allverts(ptr noundef %2, ptr noundef nonnull %8) #18
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %56, %90 ], [ %93, %92 ]
  %96 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %59, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !125
  %98 = load i32, ptr %8, align 4, !tbaa !57
  call void %97(ptr noundef nonnull %54, ptr noundef %1, ptr noundef null, ptr noundef %95, i32 noundef %98, i32 noundef %49) #17
  br label %132

99:                                               ; preds = %67
  br i1 %36, label %137, label %100

100:                                              ; preds = %99
  %101 = icmp eq ptr %56, null
  br i1 %69, label %102, label %107

102:                                              ; preds = %100
  br i1 %101, label %121, label %103

103:                                              ; preds = %102
  %104 = call ptr @CDDM_copy(ptr noundef nonnull %55) #17
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 95
  %106 = load ptr, ptr %105, align 8, !tbaa !132
  call void %106(ptr noundef nonnull %55) #17
  call void @CDDM_apply_vert_coords(ptr noundef %104, ptr noundef nonnull %56) #17
  br label %118

107:                                              ; preds = %100
  br i1 %101, label %109, label %108

108:                                              ; preds = %107
  call fastcc void @displist_apply_allverts(ptr noundef %2, ptr noundef nonnull %56) #18
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i16, ptr %50, align 8, !tbaa !87
  switch i16 %110, label %116 [
    i16 2, label %111
    i16 4, label %111
  ]

111:                                              ; preds = %109, %109
  %112 = load i32, ptr %51, align 4, !tbaa !137
  %113 = and i32 %112, 8192
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  call fastcc void @curve_to_filledpoly(ptr noundef nonnull %11, ptr noundef %2) #18
  br label %116

116:                                              ; preds = %111, %115, %109
  %117 = call ptr @CDDM_from_curve_displist(ptr noundef nonnull %1, ptr noundef %2) #17
  br i1 %101, label %121, label %118

118:                                              ; preds = %103, %116
  %119 = phi ptr [ %104, %103 ], [ %117, %116 ]
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %120(ptr noundef nonnull %56) #17
  br label %121

121:                                              ; preds = %102, %118, %116
  %122 = phi ptr [ %119, %118 ], [ %117, %116 ], [ %55, %102 ]
  %123 = call ptr @modwrap_applyModifier(ptr noundef nonnull %54, ptr noundef %1, ptr noundef %122, i32 noundef %52) #17
  %124 = icmp eq ptr %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = icmp eq ptr %122, null
  %127 = icmp eq ptr %122, %123
  %128 = or i1 %126, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.DerivedMesh, ptr %122, i64 0, i32 95
  %131 = load ptr, ptr %130, align 8, !tbaa !132
  call void %131(ptr noundef nonnull %122) #17
  br label %132

132:                                              ; preds = %53, %125, %129, %121, %85, %94
  %133 = phi ptr [ null, %125 ], [ null, %129 ], [ null, %121 ], [ %95, %94 ], [ %86, %85 ], [ %56, %53 ]
  %134 = phi ptr [ %123, %125 ], [ %123, %129 ], [ %122, %121 ], [ null, %94 ], [ %55, %85 ], [ %55, %53 ]
  %135 = load ptr, ptr %54, align 8, !tbaa !126
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %53, !llvm.loop !138

137:                                              ; preds = %132, %99
  %138 = phi ptr [ %133, %132 ], [ %56, %99 ]
  %139 = phi ptr [ %134, %132 ], [ %55, %99 ]
  %140 = icmp eq ptr %138, null
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = icmp eq ptr %139, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %141
  %144 = call ptr @CDDM_copy(ptr noundef nonnull %139) #17
  %145 = getelementptr inbounds %struct.DerivedMesh, ptr %139, i64 0, i32 95
  %146 = load ptr, ptr %145, align 8, !tbaa !132
  call void %146(ptr noundef nonnull %139) #17
  call void @CDDM_apply_vert_coords(ptr noundef %144, ptr noundef nonnull %138) #17
  call void @CDDM_calc_normals_mapping(ptr noundef %144) #17
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %147(ptr noundef nonnull %138) #17
  br label %148

148:                                              ; preds = %143, %137
  %149 = phi ptr [ %144, %143 ], [ %139, %137 ]
  br i1 %36, label %181, label %153

150:                                              ; preds = %43
  br i1 %36, label %181, label %179

151:                                              ; preds = %141
  call fastcc void @displist_apply_allverts(ptr noundef %2, ptr noundef nonnull %138) #18
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %152(ptr noundef nonnull %138) #17
  br i1 %36, label %181, label %179

153:                                              ; preds = %148
  %154 = icmp eq ptr %149, null
  br i1 %154, label %179, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.DerivedMesh, ptr %149, i64 0, i32 25
  %157 = load ptr, ptr %156, align 8, !tbaa !139
  %158 = call i32 %157(ptr noundef nonnull %149) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.DerivedMesh, ptr %149, i64 0, i32 22
  %162 = load ptr, ptr %161, align 8, !tbaa !140
  call void %162(ptr noundef nonnull %149) #17
  br label %169

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.DerivedMesh, ptr %149, i64 0, i32 16
  %165 = load i32, ptr %164, align 8, !tbaa !141
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  call void @DM_update_tessface_data(ptr noundef nonnull %149) #17
  br label %169

169:                                              ; preds = %163, %168, %160
  %170 = getelementptr inbounds %struct.DerivedMesh, ptr %149, i64 0, i32 14
  %171 = load i32, ptr %170, align 8, !tbaa !142
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.DerivedMesh, ptr %149, i64 0, i32 16
  %175 = load i32, ptr %174, align 8, !tbaa !141
  %176 = and i32 %175, 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i8
  call void @CDDM_calc_normals_mapping_ex(ptr noundef nonnull %149, i8 noundef zeroext %178) #17
  br label %179

179:                                              ; preds = %150, %151, %169, %173, %153
  %180 = phi ptr [ %149, %169 ], [ %149, %173 ], [ null, %153 ], [ null, %151 ], [ null, %150 ]
  store ptr %180, ptr %3, align 8, !tbaa !41
  br label %181

181:                                              ; preds = %45, %150, %151, %179, %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %7) #19
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !87
  %6 = add i16 %5, -2
  %7 = icmp ult i16 %6, 3
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %1) #17
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %14 = tail call ptr %13(i64 noundef 56, ptr noundef nonnull @.str.7) #17
  store ptr %14, ptr %9, align 8, !tbaa !92
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %16, ptr noundef nonnull %17, i8 noundef zeroext 0, i8 noundef zeroext %2, i8 noundef zeroext 0) #18
  tail call fastcc void @boundbox_displist_object(ptr noundef nonnull %1) #18
  br label %18

18:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !143 {
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca %struct.ListBase, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !87
  %23 = add i16 %22, -2
  %24 = icmp ult i16 %23, 3
  br i1 %24, label %25, label %376

25:                                               ; preds = %7
  switch i16 %22, label %376 [
    i16 3, label %26
    i16 2, label %27
    i16 4, label %27
  ]

26:                                               ; preds = %25
  tail call void @BKE_displist_make_surf(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #18
  br label %376

27:                                               ; preds = %25, %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.CurveCache, ptr %29, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %30) #17
  %31 = icmp eq i8 %5, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.CurveCache, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !144
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void @free_path(ptr noundef nonnull %35) #17
  %38 = load ptr, ptr %28, align 8, !tbaa !92
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi ptr [ %38, %37 ], [ %33, %32 ]
  %41 = getelementptr inbounds %struct.CurveCache, ptr %40, i64 0, i32 3
  store ptr null, ptr %41, align 8, !tbaa !144
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i16, ptr %21, align 8, !tbaa !87
  %44 = icmp eq i16 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr @G, align 8, !tbaa !145
  %47 = call zeroext i8 @BKE_vfont_to_curve_nubase(ptr noundef %46, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %9) #17
  br label %50

48:                                               ; preds = %42
  %49 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %20) #17
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %9, ptr noundef %49) #17
  br label %50

50:                                               ; preds = %48, %45
  br i1 %31, label %51, label %52

51:                                               ; preds = %50
  call fastcc void @curve_calc_modifiers_pre(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9, i8 noundef zeroext %4, i8 noundef zeroext %6) #18
  br label %52

52:                                               ; preds = %51, %50
  %53 = icmp ne i8 %4, 0
  %54 = zext i1 %53 to i8
  call void @BKE_curve_bevelList_make(ptr noundef nonnull %1, ptr noundef nonnull %9, i8 noundef zeroext %54) #17
  call void @BKE_curve_bevel_make(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i8 noundef zeroext %4, i8 noundef zeroext %6) #17
  %55 = load ptr, ptr %8, align 8, !tbaa !84
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 24
  %58 = load float, ptr %57, align 8, !tbaa !147
  %59 = fcmp oeq float %58, 1.000000e+00
  %60 = select i1 %56, i1 %59, i1 false
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  call fastcc void @curve_to_displist(ptr noundef nonnull %20, ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext %6) #18
  br label %345

62:                                               ; preds = %52
  %63 = fadd float %58, -1.000000e+00
  %64 = load ptr, ptr %28, align 8, !tbaa !92
  %65 = getelementptr inbounds %struct.CurveCache, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = load ptr, ptr %9, align 8, !tbaa !41
  %68 = icmp ne ptr %66, null
  %69 = icmp ne ptr %67, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %344

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 66
  %73 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 65
  %74 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 6
  %75 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 23
  %76 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 5
  br label %77

77:                                               ; preds = %71, %338
  %78 = phi ptr [ %67, %71 ], [ %340, %338 ]
  %79 = phi ptr [ %66, %71 ], [ %339, %338 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %80 = getelementptr inbounds %struct.BevList, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !57
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %338, label %83

83:                                               ; preds = %77
  %84 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %8) #18, !range !56
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %141, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %88 = call ptr %87(i64 noundef 72, ptr noundef nonnull @.str.14) #17
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %90 = load i32, ptr %80, align 8, !tbaa !57
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %91, 12
  %93 = call ptr %89(i64 noundef %92, ptr noundef nonnull @.str.4) #17
  %94 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 8
  store ptr %93, ptr %94, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %88) #17
  %95 = getelementptr inbounds %struct.BevList, ptr %79, i64 0, i32 4
  %96 = load i32, ptr %95, align 8, !tbaa !57
  %97 = icmp eq i32 %96, -1
  %98 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 2
  br i1 %97, label %100, label %99

99:                                               ; preds = %86
  store i16 0, ptr %98, align 8
  br label %102

100:                                              ; preds = %86
  store i16 1, ptr %98, align 8
  %101 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 3
  store i16 12, ptr %101, align 2, !tbaa !62
  br label %102

102:                                              ; preds = %99, %100
  %103 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 4
  store i32 1, ptr %103, align 4, !tbaa !55
  %104 = load i32, ptr %80, align 8, !tbaa !57
  %105 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 5
  store i32 %104, ptr %105, align 8, !tbaa !54
  %106 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !112
  %108 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 6
  store i16 %107, ptr %108, align 4, !tbaa !67
  %109 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 21
  %110 = load i32, ptr %109, align 4, !tbaa !113
  %111 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 11
  store i32 %110, ptr %111, align 8, !tbaa !66
  %112 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 5
  %113 = load i16, ptr %112, align 2, !tbaa !114
  %114 = and i16 %113, -9
  %115 = getelementptr inbounds %struct.DispList, ptr %88, i64 0, i32 7
  store i16 %114, ptr %115, align 2, !tbaa !115
  %116 = load ptr, ptr %94, align 8, !tbaa !34
  %117 = icmp eq i32 %104, 0
  br i1 %117, label %336, label %118

118:                                              ; preds = %102
  %119 = getelementptr inbounds %struct.BevList, ptr %79, i64 0, i32 9
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi ptr [ %138, %120 ], [ %119, %118 ]
  %122 = phi i32 [ %124, %120 ], [ %104, %118 ]
  %123 = phi ptr [ %139, %120 ], [ %116, %118 ]
  %124 = add nsw i32 %122, -1
  %125 = load float, ptr %121, align 4, !tbaa !52
  %126 = getelementptr inbounds %struct.BevPoint, ptr %121, i64 0, i32 5
  %127 = load float, ptr %126, align 4, !tbaa !148
  %128 = call float @llvm.fmuladd.f32(float %63, float %127, float %125)
  store float %128, ptr %123, align 4, !tbaa !52
  %129 = getelementptr inbounds [3 x float], ptr %121, i64 0, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !52
  %131 = getelementptr inbounds %struct.BevPoint, ptr %121, i64 0, i32 6
  %132 = load float, ptr %131, align 4, !tbaa !150
  %133 = call float @llvm.fmuladd.f32(float %63, float %132, float %130)
  %134 = getelementptr inbounds float, ptr %123, i64 1
  store float %133, ptr %134, align 4, !tbaa !52
  %135 = getelementptr inbounds [3 x float], ptr %121, i64 0, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !52
  %137 = getelementptr inbounds float, ptr %123, i64 2
  store float %136, ptr %137, align 4, !tbaa !52
  %138 = getelementptr inbounds %struct.BevPoint, ptr %121, i64 1
  %139 = getelementptr inbounds float, ptr %123, i64 3
  %140 = icmp eq i32 %124, 0
  br i1 %140, label %336, label %120, !llvm.loop !151

141:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store float 0.000000e+00, ptr %15, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  store float 0.000000e+00, ptr %16, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #19
  %142 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 13
  %143 = load i16, ptr %142, align 4, !tbaa !110
  %144 = and i16 %143, 1
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call fastcc void @calc_bevfac_mapping_default(ptr noundef nonnull %79, ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef nonnull %16) #18
  br label %154

147:                                              ; preds = %141
  %148 = load float, ptr %72, align 8, !tbaa !152
  %149 = load float, ptr %73, align 4, !tbaa !153
  %150 = fsub float %148, %149
  %151 = call float @llvm.fabs.f32(float %150)
  %152 = fcmp olt float %151, 0x3E80000000000000
  br i1 %152, label %335, label %153

153:                                              ; preds = %147
  call fastcc void @calc_bevfac_mapping(ptr noundef nonnull %20, ptr noundef nonnull %79, ptr noundef nonnull %78, ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef nonnull %16) #18
  br label %154

154:                                              ; preds = %153, %146
  %155 = load ptr, ptr %8, align 8, !tbaa !41
  %156 = icmp eq ptr %155, null
  br i1 %156, label %330, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.BevList, ptr %79, i64 0, i32 4
  %159 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 3
  %160 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 21
  %161 = getelementptr inbounds %struct.Nurb, ptr %78, i64 0, i32 5
  br label %162

162:                                              ; preds = %157, %327
  %163 = phi ptr [ %155, %157 ], [ %328, %327 ]
  %164 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %165 = call ptr %164(i64 noundef 72, ptr noundef nonnull @.str.15) #17
  %166 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %167 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 5
  %168 = load i32, ptr %167, align 8, !tbaa !54
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, 12
  %171 = load i32, ptr %18, align 4, !tbaa !57
  %172 = sext i32 %171 to i64
  %173 = mul i64 %170, %172
  %174 = call ptr %166(i64 noundef %173, ptr noundef nonnull @.str.4) #17
  store ptr %174, ptr %10, align 8, !tbaa !41
  %175 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 8
  store ptr %174, ptr %175, align 8, !tbaa !34
  call void @BLI_addtail(ptr noundef %2, ptr noundef %165) #17
  %176 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 2
  store i16 2, ptr %176, align 8, !tbaa !47
  %177 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 3
  %178 = load i16, ptr %177, align 2, !tbaa !62
  %179 = and i16 %178, 12
  %180 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 3
  store i16 %179, ptr %180, align 2, !tbaa !62
  %181 = getelementptr inbounds %struct.DispList, ptr %163, i64 0, i32 2
  %182 = load i16, ptr %181, align 8, !tbaa !47
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %162
  %185 = or disjoint i16 %179, 1
  store i16 %185, ptr %180, align 2, !tbaa !62
  br label %186

186:                                              ; preds = %184, %162
  %187 = phi i16 [ %185, %184 ], [ %179, %162 ]
  %188 = load i32, ptr %158, align 8, !tbaa !57
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = or i16 %187, 2
  store i16 %191, ptr %180, align 2, !tbaa !62
  br label %192

192:                                              ; preds = %190, %186
  %193 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 4
  store i32 %171, ptr %193, align 4, !tbaa !55
  %194 = load i32, ptr %167, align 8, !tbaa !54
  %195 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 5
  store i32 %194, ptr %195, align 8, !tbaa !54
  %196 = load i16, ptr %159, align 2, !tbaa !112
  %197 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 6
  store i16 %196, ptr %197, align 4, !tbaa !67
  %198 = load i32, ptr %160, align 4, !tbaa !113
  %199 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 11
  store i32 %198, ptr %199, align 8, !tbaa !66
  %200 = load i16, ptr %161, align 2, !tbaa !114
  %201 = and i16 %200, -9
  %202 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 7
  store i16 %201, ptr %202, align 2, !tbaa !115
  %203 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %204 = add nsw i32 %171, 31
  %205 = ashr i32 %204, 5
  %206 = sext i32 %205 to i64
  %207 = shl nsw i64 %206, 2
  %208 = call ptr %203(i64 noundef %207, ptr noundef nonnull @.str.16) #17
  %209 = getelementptr inbounds %struct.DispList, ptr %165, i64 0, i32 13
  store ptr %208, ptr %209, align 8, !tbaa !44
  %210 = load i32, ptr %80, align 8, !tbaa !57
  %211 = add nsw i32 %210, -1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.BevList, ptr %79, i64 0, i32 9, i64 %212
  %214 = icmp sgt i32 %171, 0
  br i1 %214, label %215, label %327

215:                                              ; preds = %192
  %216 = load i32, ptr %17, align 4, !tbaa !57
  %217 = sext i32 %216 to i64
  %218 = mul nsw i64 %217, 80
  %219 = add nsw i64 %218, 56
  %220 = add nsw i32 %171, -3
  %221 = sitofp i32 %220 to float
  %222 = load float, ptr %15, align 4
  %223 = fadd float %222, %221
  %224 = load float, ptr %16, align 4
  %225 = fadd float %223, %224
  %226 = add nsw i32 %171, -1
  %227 = fadd float %222, -1.000000e+00
  %228 = fsub float 1.000000e+00, %224
  %229 = fsub float 1.000000e+00, %222
  br label %230

230:                                              ; preds = %215, %322
  %231 = phi i64 [ %219, %215 ], [ %324, %322 ]
  %232 = phi i32 [ %216, %215 ], [ %323, %322 ]
  %233 = phi i32 [ 0, %215 ], [ %325, %322 ]
  %234 = getelementptr inbounds i8, ptr %79, i64 %231
  %235 = load ptr, ptr %10, align 8, !tbaa !41
  %236 = load ptr, ptr %74, align 8, !tbaa !154
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %230
  %239 = getelementptr inbounds %struct.BevPoint, ptr %234, i64 0, i32 2
  %240 = load float, ptr %239, align 4, !tbaa !155
  br label %271

241:                                              ; preds = %230
  %242 = load i32, ptr %75, align 4, !tbaa !137
  %243 = and i32 %242, 32768
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = icmp eq i32 %233, 0
  br i1 %246, label %268, label %247

247:                                              ; preds = %245
  %248 = icmp eq i32 %233, %226
  br i1 %248, label %268, label %249

249:                                              ; preds = %247
  %250 = sitofp i32 %233 to float
  %251 = fadd float %227, %250
  %252 = fdiv float %251, %225
  br label %268

253:                                              ; preds = %241
  %254 = load i32, ptr %80, align 8, !tbaa !57
  %255 = add nsw i32 %254, -1
  %256 = sitofp i32 %255 to float
  %257 = sitofp i32 %232 to float
  %258 = fdiv float %257, %256
  %259 = icmp eq i32 %233, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = fdiv float %229, %256
  %262 = fadd float %258, %261
  br label %268

263:                                              ; preds = %253
  %264 = icmp eq i32 %233, %226
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = fdiv float %228, %256
  %267 = fsub float %258, %266
  br label %268

268:                                              ; preds = %247, %245, %260, %265, %263, %249
  %269 = phi float [ %252, %249 ], [ %262, %260 ], [ %267, %265 ], [ %258, %263 ], [ 0.000000e+00, %245 ], [ 1.000000e+00, %247 ]
  %270 = call fastcc float @displist_calc_taper(ptr noundef %0, ptr noundef nonnull %236, float noundef %269) #18
  br label %271

271:                                              ; preds = %268, %238
  %272 = phi float [ %240, %238 ], [ %270, %268 ]
  %273 = getelementptr inbounds %struct.BevPoint, ptr %234, i64 0, i32 10
  %274 = load i16, ptr %273, align 4, !tbaa !156
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %271
  %277 = and i32 %233, 31
  %278 = shl nuw i32 1, %277
  %279 = load ptr, ptr %209, align 8, !tbaa !44
  %280 = lshr i32 %233, 5
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds i32, ptr %279, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !57
  %284 = or i32 %283, %278
  store i32 %284, ptr %282, align 4, !tbaa !57
  br label %285

285:                                              ; preds = %276, %271
  %286 = icmp ne i32 %233, 0
  %287 = icmp eq ptr %234, %213
  %288 = select i1 %286, i1 true, i1 %287
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.BevPoint, ptr %234, i64 1
  call fastcc void @rotateBevelPiece(ptr noundef nonnull %20, ptr noundef nonnull %234, ptr noundef nonnull %290, ptr noundef nonnull %163, float noundef %229, float noundef %63, float noundef %272, ptr noundef nonnull %10) #18
  br label %298

291:                                              ; preds = %285
  %292 = icmp ne i32 %233, %226
  %293 = icmp eq i64 %231, 56
  %294 = select i1 %292, i1 true, i1 %293
  br i1 %294, label %297, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.BevPoint, ptr %234, i64 -1
  call fastcc void @rotateBevelPiece(ptr noundef nonnull %20, ptr noundef nonnull %234, ptr noundef nonnull %296, ptr noundef nonnull %163, float noundef %228, float noundef %63, float noundef %272, ptr noundef nonnull %10) #18
  br label %298

297:                                              ; preds = %291
  call fastcc void @rotateBevelPiece(ptr noundef nonnull %20, ptr noundef nonnull %234, ptr noundef null, ptr noundef nonnull %163, float noundef 0.000000e+00, float noundef %63, float noundef %272, ptr noundef nonnull %10) #18
  br label %298

298:                                              ; preds = %295, %297, %289
  %299 = load ptr, ptr %76, align 8, !tbaa !157
  %300 = icmp eq ptr %299, null
  br i1 %300, label %322, label %301

301:                                              ; preds = %298
  %302 = load i32, ptr %75, align 4, !tbaa !137
  %303 = and i32 %302, 16384
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %322, label %305

305:                                              ; preds = %301
  %306 = load i16, ptr %142, align 4, !tbaa !110
  %307 = and i16 %306, 1
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = icmp eq i32 %233, 1
  br i1 %310, label %311, label %318

311:                                              ; preds = %309
  %312 = load i32, ptr %167, align 8, !tbaa !54
  %313 = mul nsw i32 %312, 3
  %314 = sext i32 %313 to i64
  %315 = sub nsw i64 0, %314
  %316 = getelementptr inbounds float, ptr %235, i64 %315
  call fastcc void @fillBevelCap(ptr noundef nonnull %78, ptr noundef nonnull %163, ptr noundef %316, ptr noundef nonnull %11) #18
  %317 = getelementptr inbounds %struct.BevPoint, ptr %234, i64 0, i32 7
  call fastcc void @negate_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %317) #18
  br label %318

318:                                              ; preds = %311, %309
  %319 = icmp eq i32 %233, %226
  br i1 %319, label %320, label %322

320:                                              ; preds = %318
  call fastcc void @fillBevelCap(ptr noundef nonnull %78, ptr noundef nonnull %163, ptr noundef %235, ptr noundef nonnull %12) #18
  %321 = getelementptr inbounds %struct.BevPoint, ptr %234, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %321) #18
  br label %322

322:                                              ; preds = %318, %320, %305, %301, %298
  %323 = add nsw i32 %232, 1
  %324 = add nsw i64 %231, 80
  %325 = add nuw nsw i32 %233, 1
  %326 = icmp eq i32 %325, %171
  br i1 %326, label %327, label %230, !llvm.loop !158

327:                                              ; preds = %322, %192
  call fastcc void @displist_surf_indices(ptr noundef %165) #18
  %328 = load ptr, ptr %163, align 8, !tbaa !41
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %162, !llvm.loop !159

330:                                              ; preds = %327, %154
  %331 = load ptr, ptr %11, align 8, !tbaa !84
  %332 = icmp eq ptr %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %330
  call void @BKE_displist_fill(ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %13, i8 noundef zeroext 0) #18
  call void @BKE_displist_fill(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %14, i8 noundef zeroext 0) #18
  call void @BKE_displist_free(ptr noundef nonnull %11) #18
  call void @BKE_displist_free(ptr noundef nonnull %12) #18
  br label %334

334:                                              ; preds = %330, %333
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19
  br label %338

335:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19
  br label %338

336:                                              ; preds = %120, %102
  %337 = phi ptr [ %116, %102 ], [ %139, %120 ]
  store ptr %337, ptr %10, align 8, !tbaa !41
  br label %338

338:                                              ; preds = %336, %77, %334, %335
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %339 = load ptr, ptr %79, align 8, !tbaa !41
  %340 = load ptr, ptr %78, align 8, !tbaa !41
  %341 = icmp ne ptr %339, null
  %342 = icmp ne ptr %340, null
  %343 = select i1 %341, i1 %342, i1 false
  br i1 %343, label %77, label %344, !llvm.loop !160

344:                                              ; preds = %338, %62
  call void @BKE_displist_free(ptr noundef nonnull %8) #18
  br label %345

345:                                              ; preds = %344, %61
  %346 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 23
  %347 = load i32, ptr %346, align 4, !tbaa !137
  %348 = and i32 %347, 8192
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  call fastcc void @curve_to_filledpoly(ptr noundef nonnull %20, ptr noundef %2) #18
  %351 = load i32, ptr %346, align 4, !tbaa !137
  br label %352

352:                                              ; preds = %350, %345
  %353 = phi i32 [ %351, %350 ], [ %347, %345 ]
  br i1 %31, label %354, label %366

354:                                              ; preds = %352
  %355 = and i32 %353, 8
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = call signext i16 @DAG_get_eval_flags_for_object(ptr noundef %0, ptr noundef %1) #17
  %359 = and i16 %358, 1
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %362, label %361

361:                                              ; preds = %357, %354
  call void @calc_curvepath(ptr noundef %1, ptr noundef nonnull %9) #17
  br label %362

362:                                              ; preds = %361, %357
  %363 = load ptr, ptr %28, align 8, !tbaa !92
  %364 = getelementptr inbounds %struct.CurveCache, ptr %363, i64 0, i32 2
  call void @BKE_nurbList_duplicate(ptr noundef nonnull %364, ptr noundef nonnull %9) #17
  call fastcc void @curve_calc_modifiers_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %6) #18
  %365 = load i32, ptr %346, align 4, !tbaa !137
  br label %366

366:                                              ; preds = %352, %362
  %367 = phi i32 [ %353, %352 ], [ %365, %362 ]
  %368 = and i32 %367, 8192
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  %372 = load ptr, ptr %371, align 8, !tbaa !98
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  call fastcc void @curve_to_filledpoly(ptr noundef nonnull %20, ptr noundef %2) #18
  br label %375

375:                                              ; preds = %374, %370, %366
  call void @BKE_nurbList_free(ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %376

376:                                              ; preds = %7, %26, %375, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_make_curveTypes_forRender(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %12 = tail call ptr %11(i64 noundef 56, ptr noundef nonnull @.str.8) #17
  store ptr %12, ptr %7, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %10, %6
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4, i8 noundef zeroext %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_make_curveTypes_forOrco(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @.str.8) #17
  store ptr %9, ptr %4, align 8, !tbaa !92
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @do_makeDispListCurveTypes(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_displist_make_orco(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ %2, %5 ]
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 50
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = tail call ptr %13(ptr noundef %11, i32 noundef 14) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call fastcc void @curve_calc_orcodm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, i8 noundef zeroext %3, i8 noundef zeroext %4) #18
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr %12, align 8, !tbaa !161
  %19 = tail call ptr %18(ptr noundef nonnull %11, i32 noundef 14) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %23 = tail call ptr %22(ptr noundef nonnull %19) #17
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ null, %17 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_calc_orcodm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !162 {
  %6 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #19
  %7 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %6) #17
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 53
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %11, %15, %5
  %21 = phi i8 [ 0, %5 ], [ 1, %11 ], [ %19, %15 ]
  %22 = icmp eq i8 %4, 0
  %23 = select i1 %22, i32 1, i32 2
  %24 = select i1 %22, i32 4, i32 5
  %25 = call fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %4, i8 noundef zeroext %21) #18
  %26 = icmp eq i8 %21, 0
  %27 = or disjoint i32 %23, 4
  %28 = select i1 %26, i32 %23, i32 %27
  %29 = icmp eq ptr %25, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %25, align 8, !tbaa !126
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi ptr [ %31, %30 ], [ %7, %20 ]
  %34 = call fastcc ptr @create_orco_dm(ptr noundef %0, ptr noundef nonnull %1) #18
  %35 = icmp eq ptr %33, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32, %59
  %37 = phi ptr [ %61, %59 ], [ %33, %32 ]
  %38 = phi ptr [ %60, %59 ], [ %34, %32 ]
  %39 = getelementptr inbounds %struct.ModifierData, ptr %37, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !120
  %41 = call ptr @modifierType_getInfo(i32 noundef %40) #17
  %42 = getelementptr inbounds %struct.ModifierData, ptr %37, i64 0, i32 7
  store ptr %0, ptr %42, align 8, !tbaa !122
  %43 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %28) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %41, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !123
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = call ptr @modwrap_applyModifier(ptr noundef nonnull %37, ptr noundef %1, ptr noundef %38, i32 noundef %24) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = icmp eq ptr %38, null
  %54 = icmp eq ptr %38, %50
  %55 = or i1 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %38, i64 0, i32 95
  %58 = load ptr, ptr %57, align 8, !tbaa !132
  call void %58(ptr noundef nonnull %38) #17
  br label %59

59:                                               ; preds = %49, %56, %52, %45, %36
  %60 = phi ptr [ %38, %36 ], [ %38, %45 ], [ %38, %49 ], [ %50, %56 ], [ %50, %52 ]
  %61 = load ptr, ptr %37, align 8, !tbaa !126
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %36, !llvm.loop !163

63:                                               ; preds = %59, %32
  %64 = phi ptr [ %34, %32 ], [ %60, %59 ]
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef %2, ptr noundef %64) #18
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 95
  %66 = load ptr, ptr %65, align 8, !tbaa !132
  call void %66(ptr noundef %64) #17
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_displist_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3, %30
  %7 = phi ptr [ %34, %30 ], [ %4, %3 ]
  %8 = phi i32 [ %33, %30 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i16 %10, 4
  %12 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !54
  br i1 %11, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.DispList, ptr %7, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !55
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
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %26) #17
  %27 = add nuw nsw i32 %25, 1
  %28 = getelementptr inbounds float, ptr %26, i64 3
  %29 = icmp eq i32 %27, %19
  br i1 %29, label %30, label %24, !llvm.loop !164

30:                                               ; preds = %24, %18
  %31 = icmp ne i32 %19, 0
  %32 = zext i1 %31 to i32
  %33 = or i32 %8, %32
  %34 = load ptr, ptr %7, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %6, !llvm.loop !165

36:                                               ; preds = %30
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3, %36
  tail call fastcc void @zero_v3(ptr noundef %1) #18
  tail call fastcc void @zero_v3(ptr noundef %2) #18
  br label %39

39:                                               ; preds = %38, %36
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !166 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !52
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !167 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !168 {
  %3 = load float, ptr %0, align 4, !tbaa !52
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !169 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !52
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !52
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifiers_clearErrors(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @curve_get_tessellate_point(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !170 {
  %5 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %5) #19
  %6 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %5) #17
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = icmp eq i8 %3, 0
  %10 = or disjoint i32 %8, 4
  %11 = select i1 %9, i32 %8, i32 %10
  %12 = icmp eq ptr %6, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %4, %37
  %14 = phi ptr [ %38, %37 ], [ null, %4 ]
  %15 = phi ptr [ %39, %37 ], [ %6, %4 ]
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !120
  %18 = call ptr @modifierType_getInfo(i32 noundef %17) #17
  %19 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %11) #17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !123
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %16, align 8, !tbaa !120
  switch i32 %26, label %31 [
    i32 9, label %27
    i32 10, label %27
    i32 18, label %27
  ]

27:                                               ; preds = %25, %25, %25
  %28 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !171
  %30 = or i32 %29, 64
  store i32 %30, ptr %28, align 4, !tbaa !171
  br label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !171
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr %14, ptr %15
  br label %37

37:                                               ; preds = %13, %31, %27
  %38 = phi ptr [ %36, %31 ], [ %15, %27 ], [ %14, %13 ]
  %39 = load ptr, ptr %15, align 8, !tbaa !126
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %13, !llvm.loop !172

41:                                               ; preds = %37, %21, %4
  %42 = phi ptr [ null, %4 ], [ %14, %21 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %5) #19
  ret ptr %42
}

; Function Attrs: optsize
declare ptr @BKE_key_evaluate_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_nurbs_keyVertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BK_curve_nurbs_vertexCos_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_nurbs_keyVertexTilts_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @displist_get_allverts(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !173 {
  store i32 0, ptr %1, align 4, !tbaa !57
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %23, %20 ], [ %3, %2 ]
  %7 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !54
  br label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = mul nsw i32 %18, %16
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %13, %11 ], [ %19, %14 ]
  %22 = add nsw i32 %21, %7
  store i32 %22, ptr %1, align 4, !tbaa !57
  %23 = load ptr, ptr %6, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !174

25:                                               ; preds = %20
  %26 = sext i32 %22 to i64
  %27 = mul nsw i64 %26, 12
  br label %28

28:                                               ; preds = %25, %2
  %29 = phi i64 [ 0, %2 ], [ %27, %25 ]
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %31 = tail call ptr %30(i64 noundef %29, ptr noundef nonnull @.str.11) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %28, %49
  %35 = phi ptr [ %57, %49 ], [ %32, %28 ]
  %36 = phi ptr [ %56, %49 ], [ %31, %28 ]
  %37 = getelementptr inbounds %struct.DispList, ptr %35, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !47
  %39 = icmp eq i16 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.DispList, ptr %35, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !54
  br label %49

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.DispList, ptr %35, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !55
  %46 = getelementptr inbounds %struct.DispList, ptr %35, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !54
  %48 = mul nsw i32 %47, %45
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i32 [ %42, %40 ], [ %48, %43 ]
  %51 = mul nsw i32 %50, 3
  %52 = getelementptr inbounds %struct.DispList, ptr %35, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = sext i32 %51 to i64
  %55 = shl nsw i64 %54, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 4 %53, i64 %55, i1 false)
  %56 = getelementptr inbounds float, ptr %36, i64 %54
  %57 = load ptr, ptr %35, align 8, !tbaa !41
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %34, !llvm.loop !175

59:                                               ; preds = %49, %28
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @displist_apply_allverts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %28, %20 ], [ %3, %2 ]
  %7 = phi ptr [ %27, %20 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !54
  br label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = mul nsw i32 %18, %16
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %13, %11 ], [ %19, %14 ]
  %22 = mul nsw i32 %21, 3
  %23 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = sext i32 %22 to i64
  %26 = shl nsw i64 %25, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %7, i64 %26, i1 false)
  %27 = getelementptr inbounds float, ptr %7, i64 %25
  %28 = load ptr, ptr %6, align 8, !tbaa !41
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !llvm.loop !177

30:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_to_filledpoly(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !137
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %5, 6
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !84
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DispList, ptr %12, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !47
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call fastcc void @bevels_to_filledpoly(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %20

19:                                               ; preds = %14, %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.bevels_to_filledpoly.z_up, i64 12, i1 false)
  call void @BKE_displist_fill(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %20

20:                                               ; preds = %2, %19, %18
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_from_curve_displist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modwrap_applyModifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CDDM_calc_normals_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_update_tessface_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CDDM_calc_normals_mapping_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevels_to_filledpoly(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !179 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.bevels_to_filledpoly.z_up, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #18
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #18
  %6 = load ptr, ptr %1, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %116, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  br label %10

10:                                               ; preds = %8, %113
  %11 = phi ptr [ %6, %8 ], [ %114, %113 ]
  %12 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !47
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %113

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !62
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %113

21:                                               ; preds = %15
  %22 = load i32, ptr %9, align 4, !tbaa !137
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %65, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %30 = call ptr %29(i64 noundef 72, ptr noundef nonnull @.str.12) #17
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %30) #17
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !55
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 12
  %36 = call ptr %31(i64 noundef %35, ptr noundef nonnull @.str.13) #17
  %37 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 8
  store ptr %36, ptr %37, align 8, !tbaa !34
  %38 = load i32, ptr %32, align 4, !tbaa !55
  %39 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 5
  store i32 %38, ptr %39, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 4
  store i32 1, ptr %40, align 4, !tbaa !55
  %41 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 2
  store i16 0, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 6
  %43 = load i16, ptr %42, align 4, !tbaa !67
  %44 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 6
  store i16 %43, ptr %44, align 4, !tbaa !67
  %45 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 11
  store i32 %46, ptr %47, align 8, !tbaa !66
  %48 = load i32, ptr %32, align 4, !tbaa !55
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %28
  %51 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !54
  %53 = mul nsw i32 %52, 3
  %54 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = sext i32 %53 to i64
  br label %57

57:                                               ; preds = %50, %57
  %58 = phi i32 [ %48, %50 ], [ %61, %57 ]
  %59 = phi ptr [ %36, %50 ], [ %62, %57 ]
  %60 = phi ptr [ %55, %50 ], [ %63, %57 ]
  %61 = add nsw i32 %58, -1
  call fastcc void @copy_v3_v3(ptr noundef %59, ptr noundef %60) #18
  %62 = getelementptr inbounds float, ptr %59, i64 3
  %63 = getelementptr inbounds float, ptr %60, i64 %56
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %57, !llvm.loop !180

65:                                               ; preds = %57, %28, %21
  %66 = load i32, ptr %9, align 4, !tbaa !137
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %113, label %69

69:                                               ; preds = %65
  %70 = load i16, ptr %16, align 2, !tbaa !62
  %71 = and i16 %70, 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %75 = call ptr %74(i64 noundef 72, ptr noundef nonnull @.str.12) #17
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %75) #17
  %76 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %77 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !55
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 12
  %81 = call ptr %76(i64 noundef %80, ptr noundef nonnull @.str.13) #17
  %82 = getelementptr inbounds %struct.DispList, ptr %75, i64 0, i32 8
  store ptr %81, ptr %82, align 8, !tbaa !34
  %83 = load i32, ptr %77, align 4, !tbaa !55
  %84 = getelementptr inbounds %struct.DispList, ptr %75, i64 0, i32 5
  store i32 %83, ptr %84, align 8, !tbaa !54
  %85 = getelementptr inbounds %struct.DispList, ptr %75, i64 0, i32 4
  store i32 1, ptr %85, align 4, !tbaa !55
  %86 = getelementptr inbounds %struct.DispList, ptr %75, i64 0, i32 2
  store i16 0, ptr %86, align 8, !tbaa !47
  %87 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 6
  %88 = load i16, ptr %87, align 4, !tbaa !67
  %89 = getelementptr inbounds %struct.DispList, ptr %75, i64 0, i32 6
  store i16 %88, ptr %89, align 4, !tbaa !67
  %90 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 11
  %91 = load i32, ptr %90, align 8, !tbaa !66
  %92 = getelementptr inbounds %struct.DispList, ptr %75, i64 0, i32 11
  store i32 %91, ptr %92, align 8, !tbaa !66
  %93 = load i32, ptr %77, align 4, !tbaa !55
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %73
  %96 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !54
  %100 = mul i32 %99, 3
  %101 = add i32 %100, -3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, ptr %97, i64 %102
  %104 = sext i32 %100 to i64
  br label %105

105:                                              ; preds = %95, %105
  %106 = phi i32 [ %93, %95 ], [ %109, %105 ]
  %107 = phi ptr [ %81, %95 ], [ %110, %105 ]
  %108 = phi ptr [ %103, %95 ], [ %111, %105 ]
  %109 = add nsw i32 %106, -1
  call fastcc void @copy_v3_v3(ptr noundef %107, ptr noundef %108) #18
  %110 = getelementptr inbounds float, ptr %107, i64 3
  %111 = getelementptr inbounds float, ptr %108, i64 %104
  %112 = icmp eq i32 %109, 0
  br i1 %112, label %113, label %105, !llvm.loop !181

113:                                              ; preds = %105, %73, %15, %69, %65, %10
  %114 = load ptr, ptr %11, align 8, !tbaa !41
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %10, !llvm.loop !182

116:                                              ; preds = %113, %2
  call void @BKE_displist_fill(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #18
  call void @BKE_displist_fill(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  call void @BKE_displist_free(ptr noundef nonnull %4) #18
  call void @BKE_displist_free(ptr noundef nonnull %5) #18
  call void @BKE_displist_fill(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !183 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BKE_curve_bevelList_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_to_curve_nubase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_bevelList_make(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_bevel_make(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_to_displist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !184 {
  %6 = icmp eq i8 %3, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 53
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %7, %11, %5
  %16 = phi i1 [ false, %5 ], [ true, %7 ], [ %14, %11 ]
  %17 = load ptr, ptr %1, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %226, label %19

19:                                               ; preds = %15
  %20 = icmp eq i8 %4, 0
  %21 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 29
  br label %22

22:                                               ; preds = %19, %223
  %23 = phi ptr [ %17, %19 ], [ %224, %223 ]
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !103
  %26 = icmp ne i16 %25, 0
  %27 = select i1 %26, i1 %16, i1 false
  br i1 %27, label %223, label %28

28:                                               ; preds = %22
  br i1 %20, label %32, label %29

29:                                               ; preds = %28
  %30 = load i16, ptr %21, align 8, !tbaa !107
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %28
  %33 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 9
  %34 = load i16, ptr %33, align 4, !tbaa !105
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi i16 [ %34, %32 ], [ %30, %29 ]
  %37 = sext i16 %36 to i32
  %38 = tail call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef nonnull %23) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %223, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !185
  switch i16 %42, label %223 [
    i16 1, label %43
    i16 4, label %157
    i16 0, label %187
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !111
  %46 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 13
  %47 = load i16, ptr %46, align 4, !tbaa !110
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  %50 = sext i1 %49 to i32
  %51 = add nsw i32 %45, %50
  %52 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !186
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %43
  %56 = xor i16 %48, 1
  %57 = zext nneg i16 %56 to i32
  br label %58

58:                                               ; preds = %55, %75
  %59 = phi i32 [ %51, %55 ], [ %62, %75 ]
  %60 = phi i32 [ 0, %55 ], [ %79, %75 ]
  %61 = phi ptr [ %53, %55 ], [ %63, %75 ]
  %62 = add nsw i32 %59, -1
  %63 = getelementptr inbounds %struct.BezTriple, ptr %61, i64 1
  %64 = icmp eq i32 %62, 0
  %65 = getelementptr inbounds %struct.BezTriple, ptr %61, i64 0, i32 6
  %66 = load i8, ptr %65, align 2, !tbaa !187
  %67 = icmp eq i8 %66, 2
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = select i1 %49, ptr %63, ptr %53
  %70 = select i1 %64, ptr %69, ptr %63
  %71 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 5
  %72 = load i8, ptr %71, align 1, !tbaa !189
  %73 = icmp eq i8 %72, 2
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %58
  br label %75

75:                                               ; preds = %68, %74
  %76 = phi i32 [ %37, %74 ], [ 1, %68 ]
  %77 = add nsw i32 %60, %76
  %78 = select i1 %64, i32 %57, i32 0
  %79 = add nsw i32 %77, %78
  br i1 %64, label %80, label %58, !llvm.loop !190

80:                                               ; preds = %75, %43
  %81 = phi i32 [ 0, %43 ], [ %79, %75 ]
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %83 = tail call ptr %82(i64 noundef 72, ptr noundef nonnull @.str.17) #17
  %84 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %85 = add nsw i32 %81, 1
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, 12
  %88 = tail call ptr %84(i64 noundef %87, ptr noundef nonnull @.str.4) #17
  %89 = getelementptr inbounds %struct.DispList, ptr %83, i64 0, i32 8
  store ptr %88, ptr %89, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %83) #17
  %90 = getelementptr inbounds %struct.DispList, ptr %83, i64 0, i32 4
  store i32 1, ptr %90, align 4, !tbaa !55
  %91 = getelementptr inbounds %struct.DispList, ptr %83, i64 0, i32 5
  store i32 %81, ptr %91, align 8, !tbaa !54
  %92 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !112
  %94 = getelementptr inbounds %struct.DispList, ptr %83, i64 0, i32 6
  store i16 %93, ptr %94, align 4, !tbaa !67
  %95 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 21
  %96 = load i32, ptr %95, align 4, !tbaa !113
  %97 = getelementptr inbounds %struct.DispList, ptr %83, i64 0, i32 11
  store i32 %96, ptr %97, align 8, !tbaa !66
  %98 = load ptr, ptr %89, align 8, !tbaa !34
  %99 = load i16, ptr %46, align 4, !tbaa !110
  %100 = and i16 %99, 1
  %101 = load i32, ptr %44, align 8, !tbaa !111
  %102 = xor i16 %100, 1
  %103 = add nsw i16 %100, -1
  %104 = sext i16 %103 to i32
  %105 = add nsw i32 %101, %104
  %106 = getelementptr inbounds %struct.DispList, ptr %83, i64 0, i32 2
  store i16 %102, ptr %106, align 8
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %223, label %108

108:                                              ; preds = %80
  %109 = load ptr, ptr %52, align 8, !tbaa !186
  %110 = mul nsw i32 %37, 3
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %149, %108
  %113 = phi i32 [ %105, %108 ], [ %117, %149 ]
  %114 = phi ptr [ %98, %108 ], [ %151, %149 ]
  %115 = phi ptr [ %109, %108 ], [ %125, %149 ]
  %116 = getelementptr inbounds %struct.BezTriple, ptr %115, i64 1
  %117 = add nsw i32 %113, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i16, ptr %106, align 8, !tbaa !47
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load ptr, ptr %52, align 8, !tbaa !186
  br label %124

124:                                              ; preds = %122, %119, %112
  %125 = phi ptr [ %123, %122 ], [ %116, %119 ], [ %116, %112 ]
  %126 = getelementptr inbounds %struct.BezTriple, ptr %115, i64 0, i32 6
  %127 = load i8, ptr %126, align 2, !tbaa !187
  %128 = icmp eq i8 %127, 2
  br i1 %128, label %130, label %129

129:                                              ; preds = %130, %124
  br label %136

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 5
  %132 = load i8, ptr %131, align 1, !tbaa !189
  %133 = icmp eq i8 %132, 2
  br i1 %133, label %134, label %129

134:                                              ; preds = %130
  %135 = getelementptr inbounds [3 x [3 x float]], ptr %115, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %114, ptr noundef nonnull %135) #18
  br label %149

136:                                              ; preds = %129, %136
  %137 = phi i64 [ %147, %136 ], [ 0, %129 ]
  %138 = getelementptr inbounds [3 x [3 x float]], ptr %115, i64 0, i64 1, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !52
  %140 = getelementptr inbounds [3 x [3 x float]], ptr %115, i64 0, i64 2, i64 %137
  %141 = load float, ptr %140, align 4, !tbaa !52
  %142 = getelementptr inbounds [3 x float], ptr %125, i64 0, i64 %137
  %143 = load float, ptr %142, align 4, !tbaa !52
  %144 = getelementptr inbounds [3 x [3 x float]], ptr %125, i64 0, i64 1, i64 %137
  %145 = load float, ptr %144, align 4, !tbaa !52
  %146 = getelementptr inbounds float, ptr %114, i64 %137
  tail call void @BKE_curve_forward_diff_bezier(float noundef %139, float noundef %141, float noundef %143, float noundef %145, ptr noundef %146, i32 noundef %37, i32 noundef 12) #17
  %147 = add nuw nsw i64 %137, 1
  %148 = icmp eq i64 %147, 3
  br i1 %148, label %149, label %136, !llvm.loop !191

149:                                              ; preds = %136, %134
  %150 = phi i64 [ 3, %134 ], [ %111, %136 ]
  %151 = getelementptr inbounds float, ptr %114, i64 %150
  br i1 %118, label %152, label %112, !llvm.loop !192

152:                                              ; preds = %149
  %153 = load i16, ptr %106, align 8, !tbaa !47
  %154 = icmp eq i16 %153, 1
  br i1 %154, label %155, label %223

155:                                              ; preds = %152
  %156 = getelementptr inbounds [3 x [3 x float]], ptr %125, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %151, ptr noundef nonnull %156) #18
  br label %223

157:                                              ; preds = %40
  %158 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 13
  %159 = load i16, ptr %158, align 4, !tbaa !110
  %160 = and i16 %159, 1
  %161 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %162 = load i32, ptr %161, align 8, !tbaa !111
  %163 = add nsw i16 %160, -1
  %164 = sext i16 %163 to i32
  %165 = add nsw i32 %162, %164
  %166 = mul nsw i32 %165, %37
  %167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %168 = tail call ptr %167(i64 noundef 72, ptr noundef nonnull @.str.6) #17
  %169 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %170 = sext i32 %166 to i64
  %171 = mul nsw i64 %170, 12
  %172 = tail call ptr %169(i64 noundef %171, ptr noundef nonnull @.str.4) #17
  %173 = getelementptr inbounds %struct.DispList, ptr %168, i64 0, i32 8
  store ptr %172, ptr %173, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %168) #17
  %174 = getelementptr inbounds %struct.DispList, ptr %168, i64 0, i32 4
  store i32 1, ptr %174, align 4, !tbaa !55
  %175 = getelementptr inbounds %struct.DispList, ptr %168, i64 0, i32 5
  store i32 %166, ptr %175, align 8, !tbaa !54
  %176 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 3
  %177 = load i16, ptr %176, align 2, !tbaa !112
  %178 = getelementptr inbounds %struct.DispList, ptr %168, i64 0, i32 6
  store i16 %177, ptr %178, align 4, !tbaa !67
  %179 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 21
  %180 = load i32, ptr %179, align 4, !tbaa !113
  %181 = getelementptr inbounds %struct.DispList, ptr %168, i64 0, i32 11
  store i32 %180, ptr %181, align 8, !tbaa !66
  %182 = load ptr, ptr %173, align 8, !tbaa !34
  %183 = load i16, ptr %158, align 4, !tbaa !110
  %184 = and i16 %183, 1
  %185 = xor i16 %184, 1
  %186 = getelementptr inbounds %struct.DispList, ptr %168, i64 0, i32 2
  store i16 %185, ptr %186, align 8
  tail call void @BKE_nurb_makeCurve(ptr noundef nonnull %23, ptr noundef %182, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %37, i32 noundef 12) #17
  br label %223

187:                                              ; preds = %40
  %188 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %189 = load i32, ptr %188, align 8, !tbaa !111
  %190 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %191 = tail call ptr %190(i64 noundef 72, ptr noundef nonnull @.str.18) #17
  %192 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %193 = sext i32 %189 to i64
  %194 = mul nsw i64 %193, 12
  %195 = tail call ptr %192(i64 noundef %194, ptr noundef nonnull @.str.4) #17
  %196 = getelementptr inbounds %struct.DispList, ptr %191, i64 0, i32 8
  store ptr %195, ptr %196, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %191) #17
  %197 = getelementptr inbounds %struct.DispList, ptr %191, i64 0, i32 4
  store i32 1, ptr %197, align 4, !tbaa !55
  %198 = getelementptr inbounds %struct.DispList, ptr %191, i64 0, i32 5
  store i32 %189, ptr %198, align 8, !tbaa !54
  %199 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 3
  %200 = load i16, ptr %199, align 2, !tbaa !112
  %201 = getelementptr inbounds %struct.DispList, ptr %191, i64 0, i32 6
  store i16 %200, ptr %201, align 4, !tbaa !67
  %202 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 21
  %203 = load i32, ptr %202, align 4, !tbaa !113
  %204 = getelementptr inbounds %struct.DispList, ptr %191, i64 0, i32 11
  store i32 %203, ptr %204, align 8, !tbaa !66
  %205 = load ptr, ptr %196, align 8, !tbaa !34
  %206 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 13
  %207 = load i16, ptr %206, align 4, !tbaa !110
  %208 = and i16 %207, 1
  %209 = xor i16 %208, 1
  %210 = getelementptr inbounds %struct.DispList, ptr %191, i64 0, i32 2
  store i16 %209, ptr %210, align 8
  %211 = icmp eq i32 %189, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %187
  %213 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 17
  %214 = load ptr, ptr %213, align 8, !tbaa !193
  br label %215

215:                                              ; preds = %212, %215
  %216 = phi i32 [ %219, %215 ], [ %189, %212 ]
  %217 = phi ptr [ %221, %215 ], [ %205, %212 ]
  %218 = phi ptr [ %220, %215 ], [ %214, %212 ]
  %219 = add nsw i32 %216, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %217, ptr noundef %218) #18
  %220 = getelementptr inbounds %struct.BPoint, ptr %218, i64 1
  %221 = getelementptr inbounds float, ptr %217, i64 3
  %222 = icmp eq i32 %219, 0
  br i1 %222, label %223, label %215, !llvm.loop !194

223:                                              ; preds = %215, %152, %155, %187, %80, %40, %35, %157, %22
  %224 = load ptr, ptr %23, align 8, !tbaa !41
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %22, !llvm.loop !195

226:                                              ; preds = %223, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @calc_bevfac_mapping_default(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #5 !PGOFuncName !196 {
  store i32 0, ptr %1, align 4, !tbaa !57
  %6 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !57
  store i32 %7, ptr %3, align 4, !tbaa !57
  store float 1.000000e+00, ptr %2, align 4, !tbaa !52
  store float 1.000000e+00, ptr %4, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_bevfac_mapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !PGOFuncName !197 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !tbaa !57
  %9 = tail call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef %2) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 65
  %13 = load float, ptr %12, align 4, !tbaa !153
  %14 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 66
  %15 = load float, ptr %14, align 8, !tbaa !152
  %16 = tail call fastcc float @min_ff(float noundef %13, float noundef %15) #18
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = tail call fastcc float @max_ff(float noundef %13, float noundef %15) #18
  %20 = fcmp oeq float %19, 1.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %7
  tail call fastcc void @calc_bevfac_mapping_default(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  br label %130

22:                                               ; preds = %18, %11
  %23 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 67
  %24 = load i8, ptr %23, align 4, !tbaa !198
  %25 = add i8 %24, -1
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 13
  %29 = load i16, ptr %28, align 4, !tbaa !110
  %30 = and i16 %29, 1
  %31 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 6
  %32 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 8
  %33 = load i32, ptr %31, align 8, !tbaa !111
  %34 = add nsw i16 %30, -1
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load ptr, ptr %32, align 8, !tbaa !41
  %40 = load i32, ptr %31, align 8, !tbaa !111
  %41 = add nsw i32 %40, %35
  %42 = sext i32 %41 to i64
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi float [ %48, %43 ], [ 0.000000e+00, %38 ]
  %45 = phi i64 [ %49, %43 ], [ 0, %38 ]
  %46 = getelementptr inbounds float, ptr %39, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !52
  %48 = fadd float %44, %47
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp slt i64 %49, %42
  br i1 %50, label %43, label %51, !llvm.loop !199

51:                                               ; preds = %43, %27, %22
  %52 = phi float [ 0.000000e+00, %22 ], [ 0.000000e+00, %27 ], [ %48, %43 ]
  switch i8 %24, label %71 [
    i8 0, label %53
    i8 1, label %63
    i8 2, label %66
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !57
  %56 = add nsw i32 %55, -1
  %57 = sitofp i32 %56 to float
  %58 = fmul float %13, %57
  %59 = fptosi float %58 to i32
  store i32 %59, ptr %3, align 4, !tbaa !57
  %60 = sitofp i32 %59 to float
  %61 = fsub float %60, %58
  %62 = fadd float %61, 1.000000e+00
  br label %69

63:                                               ; preds = %51
  tail call fastcc void @calc_bevfac_segment_mapping(ptr noundef %1, float noundef %13, float noundef %52, ptr noundef %3, ptr noundef %4) #18
  %64 = load float, ptr %4, align 4, !tbaa !52
  %65 = fsub float 1.000000e+00, %64
  br label %69

66:                                               ; preds = %51
  tail call fastcc void @calc_bevfac_spline_mapping(ptr noundef %1, float noundef %13, float noundef %52, ptr noundef %3, ptr noundef %4) #18
  %67 = load float, ptr %4, align 4, !tbaa !52
  %68 = fsub float 1.000000e+00, %67
  br label %69

69:                                               ; preds = %53, %63, %66
  %70 = phi float [ %68, %66 ], [ %65, %63 ], [ %62, %53 ]
  store float %70, ptr %4, align 4, !tbaa !52
  br label %71

71:                                               ; preds = %69, %51
  %72 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 68
  %73 = load i8, ptr %72, align 1, !tbaa !200
  switch i8 %73, label %99 [
    i8 0, label %74
    i8 1, label %87
    i8 2, label %93
  ]

74:                                               ; preds = %71
  %75 = load float, ptr %14, align 8, !tbaa !152
  %76 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !57
  %78 = add nsw i32 %77, -1
  %79 = sitofp i32 %78 to float
  %80 = fmul float %75, %79
  %81 = fptosi float %80 to i32
  %82 = load i32, ptr %3, align 4, !tbaa !57
  %83 = sub i32 %81, %82
  %84 = add i32 %83, 2
  store i32 %84, ptr %5, align 4, !tbaa !57
  %85 = sitofp i32 %81 to float
  %86 = fsub float %80, %85
  store float %86, ptr %6, align 4, !tbaa !52
  br label %99

87:                                               ; preds = %71
  %88 = load float, ptr %14, align 8, !tbaa !152
  call fastcc void @calc_bevfac_segment_mapping(ptr noundef %1, float noundef %88, float noundef %52, ptr noundef nonnull %8, ptr noundef %6) #18
  %89 = load i32, ptr %8, align 4, !tbaa !57
  %90 = load i32, ptr %3, align 4, !tbaa !57
  %91 = add i32 %89, 2
  %92 = sub i32 %91, %90
  store i32 %92, ptr %5, align 4, !tbaa !57
  br label %99

93:                                               ; preds = %71
  %94 = load float, ptr %14, align 8, !tbaa !152
  call fastcc void @calc_bevfac_spline_mapping(ptr noundef %1, float noundef %94, float noundef %52, ptr noundef nonnull %8, ptr noundef %6) #18
  %95 = load i32, ptr %8, align 4, !tbaa !57
  %96 = load i32, ptr %3, align 4, !tbaa !57
  %97 = add i32 %95, 2
  %98 = sub i32 %97, %96
  store i32 %98, ptr %5, align 4, !tbaa !57
  br label %99

99:                                               ; preds = %71, %93, %87, %74
  %100 = phi i32 [ 0, %71 ], [ %95, %93 ], [ %89, %87 ], [ %81, %74 ]
  %101 = load i32, ptr %3, align 4, !tbaa !57
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load float, ptr %6, align 4, !tbaa !52
  %105 = load float, ptr %4, align 4, !tbaa !52
  %106 = fsub float 1.000000e+00, %105
  br label %114

107:                                              ; preds = %99
  %108 = icmp eq i32 %100, %101
  br i1 %108, label %109, label %121

109:                                              ; preds = %107
  %110 = load float, ptr %6, align 4, !tbaa !52
  %111 = load float, ptr %4, align 4, !tbaa !52
  %112 = fsub float 1.000000e+00, %111
  %113 = fcmp olt float %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %103, %109
  %115 = phi float [ %106, %103 ], [ %112, %109 ]
  %116 = phi float [ %104, %103 ], [ %110, %109 ]
  store i32 %100, ptr %3, align 4, !tbaa !57
  store float %115, ptr %6, align 4, !tbaa !52
  %117 = fsub float 1.000000e+00, %116
  store float %117, ptr %4, align 4, !tbaa !52
  %118 = sub i32 %101, %100
  %119 = add i32 %118, 2
  store i32 %119, ptr %5, align 4, !tbaa !57
  %120 = load i32, ptr %3, align 4, !tbaa !57
  br label %121

121:                                              ; preds = %114, %109, %107
  %122 = phi i32 [ %120, %114 ], [ %100, %109 ], [ %101, %107 ]
  %123 = load i32, ptr %5, align 4, !tbaa !57
  %124 = add nsw i32 %123, %122
  %125 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !57
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = sub nsw i32 %126, %122
  store i32 %129, ptr %5, align 4, !tbaa !57
  store float 1.000000e+00, ptr %6, align 4, !tbaa !52
  br label %130

130:                                              ; preds = %121, %128, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rotateBevelPiece(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, float noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !201 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = load ptr, ptr %7, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %93

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %19 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %21 = icmp eq ptr %2, null
  %22 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  %23 = getelementptr inbounds %struct.BevPoint, ptr %2, i64 0, i32 9
  %24 = getelementptr inbounds %struct.BevPoint, ptr %2, i64 0, i32 5
  %25 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 5
  %26 = fsub float 1.000000e+00, %4
  %27 = insertelement <2 x float> poison, float %4, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = insertelement <2 x float> poison, float %26, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  br label %31

31:                                               ; preds = %15, %87
  %32 = phi i32 [ 0, %15 ], [ %88, %87 ]
  %33 = phi ptr [ %11, %15 ], [ %90, %87 ]
  %34 = phi ptr [ %17, %15 ], [ %89, %87 ]
  %35 = load i32, ptr %18, align 4, !tbaa !137
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  %39 = getelementptr inbounds float, ptr %34, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !52
  %41 = fadd float %40, %5
  store float %41, ptr %9, align 4, !tbaa !52
  %42 = getelementptr inbounds float, ptr %34, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !52
  store float %43, ptr %19, align 4, !tbaa !52
  store float 0.000000e+00, ptr %20, align 4, !tbaa !52
  br i1 %21, label %44, label %45

44:                                               ; preds = %38
  call fastcc void @copy_v3_v3(ptr noundef %33, ptr noundef %1) #18
  call void @copy_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %22) #17
  br label %46

45:                                               ; preds = %38
  call void @interp_v3_v3v3(ptr noundef %33, ptr noundef %1, ptr noundef nonnull %2, float noundef %4) #17
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %22, ptr noundef nonnull %23, float noundef %4) #17
  br label %46

46:                                               ; preds = %45, %44
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #17
  %47 = load float, ptr %9, align 4, !tbaa !52
  %48 = load float, ptr %33, align 4, !tbaa !52
  %49 = call float @llvm.fmuladd.f32(float %6, float %47, float %48)
  store float %49, ptr %33, align 4, !tbaa !52
  %50 = load float, ptr %19, align 4, !tbaa !52
  %51 = getelementptr inbounds float, ptr %33, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !52
  %53 = call float @llvm.fmuladd.f32(float %6, float %50, float %52)
  store float %53, ptr %51, align 4, !tbaa !52
  %54 = load float, ptr %20, align 4, !tbaa !52
  %55 = getelementptr inbounds float, ptr %33, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !52
  %57 = call float @llvm.fmuladd.f32(float %6, float %54, float %56)
  store float %57, ptr %55, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  br label %87

58:                                               ; preds = %31
  br i1 %21, label %59, label %61

59:                                               ; preds = %58
  call fastcc void @copy_v3_v3(ptr noundef %33, ptr noundef %1) #18
  %60 = load <2 x float>, ptr %25, align 4, !tbaa !52
  br label %66

61:                                               ; preds = %58
  call void @interp_v3_v3v3(ptr noundef %33, ptr noundef %1, ptr noundef nonnull %2, float noundef %4) #17
  %62 = load <2 x float>, ptr %24, align 4, !tbaa !52
  %63 = load <2 x float>, ptr %25, align 4, !tbaa !52
  %64 = fmul <2 x float> %30, %63
  %65 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %62, <2 x float> %28, <2 x float> %64)
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi <2 x float> [ %60, %59 ], [ %65, %61 ]
  %68 = getelementptr inbounds float, ptr %34, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !52
  %70 = fadd float %69, %5
  %71 = fmul float %70, %6
  %72 = load float, ptr %33, align 4, !tbaa !52
  %73 = extractelement <2 x float> %67, i64 0
  %74 = call float @llvm.fmuladd.f32(float %71, float %73, float %72)
  store float %74, ptr %33, align 4, !tbaa !52
  %75 = load float, ptr %68, align 4, !tbaa !52
  %76 = fadd float %75, %5
  %77 = fmul float %76, %6
  %78 = getelementptr inbounds float, ptr %33, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !52
  %80 = extractelement <2 x float> %67, i64 1
  %81 = call float @llvm.fmuladd.f32(float %77, float %80, float %79)
  store float %81, ptr %78, align 4, !tbaa !52
  %82 = getelementptr inbounds float, ptr %34, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !52
  %84 = getelementptr inbounds float, ptr %33, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !52
  %86 = call float @llvm.fmuladd.f32(float %6, float %83, float %85)
  store float %86, ptr %84, align 4, !tbaa !52
  br label %87

87:                                               ; preds = %46, %66
  %88 = add nuw nsw i32 %32, 1
  %89 = getelementptr inbounds float, ptr %34, i64 3
  %90 = getelementptr inbounds float, ptr %33, i64 3
  %91 = load i32, ptr %12, align 8, !tbaa !54
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %31, label %93, !llvm.loop !202

93:                                               ; preds = %87, %8
  %94 = phi ptr [ %11, %8 ], [ %90, %87 ]
  store ptr %94, ptr %7, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fillBevelCap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !203 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %6 = tail call ptr %5(i64 noundef 72, ptr noundef nonnull @.str.19) #17
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 12
  %12 = tail call ptr %7(i64 noundef %11, ptr noundef nonnull @.str.4) #17
  %13 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 8
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = load i32, ptr %8, align 8, !tbaa !54
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %2, i64 %16, i1 false)
  %17 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 2
  store i16 0, ptr %17, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 4
  store i32 1, ptr %18, align 4, !tbaa !55
  %19 = load i32, ptr %8, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !112
  %23 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 6
  store i16 %22, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 21
  %25 = load i32, ptr %24, align 4, !tbaa !113
  %26 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 11
  store i32 %25, ptr %26, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !114
  %29 = and i16 %28, -9
  %30 = getelementptr inbounds %struct.DispList, ptr %6, i64 0, i32 7
  store i16 %29, ptr %30, align 2, !tbaa !115
  tail call void @BLI_addtail(ptr noundef %3, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !204 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare signext i16 @DAG_get_eval_flags_for_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calc_curvepath(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_nurb_check_valid_u(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #15 !PGOFuncName !205 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #15 !PGOFuncName !206 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calc_bevfac_segment_mapping(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #7 !PGOFuncName !207 {
  %6 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = add nsw i32 %11, -1
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, %1
  %15 = fptosi float %14 to i32
  store i32 %15, ptr %3, align 4, !tbaa !57
  %16 = icmp sgt i32 %11, 1
  br i1 %16, label %17, label %42

17:                                               ; preds = %5, %36
  %18 = phi float [ %24, %36 ], [ 0.000000e+00, %5 ]
  %19 = phi i32 [ %38, %36 ], [ 0, %5 ]
  %20 = phi ptr [ %39, %36 ], [ %9, %5 ]
  %21 = phi ptr [ %40, %36 ], [ %7, %5 ]
  %22 = load float, ptr %21, align 4, !tbaa !52
  %23 = fdiv float %22, %2
  %24 = fadd float %18, %23
  %25 = fcmp ogt float %24, %1
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = sitofp i32 %19 to float
  %28 = fsub float %1, %18
  %29 = fdiv float %28, %23
  %30 = load i32, ptr %20, align 4, !tbaa !57
  %31 = sitofp i32 %30 to float
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %27)
  %33 = fptosi float %32 to i32
  store i32 %33, ptr %3, align 4, !tbaa !57
  %34 = sitofp i32 %33 to float
  %35 = fsub float %32, %34
  store float %35, ptr %4, align 4, !tbaa !52
  br label %42

36:                                               ; preds = %17
  %37 = load i32, ptr %20, align 4, !tbaa !57
  %38 = add nsw i32 %37, %19
  %39 = getelementptr inbounds i32, ptr %20, i64 1
  %40 = getelementptr inbounds float, ptr %21, i64 1
  %41 = icmp slt i32 %38, %12
  br i1 %41, label %17, label %42, !llvm.loop !208

42:                                               ; preds = %36, %5, %26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calc_bevfac_spline_mapping(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #7 !PGOFuncName !209 {
  %6 = fmul float %1, %2
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %5, %21
  %12 = phi i32 [ %22, %21 ], [ %9, %5 ]
  %13 = phi i32 [ %23, %21 ], [ 0, %5 ]
  %14 = phi float [ %19, %21 ], [ 0.000000e+00, %5 ]
  %15 = phi ptr [ %16, %21 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.BevPoint, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.BevPoint, ptr %15, i64 1, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !210
  %19 = fadd float %14, %18
  %20 = fcmp ogt float %19, %6
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = add nsw i32 %12, -1
  %23 = add nuw nsw i32 %13, 1
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %11, !llvm.loop !211

25:                                               ; preds = %21, %11, %5
  %26 = phi float [ 0.000000e+00, %5 ], [ %14, %11 ], [ %19, %21 ]
  %27 = phi i32 [ 0, %5 ], [ %13, %11 ], [ %9, %21 ]
  %28 = phi ptr [ %7, %5 ], [ %16, %11 ], [ %16, %21 ]
  store i32 %27, ptr %3, align 4, !tbaa !57
  %29 = fsub float %6, %26
  %30 = getelementptr inbounds %struct.BevPoint, ptr %28, i64 0, i32 4
  %31 = load float, ptr %30, align 4, !tbaa !210
  %32 = fdiv float %29, %31
  store float %32, ptr %4, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_orco_dm(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !212 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @BKE_displist_make_curveTypes_forOrco(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  %4 = call ptr @CDDM_from_curve_displist(ptr noundef %1, ptr noundef nonnull %3) #17
  call void @BKE_displist_free(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_orco_dm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !213 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = tail call i32 %7(ptr noundef %1) #17
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %10 = sext i32 %8 to i64
  %11 = mul nsw i64 %10, 12
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.20) #17
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  %15 = tail call i32 %14(ptr noundef %2) #17
  %16 = icmp eq i32 %15, %8
  %17 = select i1 %16, ptr %2, ptr %1
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 77
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  tail call void %19(ptr noundef nonnull %17, ptr noundef %12) #17
  %20 = icmp sgt i32 %8, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 11
  %23 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 12
  %24 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 11, i64 1
  %25 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 12, i64 1
  %26 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 11, i64 2
  %27 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 12, i64 2
  %28 = zext nneg i32 %8 to i64
  br label %29

29:                                               ; preds = %21, %29
  %30 = phi i64 [ 0, %21 ], [ %49, %29 ]
  %31 = getelementptr inbounds [3 x float], ptr %12, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !52
  %33 = load float, ptr %22, align 8, !tbaa !52
  %34 = fsub float %32, %33
  %35 = load float, ptr %23, align 4, !tbaa !52
  %36 = fdiv float %34, %35
  store float %36, ptr %31, align 4, !tbaa !52
  %37 = getelementptr inbounds float, ptr %31, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !52
  %39 = load float, ptr %24, align 4, !tbaa !52
  %40 = fsub float %38, %39
  %41 = load float, ptr %25, align 4, !tbaa !52
  %42 = fdiv float %40, %41
  store float %42, ptr %37, align 4, !tbaa !52
  %43 = getelementptr inbounds float, ptr %31, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !52
  %45 = load float, ptr %26, align 8, !tbaa !52
  %46 = fsub float %44, %45
  %47 = load float, ptr %27, align 4, !tbaa !52
  %48 = fdiv float %46, %47
  store float %48, ptr %43, align 4, !tbaa !52
  %49 = add nuw nsw i64 %30, 1
  %50 = icmp eq i64 %49, %28
  br i1 %50, label %51, label %29, !llvm.loop !214

51:                                               ; preds = %29, %3
  %52 = tail call ptr @DM_get_vert_data_layer(ptr noundef %1, i32 noundef 14) #17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = shl nsw i64 %10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %52, ptr align 4 %12, i64 %55, i1 false)
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %56(ptr noundef %12) #17
  br label %58

57:                                               ; preds = %51
  tail call void @DM_add_vert_layer(ptr noundef %1, i32 noundef 14, i32 noundef 0, ptr noundef %12) #17
  br label %58

58:                                               ; preds = %57, %54
  ret void
}

; Function Attrs: optsize
declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_set_object_boundbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!35, !39, i64 16}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !37, i64 0}
!54 = !{!35, !40, i64 24}
!55 = !{!35, !40, i64 20}
!56 = !{i8 0, i8 2}
!57 = !{!40, !40, i64 0}
!58 = distinct !{!58, !46}
!59 = distinct !{!59, !46}
!60 = distinct !{!60, !46}
!61 = distinct !{!61, !46}
!62 = !{!35, !39, i64 18}
!63 = !{!"displist.c:add_v3_v3"}
!64 = !{!"displist.c:normalize_v3"}
!65 = distinct !{!65, !46}
!66 = !{!35, !40, i64 56}
!67 = !{!35, !39, i64 28}
!68 = !{!69, !39, i64 48}
!69 = !{!"ScanFillContext", !70, i64 0, !70, i64 16, !70, i64 32, !39, i64 48, !36, i64 56}
!70 = !{!"ListBase", !36, i64 0, !36, i64 8}
!71 = distinct !{!71, !46}
!72 = distinct !{!72, !46}
!73 = !{!37, !37, i64 0}
!74 = distinct !{!74, !46}
!75 = !{!69, !36, i64 32}
!76 = !{!77, !36, i64 16}
!77 = !{!"ScanFillFace", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!78 = !{!77, !36, i64 24}
!79 = !{!77, !36, i64 32}
!80 = !{!77, !36, i64 0}
!81 = distinct !{!81, !46}
!82 = distinct !{!82, !46}
!83 = !{!"displist.c:BLI_listbase_is_empty"}
!84 = !{!70, !36, i64 0}
!85 = !{!"displist.c:copy_v3_v3"}
!86 = !{!"displist.c:displist_calc_taper"}
!87 = !{!88, !39, i64 136}
!88 = !{!"Object", !89, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !90, i64 312, !36, i64 360, !70, i64 368, !70, i64 384, !70, i64 400, !70, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !70, i64 1056, !70, i64 1072, !70, i64 1088, !70, i64 1104, !53, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !70, i64 1176, !70, i64 1192, !70, i64 1208, !70, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !91, i64 1304, !91, i64 1312, !40, i64 1320, !40, i64 1324, !70, i64 1328, !70, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !70, i64 1400, !36, i64 1416}
!89 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!90 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!91 = !{!"long", !37, i64 0}
!92 = !{!88, !36, i64 1280}
!93 = !{!94, !36, i64 0}
!94 = !{!"CurveCache", !70, i64 0, !70, i64 16, !70, i64 32, !36, i64 48}
!95 = distinct !{!95, !46}
!96 = !{!"displist.c:boundbox_displist_object"}
!97 = !{!88, !36, i64 264}
!98 = !{!88, !36, i64 1296}
!99 = !{!88, !36, i64 296}
!100 = !{!101, !36, i64 152}
!101 = !{!"Curve", !89, i64 0, !36, i64 120, !36, i64 128, !70, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !53, i64 252, !53, i64 256, !40, i64 260, !39, i64 264, !39, i64 266, !40, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !53, i64 324, !53, i64 328, !53, i64 332, !53, i64 336, !53, i64 340, !53, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !102, i64 504, !53, i64 512, !53, i64 516, !53, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!102 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!103 = !{!104, !39, i64 20}
!104 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !40, i64 84}
!105 = !{!104, !39, i64 36}
!106 = !{!104, !39, i64 38}
!107 = !{!101, !39, i64 288}
!108 = !{!101, !39, i64 290}
!109 = !{!104, !40, i64 28}
!110 = !{!104, !39, i64 44}
!111 = !{!104, !40, i64 24}
!112 = !{!104, !39, i64 18}
!113 = !{!104, !40, i64 84}
!114 = !{!104, !39, i64 22}
!115 = !{!35, !39, i64 30}
!116 = !{!104, !39, i64 46}
!117 = distinct !{!117, !46}
!118 = !{!"displist.c:curve_calc_modifiers_pre"}
!119 = !{!101, !36, i64 376}
!120 = !{!121, !40, i64 16}
!121 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!122 = !{!121, !36, i64 96}
!123 = !{!124, !40, i64 68}
!124 = !{!"ModifierTypeInfo", !37, i64 0, !37, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!125 = !{!124, !36, i64 88}
!126 = !{!121, !36, i64 0}
!127 = !{!"displist.c:displist_surf_indices"}
!128 = !{!35, !40, i64 60}
!129 = distinct !{!129, !46}
!130 = distinct !{!130, !46}
!131 = !{!"displist.c:curve_calc_modifiers_post"}
!132 = !{!133, !36, i64 1680}
!133 = !{!"DerivedMesh", !134, i64 0, !134, i64 200, !134, i64 400, !134, i64 600, !134, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !36, i64 1032, !36, i64 1040, !40, i64 1048, !53, i64 1052, !40, i64 1056, !40, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!134 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!135 = !{!133, !36, i64 1104}
!136 = !{!133, !36, i64 1536}
!137 = !{!101, !40, i64 268}
!138 = distinct !{!138, !46}
!139 = !{!133, !36, i64 1120}
!140 = !{!133, !36, i64 1096}
!141 = !{!133, !40, i64 1056}
!142 = !{!133, !40, i64 1048}
!143 = !{!"displist.c:do_makeDispListCurveTypes"}
!144 = !{!94, !36, i64 48}
!145 = !{!146, !36, i64 0}
!146 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !70, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!147 = !{!101, !53, i64 272}
!148 = !{!149, !53, i64 28}
!149 = !{!"BevPoint", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !37, i64 36, !37, i64 48, !37, i64 60, !39, i64 76, !39, i64 78}
!150 = !{!149, !53, i64 32}
!151 = distinct !{!151, !46}
!152 = !{!101, !53, i64 520}
!153 = !{!101, !53, i64 516}
!154 = !{!101, !36, i64 168}
!155 = !{!149, !53, i64 16}
!156 = !{!149, !39, i64 76}
!157 = !{!101, !36, i64 160}
!158 = distinct !{!158, !46}
!159 = distinct !{!159, !46}
!160 = distinct !{!160, !46}
!161 = !{!133, !36, i64 1320}
!162 = !{!"displist.c:curve_calc_orcodm"}
!163 = distinct !{!163, !46}
!164 = distinct !{!164, !46}
!165 = distinct !{!165, !46}
!166 = !{!"displist.c:zero_v3"}
!167 = !{!"displist.c:normalize_v3_v3"}
!168 = !{!"displist.c:dot_v3v3"}
!169 = !{!"displist.c:mul_v3_v3fl"}
!170 = !{!"displist.c:curve_get_tessellate_point"}
!171 = !{!121, !40, i64 20}
!172 = distinct !{!172, !46}
!173 = !{!"displist.c:displist_get_allverts"}
!174 = distinct !{!174, !46}
!175 = distinct !{!175, !46}
!176 = !{!"displist.c:displist_apply_allverts"}
!177 = distinct !{!177, !46}
!178 = !{!"displist.c:curve_to_filledpoly"}
!179 = !{!"displist.c:bevels_to_filledpoly"}
!180 = distinct !{!180, !46}
!181 = distinct !{!181, !46}
!182 = distinct !{!182, !46}
!183 = !{!"displist.c:BLI_listbase_clear"}
!184 = !{!"displist.c:curve_to_displist"}
!185 = !{!104, !39, i64 16}
!186 = !{!104, !36, i64 72}
!187 = !{!188, !37, i64 50}
!188 = !{!"BezTriple", !37, i64 0, !53, i64 36, !53, i64 40, !53, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !53, i64 56, !53, i64 60, !53, i64 64, !37, i64 68}
!189 = !{!188, !37, i64 49}
!190 = distinct !{!190, !46}
!191 = distinct !{!191, !46}
!192 = distinct !{!192, !46}
!193 = !{!104, !36, i64 64}
!194 = distinct !{!194, !46}
!195 = distinct !{!195, !46}
!196 = !{!"displist.c:calc_bevfac_mapping_default"}
!197 = !{!"displist.c:calc_bevfac_mapping"}
!198 = !{!101, !37, i64 524}
!199 = distinct !{!199, !46}
!200 = !{!101, !37, i64 525}
!201 = !{!"displist.c:rotateBevelPiece"}
!202 = distinct !{!202, !46}
!203 = !{!"displist.c:fillBevelCap"}
!204 = !{!"displist.c:negate_v3_v3"}
!205 = !{!"displist.c:min_ff"}
!206 = !{!"displist.c:max_ff"}
!207 = !{!"displist.c:calc_bevfac_segment_mapping"}
!208 = distinct !{!208, !46}
!209 = !{!"displist.c:calc_bevfac_spline_mapping"}
!210 = !{!149, !53, i64 24}
!211 = distinct !{!211, !46}
!212 = !{!"displist.c:create_orco_dm"}
!213 = !{!"displist.c:add_orco_dm"}
!214 = distinct !{!214, !46}
