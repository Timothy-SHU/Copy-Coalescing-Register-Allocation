; ModuleID = 'blender/source/blender/blenkernel/intern/curve.c'
source_filename = "blender/source/blender/blenkernel/intern/curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
%struct.EditNurb = type { %struct.ListBase, ptr, i32, [4 x i8] }
%struct.TextBox = type { float, float, float, float }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.BevelSort = type { ptr, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.rctf = type { float, float, float, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"strinfo new\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"textbox\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"boundbox\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"duplicateNurb\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"duplicateNurb2\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"duplicateNurb3\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"duplicateNurb4\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"duplicateNurb5\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"copyNurb\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"copyNurb2\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"copyNurb3\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_nurb_points_add = private unnamed_addr constant [20 x i8] c"BKE_nurb_points_add\00", align 1
@__func__.BKE_nurb_bezierPoints_add = private unnamed_addr constant [26 x i8] c"BKE_nurb_bezierPoints_add\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"makeNurbfaces1\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"makeNurbfaces3\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"makeNurbfaces4\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"makeNurbfaces5\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"makeNurbcurve1\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"makeNurbcurve3\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"make_orco\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"temp data\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"cu_orco\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"makebevelcurve1\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"makebevelcurve2\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"makebevelcurve p1\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"makebevelcurve p2\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"makebevelcurve p3\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"makeBevelList1\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"makeBevelList2\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"makeBevelList2_seglen\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"makeBevelList2_segbevcount\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"makeBevelBPoints\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"makeBevelBPoints_seglen\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"makeBevelBPoints_segbevcount\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"makeBevelList3\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"makeBevelList3_seglen\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"makeBevelList3_segbevcount\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"makeBevelList4\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"makeBevelList5\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"switchdirect\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"cu_vcos\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"setsplinetype2\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"setsplinetype\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"makeknots\00", align 1
@__const.make_bevel_list_3D_minimum_twist.vec_2 = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 4
@__const.bevel_list_smooth.zaxis = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@str = private unnamed_addr constant [56 x i8] c"bez nurb curve order is not 3 or 4, should never happen\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_unlink(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %3 = load i16, ptr %2, align 2, !tbaa !34
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !47
  br label %18

18:                                               ; preds = %14, %8
  store ptr null, ptr %11, align 8, !tbaa !46
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %8, !llvm.loop !51

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !54
  br label %29

29:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !54
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 4, !tbaa !54
  br label %37

37:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !54
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !54
  br label %45

45:                                               ; preds = %41, %37
  store ptr null, ptr %38, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !54
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %50, align 4, !tbaa !54
  br label %53

53:                                               ; preds = %49, %45
  store ptr null, ptr %46, align 8, !tbaa !58
  %54 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !60
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %58, align 4, !tbaa !60
  br label %61

61:                                               ; preds = %57, %53
  store ptr null, ptr %54, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_editfont_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 53
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %10(ptr noundef nonnull %7) #24
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %16(ptr noundef nonnull %13) #24
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %3, align 8, !tbaa !66
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %21(ptr noundef nonnull %18) #24
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %27(ptr noundef nonnull %24) #24
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %33(ptr noundef nonnull %30) #24
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %3) #24
  store ptr null, ptr %2, align 8, !tbaa !62
  br label %36

36:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_editNurb_keyIndex_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef %6) #24
  store ptr null, ptr %2, align 8, !tbaa !69
  br label %7

7:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_editNurb_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  tail call void @BKE_nurbList_free(ptr noundef nonnull %3) #25
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @BKE_curve_editNurb_keyIndex_free(ptr noundef %6) #25
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %8 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void %7(ptr noundef %8) #24
  store ptr null, ptr %2, align 8, !tbaa !71
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurbList_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  tail call void @BKE_nurb_free(ptr noundef nonnull %7) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !75

10:                                               ; preds = %6, %3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #25
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  tail call void @BKE_nurbList_free(ptr noundef nonnull %2) #25
  tail call void @BKE_curve_editfont_free(ptr noundef %0) #25
  tail call void @BKE_curve_editNurb_free(ptr noundef %0) #25
  tail call void @BKE_curve_unlink(ptr noundef %0) #25
  tail call void @BKE_free_animdata(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %7(ptr noundef nonnull %4) #24
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %10) #24
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %19(ptr noundef nonnull %16) #24
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %25(ptr noundef nonnull %22) #24
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 59
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %31(ptr noundef nonnull %28) #24
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21827, ptr noundef %1) #24
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %5) #25
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  store i32 4166, ptr %6, align 4, !tbaa !80
  %7 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 20
  store i32 100, ptr %7, align 4, !tbaa !81
  %8 = icmp eq i32 %2, 3
  %9 = select i1 %8, i16 4, i16 12
  %10 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 28
  store i16 %9, ptr %10, align 2, !tbaa !82
  %11 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 27
  store i16 %9, ptr %11, align 4, !tbaa !83
  %12 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 24
  store float 1.000000e+00, ptr %12, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 37
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %13, align 4, !tbaa !85
  %14 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 40
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 8, !tbaa !85
  %15 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 43
  store float 0x3FA99999A0000000, ptr %15, align 4, !tbaa !86
  %16 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 15
  store i16 1, ptr %16, align 2, !tbaa !87
  %17 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 19
  store float 7.500000e-01, ptr %17, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 17
  store i16 3, ptr %18, align 2, !tbaa !89
  %19 = trunc i32 %2 to i16
  %20 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 14
  store i16 %19, ptr %20, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 65
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %21, align 4, !tbaa !85
  %22 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 67
  store i8 0, ptr %22, align 4, !tbaa !91
  %23 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 68
  store i8 0, ptr %23, align 1, !tbaa !92
  %24 = tail call ptr @BKE_boundbox_alloc_unit() #24
  %25 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !78
  %26 = icmp eq i32 %2, 4
  br i1 %26, label %27, label %52

27:                                               ; preds = %3
  %28 = tail call ptr @BKE_vfont_builtin_get() #24
  %29 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 58
  store ptr %28, ptr %29, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 57
  store ptr %28, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 56
  store ptr %28, ptr %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 55
  store ptr %28, ptr %32, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !54
  %35 = add nsw i32 %34, 4
  store i32 %35, ptr %33, align 4, !tbaa !54
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %37 = tail call ptr %36(i64 noundef 12, ptr noundef nonnull @.str) #24
  %38 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 52
  store ptr %37, ptr %38, align 8, !tbaa !76
  %39 = tail call ptr @BLI_strncpy(ptr noundef %37, ptr noundef nonnull @.str.1, i64 noundef 12) #24
  %40 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 47
  store i32 4, ptr %40, align 4, !tbaa !93
  %41 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 50
  store i32 4, ptr %41, align 8, !tbaa !94
  %42 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 51
  store i32 4, ptr %42, align 4, !tbaa !95
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %44 = tail call ptr %43(i64 noundef 96, ptr noundef nonnull @.str.2) #24
  %45 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 62
  store ptr %44, ptr %45, align 8, !tbaa !77
  %46 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 61
  store i32 1, ptr %46, align 4, !tbaa !96
  %47 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 60
  store i32 1, ptr %47, align 8, !tbaa !97
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %49 = tail call ptr %48(i64 noundef 4096, ptr noundef nonnull @.str.3) #24
  %50 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 59
  store ptr %49, ptr %50, align 8, !tbaa !79
  %51 = getelementptr inbounds %struct.TextBox, ptr %49, i64 0, i32 2
  store <2 x float> zeroinitializer, ptr %51, align 4, !tbaa !85
  br label %52

52:                                               ; preds = %27, %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !98 {
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !85
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 1.000000e+00, ptr %2, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_boundbox_alloc_unit() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_vfont_builtin_get() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #25
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  tail call void @BKE_nurbList_duplicate(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call ptr %5(ptr noundef %7) #24
  %9 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 10
  store ptr %8, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 22
  %11 = load i16, ptr %10, align 2, !tbaa !34
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %1 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call void @id_us_plus(ptr noundef %17) #24
  %18 = add nuw nsw i64 %14, 1
  %19 = load i16, ptr %10, align 2, !tbaa !34
  %20 = sext i16 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !99

22:                                               ; preds = %13, %1
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 52
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = tail call ptr %23(ptr noundef %25) #24
  %27 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 52
  store ptr %26, ptr %27, align 8, !tbaa !76
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %30 = load ptr, ptr %29, align 8, !tbaa !77
  %31 = tail call ptr %28(ptr noundef %30) #24
  %32 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 62
  store ptr %31, ptr %32, align 8, !tbaa !77
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 59
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = tail call ptr %33(ptr noundef %35) #24
  %37 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 59
  store ptr %36, ptr %37, align 8, !tbaa !79
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = tail call ptr %38(ptr noundef %40) #24
  %42 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !78
  %43 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = tail call ptr @BKE_key_copy(ptr noundef %44) #24
  %46 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 9
  store ptr %45, ptr %46, align 8, !tbaa !59
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.Key, ptr %45, i64 0, i32 8
  store ptr %2, ptr %49, align 8, !tbaa !100
  br label %50

50:                                               ; preds = %48, %22
  %51 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 4
  store ptr null, ptr %51, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 53
  store ptr null, ptr %52, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 55
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  tail call void @id_us_plus(ptr noundef %54) #24
  %55 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 56
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  tail call void @id_us_plus(ptr noundef %56) #24
  %57 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 57
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  tail call void @id_us_plus(ptr noundef %58) #24
  %59 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 58
  %60 = load ptr, ptr %59, align 8, !tbaa !58
  tail call void @id_us_plus(ptr noundef %60) #24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !101 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurbList_duplicate(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @BKE_nurbList_free(ptr noundef %0) #25
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %6) #25
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #24
  %8 = load ptr, ptr %6, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !102

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_make_local(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @G, align 8, !tbaa !103
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #24
  tail call fastcc void @extern_local_curve(ptr noundef nonnull %0) #25
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %35, %32 ], [ %13, %11 ]
  %17 = phi i8 [ %34, %32 ], [ 0, %11 ]
  %18 = phi i8 [ %33, %32 ], [ 0, %11 ]
  %19 = icmp eq i8 %17, 0
  %20 = icmp eq i8 %18, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 1, i8 %18
  %31 = select i1 %29, i8 %17, i8 1
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !112

37:                                               ; preds = %32
  %38 = icmp ne i8 %33, 0
  %39 = icmp eq i8 %34, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #24
  tail call fastcc void @extern_local_curve(ptr noundef %0) #25
  br label %70

42:                                               ; preds = %15, %37
  %43 = phi i8 [ %34, %37 ], [ %17, %15 ]
  %44 = phi i1 [ %38, %37 ], [ true, %15 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_curve_copy(ptr noundef %0) #25
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  store i32 0, ptr %49, align 4, !tbaa !106
  %50 = load ptr, ptr %3, align 8, !tbaa !105
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %50, ptr noundef %48) #24
  %51 = load ptr, ptr %12, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %47, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !107
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  store ptr %48, ptr %55, align 8, !tbaa !107
  %63 = load i32, ptr %49, align 4, !tbaa !106
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %49, align 4, !tbaa !106
  %65 = load i32, ptr %7, align 4, !tbaa !106
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %7, align 4, !tbaa !106
  br label %67

67:                                               ; preds = %53, %62, %58
  %68 = load ptr, ptr %54, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !llvm.loop !113

70:                                               ; preds = %67, %11, %47, %41, %42, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extern_local_curve(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  tail call void @id_lib_extern(ptr noundef %3) #24
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  tail call void @id_lib_extern(ptr noundef %5) #24
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @id_lib_extern(ptr noundef %7) #24
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @id_lib_extern(ptr noundef %9) #24
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %15 = load i16, ptr %14, align 2, !tbaa !34
  tail call void @extern_local_matarar(ptr noundef nonnull %11, i16 noundef signext %15) #24
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_curve_editNurbs_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @BKE_curve_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 4, !tbaa !90
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %9 ]
  %15 = phi i16 [ %19, %13 ], [ 2, %9 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !115
  %18 = icmp sgt i32 %17, 1
  %19 = select i1 %18, i16 3, i16 %15
  %20 = load ptr, ptr %14, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !116

22:                                               ; preds = %13, %9, %5, %1
  %23 = phi i16 [ 4, %1 ], [ %7, %5 ], [ 2, %9 ], [ %19, %13 ]
  ret i16 %23
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_curve_curve_dimension_update(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #25
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq ptr %3, null
  br i1 %7, label %10, label %9

9:                                                ; preds = %1
  br i1 %8, label %30, label %11

10:                                               ; preds = %1
  br i1 %8, label %30, label %18

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %16, %11 ], [ %3, %9 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !117
  %15 = and i16 %14, -9
  store i16 %15, ptr %13, align 2, !tbaa !117
  %16 = load ptr, ptr %12, align 8, !tbaa !73
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %11, !llvm.loop !118

18:                                               ; preds = %10, %27
  %19 = phi ptr [ %28, %27 ], [ %3, %10 ]
  %20 = getelementptr inbounds %struct.Nurb, ptr %19, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !117
  %22 = or i16 %21, 8
  store i16 %22, ptr %20, align 2, !tbaa !117
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %19) #25
  %23 = getelementptr inbounds %struct.Nurb, ptr %19, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !119
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %19) #25
  br label %27

27:                                               ; preds = %18, %26
  %28 = load ptr, ptr %19, align 8, !tbaa !73
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !120

30:                                               ; preds = %11, %27, %9, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_curve_nurbs_get(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef nonnull %0) #25
  br label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nurb_test2D(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !117
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !119
  %9 = icmp eq i16 %8, 1
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !121
  br i1 %9, label %12, label %26

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %20, %17 ], [ %11, %14 ]
  %19 = phi ptr [ %24, %17 ], [ %16, %14 ]
  %20 = add nsw i32 %18, -1
  %21 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  store float 0.000000e+00, ptr %21, align 4, !tbaa !85
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %22, align 4, !tbaa !85
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %23, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %41, label %17, !llvm.loop !123

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !115
  %29 = mul nsw i32 %28, %11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %37, %34 ], [ %29, %31 ]
  %36 = phi ptr [ %39, %34 ], [ %33, %31 ]
  %37 = add nsw i32 %35, -1
  %38 = getelementptr inbounds [4 x float], ptr %36, i64 0, i64 2
  store float 0.000000e+00, ptr %38, align 4, !tbaa !85
  %39 = getelementptr inbounds %struct.BPoint, ptr %36, i64 1
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %34, !llvm.loop !125

41:                                               ; preds = %34, %17, %26, %12, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handles_calc(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  tail call fastcc void @calchandlesNurb_intern(ptr noundef %0, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_curve_type_test(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = tail call signext i16 @BKE_curve_type_get(ptr noundef %3) #25
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !126
  %6 = icmp eq i16 %4, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @BKE_curve_curve_dimension_update(ptr noundef %3) #25
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_boundbox_calc(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = tail call ptr %11(i64 noundef 104, ptr noundef nonnull @.str.4) #24
  store ptr %12, ptr %7, align 8, !tbaa !78
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %8, %3 ]
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr %6, ptr %1
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 8, !tbaa !85
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !85
  %19 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %19, align 8, !tbaa !85
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !85
  %20 = call zeroext i8 @BKE_curve_minmax(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25, !range !127
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store float -1.000000e+00, ptr %18, align 8, !tbaa !85
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %4, align 8, !tbaa !85
  store float 1.000000e+00, ptr %19, align 8, !tbaa !85
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %5, align 8, !tbaa !85
  br label %23

23:                                               ; preds = %22, %13
  call void @mid_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  br i1 %17, label %34, label %24

24:                                               ; preds = %23
  %25 = load <2 x float>, ptr %5, align 8, !tbaa !85
  %26 = load <2 x float>, ptr %4, align 8, !tbaa !85
  %27 = fsub <2 x float> %25, %26
  %28 = fmul <2 x float> %27, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %28, ptr %2, align 4, !tbaa !85
  %29 = load float, ptr %19, align 8, !tbaa !85
  %30 = load float, ptr %18, align 8, !tbaa !85
  %31 = fsub float %29, %30
  %32 = fmul float %31, 5.000000e-01
  %33 = getelementptr inbounds float, ptr %2, i64 2
  store float %32, ptr %33, align 4, !tbaa !85
  br label %34

34:                                               ; preds = %23, %24
  call void @BKE_boundbox_init_from_minmax(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %35 = getelementptr inbounds %struct.BoundBox, ptr %14, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !128
  %37 = and i32 %36, -3
  store i32 %37, ptr %35, align 4, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_curve_minmax(ptr noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #25
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  tail call void @BKE_nurb_minmax(ptr noundef nonnull %9, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #25
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !130

12:                                               ; preds = %8, %4
  %13 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %5) #25, !range !127
  %14 = xor i8 %13, 1
  ret i8 %14
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_boundbox_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BoundBox, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !128
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %7
  tail call void @BKE_curve_texspace_calc(ptr noundef nonnull %3) #25
  %17 = load ptr, ptr %8, align 8, !tbaa !78
  br label %18

18:                                               ; preds = %11, %16, %1
  %19 = phi ptr [ %5, %1 ], [ %17, %16 ], [ %9, %11 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_texspace_calc(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call void @BKE_curve_boundbox_calc(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !87
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1, %23
  %9 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = fcmp ogt float %11, 0.000000e+00
  %15 = fcmp olt float %11, 0x3EE4F8B580000000
  %16 = and i1 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = fcmp olt float %11, 0.000000e+00
  %19 = fcmp ogt float %11, 0xBEE4F8B580000000
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13, %8
  %22 = phi float [ 1.000000e+00, %8 ], [ 0x3EE4F8B580000000, %13 ], [ 0xBEE4F8B580000000, %17 ]
  store float %22, ptr %10, align 4, !tbaa !85
  br label %23

23:                                               ; preds = %21, %17
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %8, !llvm.loop !132

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %2) #25
  %28 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %3) #25
  %29 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13
  call fastcc void @zero_v3(ptr noundef nonnull %29) #25
  br label %30

30:                                               ; preds = %26, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !133 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !134 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !85
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_texspace_get(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BoundBox, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !128
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %4
  tail call void @BKE_curve_texspace_calc(ptr noundef nonnull %0) #25
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %17) #25
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %21) #25
  br label %22

22:                                               ; preds = %20, %18
  %23 = icmp eq ptr %3, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %25) #25
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nurbList_index_get_co(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3, %33
  %7 = phi ptr [ %36, %33 ], [ %4, %3 ]
  %8 = phi i32 [ %35, %33 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !119
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !121
  br i1 %11, label %14, label %22

14:                                               ; preds = %6
  %15 = sub nsw i32 %1, %8
  %16 = icmp slt i32 %15, %13
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 %20, i32 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %21) #25
  br label %38

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !115
  %25 = mul nsw i32 %24, %13
  %26 = sub nsw i32 %1, %8
  %27 = icmp slt i32 %26, %25
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = sext i32 %26 to i64
  %32 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %31
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %32) #25
  br label %38

33:                                               ; preds = %14, %22
  %34 = phi i32 [ %13, %14 ], [ %25, %22 ]
  %35 = add nsw i32 %34, %8
  %36 = load ptr, ptr %7, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %6, !llvm.loop !135

38:                                               ; preds = %33, %3, %28, %17
  %39 = phi i8 [ 1, %17 ], [ 1, %28 ], [ 0, %3 ], [ 0, %33 ]
  ret i8 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_nurbList_verts_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %26
  %5 = phi ptr [ %28, %26 ], [ %2, %1 ]
  %6 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = mul nsw i32 %12, 3
  %14 = add nsw i32 %13, %6
  br label %26

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !115
  %24 = mul nsw i32 %23, %21
  %25 = add nsw i32 %24, %6
  br label %26

26:                                               ; preds = %15, %19, %10
  %27 = phi i32 [ %14, %10 ], [ %25, %19 ], [ %6, %15 ]
  %28 = load ptr, ptr %5, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %4, !llvm.loop !136

30:                                               ; preds = %26, %1
  %31 = phi i32 [ 0, %1 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_nurbList_verts_count_without_handles(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %27, %25 ], [ %2, %1 ]
  %6 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = add nsw i32 %12, %6
  br label %25

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !115
  %23 = mul nsw i32 %22, %20
  %24 = add nsw i32 %23, %6
  br label %25

25:                                               ; preds = %14, %18, %10
  %26 = phi i32 [ %13, %10 ], [ %24, %18 ], [ %6, %14 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !llvm.loop !137

29:                                               ; preds = %25, %1
  %30 = phi i32 [ 0, %1 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %5) #24
  br label %9

9:                                                ; preds = %7, %3
  store ptr null, ptr %4, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %14(ptr noundef nonnull %11) #24
  br label %15

15:                                               ; preds = %13, %9
  store ptr null, ptr %10, align 8, !tbaa !124
  %16 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %17) #24
  br label %21

21:                                               ; preds = %19, %15
  store ptr null, ptr %16, align 8, !tbaa !138
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef nonnull %23) #24
  br label %27

27:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !139
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %28(ptr noundef nonnull %0) #24
  br label %29

29:                                               ; preds = %1, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_nurb_duplicate(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str.5) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 72
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.6) #24
  %16 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 18
  store ptr %15, ptr %16, align 8, !tbaa !122
  %17 = load ptr, ptr %6, align 8, !tbaa !122
  %18 = load i32, ptr %11, align 8, !tbaa !121
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %17, i64 %20, i1 false)
  br label %85

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !115
  %26 = mul nsw i32 %25, %23
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %28 = sext i32 %26 to i64
  %29 = mul nsw i64 %28, 36
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @.str.7) #24
  %31 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 17
  store ptr %30, ptr %31, align 8, !tbaa !124
  %32 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %33, i64 %29, i1 false)
  %34 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 16
  %35 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 15
  %36 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %37 = load ptr, ptr %36, align 8, !tbaa !138
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %41 = load i16, ptr %40, align 8, !tbaa !140
  %42 = sext i16 %41 to i32
  %43 = load i32, ptr %22, align 8, !tbaa !121
  %44 = add nsw i32 %43, %42
  %45 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %46 = load i16, ptr %45, align 4, !tbaa !141
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  %49 = add nsw i32 %42, -1
  %50 = select i1 %48, i32 0, i32 %49
  %51 = add nsw i32 %44, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %39
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %55 = sext i32 %51 to i64
  %56 = shl nsw i64 %55, 2
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.8) #24
  store ptr %57, ptr %35, align 8, !tbaa !138
  %58 = load ptr, ptr %36, align 8, !tbaa !138
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %57, ptr align 4 %58, i64 %56, i1 false)
  br label %59

59:                                               ; preds = %39, %53, %21
  %60 = load i32, ptr %24, align 4, !tbaa !115
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %68 = load i16, ptr %67, align 2, !tbaa !142
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %60, %69
  %71 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %72 = load i16, ptr %71, align 2, !tbaa !143
  %73 = and i16 %72, 1
  %74 = icmp eq i16 %73, 0
  %75 = add nsw i32 %69, -1
  %76 = select i1 %74, i32 0, i32 %75
  %77 = add nsw i32 %70, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %66
  %80 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %81 = sext i32 %77 to i64
  %82 = shl nsw i64 %81, 2
  %83 = tail call ptr %80(i64 noundef %82, ptr noundef nonnull @.str.9) #24
  store ptr %83, ptr %34, align 8, !tbaa !139
  %84 = load ptr, ptr %63, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 4 %84, i64 %82, i1 false)
  br label %85

85:                                               ; preds = %9, %66, %79, %62, %59, %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_nurb_copy(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 88, ptr noundef nonnull @.str.10) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %6 = icmp eq i32 %1, 1
  %7 = select i1 %6, i32 1, i32 %2
  %8 = select i1 %6, i32 %2, i32 %1
  %9 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  store i32 %8, ptr %9, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  store i32 %7, ptr %10, align 4, !tbaa !115
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %15 = mul nsw i32 %8, %7
  %16 = sext i32 %15 to i64
  br i1 %13, label %21, label %17

17:                                               ; preds = %3
  %18 = mul nsw i64 %16, 72
  %19 = tail call ptr %14(i64 noundef %18, ptr noundef nonnull @.str.11) #24
  %20 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  store ptr %19, ptr %20, align 8, !tbaa !122
  br label %25

21:                                               ; preds = %3
  %22 = mul nsw i64 %16, 36
  %23 = tail call ptr %14(i64 noundef %22, ptr noundef nonnull @.str.12) #24
  %24 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  store ptr %23, ptr %24, align 8, !tbaa !124
  br label %25

25:                                               ; preds = %21, %17
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_minmax(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !119
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !121
  br i1 %10, label %13, label %35

13:                                               ; preds = %4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  %18 = icmp eq i8 %1, 0
  %19 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %20 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  br label %21

21:                                               ; preds = %15, %31
  %22 = phi i32 [ %12, %15 ], [ %24, %31 ]
  %23 = phi ptr [ %17, %15 ], [ %33, %31 ]
  %24 = add nsw i32 %22, -1
  br i1 %18, label %29, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  %26 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !144
  store float %27, ptr %19, align 4, !tbaa !85
  store float %27, ptr %20, align 4, !tbaa !85
  store float %27, ptr %6, align 4, !tbaa !85
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull %6) #25
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull %6) #25
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  br label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %30) #24
  br label %31

31:                                               ; preds = %29, %25
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef %23) #24
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 2
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %32) #24
  %33 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 1
  %34 = icmp eq i32 %24, 0
  br i1 %34, label %60, label %21, !llvm.loop !146

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !115
  %38 = mul nsw i32 %37, %12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  %43 = icmp ne i8 %1, 0
  %44 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %45 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  br label %46

46:                                               ; preds = %40, %57
  %47 = phi i32 [ %38, %40 ], [ %49, %57 ]
  %48 = phi ptr [ %42, %40 ], [ %58, %57 ]
  %49 = add nsw i32 %47, -1
  %50 = load i32, ptr %36, align 4, !tbaa !115
  %51 = icmp eq i32 %50, 1
  %52 = and i1 %43, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  %54 = getelementptr inbounds %struct.BPoint, ptr %48, i64 0, i32 5
  %55 = load float, ptr %54, align 4, !tbaa !147
  store float %55, ptr %44, align 4, !tbaa !85
  store float %55, ptr %45, align 4, !tbaa !85
  store float %55, ptr %7, align 4, !tbaa !85
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef %48, ptr noundef nonnull %7) #25
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %48, ptr noundef nonnull %7) #25
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  br label %57

56:                                               ; preds = %46
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef %48) #24
  br label %57

57:                                               ; preds = %56, %53
  %58 = getelementptr inbounds %struct.BPoint, ptr %48, i64 1
  %59 = icmp eq i32 %49, 0
  br i1 %59, label %60, label %46, !llvm.loop !149

60:                                               ; preds = %57, %31, %35, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !150 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !151 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_points_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = add nsw i32 %7, %1
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 36
  %11 = tail call ptr %3(ptr noundef %5, i64 noundef %10, ptr noundef nonnull @__func__.BKE_nurb_points_add) #24
  store ptr %11, ptr %4, align 8, !tbaa !124
  %12 = load i32, ptr %6, align 8, !tbaa !121
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.BPoint, ptr %11, i64 %15
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %21, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %22, %17 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.BPoint, ptr %19, i64 0, i32 5
  store float 1.000000e+00, ptr %20, align 4, !tbaa !147
  %21 = add nuw nsw i32 %18, 1
  %22 = getelementptr inbounds %struct.BPoint, ptr %19, i64 1
  %23 = icmp eq i32 %21, %1
  br i1 %23, label %24, label %17, !llvm.loop !152

24:                                               ; preds = %17, %2
  %25 = add nsw i32 %12, %1
  store i32 %25, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_bezierPoints_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = add nsw i32 %7, %1
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 72
  %11 = tail call ptr %3(ptr noundef %5, i64 noundef %10, ptr noundef nonnull @__func__.BKE_nurb_bezierPoints_add) #24
  store ptr %11, ptr %4, align 8, !tbaa !122
  %12 = load i32, ptr %6, align 8, !tbaa !121
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 %15
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %21, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %22, %17 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 3
  store float 1.000000e+00, ptr %20, align 4, !tbaa !144
  %21 = add nuw nsw i32 %18, 1
  %22 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %23 = icmp eq i32 %21, %1
  br i1 %23, label %24, label %17, !llvm.loop !153

24:                                               ; preds = %17, %2
  %25 = add nsw i32 %12, %1
  store i32 %25, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bezt_get_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BezTriple, ptr %4, i64 %7
  %9 = getelementptr %struct.BezTriple, ptr %8, i64 -1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %13 = load i16, ptr %12, align 4, !tbaa !141
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, ptr null, ptr %4
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %16, %11 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bpoint_get_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BPoint, ptr %4, i64 %7
  %9 = getelementptr %struct.BPoint, ptr %8, i64 -1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %13 = load i16, ptr %12, align 4, !tbaa !141
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, ptr null, ptr %4
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BPoint, ptr %1, i64 1
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %16, %11 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bezt_get_prev(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %8 = load i16, ptr %7, align 4, !tbaa !141
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !121
  %14 = sext i32 %13 to i64
  %15 = getelementptr %struct.BezTriple, ptr %1, i64 %14
  %16 = getelementptr %struct.BezTriple, ptr %15, i64 -1
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 -1
  br label %19

19:                                               ; preds = %6, %11, %17
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bpoint_get_prev(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %8 = load i16, ptr %7, align 4, !tbaa !141
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !121
  %14 = sext i32 %13 to i64
  %15 = getelementptr %struct.BPoint, ptr %1, i64 %14
  %16 = getelementptr %struct.BPoint, ptr %15, i64 -1
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BPoint, ptr %1, i64 -1
  br label %19

19:                                               ; preds = %6, %11, %17
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BKE_nurb_bezt_calc_normal(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #11 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %6) #25
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %8 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #25
  %9 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %10 = tail call fastcc float @normalize_v3(ptr noundef %2) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !154 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #25
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_bezt_calc_plane(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #12 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %8) #25
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #25
  %11 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %12 = tail call fastcc float @normalize_v3(ptr noundef %2) #25
  %13 = fcmp olt float %12, 0x3E80000000000000
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = tail call ptr @BKE_nurb_bezt_get_prev(ptr noundef %0, ptr noundef %1) #25
  %16 = tail call ptr @BKE_nurb_bezt_get_next(ptr noundef %0, ptr noundef %1) #25
  %17 = icmp eq ptr %15, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %8) #25
  %20 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #25
  br label %21

21:                                               ; preds = %18, %14
  %22 = icmp eq ptr %16, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %24) #25
  %25 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  br label %26

26:                                               ; preds = %23, %21
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  br label %27

27:                                               ; preds = %26, %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %6) #25
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  %28 = tail call fastcc float @normalize_v3(ptr noundef %2) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !155 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !85
  %15 = load float, ptr %8, align 4, !tbaa !85
  %16 = load float, ptr %2, align 4, !tbaa !85
  %17 = load float, ptr %1, align 4, !tbaa !85
  %18 = load float, ptr %6, align 4, !tbaa !85
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !85
  %23 = load float, ptr %1, align 4, !tbaa !85
  %24 = load float, ptr %10, align 4, !tbaa !85
  %25 = load float, ptr %4, align 4, !tbaa !85
  %26 = load float, ptr %2, align 4, !tbaa !85
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_knot_calc_u(ptr nocapture noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @makeknots(ptr noundef %0, i16 noundef signext 1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @makeknots(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #2 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !119
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %6, label %86

6:                                                ; preds = %2
  %7 = icmp eq i16 %1, 1
  br i1 %7, label %8, label %47

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %10) #24
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef nonnull %0) #25, !range !127
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !140
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !121
  %24 = add nsw i32 %23, %21
  %25 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %26 = load i16, ptr %25, align 4, !tbaa !141
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  %29 = add nsw i32 %21, -1
  %30 = select i1 %28, i32 0, i32 %29
  %31 = add nsw i32 %24, %30
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = add nsw i64 %33, 4
  %35 = tail call ptr %18(i64 noundef %34, ptr noundef nonnull @.str.43) #24
  store ptr %35, ptr %9, align 8, !tbaa !138
  %36 = load i16, ptr %25, align 4, !tbaa !141
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  %39 = load i32, ptr %22, align 8, !tbaa !121
  %40 = load i16, ptr %19, align 8, !tbaa !140
  br i1 %38, label %45, label %41

41:                                               ; preds = %17
  tail call fastcc void @calcknots(ptr noundef %35, i32 noundef %39, i16 noundef signext %40, i16 noundef signext 0) #25
  %42 = load ptr, ptr %9, align 8, !tbaa !138
  %43 = load i32, ptr %22, align 8, !tbaa !121
  %44 = load i16, ptr %19, align 8, !tbaa !140
  tail call fastcc void @makecyclicknots(ptr noundef %42, i32 noundef %43, i16 noundef signext %44) #25
  br label %86

45:                                               ; preds = %17
  tail call fastcc void @calcknots(ptr noundef %35, i32 noundef %39, i16 noundef signext %40, i16 noundef signext %36) #25
  br label %86

46:                                               ; preds = %14
  store ptr null, ptr %9, align 8, !tbaa !138
  br label %86

47:                                               ; preds = %6
  %48 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %52(ptr noundef nonnull %49) #24
  br label %53

53:                                               ; preds = %51, %47
  %54 = tail call zeroext i8 @BKE_nurb_check_valid_v(ptr noundef nonnull %0) #25, !range !127
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %59 = load i16, ptr %58, align 2, !tbaa !142
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %62 = load i32, ptr %61, align 4, !tbaa !115
  %63 = add nsw i32 %62, %60
  %64 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %65 = load i16, ptr %64, align 2, !tbaa !143
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  %68 = add nsw i32 %60, -1
  %69 = select i1 %67, i32 0, i32 %68
  %70 = add nsw i32 %63, %69
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 2
  %73 = add nsw i64 %72, 4
  %74 = tail call ptr %57(i64 noundef %73, ptr noundef nonnull @.str.43) #24
  store ptr %74, ptr %48, align 8, !tbaa !139
  %75 = load i16, ptr %64, align 2, !tbaa !143
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  %78 = load i32, ptr %61, align 4, !tbaa !115
  %79 = load i16, ptr %58, align 2, !tbaa !142
  br i1 %77, label %84, label %80

80:                                               ; preds = %56
  tail call fastcc void @calcknots(ptr noundef %74, i32 noundef %78, i16 noundef signext %79, i16 noundef signext 0) #25
  %81 = load ptr, ptr %48, align 8, !tbaa !139
  %82 = load i32, ptr %61, align 4, !tbaa !115
  %83 = load i16, ptr %58, align 2, !tbaa !142
  tail call fastcc void @makecyclicknots(ptr noundef %81, i32 noundef %82, i16 noundef signext %83) #25
  br label %86

84:                                               ; preds = %56
  tail call fastcc void @calcknots(ptr noundef %74, i32 noundef %78, i16 noundef signext %79, i16 noundef signext %75) #25
  br label %86

85:                                               ; preds = %53
  store ptr null, ptr %48, align 8, !tbaa !139
  br label %86

86:                                               ; preds = %41, %45, %46, %85, %84, %80, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_knot_calc_v(ptr nocapture noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @makeknots(ptr noundef %0, i16 noundef signext 2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_makeFaces(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #26
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = mul nsw i32 %9, %3
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !115
  %13 = mul i32 %12, %4
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = icmp eq ptr %15, null
  br i1 %16, label %365, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = icmp eq ptr %19, null
  br i1 %20, label %365, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !140
  %24 = sext i16 %23 to i32
  %25 = icmp slt i32 %9, %24
  br i1 %25, label %365, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %28 = load i16, ptr %27, align 2, !tbaa !142
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %12, %29
  %31 = icmp eq ptr %1, null
  %32 = or i1 %31, %30
  br i1 %32, label %365, label %33

33:                                               ; preds = %26
  %34 = mul nsw i32 %13, %10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %365, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %38 = sext i32 %34 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.13) #24
  %41 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %42 = load i32, ptr %8, align 8, !tbaa !121
  %43 = load i32, ptr %11, align 4, !tbaa !115
  %44 = mul nsw i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %41, align 8, !tbaa !124
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ %44, %46 ], [ %55, %48 ]
  %50 = phi ptr [ %47, %46 ], [ %54, %48 ]
  %51 = getelementptr inbounds [4 x float], ptr %50, i64 0, i64 3
  %52 = load float, ptr %51, align 4, !tbaa !85
  %53 = fcmp oeq float %52, 1.000000e+00
  %54 = getelementptr inbounds %struct.BPoint, ptr %50, i64 1
  %55 = add nsw i32 %49, -1
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %48, label %58, !llvm.loop !157

58:                                               ; preds = %48, %36
  %59 = phi i1 [ true, %36 ], [ %53, %48 ]
  %60 = load ptr, ptr %14, align 8, !tbaa !138
  %61 = load i16, ptr %22, align 8, !tbaa !140
  %62 = sext i16 %61 to i64
  %63 = getelementptr float, ptr %60, i64 %62
  %64 = getelementptr float, ptr %63, i64 -1
  %65 = load float, ptr %64, align 4, !tbaa !85
  %66 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %67 = load i16, ptr %66, align 4, !tbaa !141
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  %70 = sext i16 %61 to i32
  %71 = add nsw i32 %42, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr float, ptr %60, i64 %72
  %74 = getelementptr float, ptr %73, i64 -1
  %75 = sext i32 %42 to i64
  %76 = getelementptr inbounds float, ptr %60, i64 %75
  %77 = select i1 %69, ptr %76, ptr %74
  %78 = load float, ptr %77, align 4, !tbaa !85
  %79 = fsub float %78, %65
  %80 = sext i1 %69 to i32
  %81 = add nsw i32 %10, %80
  %82 = sitofp i32 %81 to float
  %83 = fdiv float %79, %82
  %84 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %85 = add nsw i32 %70, -1
  %86 = select i1 %69, i32 0, i32 %85
  %87 = add nsw i32 %71, %86
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 2
  %90 = tail call ptr %84(i64 noundef %89, ptr noundef nonnull @.str.14) #24
  %91 = load ptr, ptr %18, align 8, !tbaa !139
  %92 = load i16, ptr %27, align 2, !tbaa !142
  %93 = sext i16 %92 to i64
  %94 = getelementptr float, ptr %91, i64 %93
  %95 = getelementptr float, ptr %94, i64 -1
  %96 = load float, ptr %95, align 4, !tbaa !85
  %97 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %98 = load i16, ptr %97, align 2, !tbaa !143
  %99 = and i16 %98, 1
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %58
  %102 = sext i16 %92 to i32
  %103 = load i32, ptr %11, align 4, !tbaa !115
  %104 = add nsw i32 %103, %102
  %105 = sext i32 %104 to i64
  %106 = getelementptr float, ptr %91, i64 %105
  %107 = getelementptr float, ptr %106, i64 -1
  br label %113

108:                                              ; preds = %58
  %109 = load i32, ptr %11, align 4, !tbaa !115
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr %91, i64 %110
  %112 = sext i16 %92 to i32
  br label %113

113:                                              ; preds = %108, %101
  %114 = phi i32 [ %112, %108 ], [ %102, %101 ]
  %115 = phi i32 [ %109, %108 ], [ %103, %101 ]
  %116 = phi ptr [ %111, %108 ], [ %107, %101 ]
  %117 = load float, ptr %116, align 4, !tbaa !85
  %118 = fsub float %117, %96
  %119 = sext i1 %100 to i32
  %120 = add nsw i32 %13, %119
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %118, %121
  %123 = add nsw i32 %114, -1
  %124 = select i1 %100, i32 0, i32 %123
  %125 = add nsw i32 %124, %114
  %126 = add i32 %125, %115
  %127 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %128 = sext i32 %126 to i64
  %129 = sext i32 %13 to i64
  %130 = shl nsw i64 %129, 2
  %131 = mul i64 %130, %128
  %132 = tail call ptr %127(i64 noundef %131, ptr noundef nonnull @.str.14) #24
  %133 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %134 = tail call ptr %133(i64 noundef %130, ptr noundef nonnull @.str.15) #24
  %135 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %136 = tail call ptr %135(i64 noundef %130, ptr noundef nonnull @.str.16) #24
  %137 = load i16, ptr %97, align 2, !tbaa !143
  %138 = and i16 %137, 1
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %113
  %141 = load i16, ptr %27, align 2, !tbaa !142
  %142 = sext i16 %141 to i32
  %143 = add nsw i32 %142, -1
  br label %144

144:                                              ; preds = %113, %140
  %145 = phi i32 [ %143, %140 ], [ 0, %113 ]
  %146 = icmp eq i32 %13, 0
  br i1 %146, label %176, label %147

147:                                              ; preds = %144
  %148 = load i16, ptr %27, align 2, !tbaa !142
  %149 = load i32, ptr %11, align 4, !tbaa !115
  br label %150

150:                                              ; preds = %147, %150
  %151 = phi i32 [ %149, %147 ], [ %163, %150 ]
  %152 = phi i16 [ %148, %147 ], [ %161, %150 ]
  %153 = phi i64 [ %129, %147 ], [ %156, %150 ]
  %154 = phi ptr [ %132, %147 ], [ %172, %150 ]
  %155 = phi float [ %96, %147 ], [ %173, %150 ]
  %156 = add nsw i64 %153, -1
  %157 = add nsw i32 %151, %145
  %158 = load ptr, ptr %18, align 8, !tbaa !139
  %159 = getelementptr inbounds i32, ptr %134, i64 %156
  %160 = getelementptr inbounds i32, ptr %136, i64 %156
  tail call fastcc void @basisNurb(float noundef %155, i16 noundef signext %152, i32 noundef %157, ptr noundef %158, ptr noundef %154, ptr noundef %159, ptr noundef %160) #25
  %161 = load i16, ptr %27, align 2, !tbaa !142
  %162 = sext i16 %161 to i32
  %163 = load i32, ptr %11, align 4, !tbaa !115
  %164 = add nsw i32 %163, %162
  %165 = load i16, ptr %97, align 2, !tbaa !143
  %166 = and i16 %165, 1
  %167 = icmp eq i16 %166, 0
  %168 = add nsw i32 %162, -1
  %169 = select i1 %167, i32 0, i32 %168
  %170 = add nsw i32 %164, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, ptr %154, i64 %171
  %173 = fadd float %122, %155
  %174 = and i64 %156, 4294967295
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %150, !llvm.loop !158

176:                                              ; preds = %150, %144
  %177 = load i16, ptr %66, align 4, !tbaa !141
  %178 = and i16 %177, 1
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i16, ptr %22, align 8, !tbaa !140
  %182 = sext i16 %181 to i32
  %183 = add nsw i32 %182, -1
  br label %184

184:                                              ; preds = %176, %180
  %185 = phi i32 [ %183, %180 ], [ 0, %176 ]
  %186 = icmp eq i32 %10, 0
  br i1 %186, label %359, label %187

187:                                              ; preds = %184
  %188 = icmp eq i32 %2, 0
  %189 = sext i32 %2 to i64
  %190 = mul nsw i32 %13, 3
  %191 = sext i32 %190 to i64
  %192 = shl nsw i64 %191, 2
  %193 = sub nsw i64 %189, %192
  %194 = select i1 %188, i64 0, i64 %193
  br label %195

195:                                              ; preds = %187, %354
  %196 = phi i32 [ %10, %187 ], [ %199, %354 ]
  %197 = phi ptr [ %1, %187 ], [ %357, %354 ]
  %198 = phi float [ %65, %187 ], [ %356, %354 ]
  %199 = add nsw i32 %196, -1
  %200 = load i16, ptr %22, align 8, !tbaa !140
  %201 = load i32, ptr %8, align 8, !tbaa !121
  %202 = add nsw i32 %201, %185
  %203 = load ptr, ptr %14, align 8, !tbaa !138
  call fastcc void @basisNurb(float noundef %198, i16 noundef signext %200, i32 noundef %202, ptr noundef %203, ptr noundef %90, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  br i1 %146, label %354, label %204

204:                                              ; preds = %195
  %205 = load i32, ptr %6, align 4
  %206 = sext i32 %205 to i64
  %207 = load i32, ptr %7, align 4
  %208 = icmp sgt i32 %205, %207
  %209 = add i32 %207, 1
  br label %210

210:                                              ; preds = %204, %338
  %211 = phi i64 [ %129, %204 ], [ %214, %338 ]
  %212 = phi ptr [ %132, %204 ], [ %351, %338 ]
  %213 = phi ptr [ %197, %204 ], [ %339, %338 ]
  %214 = add nsw i64 %211, -1
  %215 = getelementptr inbounds i32, ptr %134, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !159
  %217 = getelementptr inbounds i32, ptr %136, i64 %214
  %218 = load i32, ptr %217, align 4, !tbaa !159
  %219 = icmp sgt i32 %216, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %210
  tail call fastcc void @zero_v3(ptr noundef %213) #25
  br label %338

221:                                              ; preds = %210
  %222 = load i32, ptr %11, align 4, !tbaa !115
  %223 = load ptr, ptr %41, align 8, !tbaa !124
  %224 = load i32, ptr %8, align 8, !tbaa !121
  %225 = sext i32 %224 to i64
  %226 = sext i32 %216 to i64
  %227 = sext i32 %222 to i64
  %228 = add i32 %218, 1
  br label %229

229:                                              ; preds = %221, %270
  %230 = phi i64 [ %226, %221 ], [ %273, %270 ]
  %231 = phi ptr [ %40, %221 ], [ %272, %270 ]
  %232 = phi float [ 0.000000e+00, %221 ], [ %271, %270 ]
  %233 = icmp slt i64 %230, %227
  %234 = select i1 %233, i32 0, i32 %222
  %235 = trunc i64 %230 to i32
  %236 = sub nsw i32 %235, %234
  %237 = mul nsw i32 %236, %224
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.BPoint, ptr %223, i64 %238
  br i1 %208, label %270, label %240

240:                                              ; preds = %229
  %241 = getelementptr inbounds %struct.BPoint, ptr %239, i64 %206
  %242 = getelementptr inbounds %struct.BPoint, ptr %241, i64 -1
  %243 = getelementptr inbounds float, ptr %212, i64 %230
  br label %244

244:                                              ; preds = %240, %263
  %245 = phi i64 [ %206, %240 ], [ %266, %263 ]
  %246 = phi ptr [ %242, %240 ], [ %253, %263 ]
  %247 = phi ptr [ %231, %240 ], [ %267, %263 ]
  %248 = phi float [ %232, %240 ], [ %265, %263 ]
  %249 = icmp slt i64 %245, %225
  %250 = sub nsw i64 %245, %225
  %251 = getelementptr inbounds %struct.BPoint, ptr %239, i64 %250
  %252 = getelementptr inbounds %struct.BPoint, ptr %246, i64 1
  %253 = select i1 %249, ptr %252, ptr %251
  %254 = getelementptr inbounds float, ptr %90, i64 %245
  %255 = load float, ptr %254, align 4, !tbaa !85
  %256 = load float, ptr %243, align 4, !tbaa !85
  %257 = fmul float %255, %256
  br i1 %59, label %263, label %258

258:                                              ; preds = %244
  %259 = getelementptr inbounds [4 x float], ptr %253, i64 0, i64 3
  %260 = load float, ptr %259, align 4, !tbaa !85
  %261 = fmul float %257, %260
  %262 = fadd float %248, %261
  br label %263

263:                                              ; preds = %244, %258
  %264 = phi float [ %261, %258 ], [ %257, %244 ]
  %265 = phi float [ %262, %258 ], [ %248, %244 ]
  store float %264, ptr %247, align 4
  %266 = add nsw i64 %245, 1
  %267 = getelementptr inbounds float, ptr %247, i64 1
  %268 = trunc i64 %266 to i32
  %269 = icmp eq i32 %209, %268
  br i1 %269, label %270, label %244, !llvm.loop !160

270:                                              ; preds = %263, %229
  %271 = phi float [ %232, %229 ], [ %265, %263 ]
  %272 = phi ptr [ %231, %229 ], [ %267, %263 ]
  %273 = add nsw i64 %230, 1
  %274 = trunc i64 %273 to i32
  %275 = icmp eq i32 %228, %274
  br i1 %275, label %276, label %229, !llvm.loop !161

276:                                              ; preds = %270
  %277 = or i1 %59, %219
  br i1 %277, label %293, label %278

278:                                              ; preds = %276, %289
  %279 = phi ptr [ %290, %289 ], [ %40, %276 ]
  %280 = phi i32 [ %291, %289 ], [ %216, %276 ]
  br i1 %208, label %289, label %281

281:                                              ; preds = %278, %281
  %282 = phi ptr [ %287, %281 ], [ %279, %278 ]
  %283 = phi i32 [ %286, %281 ], [ %205, %278 ]
  %284 = load float, ptr %282, align 4, !tbaa !85
  %285 = fdiv float %284, %271
  store float %285, ptr %282, align 4, !tbaa !85
  %286 = add i32 %283, 1
  %287 = getelementptr inbounds float, ptr %282, i64 1
  %288 = icmp eq i32 %283, %207
  br i1 %288, label %289, label %281, !llvm.loop !162

289:                                              ; preds = %281, %278
  %290 = phi ptr [ %279, %278 ], [ %287, %281 ]
  %291 = add i32 %280, 1
  %292 = icmp eq i32 %280, %218
  br i1 %292, label %293, label %278, !llvm.loop !163

293:                                              ; preds = %289, %276
  tail call fastcc void @zero_v3(ptr noundef %213) #25
  br i1 %219, label %338, label %294

294:                                              ; preds = %293, %334
  %295 = phi ptr [ %335, %334 ], [ %40, %293 ]
  %296 = phi i32 [ %336, %334 ], [ %216, %293 ]
  %297 = load i32, ptr %11, align 4, !tbaa !115
  %298 = icmp slt i32 %296, %297
  %299 = select i1 %298, i32 0, i32 %297
  %300 = sub nsw i32 %296, %299
  br i1 %208, label %334, label %301

301:                                              ; preds = %294
  %302 = load ptr, ptr %41, align 8, !tbaa !124
  %303 = load i32, ptr %8, align 8, !tbaa !121
  %304 = mul nsw i32 %300, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.BPoint, ptr %302, i64 %305
  %307 = getelementptr inbounds %struct.BPoint, ptr %306, i64 %206
  %308 = getelementptr inbounds %struct.BPoint, ptr %307, i64 -1
  br label %309

309:                                              ; preds = %301, %330
  %310 = phi ptr [ %326, %330 ], [ %308, %301 ]
  %311 = phi ptr [ %332, %330 ], [ %295, %301 ]
  %312 = phi i32 [ %331, %330 ], [ %205, %301 ]
  %313 = load i32, ptr %8, align 8, !tbaa !121
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %323, label %315

315:                                              ; preds = %309
  %316 = sub nsw i32 %312, %313
  %317 = load ptr, ptr %41, align 8, !tbaa !124
  %318 = mul nsw i32 %313, %300
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.BPoint, ptr %317, i64 %319
  %321 = sext i32 %316 to i64
  %322 = getelementptr inbounds %struct.BPoint, ptr %320, i64 %321
  br label %325

323:                                              ; preds = %309
  %324 = getelementptr inbounds %struct.BPoint, ptr %310, i64 1
  br label %325

325:                                              ; preds = %323, %315
  %326 = phi ptr [ %322, %315 ], [ %324, %323 ]
  %327 = load float, ptr %311, align 4, !tbaa !85
  %328 = fcmp une float %327, 0.000000e+00
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  tail call fastcc void @madd_v3_v3fl(ptr noundef %213, ptr noundef %326, float noundef %327) #25
  br label %330

330:                                              ; preds = %325, %329
  %331 = add i32 %312, 1
  %332 = getelementptr inbounds float, ptr %311, i64 1
  %333 = icmp eq i32 %312, %207
  br i1 %333, label %334, label %309, !llvm.loop !164

334:                                              ; preds = %330, %294
  %335 = phi ptr [ %295, %294 ], [ %332, %330 ]
  %336 = add i32 %296, 1
  %337 = icmp eq i32 %296, %218
  br i1 %337, label %338, label %294, !llvm.loop !165

338:                                              ; preds = %334, %220, %293
  %339 = getelementptr inbounds float, ptr %213, i64 3
  %340 = load i16, ptr %27, align 2, !tbaa !142
  %341 = sext i16 %340 to i32
  %342 = load i32, ptr %11, align 4, !tbaa !115
  %343 = add nsw i32 %342, %341
  %344 = load i16, ptr %97, align 2, !tbaa !143
  %345 = and i16 %344, 1
  %346 = icmp eq i16 %345, 0
  %347 = add nsw i32 %341, -1
  %348 = select i1 %346, i32 0, i32 %347
  %349 = add nsw i32 %343, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, ptr %212, i64 %350
  %352 = and i64 %214, 4294967295
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %210, !llvm.loop !166

354:                                              ; preds = %338, %195
  %355 = phi ptr [ %197, %195 ], [ %339, %338 ]
  %356 = fadd float %83, %198
  %357 = getelementptr inbounds i8, ptr %355, i64 %194
  %358 = icmp eq i32 %199, 0
  br i1 %358, label %359, label %195, !llvm.loop !167

359:                                              ; preds = %354, %184
  %360 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %360(ptr noundef %40) #24
  %361 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %361(ptr noundef %90) #24
  %362 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %362(ptr noundef %132) #24
  %363 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %363(ptr noundef %134) #24
  %364 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %364(ptr noundef %136) #24
  br label %365

365:                                              ; preds = %33, %26, %21, %5, %17, %359
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @basisNurb(float noundef %0, i16 noundef signext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #13 !PGOFuncName !168 {
  %8 = sext i16 %1 to i32
  %9 = add i32 %8, %2
  %10 = add i32 %9, -1
  %11 = load float, ptr %3, align 4, !tbaa !85
  %12 = fcmp ogt float %11, %0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds float, ptr %3, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fcmp olt float %16, %0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %7, %13, %18
  %20 = phi float [ %16, %18 ], [ %0, %13 ], [ %11, %7 ]
  %21 = xor i32 %8, -1
  %22 = icmp sgt i32 %9, 1
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = zext nneg i32 %10 to i64
  br label %25

25:                                               ; preds = %23, %60
  %26 = phi i64 [ 1, %23 ], [ %63, %60 ]
  %27 = phi i64 [ 0, %23 ], [ %30, %60 ]
  %28 = getelementptr inbounds float, ptr %3, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !85
  %30 = add nuw nsw i64 %27, 1
  %31 = getelementptr inbounds float, ptr %3, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !85
  %33 = fcmp oeq float %29, %32
  %34 = fcmp ult float %20, %29
  %35 = or i1 %34, %33
  %36 = fcmp ugt float %20, %32
  %37 = or i1 %36, %35
  br i1 %37, label %60, label %38

38:                                               ; preds = %25
  %39 = trunc i64 %27 to i32
  %40 = trunc i64 %30 to i32
  %41 = getelementptr inbounds float, ptr %4, i64 %27
  store float 1.000000e+00, ptr %41, align 4, !tbaa !85
  %42 = add i32 %39, %21
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0)
  %44 = icmp sgt i32 %10, %40
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = shl nuw nsw i64 %27, 2
  %47 = getelementptr i8, ptr %4, i64 %46
  %48 = getelementptr i8, ptr %47, i64 4
  %49 = add nsw i32 %9, -3
  %50 = trunc i64 %27 to i32
  %51 = sub i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 2
  %54 = add nuw nsw i64 %53, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %48, i8 0, i64 %54, i1 false), !tbaa !85
  br label %55

55:                                               ; preds = %45, %55
  %56 = phi i64 [ %26, %45 ], [ %57, %55 ]
  %57 = add nuw nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = icmp sgt i32 %10, %58
  br i1 %59, label %55, label %64, !llvm.loop !169

60:                                               ; preds = %25
  %61 = getelementptr inbounds float, ptr %4, i64 %27
  store float 0.000000e+00, ptr %61, align 4, !tbaa !85
  %62 = icmp eq i64 %30, %24
  %63 = add nuw nsw i64 %26, 1
  br i1 %62, label %64, label %25, !llvm.loop !170

64:                                               ; preds = %60, %55, %19, %38
  %65 = phi i32 [ %40, %38 ], [ 0, %19 ], [ %58, %55 ], [ %10, %60 ]
  %66 = phi i32 [ %43, %38 ], [ 0, %19 ], [ %43, %55 ], [ 0, %60 ]
  %67 = phi i32 [ %39, %38 ], [ 0, %19 ], [ %39, %55 ], [ 0, %60 ]
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds float, ptr %4, i64 %68
  store float 0.000000e+00, ptr %69, align 4, !tbaa !85
  %70 = icmp slt i16 %1, 2
  br i1 %70, label %129, label %71

71:                                               ; preds = %64
  %72 = getelementptr float, ptr %3, i64 -1
  %73 = zext nneg i32 %66 to i64
  %74 = add nuw nsw i32 %8, 1
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds float, ptr %4, i64 %73
  br label %77

77:                                               ; preds = %71, %126
  %78 = phi i64 [ 2, %71 ], [ %127, %126 ]
  %79 = phi i32 [ %67, %71 ], [ %85, %126 ]
  %80 = trunc i64 %78 to i32
  %81 = add nsw i32 %79, %80
  %82 = icmp slt i32 %81, %9
  %83 = trunc i64 %78 to i32
  %84 = sub i32 %10, %83
  %85 = select i1 %82, i32 %79, i32 %84
  %86 = icmp sgt i32 %66, %85
  br i1 %86, label %126, label %87

87:                                               ; preds = %77
  %88 = add i32 %85, 1
  %89 = zext i32 %88 to i64
  %90 = load float, ptr %76, align 4, !tbaa !85
  %91 = getelementptr float, ptr %72, i64 %78
  %92 = getelementptr float, ptr %3, i64 %78
  br label %93

93:                                               ; preds = %87, %122
  %94 = phi float [ %90, %87 ], [ %111, %122 ]
  %95 = phi i64 [ %73, %87 ], [ %109, %122 ]
  %96 = getelementptr inbounds float, ptr %4, i64 %95
  %97 = fcmp une float %94, 0.000000e+00
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = getelementptr inbounds float, ptr %3, i64 %95
  %100 = load float, ptr %99, align 4, !tbaa !85
  %101 = fsub float %20, %100
  %102 = fmul float %94, %101
  %103 = getelementptr float, ptr %91, i64 %95
  %104 = load float, ptr %103, align 4, !tbaa !85
  %105 = fsub float %104, %100
  %106 = fdiv float %102, %105
  br label %107

107:                                              ; preds = %93, %98
  %108 = phi float [ %106, %98 ], [ 0.000000e+00, %93 ]
  %109 = add nuw nsw i64 %95, 1
  %110 = getelementptr inbounds float, ptr %4, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !85
  %112 = fcmp une float %111, 0.000000e+00
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = getelementptr float, ptr %92, i64 %95
  %115 = load float, ptr %114, align 4, !tbaa !85
  %116 = fsub float %115, %20
  %117 = fmul float %111, %116
  %118 = getelementptr inbounds float, ptr %3, i64 %109
  %119 = load float, ptr %118, align 4, !tbaa !85
  %120 = fsub float %115, %119
  %121 = fdiv float %117, %120
  br label %122

122:                                              ; preds = %107, %113
  %123 = phi float [ %121, %113 ], [ 0.000000e+00, %107 ]
  %124 = fadd float %108, %123
  store float %124, ptr %96, align 4, !tbaa !85
  %125 = icmp eq i64 %109, %89
  br i1 %125, label %126, label %93, !llvm.loop !171

126:                                              ; preds = %122, %77
  %127 = add nuw nsw i64 %78, 1
  %128 = icmp eq i64 %127, %75
  br i1 %128, label %129, label %77, !llvm.loop !172

129:                                              ; preds = %126, %64
  %130 = phi i32 [ %67, %64 ], [ %85, %126 ]
  store i32 1000, ptr %5, align 4, !tbaa !159
  store i32 0, ptr %6, align 4, !tbaa !159
  %131 = icmp sgt i32 %66, %130
  br i1 %131, label %149, label %132

132:                                              ; preds = %129
  %133 = zext nneg i32 %66 to i64
  %134 = add i32 %130, 1
  %135 = zext i32 %134 to i64
  br label %136

136:                                              ; preds = %132, %146
  %137 = phi i64 [ %133, %132 ], [ %147, %146 ]
  %138 = getelementptr inbounds float, ptr %4, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !85
  %140 = fcmp ogt float %139, 0.000000e+00
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = trunc i64 %137 to i32
  store i32 %142, ptr %6, align 4, !tbaa !159
  %143 = load i32, ptr %5, align 4, !tbaa !159
  %144 = icmp eq i32 %143, 1000
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 %142, ptr %5, align 4, !tbaa !159
  br label %146

146:                                              ; preds = %136, %145, %141
  %147 = add nuw nsw i64 %137, 1
  %148 = icmp eq i64 %147, %135
  br i1 %148, label %149, label %136, !llvm.loop !173

149:                                              ; preds = %146, %129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !174 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %0, align 4, !tbaa !85
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !85
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !85
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !85
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_makeCurve(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #26
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = icmp eq ptr %11, null
  br i1 %12, label %219, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %15 = load i16, ptr %14, align 8, !tbaa !140
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !121
  %19 = icmp slt i32 %18, %16
  %20 = icmp eq ptr %1, null
  %21 = or i1 %20, %19
  %22 = icmp eq i32 %18, 0
  %23 = or i1 %22, %21
  br i1 %23, label %219, label %24

24:                                               ; preds = %13
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %26 = sext i32 %18 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.17) #24
  %29 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %30 = load i16, ptr %29, align 4, !tbaa !141
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  %33 = load i32, ptr %17, align 8, !tbaa !121
  br i1 %32, label %34, label %38

34:                                               ; preds = %24
  %35 = add nsw i32 %33, -1
  %36 = mul nsw i32 %35, %5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %216, label %51

38:                                               ; preds = %24
  %39 = mul nsw i32 %33, %5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %216, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %10, align 8, !tbaa !138
  %43 = load i16, ptr %14, align 8, !tbaa !140
  %44 = sext i16 %43 to i64
  %45 = getelementptr float, ptr %42, i64 %44
  %46 = sext i16 %43 to i32
  %47 = add nsw i32 %33, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr float, ptr %42, i64 %48
  %50 = getelementptr float, ptr %49, i64 -1
  br label %59

51:                                               ; preds = %34
  %52 = load ptr, ptr %10, align 8, !tbaa !138
  %53 = load i16, ptr %14, align 8, !tbaa !140
  %54 = sext i16 %53 to i64
  %55 = getelementptr float, ptr %52, i64 %54
  %56 = sext i32 %33 to i64
  %57 = getelementptr inbounds float, ptr %52, i64 %56
  %58 = sext i16 %53 to i32
  br label %59

59:                                               ; preds = %51, %41
  %60 = phi i32 [ %58, %51 ], [ %46, %41 ]
  %61 = phi ptr [ %55, %51 ], [ %45, %41 ]
  %62 = phi i32 [ %36, %51 ], [ %39, %41 ]
  %63 = phi ptr [ %57, %51 ], [ %50, %41 ]
  %64 = getelementptr float, ptr %61, i64 -1
  %65 = load float, ptr %64, align 4, !tbaa !85
  %66 = load float, ptr %63, align 4, !tbaa !85
  %67 = fsub float %66, %65
  %68 = xor i16 %31, 1
  %69 = zext nneg i16 %68 to i32
  %70 = sub nuw nsw i32 %62, %69
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %67, %71
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %74 = add nsw i32 %60, -1
  %75 = select i1 %32, i32 0, i32 %74
  %76 = add nsw i32 %75, %60
  %77 = add i32 %76, %33
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  %80 = tail call ptr %73(i64 noundef %79, ptr noundef nonnull @.str.18) #24
  %81 = load i16, ptr %29, align 4, !tbaa !141
  %82 = and i16 %81, 1
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %59
  %85 = load i16, ptr %14, align 8, !tbaa !140
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %86, -1
  br label %88

88:                                               ; preds = %59, %84
  %89 = phi i32 [ %87, %84 ], [ 0, %59 ]
  %90 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %91 = sext i32 %6 to i64
  br label %92

92:                                               ; preds = %88, %201
  %93 = phi i32 [ %62, %88 ], [ %99, %201 ]
  %94 = phi ptr [ %4, %88 ], [ %211, %201 ]
  %95 = phi ptr [ %3, %88 ], [ %208, %201 ]
  %96 = phi ptr [ %2, %88 ], [ %205, %201 ]
  %97 = phi ptr [ %1, %88 ], [ %202, %201 ]
  %98 = phi float [ %65, %88 ], [ %212, %201 ]
  %99 = add nsw i32 %93, -1
  %100 = load i16, ptr %14, align 8, !tbaa !140
  %101 = load i32, ptr %17, align 8, !tbaa !121
  %102 = add nsw i32 %101, %89
  %103 = load ptr, ptr %10, align 8, !tbaa !138
  call fastcc void @basisNurb(float noundef %98, i16 noundef signext %100, i32 noundef %102, ptr noundef %103, ptr noundef %80, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %104 = load ptr, ptr %90, align 8, !tbaa !124
  %105 = load i32, ptr %8, align 4, !tbaa !159
  %106 = sext i32 %105 to i64
  %107 = load i32, ptr %9, align 4, !tbaa !159
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  tail call fastcc void @zero_v3(ptr noundef %97) #25
  br label %201

110:                                              ; preds = %92
  %111 = getelementptr inbounds %struct.BPoint, ptr %104, i64 %106
  %112 = getelementptr inbounds %struct.BPoint, ptr %111, i64 -1
  %113 = load i32, ptr %17, align 8, !tbaa !121
  %114 = sext i32 %113 to i64
  %115 = add i32 %107, 1
  br label %116

116:                                              ; preds = %110, %116
  %117 = phi i64 [ %106, %110 ], [ %132, %116 ]
  %118 = phi ptr [ %28, %110 ], [ %133, %116 ]
  %119 = phi ptr [ %112, %110 ], [ %125, %116 ]
  %120 = phi float [ 0.000000e+00, %110 ], [ %131, %116 ]
  %121 = icmp slt i64 %117, %114
  %122 = sub nsw i64 %117, %114
  %123 = getelementptr inbounds %struct.BPoint, ptr %104, i64 %122
  %124 = getelementptr inbounds %struct.BPoint, ptr %119, i64 1
  %125 = select i1 %121, ptr %124, ptr %123
  %126 = getelementptr inbounds float, ptr %80, i64 %117
  %127 = load float, ptr %126, align 4, !tbaa !85
  %128 = getelementptr inbounds [4 x float], ptr %125, i64 0, i64 3
  %129 = load float, ptr %128, align 4, !tbaa !85
  %130 = fmul float %127, %129
  store float %130, ptr %118, align 4, !tbaa !85
  %131 = fadd float %120, %130
  %132 = add nsw i64 %117, 1
  %133 = getelementptr inbounds float, ptr %118, i64 1
  %134 = trunc i64 %132 to i32
  %135 = icmp eq i32 %115, %134
  br i1 %135, label %136, label %116, !llvm.loop !175

136:                                              ; preds = %116
  %137 = fcmp une float %131, 0.000000e+00
  br i1 %137, label %138, label %151

138:                                              ; preds = %136
  %139 = fcmp uge float %131, 0x3FEFF7CEE0000000
  %140 = fcmp ule float %131, 0x3FF00418A0000000
  %141 = and i1 %139, %140
  %142 = or i1 %141, %108
  br i1 %142, label %151, label %143

143:                                              ; preds = %138, %143
  %144 = phi i32 [ %148, %143 ], [ %105, %138 ]
  %145 = phi ptr [ %149, %143 ], [ %28, %138 ]
  %146 = load float, ptr %145, align 4, !tbaa !85
  %147 = fdiv float %146, %131
  store float %147, ptr %145, align 4, !tbaa !85
  %148 = add i32 %144, 1
  %149 = getelementptr inbounds float, ptr %145, i64 1
  %150 = icmp eq i32 %144, %107
  br i1 %150, label %151, label %143, !llvm.loop !176

151:                                              ; preds = %143, %138, %136
  tail call fastcc void @zero_v3(ptr noundef %97) #25
  br i1 %108, label %201, label %152

152:                                              ; preds = %151
  %153 = load ptr, ptr %90, align 8, !tbaa !124
  %154 = getelementptr inbounds %struct.BPoint, ptr %153, i64 %106
  %155 = getelementptr inbounds %struct.BPoint, ptr %154, i64 -1
  %156 = icmp eq ptr %96, null
  %157 = icmp eq ptr %95, null
  %158 = icmp eq ptr %94, null
  br label %159

159:                                              ; preds = %152, %197
  %160 = phi i32 [ %105, %152 ], [ %198, %197 ]
  %161 = phi ptr [ %28, %152 ], [ %199, %197 ]
  %162 = phi ptr [ %155, %152 ], [ %173, %197 ]
  %163 = load i32, ptr %17, align 8, !tbaa !121
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %170, label %165

165:                                              ; preds = %159
  %166 = load ptr, ptr %90, align 8, !tbaa !124
  %167 = sub nsw i32 %160, %163
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.BPoint, ptr %166, i64 %168
  br label %172

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.BPoint, ptr %162, i64 1
  br label %172

172:                                              ; preds = %170, %165
  %173 = phi ptr [ %169, %165 ], [ %171, %170 ]
  %174 = load float, ptr %161, align 4, !tbaa !85
  %175 = fcmp une float %174, 0.000000e+00
  br i1 %175, label %176, label %197

176:                                              ; preds = %172
  tail call fastcc void @madd_v3_v3fl(ptr noundef %97, ptr noundef %173, float noundef %174) #25
  br i1 %156, label %183, label %177

177:                                              ; preds = %176
  %178 = load float, ptr %161, align 4, !tbaa !85
  %179 = getelementptr inbounds %struct.BPoint, ptr %173, i64 0, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !177
  %181 = load float, ptr %96, align 4, !tbaa !85
  %182 = tail call float @llvm.fmuladd.f32(float %178, float %180, float %181)
  store float %182, ptr %96, align 4, !tbaa !85
  br label %183

183:                                              ; preds = %177, %176
  br i1 %157, label %190, label %184

184:                                              ; preds = %183
  %185 = load float, ptr %161, align 4, !tbaa !85
  %186 = getelementptr inbounds %struct.BPoint, ptr %173, i64 0, i32 5
  %187 = load float, ptr %186, align 4, !tbaa !147
  %188 = load float, ptr %95, align 4, !tbaa !85
  %189 = tail call float @llvm.fmuladd.f32(float %185, float %187, float %188)
  store float %189, ptr %95, align 4, !tbaa !85
  br label %190

190:                                              ; preds = %184, %183
  br i1 %158, label %197, label %191

191:                                              ; preds = %190
  %192 = load float, ptr %161, align 4, !tbaa !85
  %193 = getelementptr inbounds %struct.BPoint, ptr %173, i64 0, i32 2
  %194 = load float, ptr %193, align 4, !tbaa !178
  %195 = load float, ptr %94, align 4, !tbaa !85
  %196 = tail call float @llvm.fmuladd.f32(float %192, float %194, float %195)
  store float %196, ptr %94, align 4, !tbaa !85
  br label %197

197:                                              ; preds = %172, %191, %190
  %198 = add i32 %160, 1
  %199 = getelementptr inbounds float, ptr %161, i64 1
  %200 = icmp eq i32 %160, %107
  br i1 %200, label %201, label %159, !llvm.loop !179

201:                                              ; preds = %197, %109, %151
  %202 = getelementptr inbounds i8, ptr %97, i64 %91
  %203 = icmp eq ptr %96, null
  %204 = getelementptr inbounds i8, ptr %96, i64 %91
  %205 = select i1 %203, ptr null, ptr %204
  %206 = icmp eq ptr %95, null
  %207 = getelementptr inbounds i8, ptr %95, i64 %91
  %208 = select i1 %206, ptr null, ptr %207
  %209 = icmp eq ptr %94, null
  %210 = getelementptr inbounds i8, ptr %94, i64 %91
  %211 = select i1 %209, ptr null, ptr %210
  %212 = fadd float %72, %98
  %213 = icmp eq i32 %99, 0
  br i1 %213, label %214, label %92, !llvm.loop !180

214:                                              ; preds = %201
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %215(ptr noundef %28) #24
  br label %216

216:                                              ; preds = %34, %38, %214
  %217 = phi ptr [ %80, %214 ], [ %28, %38 ], [ %28, %34 ]
  %218 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %218(ptr noundef %217) #24
  br label %219

219:                                              ; preds = %216, %13, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_forward_diff_bezier(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #15 {
  %8 = sitofp i32 %5 to float
  %9 = fmul float %8, %8
  %10 = fmul float %9, %8
  %11 = fsub float %3, %0
  %12 = fsub float %1, %2
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 3.000000e+00, float %11)
  %14 = fdiv float %13, %10
  %15 = fmul float %14, 6.000000e+00
  %16 = icmp slt i32 %5, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %7
  %18 = tail call float @llvm.fmuladd.f32(float %1, float -2.000000e+00, float %0)
  %19 = insertelement <2 x float> poison, float %1, i64 0
  %20 = insertelement <2 x float> %19, float %18, i64 1
  %21 = insertelement <2 x float> poison, float %0, i64 0
  %22 = insertelement <2 x float> %21, float %2, i64 1
  %23 = fsub <2 x float> %20, %22
  %24 = fadd <2 x float> %20, %22
  %25 = shufflevector <2 x float> %23, <2 x float> %24, <2 x i32> <i32 0, i32 3>
  %26 = fmul <2 x float> %25, <float 3.000000e+00, float 3.000000e+00>
  %27 = insertelement <2 x float> poison, float %8, i64 0
  %28 = insertelement <2 x float> %27, float %9, i64 1
  %29 = fdiv <2 x float> %26, %28
  %30 = extractelement <2 x float> %29, i64 1
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 2.000000e+00, float %15)
  %32 = extractelement <2 x float> %29, i64 0
  %33 = fadd float %32, %30
  %34 = fadd float %33, %14
  %35 = sext i32 %6 to i64
  br label %36

36:                                               ; preds = %17, %36
  %37 = phi i32 [ 0, %17 ], [ %46, %36 ]
  %38 = phi float [ %0, %17 ], [ %43, %36 ]
  %39 = phi float [ %34, %17 ], [ %44, %36 ]
  %40 = phi float [ %31, %17 ], [ %45, %36 ]
  %41 = phi ptr [ %4, %17 ], [ %42, %36 ]
  store float %38, ptr %41, align 4, !tbaa !85
  %42 = getelementptr inbounds i8, ptr %41, i64 %35
  %43 = fadd float %39, %38
  %44 = fadd float %40, %39
  %45 = fadd float %15, %40
  %46 = add nuw i32 %37, 1
  %47 = icmp eq i32 %37, %5
  br i1 %47, label %48, label %36, !llvm.loop !181

48:                                               ; preds = %36, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_surf_make_orco(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 29
  %9 = load i16, ptr %8, align 8, !tbaa !182
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 30
  %12 = load i16, ptr %11, align 2, !tbaa !183
  %13 = icmp eq i16 %12, 0
  br label %14

14:                                               ; preds = %7, %26
  %15 = phi ptr [ %5, %7 ], [ %49, %26 ]
  %16 = phi i32 [ 0, %7 ], [ %48, %26 ]
  br i1 %10, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 9
  %19 = load i16, ptr %18, align 4, !tbaa !184
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi i16 [ %19, %17 ], [ %9, %14 ]
  %22 = sext i16 %21 to i32
  br i1 %13, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 10
  %25 = load i16, ptr %24, align 2, !tbaa !185
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i16 [ %25, %23 ], [ %12, %20 ]
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !121
  %31 = mul nsw i32 %30, %22
  %32 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !115
  %34 = mul nsw i32 %33, %28
  %35 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  %36 = load i16, ptr %35, align 4, !tbaa !141
  %37 = and i16 %36, 1
  %38 = zext nneg i16 %37 to i32
  %39 = add i32 %31, %38
  %40 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 14
  %41 = load i16, ptr %40, align 2, !tbaa !143
  %42 = and i16 %41, 1
  %43 = zext nneg i16 %42 to i32
  %44 = add i32 %34, %43
  %45 = icmp sgt i32 %33, 1
  %46 = mul nsw i32 %44, %39
  %47 = select i1 %45, i32 %46, i32 0
  %48 = add nsw i32 %47, %16
  %49 = load ptr, ptr %15, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %14, !llvm.loop !186

51:                                               ; preds = %26
  %52 = sext i32 %48 to i64
  %53 = mul nsw i64 %52, 12
  br label %54

54:                                               ; preds = %51, %1
  %55 = phi i64 [ 0, %1 ], [ %53, %51 ]
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %57 = tail call ptr %56(i64 noundef %55, ptr noundef nonnull @.str.19) #24
  %58 = load ptr, ptr %4, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %220, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 29
  %62 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 30
  %63 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %64 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 11
  %65 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 12
  %66 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 11, i64 1
  %67 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 12, i64 1
  %68 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 11, i64 2
  %69 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 12, i64 2
  br label %70

70:                                               ; preds = %60, %216
  %71 = phi ptr [ %58, %60 ], [ %218, %216 ]
  %72 = phi ptr [ %57, %60 ], [ %217, %216 ]
  %73 = load i16, ptr %61, align 8, !tbaa !182
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 9
  %77 = load i16, ptr %76, align 4, !tbaa !184
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi i16 [ %77, %75 ], [ %73, %70 ]
  %80 = sext i16 %79 to i32
  %81 = load i16, ptr %62, align 2, !tbaa !183
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 10
  %85 = load i16, ptr %84, align 2, !tbaa !185
  br label %86

86:                                               ; preds = %78, %83
  %87 = phi i16 [ %85, %83 ], [ %81, %78 ]
  %88 = sext i16 %87 to i32
  %89 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 7
  %90 = load i32, ptr %89, align 4, !tbaa !115
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %216

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 6
  %94 = load i32, ptr %93, align 8, !tbaa !121
  %95 = mul i32 %94, %80
  %96 = mul i32 %90, %88
  %97 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 13
  %98 = load i16, ptr %97, align 4, !tbaa !141
  %99 = and i16 %98, 1
  %100 = zext nneg i16 %99 to i32
  %101 = add i32 %95, %100
  %102 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 14
  %103 = load i16, ptr %102, align 2, !tbaa !143
  %104 = and i16 %103, 1
  %105 = zext nneg i16 %104 to i32
  %106 = add i32 %96, %105
  %107 = load i32, ptr %63, align 4, !tbaa !80
  %108 = and i32 %107, 32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %146, label %110

110:                                              ; preds = %92
  %111 = icmp sgt i32 %101, 0
  br i1 %111, label %112, label %216

112:                                              ; preds = %110
  %113 = icmp sgt i32 %106, 0
  %114 = icmp slt i32 %106, 2
  %115 = add nsw i32 %106, -1
  %116 = sitofp i32 %115 to float
  %117 = icmp eq i32 %101, 1
  %118 = add nsw i32 %101, -1
  %119 = sitofp i32 %118 to float
  br label %120

120:                                              ; preds = %112, %142
  %121 = phi i32 [ 0, %112 ], [ %144, %142 ]
  %122 = phi ptr [ %72, %112 ], [ %143, %142 ]
  br i1 %113, label %123, label %142

123:                                              ; preds = %120
  %124 = sitofp i32 %121 to float
  %125 = fmul float %124, 2.000000e+00
  %126 = fdiv float %125, %119
  %127 = fadd float %126, -1.000000e+00
  %128 = select i1 %117, float 0.000000e+00, float %127
  br label %129

129:                                              ; preds = %123, %129
  %130 = phi i32 [ 0, %123 ], [ %140, %129 ]
  %131 = phi ptr [ %122, %123 ], [ %139, %129 ]
  %132 = sitofp i32 %130 to float
  %133 = fmul float %132, 2.000000e+00
  %134 = fdiv float %133, %116
  %135 = fadd float %134, -1.000000e+00
  %136 = select i1 %114, float 0.000000e+00, float %135
  store float %136, ptr %131, align 4, !tbaa !85
  %137 = getelementptr inbounds float, ptr %131, i64 1
  store float %128, ptr %137, align 4
  %138 = getelementptr inbounds float, ptr %131, i64 2
  store float 0.000000e+00, ptr %138, align 4, !tbaa !85
  %139 = getelementptr inbounds float, ptr %131, i64 3
  %140 = add nuw nsw i32 %130, 1
  %141 = icmp eq i32 %140, %106
  br i1 %141, label %142, label %129, !llvm.loop !187

142:                                              ; preds = %129, %120
  %143 = phi ptr [ %122, %120 ], [ %139, %129 ]
  %144 = add nuw nsw i32 %121, 1
  %145 = icmp eq i32 %144, %101
  br i1 %145, label %216, label %120, !llvm.loop !188

146:                                              ; preds = %92
  %147 = mul i32 %96, 12
  %148 = mul i32 %147, %95
  %149 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %150 = sext i32 %148 to i64
  %151 = tail call ptr %149(i64 noundef %150, ptr noundef nonnull @.str.20) #24
  tail call void @BKE_nurb_makeFaces(ptr noundef nonnull %71, ptr noundef %151, i32 noundef 0, i32 noundef %80, i32 noundef %88) #25
  %152 = icmp sgt i32 %101, 0
  br i1 %152, label %153, label %213

153:                                              ; preds = %146
  %154 = add nsw i32 %101, -1
  %155 = icmp sgt i32 %106, 0
  %156 = add nsw i32 %106, -1
  br label %157

157:                                              ; preds = %153, %209
  %158 = phi i32 [ 0, %153 ], [ %211, %209 ]
  %159 = phi ptr [ %72, %153 ], [ %210, %209 ]
  %160 = icmp eq i32 %158, %154
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i16, ptr %97, align 4, !tbaa !141
  %163 = and i16 %162, 1
  %164 = icmp eq i16 %163, 0
  %165 = select i1 %164, i32 %154, i32 0
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i32 [ %158, %157 ], [ %165, %161 ]
  br i1 %155, label %168, label %209

168:                                              ; preds = %166
  %169 = load i32, ptr %89, align 4, !tbaa !115
  %170 = mul i32 %167, %88
  %171 = mul i32 %170, %169
  br label %172

172:                                              ; preds = %168, %181
  %173 = phi i32 [ 0, %168 ], [ %207, %181 ]
  %174 = phi ptr [ %159, %168 ], [ %206, %181 ]
  %175 = icmp eq i32 %173, %156
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load i16, ptr %102, align 2, !tbaa !143
  %178 = and i16 %177, 1
  %179 = icmp eq i16 %178, 0
  %180 = select i1 %179, i32 %156, i32 0
  br label %181

181:                                              ; preds = %176, %172
  %182 = phi i32 [ %173, %172 ], [ %180, %176 ]
  %183 = add nsw i32 %171, %182
  %184 = mul nsw i32 %183, 3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, ptr %151, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !85
  %188 = load float, ptr %64, align 8, !tbaa !85
  %189 = fsub float %187, %188
  %190 = load float, ptr %65, align 4, !tbaa !85
  %191 = fdiv float %189, %190
  store float %191, ptr %174, align 4, !tbaa !85
  %192 = getelementptr inbounds float, ptr %186, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !85
  %194 = load float, ptr %66, align 4, !tbaa !85
  %195 = fsub float %193, %194
  %196 = load float, ptr %67, align 4, !tbaa !85
  %197 = fdiv float %195, %196
  %198 = getelementptr inbounds float, ptr %174, i64 1
  store float %197, ptr %198, align 4, !tbaa !85
  %199 = getelementptr inbounds float, ptr %186, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !85
  %201 = load float, ptr %68, align 8, !tbaa !85
  %202 = fsub float %200, %201
  %203 = load float, ptr %69, align 4, !tbaa !85
  %204 = fdiv float %202, %203
  %205 = getelementptr inbounds float, ptr %174, i64 2
  store float %204, ptr %205, align 4, !tbaa !85
  %206 = getelementptr inbounds float, ptr %174, i64 3
  %207 = add nuw nsw i32 %173, 1
  %208 = icmp eq i32 %207, %106
  br i1 %208, label %209, label %172, !llvm.loop !189

209:                                              ; preds = %181, %166
  %210 = phi ptr [ %159, %166 ], [ %206, %181 ]
  %211 = add nuw nsw i32 %158, 1
  %212 = icmp eq i32 %211, %101
  br i1 %212, label %213, label %157, !llvm.loop !190

213:                                              ; preds = %209, %146
  %214 = phi ptr [ %72, %146 ], [ %210, %209 ]
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %215(ptr noundef %151) #24
  br label %216

216:                                              ; preds = %142, %110, %213, %86
  %217 = phi ptr [ %214, %213 ], [ %72, %86 ], [ %72, %110 ], [ %143, %142 ]
  %218 = load ptr, ptr %71, align 8, !tbaa !46
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %70, !llvm.loop !191

220:                                              ; preds = %216, %54
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_make_orco(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @BKE_displist_make_curveTypes_forOrco(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #24
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %3, %54
  %10 = phi ptr [ %56, %54 ], [ %7, %3 ]
  %11 = phi i32 [ %55, %54 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !192
  switch i16 %13, label %54 [
    i16 4, label %14
    i16 2, label %18
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !194
  %17 = add nsw i32 %16, %11
  br label %54

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !195
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %21, 2
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !196
  br i1 %23, label %42, label %28

28:                                               ; preds = %18
  br i1 %25, label %36, label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %27, 1
  %31 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !194
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, %30
  %35 = add nsw i32 %34, %11
  br label %54

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !194
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, %27
  %41 = add nsw i32 %40, %11
  br label %54

42:                                               ; preds = %18
  br i1 %25, label %49, label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %27, 1
  %45 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !194
  %47 = mul nsw i32 %44, %46
  %48 = add nsw i32 %47, %11
  br label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !194
  %52 = mul nsw i32 %51, %27
  %53 = add nsw i32 %52, %11
  br label %54

54:                                               ; preds = %9, %14, %36, %29, %49, %43
  %55 = phi i32 [ %17, %14 ], [ %35, %29 ], [ %41, %36 ], [ %48, %43 ], [ %53, %49 ], [ %11, %9 ]
  %56 = load ptr, ptr %10, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %9, !llvm.loop !197

58:                                               ; preds = %54, %3
  %59 = phi i32 [ 0, %3 ], [ %55, %54 ]
  %60 = icmp eq ptr %2, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 %59, ptr %2, align 4, !tbaa !159
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %64 = sext i32 %59 to i64
  %65 = mul nsw i64 %64, 12
  %66 = call ptr %63(i64 noundef %65, ptr noundef nonnull @.str.21) #24
  %67 = load ptr, ptr %4, align 8, !tbaa !46
  %68 = icmp eq ptr %67, null
  br i1 %68, label %214, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %71 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11
  %72 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12
  %73 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11, i64 1
  %74 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12, i64 1
  %75 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11, i64 2
  %76 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12, i64 2
  br label %77

77:                                               ; preds = %69, %210
  %78 = phi ptr [ %67, %69 ], [ %212, %210 ]
  %79 = phi ptr [ %66, %69 ], [ %211, %210 ]
  %80 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 2
  %81 = load i16, ptr %80, align 8, !tbaa !192
  switch i16 %81, label %210 [
    i16 4, label %82
    i16 2, label %132
  ]

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !194
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %210

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 8
  br label %88

88:                                               ; preds = %86, %126
  %89 = phi i32 [ %84, %86 ], [ %127, %126 ]
  %90 = phi i64 [ 0, %86 ], [ %128, %126 ]
  %91 = phi ptr [ %79, %86 ], [ %129, %126 ]
  %92 = load i32, ptr %70, align 4, !tbaa !80
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = trunc i64 %90 to i32
  %97 = sitofp i32 %96 to float
  %98 = fmul float %97, 2.000000e+00
  %99 = add nsw i32 %89, -1
  %100 = sitofp i32 %99 to float
  %101 = fdiv float %98, %100
  %102 = fadd float %101, -1.000000e+00
  store float %102, ptr %91, align 4, !tbaa !85
  %103 = getelementptr inbounds float, ptr %91, i64 1
  store <2 x float> zeroinitializer, ptr %103, align 4, !tbaa !85
  br label %126

104:                                              ; preds = %88
  %105 = load ptr, ptr %87, align 8, !tbaa !198
  %106 = mul nuw nsw i64 %90, 3
  %107 = getelementptr inbounds float, ptr %105, i64 %106
  call fastcc void @copy_v3_v3(ptr noundef %91, ptr noundef %107) #25
  %108 = load float, ptr %91, align 4, !tbaa !85
  %109 = load float, ptr %71, align 8, !tbaa !85
  %110 = fsub float %108, %109
  %111 = load float, ptr %72, align 4, !tbaa !85
  %112 = fdiv float %110, %111
  store float %112, ptr %91, align 4, !tbaa !85
  %113 = getelementptr inbounds float, ptr %91, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !85
  %115 = load float, ptr %73, align 4, !tbaa !85
  %116 = fsub float %114, %115
  %117 = load float, ptr %74, align 4, !tbaa !85
  %118 = fdiv float %116, %117
  store float %118, ptr %113, align 4, !tbaa !85
  %119 = getelementptr inbounds float, ptr %91, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !85
  %121 = load float, ptr %75, align 8, !tbaa !85
  %122 = fsub float %120, %121
  %123 = load float, ptr %76, align 4, !tbaa !85
  %124 = fdiv float %122, %123
  store float %124, ptr %119, align 4, !tbaa !85
  %125 = load i32, ptr %83, align 8, !tbaa !194
  br label %126

126:                                              ; preds = %95, %104
  %127 = phi i32 [ %89, %95 ], [ %125, %104 ]
  %128 = add nuw nsw i64 %90, 1
  %129 = getelementptr inbounds float, ptr %91, i64 3
  %130 = sext i32 %127 to i64
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %88, label %210, !llvm.loop !199

132:                                              ; preds = %77
  %133 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 5
  %134 = load i32, ptr %133, align 8, !tbaa !194
  %135 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 4
  %136 = load i32, ptr %135, align 4, !tbaa !196
  %137 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !195
  %139 = zext i16 %138 to i32
  %140 = and i32 %139, 1
  %141 = add i32 %134, %140
  %142 = lshr i32 %139, 1
  %143 = and i32 %142, 1
  %144 = add i32 %143, %136
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %210

146:                                              ; preds = %132
  %147 = icmp sgt i32 %141, 0
  %148 = add nsw i32 %144, -1
  %149 = sitofp i32 %148 to float
  %150 = add nsw i32 %141, -1
  %151 = sitofp i32 %150 to float
  %152 = getelementptr inbounds %struct.DispList, ptr %78, i64 0, i32 8
  br label %153

153:                                              ; preds = %146, %206
  %154 = phi i32 [ 0, %146 ], [ %208, %206 ]
  %155 = phi ptr [ %79, %146 ], [ %207, %206 ]
  br i1 %147, label %156, label %206

156:                                              ; preds = %153
  %157 = sitofp i32 %154 to float
  %158 = fmul float %157, 2.000000e+00
  %159 = fdiv float %158, %149
  %160 = fadd float %159, -1.000000e+00
  br label %161

161:                                              ; preds = %156, %202
  %162 = phi i32 [ 0, %156 ], [ %203, %202 ]
  %163 = phi ptr [ %155, %156 ], [ %204, %202 ]
  %164 = load i32, ptr %70, align 4, !tbaa !80
  %165 = and i32 %164, 32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %161
  store float %160, ptr %163, align 4, !tbaa !85
  %168 = sitofp i32 %162 to float
  %169 = fmul float %168, 2.000000e+00
  %170 = fdiv float %169, %151
  %171 = fadd float %170, -1.000000e+00
  %172 = getelementptr inbounds float, ptr %163, i64 1
  store float %171, ptr %172, align 4, !tbaa !85
  %173 = getelementptr inbounds float, ptr %163, i64 2
  store float 0.000000e+00, ptr %173, align 4, !tbaa !85
  br label %202

174:                                              ; preds = %161
  %175 = load i32, ptr %133, align 8, !tbaa !194
  %176 = srem i32 %162, %175
  %177 = load i32, ptr %135, align 4, !tbaa !196
  %178 = srem i32 %154, %177
  %179 = load ptr, ptr %152, align 8, !tbaa !198
  %180 = mul nsw i32 %178, %175
  %181 = add nsw i32 %180, %176
  %182 = mul nsw i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, ptr %179, i64 %183
  call fastcc void @copy_v3_v3(ptr noundef %163, ptr noundef %184) #25
  %185 = load float, ptr %163, align 4, !tbaa !85
  %186 = load float, ptr %71, align 8, !tbaa !85
  %187 = fsub float %185, %186
  %188 = load float, ptr %72, align 4, !tbaa !85
  %189 = fdiv float %187, %188
  store float %189, ptr %163, align 4, !tbaa !85
  %190 = getelementptr inbounds float, ptr %163, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !85
  %192 = load float, ptr %73, align 4, !tbaa !85
  %193 = fsub float %191, %192
  %194 = load float, ptr %74, align 4, !tbaa !85
  %195 = fdiv float %193, %194
  store float %195, ptr %190, align 4, !tbaa !85
  %196 = getelementptr inbounds float, ptr %163, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !85
  %198 = load float, ptr %75, align 8, !tbaa !85
  %199 = fsub float %197, %198
  %200 = load float, ptr %76, align 4, !tbaa !85
  %201 = fdiv float %199, %200
  store float %201, ptr %196, align 4, !tbaa !85
  br label %202

202:                                              ; preds = %167, %174
  %203 = add nuw nsw i32 %162, 1
  %204 = getelementptr inbounds float, ptr %163, i64 3
  %205 = icmp eq i32 %203, %141
  br i1 %205, label %206, label %161, !llvm.loop !200

206:                                              ; preds = %202, %153
  %207 = phi ptr [ %155, %153 ], [ %204, %202 ]
  %208 = add nuw nsw i32 %154, 1
  %209 = icmp eq i32 %208, %144
  br i1 %209, label %210, label %153, !llvm.loop !201

210:                                              ; preds = %206, %126, %132, %82, %77
  %211 = phi ptr [ %79, %77 ], [ %79, %82 ], [ %79, %132 ], [ %129, %126 ], [ %207, %206 ]
  %212 = load ptr, ptr %78, align 8, !tbaa !46
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %77, !llvm.loop !202

214:                                              ; preds = %210, %62
  call void @BKE_displist_free(ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret ptr %66
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes_forOrco(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_bevel_make(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  tail call fastcc void @BLI_listbase_clear(ptr noundef %2) #25
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !203
  %11 = icmp eq ptr %10, null
  br i1 %11, label %99, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !126
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %16, label %316

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 25
  %20 = load float, ptr %19, align 4, !tbaa !204
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %316

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 26
  %24 = load float, ptr %23, align 8, !tbaa !205
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %316

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 36
  %28 = load <2 x float>, ptr %27, align 4, !tbaa !85
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @BKE_displist_make_curveTypes_forRender(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext %4) #24
  br label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 118
  %33 = load ptr, ptr %32, align 8, !tbaa !206
  %34 = icmp eq ptr %33, null
  br i1 %34, label %98, label %35

35:                                               ; preds = %31, %30
  %36 = phi ptr [ %6, %30 ], [ %33, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = icmp eq ptr %37, null
  br i1 %38, label %98, label %39

39:                                               ; preds = %35, %95
  %40 = phi ptr [ %96, %95 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !192
  %43 = icmp ult i16 %42, 2
  br i1 %43, label %44, label %95

44:                                               ; preds = %39
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %46 = call ptr %45(i64 noundef 72, ptr noundef nonnull @.str.22) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %46, ptr noundef nonnull align 8 dereferenceable(72) %40, i64 72, i1 false), !tbaa.struct !207
  %47 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !196
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 12
  %52 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !194
  %54 = sext i32 %53 to i64
  %55 = mul i64 %51, %54
  %56 = call ptr %47(i64 noundef %55, ptr noundef nonnull @.str.22) #24
  %57 = getelementptr inbounds %struct.DispList, ptr %46, i64 0, i32 8
  store ptr %56, ptr %57, align 8, !tbaa !198
  %58 = getelementptr inbounds %struct.DispList, ptr %40, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !198
  %60 = load i32, ptr %48, align 4, !tbaa !196
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, 12
  %63 = load i32, ptr %52, align 8, !tbaa !194
  %64 = sext i32 %63 to i64
  %65 = mul i64 %62, %64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %56, ptr align 4 %59, i64 %65, i1 false)
  %66 = getelementptr inbounds %struct.DispList, ptr %46, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !192
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %44
  %70 = getelementptr inbounds %struct.DispList, ptr %46, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !195
  %72 = or i16 %71, 12
  store i16 %72, ptr %70, align 2, !tbaa !195
  br label %73

73:                                               ; preds = %69, %44
  call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %46) #24
  %74 = getelementptr inbounds %struct.DispList, ptr %46, i64 0, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !196
  %76 = getelementptr inbounds %struct.DispList, ptr %46, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !194
  %78 = mul nsw i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %57, align 8, !tbaa !198
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i32 [ %85, %82 ], [ %78, %80 ]
  %84 = phi ptr [ %93, %82 ], [ %81, %80 ]
  %85 = add nsw i32 %83, -1
  %86 = getelementptr inbounds float, ptr %84, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !85
  %88 = load float, ptr %84, align 4, !tbaa !85
  %89 = fneg float %88
  %90 = insertelement <2 x float> poison, float %89, i64 0
  %91 = insertelement <2 x float> %90, float %87, i64 1
  %92 = fmul <2 x float> %28, %91
  store <2 x float> %92, ptr %86, align 4, !tbaa !85
  store float 0.000000e+00, ptr %84, align 4, !tbaa !85
  %93 = getelementptr inbounds float, ptr %84, i64 3
  %94 = icmp eq i32 %85, 0
  br i1 %94, label %95, label %82, !llvm.loop !209

95:                                               ; preds = %82, %73, %39
  %96 = load ptr, ptr %40, align 8, !tbaa !210
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %39, !llvm.loop !211

98:                                               ; preds = %95, %31, %35
  call void @BKE_displist_free(ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #26
  br label %316

99:                                               ; preds = %5
  %100 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 25
  %101 = load float, ptr %100, align 4, !tbaa !204
  %102 = fcmp une float %101, 0.000000e+00
  %103 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 26
  %104 = load float, ptr %103, align 8, !tbaa !205
  %105 = fcmp une float %104, 0.000000e+00
  %106 = select i1 %102, i1 true, i1 %105
  br i1 %106, label %107, label %316

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 26
  %109 = fcmp oeq float %104, 0.000000e+00
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %112 = tail call ptr %111(i64 noundef 72, ptr noundef nonnull @.str.23) #24
  %113 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %114 = tail call ptr %113(i64 noundef 24, ptr noundef nonnull @.str.23) #24
  %115 = getelementptr inbounds %struct.DispList, ptr %112, i64 0, i32 8
  store ptr %114, ptr %115, align 8, !tbaa !198
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %112) #24
  %116 = getelementptr inbounds %struct.DispList, ptr %112, i64 0, i32 2
  store i16 1, ptr %116, align 8, !tbaa !192
  %117 = getelementptr inbounds %struct.DispList, ptr %112, i64 0, i32 4
  store i32 1, ptr %117, align 4, !tbaa !196
  %118 = getelementptr inbounds %struct.DispList, ptr %112, i64 0, i32 3
  store i16 12, ptr %118, align 2, !tbaa !195
  %119 = getelementptr inbounds %struct.DispList, ptr %112, i64 0, i32 5
  store i32 2, ptr %119, align 8, !tbaa !194
  %120 = load ptr, ptr %115, align 8, !tbaa !198
  store <2 x float> zeroinitializer, ptr %120, align 4, !tbaa !85
  %121 = load float, ptr %100, align 4, !tbaa !204
  %122 = fneg float %121
  %123 = getelementptr inbounds float, ptr %120, i64 2
  store float %122, ptr %123, align 4, !tbaa !85
  %124 = getelementptr inbounds float, ptr %120, i64 3
  store <2 x float> zeroinitializer, ptr %124, align 4, !tbaa !85
  %125 = load float, ptr %100, align 4, !tbaa !204
  %126 = getelementptr inbounds float, ptr %120, i64 5
  store float %125, ptr %126, align 4, !tbaa !85
  br label %316

127:                                              ; preds = %107
  %128 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 23
  %129 = load i32, ptr %128, align 4, !tbaa !80
  %130 = and i32 %129, 6
  %131 = icmp ne i32 %130, 0
  %132 = or i1 %102, %131
  br i1 %132, label %176, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 21
  %135 = load i16, ptr %134, align 8, !tbaa !212
  %136 = sext i16 %135 to i32
  %137 = shl nsw i32 %136, 1
  %138 = add nsw i32 %137, 4
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %140 = tail call ptr %139(i64 noundef 72, ptr noundef nonnull @.str.24) #24
  %141 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %142 = mul nsw i32 %138, 12
  %143 = sext i32 %142 to i64
  %144 = tail call ptr %141(i64 noundef %143, ptr noundef nonnull @.str.24) #24
  %145 = getelementptr inbounds %struct.DispList, ptr %140, i64 0, i32 8
  store ptr %144, ptr %145, align 8, !tbaa !198
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %140) #24
  %146 = getelementptr inbounds %struct.DispList, ptr %140, i64 0, i32 2
  store i16 0, ptr %146, align 8, !tbaa !192
  %147 = getelementptr inbounds %struct.DispList, ptr %140, i64 0, i32 4
  store i32 1, ptr %147, align 4, !tbaa !196
  %148 = getelementptr inbounds %struct.DispList, ptr %140, i64 0, i32 3
  store i16 8, ptr %148, align 2, !tbaa !195
  %149 = getelementptr inbounds %struct.DispList, ptr %140, i64 0, i32 5
  store i32 %138, ptr %149, align 8, !tbaa !194
  %150 = sitofp i32 %138 to float
  %151 = fdiv float 0x401921FB60000000, %150
  %152 = icmp sgt i16 %135, -2
  br i1 %152, label %153, label %316

153:                                              ; preds = %133
  %154 = sub nsw i32 -3, %137
  %155 = sitofp i32 %154 to float
  %156 = fmul float %151, %155
  %157 = load ptr, ptr %145, align 8, !tbaa !198
  br label %158

158:                                              ; preds = %153, %158
  %159 = phi i32 [ %174, %158 ], [ 0, %153 ]
  %160 = phi float [ %172, %158 ], [ %156, %153 ]
  %161 = phi ptr [ %173, %158 ], [ %157, %153 ]
  store float 0.000000e+00, ptr %161, align 4, !tbaa !85
  %162 = tail call float @cosf(float noundef %160) #24
  %163 = load float, ptr %108, align 8, !tbaa !205
  %164 = fmul float %162, %163
  %165 = getelementptr inbounds float, ptr %161, i64 1
  store float %164, ptr %165, align 4, !tbaa !85
  %166 = tail call float @sinf(float noundef %160) #24
  %167 = load float, ptr %108, align 8, !tbaa !205
  %168 = load float, ptr %100, align 4, !tbaa !204
  %169 = fneg float %168
  %170 = tail call float @llvm.fmuladd.f32(float %166, float %167, float %169)
  %171 = getelementptr inbounds float, ptr %161, i64 2
  store float %170, ptr %171, align 4, !tbaa !85
  %172 = fadd float %151, %160
  %173 = getelementptr inbounds float, ptr %161, i64 3
  %174 = add nuw nsw i32 %159, 1
  %175 = icmp eq i32 %174, %138
  br i1 %175, label %316, label %158, !llvm.loop !213

176:                                              ; preds = %127
  %177 = icmp eq i32 %130, 2
  br i1 %177, label %227, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 21
  %180 = load i16, ptr %179, align 8, !tbaa !212
  %181 = sext i16 %180 to i32
  %182 = add nsw i32 %181, 2
  %183 = shl nsw i32 %181, 1
  %184 = add nsw i32 %183, 3
  %185 = select i1 %131, i32 %182, i32 %184
  %186 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %187 = tail call ptr %186(i64 noundef 72, ptr noundef nonnull @.str.24) #24
  %188 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %189 = mul nsw i32 %185, 12
  %190 = sext i32 %189 to i64
  %191 = tail call ptr %188(i64 noundef %190, ptr noundef nonnull @.str.24) #24
  %192 = getelementptr inbounds %struct.DispList, ptr %187, i64 0, i32 8
  store ptr %191, ptr %192, align 8, !tbaa !198
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %187) #24
  %193 = getelementptr inbounds %struct.DispList, ptr %187, i64 0, i32 2
  store i16 1, ptr %193, align 8, !tbaa !192
  %194 = getelementptr inbounds %struct.DispList, ptr %187, i64 0, i32 4
  store i32 1, ptr %194, align 4, !tbaa !196
  %195 = getelementptr inbounds %struct.DispList, ptr %187, i64 0, i32 3
  store i16 8, ptr %195, align 2, !tbaa !195
  %196 = getelementptr inbounds %struct.DispList, ptr %187, i64 0, i32 5
  store i32 %185, ptr %196, align 8, !tbaa !194
  %197 = shl i32 %182, 16
  %198 = ashr exact i32 %197, 16
  %199 = add nsw i32 %198, -1
  %200 = sitofp i32 %199 to double
  %201 = fdiv double 0x3FF921FB54442D18, %200
  %202 = fptrunc double %201 to float
  %203 = icmp sgt i32 %185, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %178
  %205 = sub nsw i32 1, %185
  %206 = sitofp i32 %205 to float
  %207 = fmul float %206, %202
  %208 = load ptr, ptr %192, align 8, !tbaa !198
  br label %209

209:                                              ; preds = %204, %209
  %210 = phi i32 [ %225, %209 ], [ 0, %204 ]
  %211 = phi float [ %223, %209 ], [ %207, %204 ]
  %212 = phi ptr [ %224, %209 ], [ %208, %204 ]
  store float 0.000000e+00, ptr %212, align 4, !tbaa !85
  %213 = tail call float @cosf(float noundef %211) #24
  %214 = load float, ptr %108, align 8, !tbaa !205
  %215 = fmul float %213, %214
  %216 = getelementptr inbounds float, ptr %212, i64 1
  store float %215, ptr %216, align 4, !tbaa !85
  %217 = tail call float @sinf(float noundef %211) #24
  %218 = load float, ptr %108, align 8, !tbaa !205
  %219 = load float, ptr %100, align 4, !tbaa !204
  %220 = fneg float %219
  %221 = tail call float @llvm.fmuladd.f32(float %217, float %218, float %220)
  %222 = getelementptr inbounds float, ptr %212, i64 2
  store float %221, ptr %222, align 4, !tbaa !85
  %223 = fadd float %211, %202
  %224 = getelementptr inbounds float, ptr %212, i64 3
  %225 = add nuw nsw i32 %210, 1
  %226 = icmp eq i32 %225, %185
  br i1 %226, label %227, label %209, !llvm.loop !214

227:                                              ; preds = %209, %178, %176
  %228 = load float, ptr %100, align 4, !tbaa !204
  %229 = fcmp une float %228, 0.000000e+00
  br i1 %229, label %230, label %266

230:                                              ; preds = %227
  %231 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %232 = tail call ptr %231(i64 noundef 72, ptr noundef nonnull @.str.25) #24
  %233 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %234 = tail call ptr %233(i64 noundef 24, ptr noundef nonnull @.str.25) #24
  %235 = getelementptr inbounds %struct.DispList, ptr %232, i64 0, i32 8
  store ptr %234, ptr %235, align 8, !tbaa !198
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %232) #24
  %236 = getelementptr inbounds %struct.DispList, ptr %232, i64 0, i32 2
  store i16 1, ptr %236, align 8, !tbaa !192
  %237 = getelementptr inbounds %struct.DispList, ptr %232, i64 0, i32 4
  store i32 1, ptr %237, align 4, !tbaa !196
  %238 = getelementptr inbounds %struct.DispList, ptr %232, i64 0, i32 5
  store i32 2, ptr %238, align 8, !tbaa !194
  %239 = load ptr, ptr %235, align 8, !tbaa !198
  %240 = load float, ptr %108, align 8, !tbaa !205
  %241 = getelementptr inbounds float, ptr %239, i64 1
  store float %240, ptr %241, align 4, !tbaa !85
  %242 = load float, ptr %100, align 4, !tbaa !204
  %243 = fneg float %242
  %244 = getelementptr inbounds float, ptr %239, i64 2
  store float %243, ptr %244, align 4, !tbaa !85
  %245 = load float, ptr %108, align 8, !tbaa !205
  %246 = getelementptr inbounds float, ptr %239, i64 4
  store float %245, ptr %246, align 4, !tbaa !85
  %247 = load float, ptr %100, align 4, !tbaa !204
  %248 = getelementptr inbounds float, ptr %239, i64 5
  store float %247, ptr %248, align 4, !tbaa !85
  %249 = load i32, ptr %128, align 4, !tbaa !80
  %250 = and i32 %249, 6
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %230
  %253 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %254 = tail call ptr %253(ptr noundef nonnull %232) #24
  %255 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %256 = getelementptr inbounds %struct.DispList, ptr %254, i64 0, i32 8
  %257 = load ptr, ptr %256, align 8, !tbaa !198
  %258 = tail call ptr %255(ptr noundef %257) #24
  store ptr %258, ptr %256, align 8, !tbaa !198
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %254) #24
  %259 = load ptr, ptr %256, align 8, !tbaa !198
  %260 = getelementptr inbounds float, ptr %259, i64 1
  %261 = load <2 x float>, ptr %260, align 4, !tbaa !85
  %262 = fneg <2 x float> %261
  store <2 x float> %262, ptr %260, align 4, !tbaa !85
  %263 = getelementptr inbounds float, ptr %259, i64 4
  %264 = load <2 x float>, ptr %263, align 4, !tbaa !85
  %265 = fneg <2 x float> %264
  store <2 x float> %265, ptr %263, align 4, !tbaa !85
  br label %266

266:                                              ; preds = %230, %252, %227
  %267 = load i32, ptr %128, align 4, !tbaa !80
  %268 = and i32 %267, 6
  %269 = icmp eq i32 %268, 4
  br i1 %269, label %316, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 21
  %272 = load i16, ptr %271, align 8, !tbaa !212
  %273 = sext i16 %272 to i32
  %274 = add nsw i32 %273, 2
  %275 = icmp eq i32 %268, 0
  %276 = shl nsw i32 %273, 1
  %277 = add nsw i32 %276, 3
  %278 = select i1 %275, i32 %277, i32 %274
  %279 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %280 = tail call ptr %279(i64 noundef 72, ptr noundef nonnull @.str.26) #24
  %281 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %282 = mul nsw i32 %278, 12
  %283 = sext i32 %282 to i64
  %284 = tail call ptr %281(i64 noundef %283, ptr noundef nonnull @.str.26) #24
  %285 = getelementptr inbounds %struct.DispList, ptr %280, i64 0, i32 8
  store ptr %284, ptr %285, align 8, !tbaa !198
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %280) #24
  %286 = getelementptr inbounds %struct.DispList, ptr %280, i64 0, i32 2
  store i16 1, ptr %286, align 8, !tbaa !192
  %287 = getelementptr inbounds %struct.DispList, ptr %280, i64 0, i32 3
  store i16 4, ptr %287, align 2, !tbaa !195
  %288 = getelementptr inbounds %struct.DispList, ptr %280, i64 0, i32 4
  store i32 1, ptr %288, align 4, !tbaa !196
  %289 = getelementptr inbounds %struct.DispList, ptr %280, i64 0, i32 5
  store i32 %278, ptr %289, align 8, !tbaa !194
  %290 = shl i32 %274, 16
  %291 = ashr exact i32 %290, 16
  %292 = add nsw i32 %291, -1
  %293 = sitofp i32 %292 to double
  %294 = fdiv double 0x3FF921FB54442D18, %293
  %295 = fptrunc double %294 to float
  %296 = icmp sgt i32 %278, 0
  br i1 %296, label %297, label %316

297:                                              ; preds = %270
  %298 = load ptr, ptr %285, align 8, !tbaa !198
  br label %299

299:                                              ; preds = %297, %299
  %300 = phi i32 [ %314, %299 ], [ 0, %297 ]
  %301 = phi float [ %312, %299 ], [ 0.000000e+00, %297 ]
  %302 = phi ptr [ %313, %299 ], [ %298, %297 ]
  store float 0.000000e+00, ptr %302, align 4, !tbaa !85
  %303 = tail call float @cosf(float noundef %301) #24
  %304 = load float, ptr %108, align 8, !tbaa !205
  %305 = fmul float %303, %304
  %306 = getelementptr inbounds float, ptr %302, i64 1
  store float %305, ptr %306, align 4, !tbaa !85
  %307 = tail call float @sinf(float noundef %301) #24
  %308 = load float, ptr %108, align 8, !tbaa !205
  %309 = load float, ptr %100, align 4, !tbaa !204
  %310 = tail call float @llvm.fmuladd.f32(float %307, float %308, float %309)
  %311 = getelementptr inbounds float, ptr %302, i64 2
  store float %310, ptr %311, align 4, !tbaa !85
  %312 = fadd float %301, %295
  %313 = getelementptr inbounds float, ptr %302, i64 3
  %314 = add nuw nsw i32 %300, 1
  %315 = icmp eq i32 %314, %278
  br i1 %315, label %316, label %299, !llvm.loop !215

316:                                              ; preds = %158, %299, %99, %133, %270, %98, %22, %16, %110, %266, %12
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_bevelList_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1, %18
  %5 = phi ptr [ %6, %18 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.BevList, ptr %5, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #24
  br label %12

12:                                               ; preds = %10, %4
  %13 = getelementptr inbounds %struct.BevList, ptr %5, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #24
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %19(ptr noundef nonnull %5) #24
  %20 = icmp eq ptr %6, null
  br i1 %20, label %21, label %4, !llvm.loop !216

21:                                               ; preds = %18, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_bevelList_make(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.BevPoint, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 67
  %8 = load i8, ptr %7, align 4, !tbaa !91
  %9 = add i8 %8, -1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 68
  %13 = load i8, ptr %12, align 1, !tbaa !92
  %14 = add i8 %13, -1
  %15 = icmp ult i8 %14, 2
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ true, %3 ], [ %15, %11 ]
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = getelementptr inbounds %struct.CurveCache, ptr %19, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %20) #25
  %21 = load ptr, ptr %1, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !126
  %28 = icmp ne i16 %27, 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i1 [ false, %16 ], [ %28, %25 ]
  %31 = icmp eq ptr %21, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %34 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 5
  %35 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 25
  %36 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 26
  %37 = icmp eq i8 %2, 0
  %38 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 29
  %39 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 17
  br label %47

40:                                               ; preds = %473, %29
  %41 = phi ptr [ undef, %29 ], [ %474, %473 ]
  %42 = phi i32 [ 0, %29 ], [ %475, %473 ]
  %43 = load ptr, ptr %20, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %768, label %45

45:                                               ; preds = %40
  %46 = icmp eq ptr %41, null
  br label %478

47:                                               ; preds = %32, %473
  %48 = phi ptr [ %21, %32 ], [ %476, %473 ]
  %49 = phi i32 [ 0, %32 ], [ %475, %473 ]
  %50 = phi ptr [ undef, %32 ], [ %474, %473 ]
  %51 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 4
  %52 = load i16, ptr %51, align 4, !tbaa !217
  %53 = icmp ne i16 %52, 0
  %54 = and i1 %30, %53
  br i1 %54, label %473, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !117
  %58 = and i16 %57, 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %33, align 4, !tbaa !80
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %61, 4097
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load ptr, ptr %34, align 8, !tbaa !203
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load float, ptr %35, align 4, !tbaa !204
  %71 = fcmp une float %70, 0.000000e+00
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load float, ptr %36, align 8, !tbaa !205
  %74 = fcmp une float %73, 0.000000e+00
  br label %75

75:                                               ; preds = %55, %60, %72, %69, %66
  %76 = phi i1 [ %63, %69 ], [ %63, %66 ], [ %63, %72 ], [ %63, %60 ], [ false, %55 ]
  %77 = phi i1 [ true, %69 ], [ true, %66 ], [ %74, %72 ], [ true, %60 ], [ true, %55 ]
  %78 = tail call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef nonnull %48) #25, !range !127
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %82 = tail call ptr %81(i64 noundef 136, ptr noundef nonnull @.str.27) #24
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %82) #24
  %83 = getelementptr inbounds %struct.BevList, ptr %82, i64 0, i32 2
  store i32 0, ptr %83, align 8, !tbaa !159
  %84 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 21
  %85 = load i32, ptr %84, align 4, !tbaa !218
  %86 = getelementptr inbounds %struct.BevList, ptr %82, i64 0, i32 6
  store i32 %85, ptr %86, align 8, !tbaa !159
  br label %473

87:                                               ; preds = %75
  br i1 %37, label %91, label %88

88:                                               ; preds = %87
  %89 = load i16, ptr %38, align 8, !tbaa !182
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %87
  %92 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 9
  %93 = load i16, ptr %92, align 4, !tbaa !184
  br label %94

94:                                               ; preds = %88, %91
  %95 = phi i16 [ %93, %91 ], [ %89, %88 ]
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 13
  %98 = load i16, ptr %97, align 4, !tbaa !141
  %99 = and i16 %98, 1
  %100 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !121
  %102 = add nsw i16 %99, -1
  %103 = sext i16 %102 to i32
  %104 = add nsw i32 %101, %103
  %105 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 2
  %106 = load i16, ptr %105, align 8, !tbaa !119
  switch i16 %106, label %473 [
    i16 0, label %107
    i16 1, label %189
    i16 4, label %384
  ]

107:                                              ; preds = %94
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %109 = sext i32 %101 to i64
  %110 = mul nsw i64 %109, 80
  %111 = add nsw i64 %110, 56
  %112 = tail call ptr %108(i64 noundef %111, ptr noundef nonnull @.str.28) #24
  br i1 %17, label %113, label %126

113:                                              ; preds = %107
  %114 = load i16, ptr %97, align 4, !tbaa !141
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %119 = sext i32 %104 to i64
  %120 = shl nsw i64 %119, 2
  %121 = tail call ptr %118(i64 noundef %120, ptr noundef nonnull @.str.29) #24
  %122 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 8
  store ptr %121, ptr %122, align 8, !tbaa !46
  %123 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %124 = tail call ptr %123(i64 noundef %120, ptr noundef nonnull @.str.30) #24
  %125 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 7
  store ptr %124, ptr %125, align 8, !tbaa !46
  br label %126

126:                                              ; preds = %117, %113, %107
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %112) #24
  %127 = load i16, ptr %97, align 4, !tbaa !141
  %128 = and i16 %127, 1
  %129 = add nsw i16 %128, -1
  %130 = sext i16 %129 to i32
  %131 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 4
  store i32 %130, ptr %131, align 8, !tbaa !159
  %132 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 2
  store i32 %101, ptr %132, align 8, !tbaa !159
  %133 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 3
  store i32 0, ptr %133, align 4, !tbaa !159
  %134 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 21
  %135 = load i32, ptr %134, align 4, !tbaa !218
  %136 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 6
  store i32 %135, ptr %136, align 8, !tbaa !159
  %137 = getelementptr inbounds %struct.BevList, ptr %112, i64 1, i32 4
  store float 0.000000e+00, ptr %137, align 4, !tbaa !219
  %138 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !46
  %140 = icmp eq i32 %101, 0
  br i1 %140, label %183, label %141

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 17
  %145 = load ptr, ptr %144, align 8, !tbaa !124
  %146 = getelementptr inbounds %struct.BevList, ptr %112, i64 0, i32 9
  br label %147

147:                                              ; preds = %141, %176
  %148 = phi i32 [ %153, %176 ], [ %101, %141 ]
  %149 = phi ptr [ %164, %176 ], [ %145, %141 ]
  %150 = phi ptr [ %179, %176 ], [ %146, %141 ]
  %151 = phi ptr [ %178, %176 ], [ %143, %141 ]
  %152 = phi ptr [ %177, %176 ], [ %139, %141 ]
  %153 = add nsw i32 %148, -1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %150, ptr noundef %149) #25
  %154 = getelementptr inbounds %struct.BPoint, ptr %149, i64 0, i32 1
  %155 = load float, ptr %154, align 4, !tbaa !177
  %156 = getelementptr inbounds %struct.BevPoint, ptr %150, i64 0, i32 1
  store float %155, ptr %156, align 4, !tbaa !221
  %157 = getelementptr inbounds %struct.BPoint, ptr %149, i64 0, i32 5
  %158 = load float, ptr %157, align 4, !tbaa !147
  %159 = getelementptr inbounds %struct.BevPoint, ptr %150, i64 0, i32 2
  store float %158, ptr %159, align 4, !tbaa !222
  %160 = getelementptr inbounds %struct.BPoint, ptr %149, i64 0, i32 2
  %161 = load float, ptr %160, align 4, !tbaa !178
  %162 = getelementptr inbounds %struct.BevPoint, ptr %150, i64 0, i32 3
  store float %161, ptr %162, align 4, !tbaa !223
  %163 = getelementptr inbounds %struct.BevPoint, ptr %150, i64 0, i32 10
  store i16 1, ptr %163, align 4, !tbaa !224
  %164 = getelementptr inbounds %struct.BPoint, ptr %149, i64 1
  %165 = icmp ne ptr %152, null
  %166 = icmp ne i32 %153, 0
  %167 = select i1 %165, i1 %166, i1 false
  br i1 %167, label %168, label %176

168:                                              ; preds = %147
  %169 = tail call fastcc float @len_v3v3(ptr noundef nonnull %150, ptr noundef nonnull %164) #25
  store float %169, ptr %152, align 4, !tbaa !85
  %170 = getelementptr inbounds %struct.BevPoint, ptr %150, i64 1, i32 4
  store float %169, ptr %170, align 4, !tbaa !219
  %171 = load float, ptr %152, align 4, !tbaa !85
  %172 = fcmp ogt float %171, 0x3EE4F8B580000000
  %173 = zext i1 %172 to i32
  store i32 %173, ptr %151, align 4, !tbaa !159
  %174 = getelementptr inbounds float, ptr %152, i64 1
  %175 = getelementptr inbounds i32, ptr %151, i64 1
  br label %176

176:                                              ; preds = %147, %168
  %177 = phi ptr [ %174, %168 ], [ %152, %147 ]
  %178 = phi ptr [ %175, %168 ], [ %151, %147 ]
  %179 = getelementptr inbounds %struct.BevPoint, ptr %150, i64 1
  %180 = icmp eq i32 %153, 0
  br i1 %180, label %181, label %147, !llvm.loop !225

181:                                              ; preds = %176
  %182 = load i16, ptr %97, align 4, !tbaa !141
  br label %183

183:                                              ; preds = %181, %126
  %184 = phi i16 [ %127, %126 ], [ %182, %181 ]
  %185 = phi ptr [ %139, %126 ], [ %177, %181 ]
  %186 = and i16 %184, 1
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %473

188:                                              ; preds = %183
  tail call fastcc void @bevlist_firstlast_direction_calc_from_bpoint(ptr noundef nonnull %48, ptr noundef %112) #25
  br label %473

189:                                              ; preds = %94
  %190 = mul nsw i32 %104, %96
  %191 = add nsw i32 %190, 1
  %192 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %193 = sext i32 %191 to i64
  %194 = mul nsw i64 %193, 80
  %195 = add nsw i64 %194, 56
  %196 = tail call ptr %192(i64 noundef %195, ptr noundef nonnull @.str.31) #24
  br i1 %17, label %197, label %210

197:                                              ; preds = %189
  %198 = load i16, ptr %97, align 4, !tbaa !141
  %199 = and i16 %198, 1
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %203 = sext i32 %104 to i64
  %204 = shl nsw i64 %203, 2
  %205 = tail call ptr %202(i64 noundef %204, ptr noundef nonnull @.str.32) #24
  %206 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 8
  store ptr %205, ptr %206, align 8, !tbaa !46
  %207 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %208 = tail call ptr %207(i64 noundef %204, ptr noundef nonnull @.str.33) #24
  %209 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 7
  store ptr %208, ptr %209, align 8, !tbaa !46
  br label %210

210:                                              ; preds = %201, %197, %189
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %196) #24
  %211 = load i16, ptr %97, align 4, !tbaa !141
  %212 = and i16 %211, 1
  %213 = add nsw i16 %212, -1
  %214 = sext i16 %213 to i32
  %215 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 4
  store i32 %214, ptr %215, align 8, !tbaa !159
  %216 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 21
  %217 = load i32, ptr %216, align 4, !tbaa !218
  %218 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 6
  store i32 %217, ptr %218, align 8, !tbaa !159
  %219 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 9
  %220 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  %222 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 7
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = getelementptr inbounds %struct.BevList, ptr %196, i64 1, i32 4
  store float 0.000000e+00, ptr %224, align 4, !tbaa !219
  %225 = icmp eq ptr %221, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %210
  store float 0.000000e+00, ptr %221, align 4, !tbaa !85
  store i32 0, ptr %223, align 4, !tbaa !159
  br label %227

227:                                              ; preds = %226, %210
  %228 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 6
  %229 = load i32, ptr %228, align 8, !tbaa !121
  %230 = add nsw i32 %229, -1
  %231 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 18
  %232 = load ptr, ptr %231, align 8, !tbaa !122
  %233 = icmp eq i16 %212, 0
  %234 = sext i32 %230 to i64
  %235 = select i1 %233, i32 %230, i32 %229
  %236 = select i1 %233, i64 0, i64 %234
  %237 = getelementptr inbounds %struct.BezTriple, ptr %232, i64 %236
  %238 = getelementptr inbounds i8, ptr %196, i64 92
  %239 = getelementptr inbounds [3 x [3 x float]], ptr %237, i64 0, i64 2
  %240 = getelementptr inbounds [3 x [3 x float]], ptr %237, i64 0, i64 1
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %238, ptr noundef nonnull %239, ptr noundef nonnull %240) #25
  %241 = tail call fastcc float @normalize_v3(ptr noundef nonnull %238) #25
  %242 = icmp eq i32 %235, 0
  br i1 %242, label %363, label %243

243:                                              ; preds = %227
  %244 = xor i16 %212, 1
  %245 = zext nneg i16 %244 to i64
  %246 = getelementptr inbounds %struct.BezTriple, ptr %232, i64 %245
  %247 = icmp sgt i16 %95, 0
  %248 = sext i16 %95 to i64
  %249 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 2
  %250 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 3
  br label %251

251:                                              ; preds = %243, %357
  %252 = phi i32 [ %235, %243 ], [ %258, %357 ]
  %253 = phi ptr [ %246, %243 ], [ %361, %357 ]
  %254 = phi ptr [ %237, %243 ], [ %253, %357 ]
  %255 = phi ptr [ %219, %243 ], [ %360, %357 ]
  %256 = phi ptr [ %223, %243 ], [ %359, %357 ]
  %257 = phi ptr [ %221, %243 ], [ %358, %357 ]
  %258 = add nsw i32 %252, -1
  %259 = getelementptr inbounds %struct.BezTriple, ptr %254, i64 0, i32 6
  %260 = load i8, ptr %259, align 2, !tbaa !226
  %261 = icmp eq i8 %260, 2
  br i1 %261, label %263, label %262

262:                                              ; preds = %263, %251
  br label %291

263:                                              ; preds = %251
  %264 = getelementptr inbounds %struct.BezTriple, ptr %253, i64 0, i32 5
  %265 = load i8, ptr %264, align 1, !tbaa !227
  %266 = icmp eq i8 %265, 2
  br i1 %266, label %267, label %262

267:                                              ; preds = %263
  %268 = getelementptr inbounds [3 x [3 x float]], ptr %254, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %255, ptr noundef nonnull %268) #25
  %269 = getelementptr inbounds %struct.BezTriple, ptr %254, i64 0, i32 1
  %270 = load float, ptr %269, align 4, !tbaa !228
  %271 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 1
  store float %270, ptr %271, align 4, !tbaa !221
  %272 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 2
  %273 = getelementptr inbounds %struct.BezTriple, ptr %254, i64 0, i32 2
  %274 = load <2 x float>, ptr %273, align 4, !tbaa !85
  %275 = shufflevector <2 x float> %274, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %275, ptr %272, align 4, !tbaa !85
  %276 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 10
  store i16 1, ptr %276, align 4, !tbaa !224
  %277 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 11
  store i16 0, ptr %277, align 2, !tbaa !229
  %278 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 1
  %279 = load i32, ptr %249, align 8, !tbaa !159
  %280 = add nsw i32 %279, 1
  store i32 %280, ptr %249, align 8, !tbaa !159
  store i32 1, ptr %250, align 4, !tbaa !159
  %281 = icmp eq ptr %257, null
  br i1 %281, label %357, label %282

282:                                              ; preds = %267
  %283 = getelementptr inbounds [3 x [3 x float]], ptr %253, i64 0, i64 1
  %284 = tail call fastcc float @len_v3v3(ptr noundef nonnull %268, ptr noundef nonnull %283) #25
  store float %284, ptr %257, align 4, !tbaa !85
  %285 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 1, i32 4
  store float %284, ptr %285, align 4, !tbaa !219
  %286 = getelementptr inbounds float, ptr %257, i64 1
  %287 = fcmp ogt float %284, 0x3EE4F8B580000000
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i32 1, ptr %256, align 4, !tbaa !159
  br label %289

289:                                              ; preds = %288, %282
  %290 = getelementptr inbounds i32, ptr %256, i64 1
  br label %357

291:                                              ; preds = %262, %291
  %292 = phi i64 [ %302, %291 ], [ 0, %262 ]
  %293 = getelementptr inbounds [3 x [3 x float]], ptr %254, i64 0, i64 1, i64 %292
  %294 = load float, ptr %293, align 4, !tbaa !85
  %295 = getelementptr inbounds [3 x [3 x float]], ptr %254, i64 0, i64 2, i64 %292
  %296 = load float, ptr %295, align 4, !tbaa !85
  %297 = getelementptr inbounds [3 x float], ptr %253, i64 0, i64 %292
  %298 = load float, ptr %297, align 4, !tbaa !85
  %299 = getelementptr inbounds [3 x [3 x float]], ptr %253, i64 0, i64 1, i64 %292
  %300 = load float, ptr %299, align 4, !tbaa !85
  %301 = getelementptr inbounds [3 x float], ptr %255, i64 0, i64 %292
  tail call void @BKE_curve_forward_diff_bezier(float noundef %294, float noundef %296, float noundef %298, float noundef %300, ptr noundef %301, i32 noundef %96, i32 noundef 80) #25
  %302 = add nuw nsw i64 %292, 1
  %303 = icmp eq i64 %302, 3
  br i1 %303, label %304, label %291, !llvm.loop !230

304:                                              ; preds = %291
  %305 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 1
  %306 = select i1 %76, ptr null, ptr %305
  %307 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 2
  %308 = select i1 %77, ptr %307, ptr null
  %309 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 3
  tail call fastcc void @alfa_bezpart(ptr noundef nonnull %254, ptr noundef nonnull %253, ptr noundef nonnull %48, ptr noundef %306, ptr noundef %308, ptr noundef nonnull %309, i32 noundef %96) #25
  %310 = load i16, ptr %39, align 2, !tbaa !89
  %311 = icmp eq i16 %310, 4
  br i1 %311, label %312, label %317

312:                                              ; preds = %304
  %313 = getelementptr inbounds [3 x [3 x float]], ptr %254, i64 0, i64 1
  %314 = getelementptr inbounds [3 x [3 x float]], ptr %254, i64 0, i64 2
  %315 = getelementptr inbounds [3 x [3 x float]], ptr %253, i64 0, i64 1
  %316 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 8
  tail call fastcc void @forward_diff_bezier_cotangent(ptr noundef nonnull %313, ptr noundef nonnull %314, ptr noundef nonnull %253, ptr noundef nonnull %315, ptr noundef nonnull %316, i32 noundef %96) #25
  br label %317

317:                                              ; preds = %312, %304
  %318 = getelementptr inbounds %struct.BezTriple, ptr %254, i64 0, i32 5
  %319 = load i8, ptr %318, align 1, !tbaa !227
  %320 = load i8, ptr %259, align 2, !tbaa !226
  %321 = icmp eq i8 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  switch i8 %319, label %327 [
    i8 0, label %325
    i8 2, label %325
  ]

323:                                              ; preds = %317
  switch i8 %319, label %324 [
    i8 0, label %325
    i8 2, label %325
  ]

324:                                              ; preds = %323
  switch i8 %320, label %327 [
    i8 0, label %325
    i8 2, label %325
  ]

325:                                              ; preds = %324, %324, %323, %323, %322, %322
  %326 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 0, i32 10
  store i16 1, ptr %326, align 4, !tbaa !224
  br label %327

327:                                              ; preds = %325, %324, %322
  %328 = icmp eq ptr %257, null
  br i1 %328, label %349, label %329

329:                                              ; preds = %327
  store float 0.000000e+00, ptr %257, align 4, !tbaa !85
  store i32 0, ptr %256, align 4, !tbaa !159
  br i1 %247, label %330, label %345

330:                                              ; preds = %329, %342
  %331 = phi i32 [ %343, %342 ], [ 0, %329 ]
  %332 = phi ptr [ %333, %342 ], [ %255, %329 ]
  %333 = getelementptr inbounds %struct.BevPoint, ptr %332, i64 1
  %334 = tail call fastcc float @len_v3v3(ptr noundef %332, ptr noundef nonnull %333) #25
  %335 = getelementptr inbounds %struct.BevPoint, ptr %332, i64 1, i32 4
  store float %334, ptr %335, align 4, !tbaa !219
  %336 = fcmp ogt float %334, 0x3EE4F8B580000000
  br i1 %336, label %337, label %342

337:                                              ; preds = %330
  %338 = load float, ptr %257, align 4, !tbaa !85
  %339 = fadd float %334, %338
  store float %339, ptr %257, align 4, !tbaa !85
  %340 = load i32, ptr %256, align 4, !tbaa !159
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr %256, align 4, !tbaa !159
  br label %342

342:                                              ; preds = %330, %337
  %343 = add nuw nsw i32 %331, 1
  %344 = icmp eq i32 %343, %96
  br i1 %344, label %345, label %330, !llvm.loop !231

345:                                              ; preds = %342, %329
  %346 = phi ptr [ %255, %329 ], [ %333, %342 ]
  %347 = getelementptr inbounds float, ptr %257, i64 1
  %348 = getelementptr inbounds i32, ptr %256, i64 1
  br label %351

349:                                              ; preds = %327
  %350 = getelementptr inbounds %struct.BevPoint, ptr %255, i64 %248
  br label %351

351:                                              ; preds = %349, %345
  %352 = phi ptr [ %347, %345 ], [ null, %349 ]
  %353 = phi ptr [ %348, %345 ], [ %256, %349 ]
  %354 = phi ptr [ %346, %345 ], [ %350, %349 ]
  %355 = load i32, ptr %249, align 8, !tbaa !159
  %356 = add nsw i32 %355, %96
  store i32 %356, ptr %249, align 8, !tbaa !159
  br label %357

357:                                              ; preds = %267, %289, %351
  %358 = phi ptr [ %286, %289 ], [ null, %267 ], [ %352, %351 ]
  %359 = phi ptr [ %290, %289 ], [ %256, %267 ], [ %353, %351 ]
  %360 = phi ptr [ %278, %289 ], [ %278, %267 ], [ %354, %351 ]
  %361 = getelementptr inbounds %struct.BezTriple, ptr %253, i64 1
  %362 = icmp eq i32 %258, 0
  br i1 %362, label %363, label %251, !llvm.loop !232

363:                                              ; preds = %357, %227
  %364 = phi ptr [ %221, %227 ], [ %358, %357 ]
  %365 = phi ptr [ %219, %227 ], [ %360, %357 ]
  %366 = phi ptr [ %237, %227 ], [ %253, %357 ]
  %367 = load i16, ptr %97, align 4, !tbaa !141
  %368 = and i16 %367, 1
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %473

370:                                              ; preds = %363
  %371 = getelementptr inbounds [3 x [3 x float]], ptr %366, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %365, ptr noundef nonnull %371) #25
  %372 = getelementptr inbounds %struct.BezTriple, ptr %366, i64 0, i32 1
  %373 = load float, ptr %372, align 4, !tbaa !228
  %374 = getelementptr inbounds %struct.BevPoint, ptr %365, i64 0, i32 1
  store float %373, ptr %374, align 4, !tbaa !221
  %375 = getelementptr inbounds %struct.BevPoint, ptr %365, i64 0, i32 2
  %376 = getelementptr inbounds %struct.BezTriple, ptr %366, i64 0, i32 2
  %377 = load <2 x float>, ptr %376, align 4, !tbaa !85
  %378 = shufflevector <2 x float> %377, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %378, ptr %375, align 4, !tbaa !85
  %379 = getelementptr inbounds %struct.BevPoint, ptr %365, i64 0, i32 7
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %379, ptr noundef nonnull %371, ptr noundef %366) #25
  %380 = tail call fastcc float @normalize_v3(ptr noundef nonnull %379) #25
  %381 = getelementptr inbounds %struct.BevList, ptr %196, i64 0, i32 2
  %382 = load i32, ptr %381, align 8, !tbaa !159
  %383 = add nsw i32 %382, 1
  store i32 %383, ptr %381, align 8, !tbaa !159
  br label %473

384:                                              ; preds = %94
  %385 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 7
  %386 = load i32, ptr %385, align 4, !tbaa !115
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %473

388:                                              ; preds = %384
  %389 = mul nsw i32 %104, %96
  %390 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %391 = sext i32 %389 to i64
  %392 = mul nsw i64 %391, 80
  %393 = add nsw i64 %392, 56
  %394 = tail call ptr %390(i64 noundef %393, ptr noundef nonnull @.str.34) #24
  br i1 %17, label %395, label %408

395:                                              ; preds = %388
  %396 = load i16, ptr %97, align 4, !tbaa !141
  %397 = and i16 %396, 1
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %401 = sext i32 %104 to i64
  %402 = shl nsw i64 %401, 2
  %403 = tail call ptr %400(i64 noundef %402, ptr noundef nonnull @.str.35) #24
  %404 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 8
  store ptr %403, ptr %404, align 8, !tbaa !46
  %405 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %406 = tail call ptr %405(i64 noundef %402, ptr noundef nonnull @.str.36) #24
  %407 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 7
  store ptr %406, ptr %407, align 8, !tbaa !46
  br label %408

408:                                              ; preds = %399, %395, %388
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %394) #24
  %409 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 2
  store i32 %389, ptr %409, align 8, !tbaa !159
  %410 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 3
  store i32 0, ptr %410, align 4, !tbaa !159
  %411 = load i16, ptr %97, align 4, !tbaa !141
  %412 = and i16 %411, 1
  %413 = add nsw i16 %412, -1
  %414 = sext i16 %413 to i32
  %415 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 4
  store i32 %414, ptr %415, align 8, !tbaa !159
  %416 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 21
  %417 = load i32, ptr %416, align 4, !tbaa !218
  %418 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 6
  store i32 %417, ptr %418, align 8, !tbaa !159
  %419 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 9
  %420 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 8
  %421 = load ptr, ptr %420, align 8, !tbaa !46
  %422 = getelementptr inbounds %struct.BevList, ptr %394, i64 0, i32 7
  %423 = load ptr, ptr %422, align 8, !tbaa !46
  %424 = getelementptr inbounds i8, ptr %394, i64 68
  %425 = select i1 %76, ptr null, ptr %424
  %426 = getelementptr inbounds %struct.BevList, ptr %394, i64 1, i32 2
  %427 = select i1 %77, ptr %426, ptr null
  %428 = getelementptr inbounds %struct.BevList, ptr %394, i64 1, i32 3
  tail call void @BKE_nurb_makeCurve(ptr noundef nonnull %48, ptr noundef nonnull %419, ptr noundef %425, ptr noundef %427, ptr noundef nonnull %428, i32 noundef %96, i32 noundef 80) #25
  %429 = icmp eq ptr %421, null
  br i1 %429, label %467, label %430

430:                                              ; preds = %408
  %431 = icmp eq i32 %104, 0
  br i1 %431, label %467, label %432

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.BevList, ptr %394, i64 2, i32 4
  br label %434

434:                                              ; preds = %432, %460
  %435 = phi ptr [ %462, %460 ], [ %433, %432 ]
  %436 = phi ptr [ %464, %460 ], [ %423, %432 ]
  %437 = phi ptr [ %461, %460 ], [ %419, %432 ]
  %438 = phi i32 [ %465, %460 ], [ %104, %432 ]
  %439 = phi ptr [ %463, %460 ], [ %421, %432 ]
  store float 0.000000e+00, ptr %439, align 4, !tbaa !85
  store i32 0, ptr %436, align 4, !tbaa !159
  %440 = icmp eq i32 %438, 1
  %441 = sext i1 %440 to i32
  %442 = add nsw i32 %441, %96
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %460

444:                                              ; preds = %434, %456
  %445 = phi i32 [ %458, %456 ], [ 0, %434 ]
  %446 = phi ptr [ %457, %456 ], [ %435, %434 ]
  %447 = phi ptr [ %446, %456 ], [ %437, %434 ]
  %448 = tail call fastcc float @len_v3v3(ptr noundef %447, ptr noundef %446) #25
  %449 = getelementptr inbounds %struct.BevPoint, ptr %446, i64 0, i32 4
  store float %448, ptr %449, align 4, !tbaa !219
  %450 = fcmp ogt float %448, 0x3EE4F8B580000000
  br i1 %450, label %451, label %456

451:                                              ; preds = %444
  %452 = load float, ptr %439, align 4, !tbaa !85
  %453 = fadd float %448, %452
  store float %453, ptr %439, align 4, !tbaa !85
  %454 = load i32, ptr %436, align 4, !tbaa !159
  %455 = add nsw i32 %454, 1
  store i32 %455, ptr %436, align 4, !tbaa !159
  br label %456

456:                                              ; preds = %451, %444
  %457 = getelementptr inbounds %struct.BevPoint, ptr %446, i64 1
  %458 = add nuw nsw i32 %445, 1
  %459 = icmp eq i32 %458, %442
  br i1 %459, label %460, label %444, !llvm.loop !233

460:                                              ; preds = %456, %434
  %461 = phi ptr [ %437, %434 ], [ %446, %456 ]
  %462 = phi ptr [ %435, %434 ], [ %457, %456 ]
  %463 = getelementptr inbounds float, ptr %439, i64 1
  %464 = getelementptr inbounds i32, ptr %436, i64 1
  %465 = add nsw i32 %438, -1
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %434, !llvm.loop !234

467:                                              ; preds = %460, %430, %408
  %468 = phi ptr [ null, %408 ], [ %421, %430 ], [ %463, %460 ]
  %469 = load i16, ptr %97, align 4, !tbaa !141
  %470 = and i16 %469, 1
  %471 = icmp eq i16 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %467
  tail call fastcc void @bevlist_firstlast_direction_calc_from_bpoint(ptr noundef nonnull %48, ptr noundef %394) #25
  br label %473

473:                                              ; preds = %94, %80, %370, %363, %384, %472, %467, %183, %188, %47
  %474 = phi ptr [ %50, %47 ], [ %185, %188 ], [ %185, %183 ], [ %364, %370 ], [ %364, %363 ], [ %468, %472 ], [ %468, %467 ], [ %50, %384 ], [ %50, %80 ], [ %50, %94 ]
  %475 = phi i32 [ %49, %47 ], [ %96, %188 ], [ %96, %183 ], [ %96, %370 ], [ %96, %363 ], [ %96, %472 ], [ %96, %467 ], [ %96, %384 ], [ %49, %80 ], [ %96, %94 ]
  %476 = load ptr, ptr %48, align 8, !tbaa !73
  %477 = icmp eq ptr %476, null
  br i1 %477, label %40, label %47, !llvm.loop !235

478:                                              ; preds = %45, %542
  %479 = phi ptr [ %43, %45 ], [ %544, %542 ]
  %480 = phi ptr [ null, %45 ], [ %543, %542 ]
  %481 = getelementptr inbounds %struct.BevList, ptr %479, i64 0, i32 2
  %482 = load i32, ptr %481, align 8, !tbaa !159
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %542, label %484

484:                                              ; preds = %478
  %485 = getelementptr inbounds %struct.BevList, ptr %479, i64 0, i32 4
  %486 = load i32, ptr %485, align 8, !tbaa !159
  %487 = icmp eq i32 %486, -1
  %488 = getelementptr inbounds %struct.BevList, ptr %479, i64 0, i32 9
  br i1 %487, label %493, label %489

489:                                              ; preds = %484
  %490 = sext i32 %482 to i64
  %491 = getelementptr %struct.BevPoint, ptr %488, i64 %490
  %492 = getelementptr %struct.BevPoint, ptr %491, i64 -1
  br label %496

493:                                              ; preds = %484
  %494 = getelementptr inbounds %struct.BevList, ptr %479, i64 1, i32 4
  store float 0.000000e+00, ptr %494, align 4, !tbaa !219
  %495 = getelementptr inbounds %struct.BevList, ptr %479, i64 2, i32 4
  br label %496

496:                                              ; preds = %493, %489
  %497 = phi ptr [ %492, %489 ], [ %488, %493 ]
  %498 = phi ptr [ %488, %489 ], [ %495, %493 ]
  %499 = add nsw i32 %482, -1
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %542, label %501

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.BevList, ptr %479, i64 0, i32 3
  br label %503

503:                                              ; preds = %501, %538
  %504 = phi i32 [ %499, %501 ], [ %540, %538 ]
  %505 = phi ptr [ %498, %501 ], [ %539, %538 ]
  %506 = phi ptr [ %497, %501 ], [ %505, %538 ]
  br i1 %46, label %512, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.BevPoint, ptr %505, i64 0, i32 4
  %509 = load float, ptr %508, align 4, !tbaa !219
  %510 = tail call float @llvm.fabs.f32(float %509)
  %511 = fcmp olt float %510, 0x3EE4F8B580000000
  br i1 %511, label %534, label %538

512:                                              ; preds = %503
  %513 = load float, ptr %506, align 4, !tbaa !85
  %514 = load float, ptr %505, align 4, !tbaa !85
  %515 = fsub float %513, %514
  %516 = tail call float @llvm.fabs.f32(float %515)
  %517 = fcmp olt float %516, 0x3EE4F8B580000000
  br i1 %517, label %518, label %538

518:                                              ; preds = %512
  %519 = getelementptr inbounds [3 x float], ptr %506, i64 0, i64 1
  %520 = load float, ptr %519, align 4, !tbaa !85
  %521 = getelementptr inbounds [3 x float], ptr %505, i64 0, i64 1
  %522 = load float, ptr %521, align 4, !tbaa !85
  %523 = fsub float %520, %522
  %524 = tail call float @llvm.fabs.f32(float %523)
  %525 = fcmp olt float %524, 0x3EE4F8B580000000
  br i1 %525, label %526, label %538

526:                                              ; preds = %518
  %527 = getelementptr inbounds [3 x float], ptr %506, i64 0, i64 2
  %528 = load float, ptr %527, align 4, !tbaa !85
  %529 = getelementptr inbounds [3 x float], ptr %505, i64 0, i64 2
  %530 = load float, ptr %529, align 4, !tbaa !85
  %531 = fsub float %528, %530
  %532 = tail call float @llvm.fabs.f32(float %531)
  %533 = fcmp olt float %532, 0x3EE4F8B580000000
  br i1 %533, label %534, label %538

534:                                              ; preds = %526, %507
  %535 = getelementptr inbounds %struct.BevPoint, ptr %506, i64 0, i32 11
  store i16 1, ptr %535, align 2, !tbaa !229
  %536 = load i32, ptr %502, align 4, !tbaa !159
  %537 = add nsw i32 %536, 1
  store i32 %537, ptr %502, align 4, !tbaa !159
  br label %538

538:                                              ; preds = %534, %512, %526, %518, %507
  %539 = getelementptr inbounds %struct.BevPoint, ptr %505, i64 1
  %540 = add nsw i32 %504, -1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %503, !llvm.loop !236

542:                                              ; preds = %538, %496, %478
  %543 = phi ptr [ %480, %478 ], [ %498, %496 ], [ %539, %538 ]
  %544 = load ptr, ptr %479, align 8, !tbaa !46
  %545 = icmp eq ptr %544, null
  br i1 %545, label %549, label %478, !llvm.loop !237

546:                                              ; preds = %600
  %547 = load ptr, ptr %20, align 8, !tbaa !46
  %548 = icmp eq ptr %547, null
  br i1 %548, label %768, label %603

549:                                              ; preds = %542, %600
  %550 = phi ptr [ %552, %600 ], [ %43, %542 ]
  %551 = phi ptr [ %601, %600 ], [ %543, %542 ]
  %552 = load ptr, ptr %550, align 8, !tbaa !46
  %553 = getelementptr inbounds %struct.BevList, ptr %550, i64 0, i32 2
  %554 = load i32, ptr %553, align 8, !tbaa !159
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %600, label %556

556:                                              ; preds = %549
  %557 = getelementptr inbounds %struct.BevList, ptr %550, i64 0, i32 3
  %558 = load i32, ptr %557, align 4, !tbaa !159
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %600, label %560

560:                                              ; preds = %556
  %561 = add i32 %554, 1
  %562 = sub i32 %561, %558
  %563 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %564 = sext i32 %562 to i64
  %565 = mul nsw i64 %564, 80
  %566 = add nsw i64 %565, 56
  %567 = tail call ptr %563(i64 noundef %566, ptr noundef nonnull @.str.37) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %567, ptr noundef nonnull align 8 dereferenceable(56) %550, i64 56, i1 false)
  %568 = getelementptr inbounds %struct.BevList, ptr %550, i64 0, i32 7
  %569 = load ptr, ptr %568, align 8, !tbaa !46
  %570 = getelementptr inbounds %struct.BevList, ptr %567, i64 0, i32 7
  store ptr %569, ptr %570, align 8, !tbaa !46
  %571 = getelementptr inbounds %struct.BevList, ptr %550, i64 0, i32 8
  %572 = load ptr, ptr %571, align 8, !tbaa !46
  %573 = getelementptr inbounds %struct.BevList, ptr %567, i64 0, i32 8
  store ptr %572, ptr %573, align 8, !tbaa !46
  %574 = getelementptr inbounds %struct.BevList, ptr %567, i64 0, i32 2
  store i32 0, ptr %574, align 8, !tbaa !159
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef nonnull %550) #24
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %20, ptr noundef %552, ptr noundef %567) #24
  %575 = getelementptr inbounds %struct.BevList, ptr %567, i64 0, i32 9
  %576 = load i32, ptr %553, align 8, !tbaa !159
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %596, label %578

578:                                              ; preds = %560
  %579 = getelementptr inbounds %struct.BevList, ptr %550, i64 0, i32 9
  br label %580

580:                                              ; preds = %578, %592
  %581 = phi i32 [ %584, %592 ], [ %576, %578 ]
  %582 = phi ptr [ %593, %592 ], [ %575, %578 ]
  %583 = phi ptr [ %594, %592 ], [ %579, %578 ]
  %584 = add nsw i32 %581, -1
  %585 = getelementptr inbounds %struct.BevPoint, ptr %583, i64 0, i32 11
  %586 = load i16, ptr %585, align 2, !tbaa !229
  %587 = icmp eq i16 %586, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %582, ptr noundef nonnull align 4 dereferenceable(80) %583, i64 80, i1 false)
  %589 = getelementptr inbounds %struct.BevPoint, ptr %582, i64 1
  %590 = load i32, ptr %574, align 8, !tbaa !159
  %591 = add nsw i32 %590, 1
  store i32 %591, ptr %574, align 8, !tbaa !159
  br label %592

592:                                              ; preds = %588, %580
  %593 = phi ptr [ %589, %588 ], [ %582, %580 ]
  %594 = getelementptr inbounds %struct.BevPoint, ptr %583, i64 1
  %595 = icmp eq i32 %584, 0
  br i1 %595, label %596, label %580, !llvm.loop !238

596:                                              ; preds = %592, %560
  %597 = phi ptr [ %575, %560 ], [ %593, %592 ]
  %598 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %598(ptr noundef nonnull %550) #24
  %599 = getelementptr inbounds %struct.BevList, ptr %567, i64 0, i32 3
  store i32 0, ptr %599, align 4, !tbaa !159
  br label %600

600:                                              ; preds = %596, %556, %549
  %601 = phi ptr [ %597, %596 ], [ %551, %556 ], [ %551, %549 ]
  %602 = icmp eq ptr %552, null
  br i1 %602, label %546, label %549, !llvm.loop !239

603:                                              ; preds = %546, %616
  %604 = phi ptr [ %618, %616 ], [ %547, %546 ]
  %605 = phi i32 [ %617, %616 ], [ 0, %546 ]
  %606 = getelementptr inbounds %struct.BevList, ptr %604, i64 0, i32 2
  %607 = load i32, ptr %606, align 8, !tbaa !159
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %616, label %609

609:                                              ; preds = %603
  %610 = getelementptr inbounds %struct.BevList, ptr %604, i64 0, i32 4
  %611 = load i32, ptr %610, align 8, !tbaa !159
  %612 = icmp sgt i32 %611, -1
  br i1 %612, label %613, label %616

613:                                              ; preds = %609
  %614 = add nsw i32 %605, 1
  store i32 %614, ptr %610, align 8, !tbaa !159
  %615 = getelementptr inbounds %struct.BevList, ptr %604, i64 0, i32 5
  store i32 0, ptr %615, align 4, !tbaa !159
  br label %616

616:                                              ; preds = %613, %609, %603
  %617 = phi i32 [ %614, %613 ], [ %605, %609 ], [ %605, %603 ]
  %618 = load ptr, ptr %604, align 8, !tbaa !46
  %619 = icmp eq ptr %618, null
  br i1 %619, label %620, label %603, !llvm.loop !240

620:                                              ; preds = %616
  %621 = icmp sgt i32 %617, 0
  br i1 %621, label %622, label %768

622:                                              ; preds = %620
  %623 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %624 = zext nneg i32 %617 to i64
  %625 = shl nuw nsw i64 %624, 4
  %626 = tail call ptr %623(i64 noundef %625, ptr noundef nonnull @.str.38) #24
  %627 = load ptr, ptr %20, align 8, !tbaa !46
  %628 = icmp eq ptr %627, null
  br i1 %628, label %690, label %629

629:                                              ; preds = %622, %685
  %630 = phi ptr [ %688, %685 ], [ %627, %622 ]
  %631 = phi ptr [ %687, %685 ], [ %601, %622 ]
  %632 = phi ptr [ %686, %685 ], [ %626, %622 ]
  %633 = getelementptr inbounds %struct.BevList, ptr %630, i64 0, i32 4
  %634 = load i32, ptr %633, align 8, !tbaa !159
  %635 = icmp sgt i32 %634, 0
  br i1 %635, label %636, label %685

636:                                              ; preds = %629
  %637 = getelementptr inbounds %struct.BevList, ptr %630, i64 0, i32 9
  %638 = getelementptr inbounds %struct.BevList, ptr %630, i64 0, i32 2
  %639 = load i32, ptr %638, align 8, !tbaa !159
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %653, label %641

641:                                              ; preds = %636, %641
  %642 = phi ptr [ %651, %641 ], [ %637, %636 ]
  %643 = phi ptr [ %650, %641 ], [ %631, %636 ]
  %644 = phi i32 [ %646, %641 ], [ %639, %636 ]
  %645 = phi float [ %649, %641 ], [ 3.000000e+05, %636 ]
  %646 = add nsw i32 %644, -1
  %647 = load float, ptr %642, align 4, !tbaa !85
  %648 = fcmp ogt float %645, %647
  %649 = select i1 %648, float %647, float %645
  %650 = select i1 %648, ptr %642, ptr %643
  %651 = getelementptr inbounds %struct.BevPoint, ptr %642, i64 1
  %652 = icmp eq i32 %646, 0
  br i1 %652, label %653, label %641, !llvm.loop !241

653:                                              ; preds = %641, %636
  %654 = phi float [ 3.000000e+05, %636 ], [ %649, %641 ]
  %655 = phi ptr [ %631, %636 ], [ %650, %641 ]
  store ptr %630, ptr %632, align 8, !tbaa !242
  %656 = getelementptr inbounds %struct.BevelSort, ptr %632, i64 0, i32 1
  store float %654, ptr %656, align 8, !tbaa !244
  %657 = icmp eq ptr %655, %637
  %658 = sext i32 %639 to i64
  %659 = getelementptr %struct.BevPoint, ptr %637, i64 %658
  %660 = select i1 %657, ptr %659, ptr %655
  %661 = getelementptr inbounds %struct.BevPoint, ptr %660, i64 -1
  %662 = getelementptr %struct.BevPoint, ptr %659, i64 -1
  %663 = icmp eq ptr %655, %662
  %664 = getelementptr inbounds %struct.BevPoint, ptr %655, i64 1
  %665 = select i1 %663, ptr %637, ptr %664
  %666 = load float, ptr %655, align 4, !tbaa !85
  %667 = load float, ptr %661, align 4, !tbaa !85
  %668 = fsub float %666, %667
  %669 = getelementptr %struct.BevPoint, ptr %660, i64 -1, i32 0, i64 1
  %670 = load float, ptr %669, align 4, !tbaa !85
  %671 = getelementptr inbounds [3 x float], ptr %665, i64 0, i64 1
  %672 = load float, ptr %671, align 4, !tbaa !85
  %673 = fsub float %670, %672
  %674 = getelementptr inbounds [3 x float], ptr %655, i64 0, i64 1
  %675 = load float, ptr %674, align 4, !tbaa !85
  %676 = fsub float %670, %675
  %677 = load float, ptr %665, align 4, !tbaa !85
  %678 = fsub float %667, %677
  %679 = fmul float %676, %678
  %680 = tail call float @llvm.fmuladd.f32(float %668, float %673, float %679)
  %681 = fcmp ogt float %680, 0.000000e+00
  %682 = zext i1 %681 to i32
  %683 = getelementptr inbounds %struct.BevelSort, ptr %632, i64 0, i32 2
  store i32 %682, ptr %683, align 4
  %684 = getelementptr inbounds %struct.BevelSort, ptr %632, i64 1
  br label %685

685:                                              ; preds = %653, %629
  %686 = phi ptr [ %684, %653 ], [ %632, %629 ]
  %687 = phi ptr [ %655, %653 ], [ %631, %629 ]
  %688 = load ptr, ptr %630, align 8, !tbaa !46
  %689 = icmp eq ptr %688, null
  br i1 %689, label %690, label %629, !llvm.loop !245

690:                                              ; preds = %685, %622
  tail call void @qsort(ptr noundef %626, i64 noundef %624, i64 noundef 16, ptr noundef nonnull @vergxcobev) #24
  %691 = icmp eq i32 %617, 1
  br i1 %691, label %728, label %692

692:                                              ; preds = %690
  %693 = tail call i32 @llvm.smax.i32(i32 %617, i32 2)
  %694 = zext nneg i32 %693 to i64
  br label %695

695:                                              ; preds = %692, %725
  %696 = phi i64 [ 1, %692 ], [ %726, %725 ]
  %697 = phi ptr [ %626, %692 ], [ %698, %725 ]
  %698 = getelementptr inbounds %struct.BevelSort, ptr %697, i64 1
  %699 = load ptr, ptr %698, align 8, !tbaa !242
  %700 = add nsw i64 %696, -1
  %701 = getelementptr inbounds %struct.BevelSort, ptr %626, i64 %700
  %702 = getelementptr inbounds %struct.BevList, ptr %699, i64 0, i32 6
  %703 = trunc i64 %700 to i32
  br label %704

704:                                              ; preds = %695, %721
  %705 = phi i32 [ %703, %695 ], [ %722, %721 ]
  %706 = phi ptr [ %701, %695 ], [ %723, %721 ]
  %707 = load ptr, ptr %706, align 8, !tbaa !242
  %708 = getelementptr inbounds %struct.BevList, ptr %707, i64 0, i32 6
  %709 = load i32, ptr %708, align 8, !tbaa !159
  %710 = load i32, ptr %702, align 8, !tbaa !159
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %721

712:                                              ; preds = %704
  %713 = tail call fastcc zeroext i8 @bevelinside(ptr noundef nonnull %707, ptr noundef nonnull %699) #25, !range !127
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %721, label %715

715:                                              ; preds = %712
  %716 = load ptr, ptr %706, align 8, !tbaa !242
  %717 = getelementptr inbounds %struct.BevList, ptr %716, i64 0, i32 5
  %718 = load i32, ptr %717, align 4, !tbaa !159
  %719 = sub nsw i32 1, %718
  %720 = getelementptr inbounds %struct.BevList, ptr %699, i64 0, i32 5
  store i32 %719, ptr %720, align 4, !tbaa !159
  br label %725

721:                                              ; preds = %704, %712
  %722 = add nsw i32 %705, -1
  %723 = getelementptr inbounds %struct.BevelSort, ptr %706, i64 -1
  %724 = icmp sgt i32 %705, 0
  br i1 %724, label %704, label %725, !llvm.loop !246

725:                                              ; preds = %721, %715
  %726 = add nuw nsw i64 %696, 1
  %727 = icmp eq i64 %726, %694
  br i1 %727, label %728, label %695, !llvm.loop !247

728:                                              ; preds = %725, %690
  %729 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %730 = load i32, ptr %729, align 4, !tbaa !80
  %731 = and i32 %730, 1
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %766

733:                                              ; preds = %728
  %734 = tail call i32 @llvm.smax.i32(i32 %617, i32 1)
  br label %735

735:                                              ; preds = %733, %762
  %736 = phi i32 [ %763, %762 ], [ 0, %733 ]
  %737 = phi ptr [ %764, %762 ], [ %626, %733 ]
  %738 = load ptr, ptr %737, align 8, !tbaa !242
  %739 = getelementptr inbounds %struct.BevList, ptr %738, i64 0, i32 5
  %740 = load i32, ptr %739, align 4, !tbaa !159
  %741 = getelementptr inbounds %struct.BevelSort, ptr %737, i64 0, i32 2
  %742 = load i32, ptr %741, align 4, !tbaa !248
  %743 = icmp eq i32 %740, %742
  br i1 %743, label %744, label %762

744:                                              ; preds = %735
  %745 = getelementptr inbounds %struct.BevList, ptr %738, i64 0, i32 2
  %746 = load i32, ptr %745, align 8, !tbaa !159
  %747 = add i32 %746, 1
  %748 = icmp ult i32 %747, 3
  br i1 %748, label %762, label %749

749:                                              ; preds = %744
  %750 = sdiv i32 %746, 2
  %751 = getelementptr inbounds %struct.BevList, ptr %738, i64 0, i32 9
  %752 = sext i32 %746 to i64
  %753 = getelementptr %struct.BevPoint, ptr %751, i64 %752
  br label %754

754:                                              ; preds = %749, %754
  %755 = phi ptr [ %758, %754 ], [ %753, %749 ]
  %756 = phi ptr [ %760, %754 ], [ %751, %749 ]
  %757 = phi i32 [ %759, %754 ], [ %750, %749 ]
  %758 = getelementptr inbounds %struct.BevPoint, ptr %755, i64 -1
  %759 = add nsw i32 %757, -1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(80) %756, i64 80, i1 false), !tbaa.struct !249
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %756, ptr noundef nonnull align 4 dereferenceable(80) %758, i64 80, i1 false), !tbaa.struct !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %758, ptr noundef nonnull align 4 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !249
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4)
  %760 = getelementptr inbounds %struct.BevPoint, ptr %756, i64 1
  %761 = icmp eq i32 %759, 0
  br i1 %761, label %762, label %754, !llvm.loop !251

762:                                              ; preds = %754, %744, %735
  %763 = add nuw nsw i32 %736, 1
  %764 = getelementptr inbounds %struct.BevelSort, ptr %737, i64 1
  %765 = icmp eq i32 %763, %734
  br i1 %765, label %766, label %735, !llvm.loop !252

766:                                              ; preds = %762, %728
  %767 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %767(ptr noundef %626) #24
  br label %768

768:                                              ; preds = %40, %546, %766, %620
  %769 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %770 = load i32, ptr %769, align 4, !tbaa !80
  %771 = and i32 %770, 1
  %772 = icmp eq i32 %771, 0
  %773 = load ptr, ptr %20, align 8, !tbaa !46
  %774 = icmp eq ptr %773, null
  br i1 %772, label %780, label %775

775:                                              ; preds = %768
  br i1 %774, label %814, label %776

776:                                              ; preds = %775
  %777 = sitofp i32 %42 to float
  %778 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 18
  %779 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 17
  br label %795

780:                                              ; preds = %768
  br i1 %774, label %814, label %781

781:                                              ; preds = %780, %792
  %782 = phi ptr [ %793, %792 ], [ %773, %780 ]
  %783 = getelementptr inbounds %struct.BevList, ptr %782, i64 0, i32 2
  %784 = load i32, ptr %783, align 8, !tbaa !159
  %785 = icmp slt i32 %784, 2
  br i1 %785, label %786, label %788

786:                                              ; preds = %781
  %787 = getelementptr inbounds i8, ptr %782, i64 116
  tail call void @unit_qt(ptr noundef nonnull %787) #24
  br label %792

788:                                              ; preds = %781
  %789 = icmp eq i32 %784, 2
  br i1 %789, label %790, label %791

790:                                              ; preds = %788
  tail call fastcc void @make_bevel_list_segment_2D(ptr noundef nonnull %782) #25
  br label %792

791:                                              ; preds = %788
  tail call fastcc void @make_bevel_list_2D(ptr noundef nonnull %782) #25
  br label %792

792:                                              ; preds = %786, %791, %790
  %793 = load ptr, ptr %782, align 8, !tbaa !46
  %794 = icmp eq ptr %793, null
  br i1 %794, label %814, label %781, !llvm.loop !253

795:                                              ; preds = %776, %811
  %796 = phi ptr [ %773, %776 ], [ %812, %811 ]
  %797 = getelementptr inbounds %struct.BevList, ptr %796, i64 0, i32 2
  %798 = load i32, ptr %797, align 8, !tbaa !159
  %799 = icmp slt i32 %798, 2
  br i1 %799, label %800, label %802

800:                                              ; preds = %795
  %801 = getelementptr inbounds i8, ptr %796, i64 116
  tail call void @unit_qt(ptr noundef nonnull %801) #24
  br label %811

802:                                              ; preds = %795
  %803 = icmp eq i32 %798, 2
  br i1 %803, label %804, label %805

804:                                              ; preds = %802
  tail call fastcc void @make_bevel_list_segment_3D(ptr noundef nonnull %796) #25
  br label %811

805:                                              ; preds = %802
  %806 = load float, ptr %778, align 4, !tbaa !254
  %807 = fmul float %806, %777
  %808 = fptosi float %807 to i32
  %809 = load i16, ptr %779, align 2, !tbaa !89
  %810 = sext i16 %809 to i32
  tail call fastcc void @make_bevel_list_3D(ptr noundef nonnull %796, i32 noundef %808, i32 noundef %810) #25
  br label %811

811:                                              ; preds = %800, %805, %804
  %812 = load ptr, ptr %796, align 8, !tbaa !46
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %795, !llvm.loop !255

814:                                              ; preds = %811, %792, %775, %780
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_check_valid_u(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !121
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !119
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !140
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %3, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !117
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %21 = load i16, ptr %20, align 4, !tbaa !141
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  switch i16 %11, label %28 [
    i16 4, label %25
    i16 3, label %27
  ]

25:                                               ; preds = %24
  %26 = icmp ult i32 %3, 5
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %25, %19, %14
  br label %28

28:                                               ; preds = %24, %25, %9, %5, %1, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %1 ], [ 1, %5 ], [ 0, %9 ], [ 0, %25 ], [ 0, %24 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !256 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @bevlist_firstlast_direction_calc_from_bpoint(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #12 !PGOFuncName !257 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !121
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr %struct.BPoint, ptr %8, i64 %9
  %11 = getelementptr %struct.BPoint, ptr %10, i64 -1
  %12 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 9
  %13 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !159
  %15 = sext i32 %14 to i64
  %16 = getelementptr %struct.BevPoint, ptr %12, i64 %15
  %17 = getelementptr inbounds i8, ptr %1, i64 92
  %18 = getelementptr inbounds %struct.BPoint, ptr %8, i64 1
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %8) #25
  %19 = tail call fastcc float @normalize_v3(ptr noundef nonnull %17) #25
  %20 = getelementptr %struct.BevPoint, ptr %16, i64 -1, i32 7
  %21 = getelementptr %struct.BPoint, ptr %10, i64 -2
  tail call fastcc void @sub_v3_v3v3(ptr noundef %20, ptr noundef %11, ptr noundef %21) #25
  %22 = tail call fastcc float @normalize_v3(ptr noundef %20) #25
  br label %23

23:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alfa_bezpart(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, i32 noundef %6) unnamed_addr #2 !PGOFuncName !258 {
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #26
  %9 = icmp eq ptr %3, null
  %10 = icmp eq ptr %4, null
  %11 = and i1 %9, %10
  br i1 %11, label %156, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = sext i32 %16 to i64
  %18 = getelementptr %struct.BezTriple, ptr %14, i64 %17
  %19 = getelementptr %struct.BezTriple, ptr %18, i64 -1
  %20 = icmp eq ptr %14, %0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 13
  %23 = load i16, ptr %22, align 4, !tbaa !141
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, ptr %0, ptr %19
  br label %29

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 -1
  br label %29

29:                                               ; preds = %21, %27
  %30 = phi ptr [ %28, %27 ], [ %26, %21 ]
  %31 = icmp eq ptr %19, %1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 13
  %34 = load i16, ptr %33, align 4, !tbaa !141
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, ptr %1, ptr %14
  br label %40

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ %37, %32 ]
  %42 = sitofp i32 %6 to float
  %43 = fdiv float 1.000000e+00, %42
  %44 = icmp sgt i32 %6, 0
  br i1 %44, label %45, label %156

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 19
  %47 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 1
  %48 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %49 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %51 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 1
  %52 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %53 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 1
  %54 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 20
  %55 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 3
  %56 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 3
  %58 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 3
  %59 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 2
  %60 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  br label %61

61:                                               ; preds = %45, %151
  %62 = phi i32 [ 0, %45 ], [ %153, %151 ]
  %63 = phi ptr [ %3, %45 ], [ %99, %151 ]
  %64 = phi float [ 0.000000e+00, %45 ], [ %154, %151 ]
  %65 = phi ptr [ %4, %45 ], [ %138, %151 ]
  %66 = phi ptr [ %5, %45 ], [ %152, %151 ]
  %67 = icmp eq ptr %63, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %61
  %69 = load i16, ptr %46, align 8, !tbaa !259
  %70 = icmp eq i16 %69, 3
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load float, ptr %49, align 4, !tbaa !228
  %73 = load float, ptr %51, align 4, !tbaa !228
  %74 = fsub float %73, %72
  %75 = fmul float %64, 3.000000e+00
  %76 = fmul float %64, -2.000000e+00
  %77 = fmul float %64, %76
  %78 = fmul float %64, %77
  %79 = call float @llvm.fmuladd.f32(float %75, float %64, float %78)
  %80 = call float @llvm.fmuladd.f32(float %74, float %79, float %72)
  br label %95

81:                                               ; preds = %68
  %82 = sext i16 %69 to i32
  call void @key_curve_position_weights(float noundef %64, ptr noundef nonnull %8, i32 noundef %82) #24
  %83 = load float, ptr %8, align 16, !tbaa !85
  %84 = load float, ptr %47, align 4, !tbaa !228
  %85 = load float, ptr %48, align 4, !tbaa !85
  %86 = load float, ptr %49, align 4, !tbaa !228
  %87 = fmul float %85, %86
  %88 = call float @llvm.fmuladd.f32(float %83, float %84, float %87)
  %89 = load float, ptr %50, align 8, !tbaa !85
  %90 = load float, ptr %51, align 4, !tbaa !228
  %91 = call float @llvm.fmuladd.f32(float %89, float %90, float %88)
  %92 = load float, ptr %52, align 4, !tbaa !85
  %93 = load float, ptr %53, align 4, !tbaa !228
  %94 = call float @llvm.fmuladd.f32(float %92, float %93, float %91)
  br label %95

95:                                               ; preds = %81, %71
  %96 = phi float [ %94, %81 ], [ %80, %71 ]
  store float %96, ptr %63, align 4, !tbaa !85
  %97 = getelementptr inbounds i8, ptr %63, i64 80
  br label %98

98:                                               ; preds = %95, %61
  %99 = phi ptr [ %97, %95 ], [ null, %61 ]
  %100 = icmp eq ptr %65, null
  br i1 %100, label %137, label %101

101:                                              ; preds = %98
  %102 = load i16, ptr %54, align 2, !tbaa !260
  %103 = icmp eq i16 %102, 3
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load float, ptr %56, align 4, !tbaa !144
  %106 = load float, ptr %57, align 4, !tbaa !144
  %107 = fsub float %106, %105
  %108 = fmul float %64, 3.000000e+00
  %109 = fmul float %64, -2.000000e+00
  %110 = fmul float %64, %109
  %111 = fmul float %64, %110
  %112 = call float @llvm.fmuladd.f32(float %108, float %64, float %111)
  %113 = call float @llvm.fmuladd.f32(float %107, float %112, float %105)
  br label %134

114:                                              ; preds = %101
  %115 = icmp eq ptr %99, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %114
  %117 = load i16, ptr %46, align 8, !tbaa !259
  %118 = icmp eq i16 %117, %102
  br i1 %118, label %121, label %119

119:                                              ; preds = %116, %114
  %120 = sext i16 %102 to i32
  call void @key_curve_position_weights(float noundef %64, ptr noundef nonnull %8, i32 noundef %120) #24
  br label %121

121:                                              ; preds = %119, %116
  %122 = load float, ptr %8, align 16, !tbaa !85
  %123 = load float, ptr %55, align 4, !tbaa !144
  %124 = load float, ptr %48, align 4, !tbaa !85
  %125 = load float, ptr %56, align 4, !tbaa !144
  %126 = fmul float %124, %125
  %127 = call float @llvm.fmuladd.f32(float %122, float %123, float %126)
  %128 = load float, ptr %50, align 8, !tbaa !85
  %129 = load float, ptr %57, align 4, !tbaa !144
  %130 = call float @llvm.fmuladd.f32(float %128, float %129, float %127)
  %131 = load float, ptr %52, align 4, !tbaa !85
  %132 = load float, ptr %58, align 4, !tbaa !144
  %133 = call float @llvm.fmuladd.f32(float %131, float %132, float %130)
  br label %134

134:                                              ; preds = %121, %104
  %135 = phi float [ %133, %121 ], [ %113, %104 ]
  store float %135, ptr %65, align 4, !tbaa !85
  %136 = getelementptr inbounds i8, ptr %65, i64 80
  br label %137

137:                                              ; preds = %134, %98
  %138 = phi ptr [ %136, %134 ], [ null, %98 ]
  %139 = icmp eq ptr %66, null
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = load float, ptr %59, align 4, !tbaa !261
  %142 = load float, ptr %60, align 4, !tbaa !261
  %143 = fsub float %142, %141
  %144 = fmul float %64, 3.000000e+00
  %145 = fmul float %64, -2.000000e+00
  %146 = fmul float %64, %145
  %147 = fmul float %64, %146
  %148 = call float @llvm.fmuladd.f32(float %144, float %64, float %147)
  %149 = call float @llvm.fmuladd.f32(float %143, float %148, float %141)
  store float %149, ptr %66, align 4, !tbaa !85
  %150 = getelementptr inbounds i8, ptr %66, i64 80
  br label %151

151:                                              ; preds = %137, %140
  %152 = phi ptr [ %150, %140 ], [ null, %137 ]
  %153 = add nuw nsw i32 %62, 1
  %154 = fadd float %43, %64
  %155 = icmp eq i32 %153, %6
  br i1 %155, label %156, label %61, !llvm.loop !262

156:                                              ; preds = %151, %40, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #26
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @forward_diff_bezier_cotangent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #7 !PGOFuncName !263 {
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %6
  %9 = sitofp i32 %5 to float
  br label %10

10:                                               ; preds = %8, %36
  %11 = phi ptr [ %4, %8 ], [ %38, %36 ]
  %12 = phi i32 [ 0, %8 ], [ %39, %36 ]
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, %9
  %15 = tail call float @llvm.fmuladd.f32(float %14, float -6.000000e+00, float 6.000000e+00)
  %16 = tail call float @llvm.fmuladd.f32(float %14, float 1.800000e+01, float -1.200000e+01)
  %17 = tail call float @llvm.fmuladd.f32(float %14, float -1.800000e+01, float 6.000000e+00)
  %18 = fmul float %14, 6.000000e+00
  br label %19

19:                                               ; preds = %10, %19
  %20 = phi i64 [ 0, %10 ], [ %34, %19 ]
  %21 = getelementptr inbounds float, ptr %0, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !85
  %23 = getelementptr inbounds float, ptr %1, i64 %20
  %24 = load float, ptr %23, align 4, !tbaa !85
  %25 = fmul float %16, %24
  %26 = tail call float @llvm.fmuladd.f32(float %15, float %22, float %25)
  %27 = getelementptr inbounds float, ptr %2, i64 %20
  %28 = load float, ptr %27, align 4, !tbaa !85
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %28, float %26)
  %30 = getelementptr inbounds float, ptr %3, i64 %20
  %31 = load float, ptr %30, align 4, !tbaa !85
  %32 = tail call float @llvm.fmuladd.f32(float %18, float %31, float %29)
  %33 = getelementptr inbounds float, ptr %11, i64 %20
  store float %32, ptr %33, align 4, !tbaa !85
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %19, !llvm.loop !264

36:                                               ; preds = %19
  %37 = tail call fastcc float @normalize_v3(ptr noundef nonnull %11) #25
  %38 = getelementptr inbounds i8, ptr %11, i64 80
  %39 = add nuw i32 %12, 1
  %40 = icmp eq i32 %12, %5
  br i1 %40, label %41, label %10, !llvm.loop !265

41:                                               ; preds = %36, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vergxcobev(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !266 {
  %3 = getelementptr inbounds %struct.BevelSort, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !244
  %5 = getelementptr inbounds %struct.BevelSort, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 8, !tbaa !244
  %7 = fcmp ogt float %4, %6
  %8 = fcmp olt float %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bevelinside(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !267 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #26
  %8 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 9
  %9 = load <2 x float>, ptr %8, align 4, !tbaa !85
  store <2 x float> %9, ptr %4, align 8, !tbaa !85
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %10, align 8, !tbaa !85
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %11 = load float, ptr %5, align 4, !tbaa !85
  %12 = fadd float %11, 1.000000e+03
  store float %12, ptr %5, align 4, !tbaa !85
  %13 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !159
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %67, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %18 = sext i32 %14 to i64
  %19 = getelementptr %struct.BevPoint, ptr %17, i64 %18
  %20 = getelementptr %struct.BevPoint, ptr %19, i64 -1
  %21 = extractelement <2 x float> %9, i64 0
  %22 = extractelement <2 x float> %9, i64 1
  br label %23

23:                                               ; preds = %16, %55
  %24 = phi i32 [ %29, %55 ], [ %14, %16 ]
  %25 = phi ptr [ %58, %55 ], [ %17, %16 ]
  %26 = phi i32 [ %57, %55 ], [ 0, %16 ]
  %27 = phi i32 [ %56, %55 ], [ 0, %16 ]
  %28 = phi ptr [ %25, %55 ], [ %20, %16 ]
  %29 = add nsw i32 %24, -1
  %30 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !85
  %32 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !85
  %34 = fcmp olt float %33, %31
  %35 = select i1 %34, float %33, float %31
  %36 = select i1 %34, float %31, float %33
  %37 = fcmp une float %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %23
  %39 = fcmp ugt float %35, %22
  %40 = fcmp ult float %36, %22
  %41 = or i1 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = call fastcc i32 @cu_isectLL(ptr noundef nonnull %28, ptr noundef nonnull %25, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %3) #25
  %44 = icmp sgt i32 %43, -1
  %45 = load float, ptr %6, align 4
  %46 = fcmp une float %45, 0.000000e+00
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load float, ptr %3, align 4, !tbaa !85
  %50 = fcmp olt float %49, %21
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = add nsw i32 %27, 1
  br label %55

53:                                               ; preds = %48
  %54 = add nsw i32 %26, 1
  br label %55

55:                                               ; preds = %38, %51, %53, %42, %23
  %56 = phi i32 [ %52, %51 ], [ %27, %53 ], [ %27, %42 ], [ %27, %38 ], [ %27, %23 ]
  %57 = phi i32 [ %26, %51 ], [ %54, %53 ], [ %26, %42 ], [ %26, %38 ], [ %26, %23 ]
  %58 = getelementptr inbounds %struct.BevPoint, ptr %25, i64 1
  %59 = icmp eq i32 %29, 0
  br i1 %59, label %60, label %23, !llvm.loop !268

60:                                               ; preds = %55
  %61 = and i32 %56, 1
  %62 = icmp ne i32 %61, 0
  %63 = and i32 %57, 1
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %60, %2
  %68 = phi i8 [ 0, %2 ], [ %66, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret i8 %68
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_segment_2D(ptr noundef %0) unnamed_addr #2 !PGOFuncName !269 {
  %2 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 5
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds i8, ptr %0, i64 60
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = fneg float %6
  %13 = fneg float %11
  %14 = getelementptr inbounds i8, ptr %0, i64 164
  %15 = getelementptr inbounds %struct.BevList, ptr %0, i64 3
  tail call fastcc void @calc_bevel_sin_cos(float noundef %6, float noundef %11, float noundef %12, float noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #25
  %16 = getelementptr inbounds %struct.BevList, ptr %0, i64 1, i32 5
  %17 = load <2 x float>, ptr %14, align 4, !tbaa !85
  store <2 x float> %17, ptr %16, align 4, !tbaa !85
  tail call fastcc void @make_bevel_list_segment_3D(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_2D(ptr noundef %0) unnamed_addr #2 !PGOFuncName !270 {
  %2 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = icmp eq i32 %3, -1
  %5 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  br i1 %4, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sext i32 %8 to i64
  %10 = getelementptr %struct.BevPoint, ptr %5, i64 %9
  %11 = getelementptr %struct.BevPoint, ptr %10, i64 -1
  %12 = getelementptr %struct.BevPoint, ptr %10, i64 -2
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  %15 = getelementptr inbounds %struct.BevList, ptr %0, i64 3, i32 8
  %16 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !159
  %18 = add nsw i32 %17, -2
  br label %19

19:                                               ; preds = %13, %6
  %20 = phi i32 [ %8, %6 ], [ %18, %13 ]
  %21 = phi ptr [ %5, %6 ], [ %15, %13 ]
  %22 = phi ptr [ %11, %6 ], [ %14, %13 ]
  %23 = phi ptr [ %12, %6 ], [ %5, %13 ]
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %19 ]
  %27 = phi ptr [ %28, %25 ], [ %22, %19 ]
  %28 = phi ptr [ %48, %25 ], [ %21, %19 ]
  %29 = phi i32 [ %30, %25 ], [ %20, %19 ]
  %30 = add nsw i32 %29, -1
  %31 = load float, ptr %27, align 4, !tbaa !85
  %32 = load float, ptr %26, align 4, !tbaa !85
  %33 = fsub float %31, %32
  %34 = load float, ptr %28, align 4, !tbaa !85
  %35 = fsub float %31, %34
  %36 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !85
  %38 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !85
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = fsub float %37, %42
  %44 = getelementptr inbounds %struct.BevPoint, ptr %27, i64 0, i32 5
  %45 = getelementptr inbounds %struct.BevPoint, ptr %27, i64 0, i32 6
  tail call fastcc void @calc_bevel_sin_cos(float noundef %33, float noundef %40, float noundef %35, float noundef %43, ptr noundef nonnull %44, ptr noundef nonnull %45) #25
  %46 = getelementptr inbounds %struct.BevPoint, ptr %27, i64 0, i32 7
  tail call void @bisect_v3_v3v3v3(ptr noundef nonnull %46, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #24
  %47 = getelementptr inbounds %struct.BevPoint, ptr %27, i64 0, i32 9
  tail call void @vec_to_quat(ptr noundef nonnull %47, ptr noundef nonnull %46, i16 noundef signext 5, i16 noundef signext 1) #24
  %48 = getelementptr inbounds %struct.BevPoint, ptr %28, i64 1
  %49 = icmp eq i32 %30, 0
  br i1 %49, label %50, label %25, !llvm.loop !271

50:                                               ; preds = %25
  %51 = load i32, ptr %2, align 8, !tbaa !159
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi i32 [ %51, %50 ], [ %3, %19 ]
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %57 = getelementptr inbounds i8, ptr %0, i64 92
  %58 = load float, ptr %57, align 4, !tbaa !85
  %59 = getelementptr inbounds i8, ptr %0, i64 96
  %60 = load float, ptr %59, align 4, !tbaa !85
  %61 = tail call float @atan2f(float noundef %58, float noundef %60) #24
  %62 = fadd float %61, 0xBFF921FB60000000
  %63 = tail call float @sinf(float noundef %62) #24
  %64 = getelementptr inbounds %struct.BevList, ptr %0, i64 1, i32 5
  store float %63, ptr %64, align 4, !tbaa !272
  %65 = tail call float @cosf(float noundef %62) #24
  %66 = getelementptr inbounds %struct.BevList, ptr %0, i64 1, i32 6
  store float %65, ptr %66, align 4, !tbaa !273
  %67 = getelementptr inbounds i8, ptr %0, i64 116
  tail call void @vec_to_quat(ptr noundef nonnull %67, ptr noundef nonnull %57, i16 noundef signext 5, i16 noundef signext 1) #24
  %68 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !159
  %70 = sext i32 %69 to i64
  %71 = getelementptr %struct.BevPoint, ptr %56, i64 %70
  %72 = getelementptr %struct.BevPoint, ptr %71, i64 -1, i32 7
  %73 = load float, ptr %72, align 4, !tbaa !85
  %74 = getelementptr %struct.BevPoint, ptr %71, i64 -1, i32 7, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !85
  %76 = tail call float @atan2f(float noundef %73, float noundef %75) #24
  %77 = fadd float %76, 0xBFF921FB60000000
  %78 = tail call float @sinf(float noundef %77) #24
  %79 = getelementptr %struct.BevPoint, ptr %71, i64 -1, i32 5
  store float %78, ptr %79, align 4, !tbaa !272
  %80 = tail call float @cosf(float noundef %77) #24
  %81 = getelementptr %struct.BevPoint, ptr %71, i64 -1, i32 6
  store float %80, ptr %81, align 4, !tbaa !273
  %82 = getelementptr %struct.BevPoint, ptr %71, i64 -1, i32 9
  tail call void @vec_to_quat(ptr noundef %82, ptr noundef nonnull %72, i16 noundef signext 5, i16 noundef signext 1) #24
  br label %83

83:                                               ; preds = %55, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_segment_3D(ptr noundef %0) unnamed_addr #2 !PGOFuncName !274 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  %3 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %4 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  %5 = getelementptr inbounds i8, ptr %0, i64 172
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %6 = tail call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 3, i32 5
  tail call void @vec_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5, i16 noundef signext 5, i16 noundef signext 1) #24
  %8 = getelementptr inbounds i8, ptr %0, i64 148
  %9 = load float, ptr %8, align 4, !tbaa !221
  call void @axis_angle_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %5, float noundef %9) #24
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %7) #24
  %10 = call float @normalize_qt(ptr noundef nonnull %7) #24
  %11 = getelementptr inbounds i8, ptr %0, i64 92
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #25
  %12 = getelementptr inbounds i8, ptr %0, i64 116
  call void @copy_qt_qt(ptr noundef nonnull %12, ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_3D(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !275 {
  switch i32 %2, label %6 [
    i32 4, label %4
    i32 3, label %5
  ]

4:                                                ; preds = %3
  tail call fastcc void @make_bevel_list_3D_tangent(ptr noundef %0) #25
  br label %7

5:                                                ; preds = %3
  tail call fastcc void @make_bevel_list_3D_minimum_twist(ptr noundef %0) #25
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @make_bevel_list_3D_zup(ptr noundef %0) #25
  br label %7

7:                                                ; preds = %6, %5, %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @bevel_list_smooth(ptr noundef %0, i32 noundef %1) #25
  br label %10

10:                                               ; preds = %9, %7
  tail call fastcc void @bevel_list_apply_tilt(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handle_calc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #12 {
  tail call fastcc void @calchandleNurb_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calchandleNurb_intern(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #12 !PGOFuncName !276 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #26
  %10 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !227
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %15 = load i8, ptr %14, align 2, !tbaa !226
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %344, label %17

17:                                               ; preds = %13, %5
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %19 = icmp eq ptr %1, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %22 = load <2 x float>, ptr %18, align 4, !tbaa !85
  %23 = load <2 x float>, ptr %21, align 4, !tbaa !85
  %24 = fneg <2 x float> %23
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %24)
  store <2 x float> %25, ptr %6, align 8, !tbaa !85
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !85
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !85
  %30 = fneg float %29
  %31 = tail call float @llvm.fmuladd.f32(float %27, float 2.000000e+00, float %30)
  %32 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %31, ptr %32, align 8, !tbaa !85
  br label %48

33:                                               ; preds = %17
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %35 = icmp eq ptr %2, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load <2 x float>, ptr %18, align 4, !tbaa !85
  %38 = load <2 x float>, ptr %34, align 4, !tbaa !85
  %39 = fneg <2 x float> %38
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %39)
  store <2 x float> %40, ptr %6, align 8, !tbaa !85
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !85
  %45 = fneg float %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float 2.000000e+00, float %45)
  %47 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %46, ptr %47, align 8, !tbaa !85
  br label %51

48:                                               ; preds = %20, %33
  %49 = phi ptr [ %6, %20 ], [ %34, %33 ]
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  br label %51

51:                                               ; preds = %48, %36
  %52 = phi ptr [ %34, %36 ], [ %49, %48 ]
  %53 = phi ptr [ %6, %36 ], [ %50, %48 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %52) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %53, ptr noundef nonnull %18) #25
  %54 = icmp eq i8 %3, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load float, ptr %7, align 4, !tbaa !85
  %57 = load float, ptr %8, align 4, !tbaa !85
  %58 = insertelement <2 x float> poison, float %57, i64 0
  %59 = insertelement <2 x float> %58, float %56, i64 1
  br label %66

60:                                               ; preds = %51
  %61 = call fastcc float @len_v3(ptr noundef nonnull %7) #25
  %62 = call fastcc float @len_v3(ptr noundef nonnull %8) #25
  %63 = load i8, ptr %10, align 1, !tbaa !227
  %64 = insertelement <2 x float> poison, float %62, i64 0
  %65 = insertelement <2 x float> %64, float %61, i64 1
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi i8 [ %11, %55 ], [ %63, %60 ]
  %68 = phi <2 x float> [ %59, %55 ], [ %65, %60 ]
  %69 = fcmp oeq <2 x float> %68, zeroinitializer
  %70 = select <2 x i1> %69, <2 x float> <float 1.000000e+00, float 1.000000e+00>, <2 x float> %68
  switch i8 %67, label %71 [
    i8 1, label %74
    i8 4, label %74
  ]

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %73 = load i8, ptr %72, align 2, !tbaa !226
  switch i8 %73, label %211 [
    i8 1, label %74
    i8 4, label %74
  ]

74:                                               ; preds = %71, %71, %66, %66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #26
  %75 = load float, ptr %8, align 4, !tbaa !85
  %76 = load float, ptr %7, align 4, !tbaa !85
  %77 = insertelement <2 x float> poison, float %75, i64 0
  %78 = insertelement <2 x float> %77, float %76, i64 1
  %79 = fdiv <2 x float> %78, %70
  %80 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %81 = fadd <2 x float> %79, %80
  %82 = extractelement <2 x float> %81, i64 0
  store float %82, ptr %9, align 4, !tbaa !85
  %83 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %84 = extractelement <2 x float> %70, i64 0
  %85 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %86 = extractelement <2 x float> %70, i64 1
  %87 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %88 = load <2 x float>, ptr %83, align 4, !tbaa !85
  %89 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> zeroinitializer
  %90 = fdiv <2 x float> %88, %89
  %91 = load <2 x float>, ptr %85, align 4, !tbaa !85
  %92 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %93 = fdiv <2 x float> %91, %92
  %94 = fadd <2 x float> %90, %93
  store <2 x float> %94, ptr %87, align 4, !tbaa !85
  br i1 %54, label %95, label %97

95:                                               ; preds = %74
  %96 = call fastcc float @len_v3(ptr noundef nonnull %9) #25
  br label %97

97:                                               ; preds = %74, %95
  %98 = phi float [ %96, %95 ], [ %82, %74 ]
  %99 = fmul float %98, 0x40047DBF40000000
  %100 = fcmp une float %99, 0.000000e+00
  br i1 %100, label %101, label %209

101:                                              ; preds = %97
  %102 = fmul float %84, 5.000000e+00
  %103 = fcmp ogt float %86, %102
  %104 = select i1 %103, float %102, float %86
  %105 = fmul float %104, 5.000000e+00
  %106 = fcmp ogt float %84, %105
  %107 = select i1 %106, float %105, float %84
  %108 = load i8, ptr %10, align 1, !tbaa !227
  switch i8 %108, label %145 [
    i8 1, label %109
    i8 4, label %109
  ]

109:                                              ; preds = %101, %101
  %110 = fneg float %104
  %111 = fdiv float %110, %99
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef nonnull %9, float noundef %111) #25
  %112 = load i8, ptr %10, align 1, !tbaa !227
  %113 = icmp eq i8 %112, 4
  %114 = icmp ne ptr %2, null
  %115 = and i1 %114, %113
  %116 = icmp ne ptr %1, null
  %117 = and i1 %116, %115
  br i1 %117, label %118, label %145

118:                                              ; preds = %109
  %119 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !85
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !85
  %123 = fsub float %120, %122
  %124 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !85
  %126 = fsub float %125, %122
  %127 = fcmp ole float %123, 0.000000e+00
  %128 = fcmp ole float %126, 0.000000e+00
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %134, label %130

130:                                              ; preds = %118
  %131 = fcmp oge float %123, 0.000000e+00
  %132 = fcmp oge float %126, 0.000000e+00
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %136

134:                                              ; preds = %130, %118
  %135 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %122, ptr %135, align 4, !tbaa !85
  br label %145

136:                                              ; preds = %130
  %137 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !85
  br i1 %127, label %139, label %142

139:                                              ; preds = %136
  %140 = fcmp ogt float %120, %138
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  store float %120, ptr %137, align 4, !tbaa !85
  br label %145

142:                                              ; preds = %136
  %143 = fcmp olt float %120, %138
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  store float %120, ptr %137, align 4, !tbaa !85
  br label %145

145:                                              ; preds = %134, %142, %144, %139, %141, %101, %109
  %146 = phi i1 [ false, %109 ], [ false, %101 ], [ false, %134 ], [ true, %141 ], [ false, %139 ], [ true, %144 ], [ false, %142 ]
  %147 = phi i1 [ true, %109 ], [ true, %101 ], [ true, %134 ], [ false, %141 ], [ true, %139 ], [ false, %144 ], [ true, %142 ]
  %148 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %149 = load i8, ptr %148, align 2, !tbaa !226
  switch i8 %149, label %184 [
    i8 1, label %150
    i8 4, label %150
  ]

150:                                              ; preds = %145, %145
  %151 = fdiv float %107, %99
  %152 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %152, ptr noundef nonnull %18, ptr noundef nonnull %9, float noundef %151) #25
  %153 = load i8, ptr %148, align 2, !tbaa !226
  %154 = icmp eq i8 %153, 4
  %155 = icmp ne ptr %2, null
  %156 = and i1 %155, %154
  %157 = icmp ne ptr %1, null
  %158 = and i1 %157, %156
  br i1 %158, label %159, label %184

159:                                              ; preds = %150
  %160 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !85
  %162 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !85
  %164 = fsub float %161, %163
  %165 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !85
  %167 = fsub float %166, %163
  %168 = fcmp ole float %164, 0.000000e+00
  %169 = fcmp ole float %167, 0.000000e+00
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %175, label %171

171:                                              ; preds = %159
  %172 = fcmp oge float %164, 0.000000e+00
  %173 = fcmp oge float %167, 0.000000e+00
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %177

175:                                              ; preds = %171, %159
  %176 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %163, ptr %176, align 4, !tbaa !85
  br label %184

177:                                              ; preds = %171
  %178 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !85
  br i1 %168, label %180, label %182

180:                                              ; preds = %177
  %181 = fcmp olt float %166, %179
  br i1 %181, label %185, label %184

182:                                              ; preds = %177
  %183 = fcmp ogt float %166, %179
  br i1 %183, label %185, label %184

184:                                              ; preds = %175, %182, %180, %145, %150
  br i1 %146, label %186, label %209

185:                                              ; preds = %182, %180
  store float %166, ptr %178, align 4, !tbaa !85
  br label %186

186:                                              ; preds = %185, %184
  %187 = load float, ptr %0, align 4, !tbaa !85
  %188 = load float, ptr %18, align 4, !tbaa !85
  %189 = fsub float %187, %188
  %190 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !85
  %192 = fsub float %188, %191
  %193 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !85
  br i1 %147, label %202, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds float, ptr %0, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !85
  %198 = fsub float %194, %197
  %199 = fdiv float %198, %189
  %200 = tail call float @llvm.fmuladd.f32(float %199, float %192, float %194)
  %201 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %200, ptr %201, align 4, !tbaa !85
  br label %209

202:                                              ; preds = %186
  %203 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !85
  %205 = fsub float %194, %204
  %206 = fdiv float %205, %192
  %207 = tail call float @llvm.fmuladd.f32(float %206, float %189, float %194)
  %208 = getelementptr inbounds float, ptr %0, i64 1
  store float %207, ptr %208, align 4, !tbaa !85
  br label %209

209:                                              ; preds = %184, %202, %195, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #26
  %210 = load i8, ptr %10, align 1, !tbaa !227
  br label %211

211:                                              ; preds = %71, %209
  %212 = phi i8 [ %67, %71 ], [ %210, %209 ]
  %213 = icmp eq i8 %212, 2
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef nonnull %7, float noundef 0xBFD5555560000000) #25
  br label %215

215:                                              ; preds = %214, %211
  %216 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %217 = load i8, ptr %216, align 2, !tbaa !226
  %218 = icmp eq i8 %217, 2
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %220, ptr noundef nonnull %18, ptr noundef nonnull %8, float noundef 0x3FD5555560000000) #25
  br label %221

221:                                              ; preds = %219, %215
  %222 = icmp eq i8 %4, 0
  br i1 %222, label %223, label %344

223:                                              ; preds = %221
  %224 = load i8, ptr %10, align 1, !tbaa !227
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %344, label %226

226:                                              ; preds = %223
  %227 = load i8, ptr %216, align 2, !tbaa !226
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %344, label %229

229:                                              ; preds = %226
  %230 = icmp eq i8 %224, 3
  %231 = icmp eq i8 %227, 3
  %232 = or i1 %230, %231
  %233 = icmp eq i8 %224, 5
  %234 = or i1 %233, %232
  %235 = icmp eq i8 %227, 5
  %236 = or i1 %235, %234
  br i1 %236, label %237, label %344

237:                                              ; preds = %229
  %238 = tail call fastcc float @len_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %0) #25
  %239 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %240 = tail call fastcc float @len_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %239) #25
  %241 = fcmp oeq float %238, 0.000000e+00
  %242 = select i1 %241, float 1.000000e+00, float %238
  %243 = fcmp oeq float %240, 0.000000e+00
  %244 = select i1 %243, float 1.000000e+00, float %240
  %245 = fdiv float %242, %244
  %246 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %247 = load i8, ptr %246, align 1, !tbaa !277
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %297, label %250

250:                                              ; preds = %237
  %251 = load i8, ptr %216, align 2, !tbaa !226
  %252 = icmp eq i8 %251, 3
  br i1 %252, label %257, label %253

253:                                              ; preds = %250
  %254 = icmp eq i8 %251, 5
  %255 = fcmp ogt float %242, 0x3EE4F8B580000000
  %256 = select i1 %254, i1 %255, i1 false
  br i1 %256, label %259, label %274

257:                                              ; preds = %250
  %258 = fcmp ogt float %242, 0x3EE4F8B580000000
  br i1 %258, label %259, label %274

259:                                              ; preds = %253, %257
  %260 = fdiv float 1.000000e+00, %245
  %261 = load <2 x float>, ptr %18, align 4, !tbaa !85
  %262 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %263 = fsub <2 x float> %261, %262
  %264 = insertelement <2 x float> poison, float %260, i64 0
  %265 = shufflevector <2 x float> %264, <2 x float> poison, <2 x i32> zeroinitializer
  %266 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %265, <2 x float> %263, <2 x float> %261)
  store <2 x float> %266, ptr %239, align 4, !tbaa !85
  %267 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %268 = load float, ptr %267, align 4, !tbaa !85
  %269 = getelementptr inbounds float, ptr %0, i64 2
  %270 = load float, ptr %269, align 4, !tbaa !85
  %271 = fsub float %268, %270
  %272 = tail call float @llvm.fmuladd.f32(float %260, float %271, float %268)
  %273 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  store float %272, ptr %273, align 4, !tbaa !85
  br label %274

274:                                              ; preds = %257, %259, %253
  %275 = load i8, ptr %10, align 1, !tbaa !227
  %276 = icmp eq i8 %275, 3
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  %278 = icmp eq i8 %275, 5
  %279 = fcmp ogt float %244, 0x3EE4F8B580000000
  %280 = select i1 %278, i1 %279, i1 false
  br i1 %280, label %283, label %344

281:                                              ; preds = %274
  %282 = fcmp ogt float %244, 0x3EE4F8B580000000
  br i1 %282, label %283, label %344

283:                                              ; preds = %277, %281
  %284 = load <2 x float>, ptr %18, align 4, !tbaa !85
  %285 = load <2 x float>, ptr %239, align 4, !tbaa !85
  %286 = fsub <2 x float> %284, %285
  %287 = insertelement <2 x float> poison, float %245, i64 0
  %288 = shufflevector <2 x float> %287, <2 x float> poison, <2 x i32> zeroinitializer
  %289 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %288, <2 x float> %286, <2 x float> %284)
  store <2 x float> %289, ptr %0, align 4, !tbaa !85
  %290 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %291 = load float, ptr %290, align 4, !tbaa !85
  %292 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !85
  %294 = fsub float %291, %293
  %295 = tail call float @llvm.fmuladd.f32(float %245, float %294, float %291)
  %296 = getelementptr inbounds float, ptr %0, i64 2
  store float %295, ptr %296, align 4, !tbaa !85
  br label %344

297:                                              ; preds = %237
  %298 = load i8, ptr %10, align 1, !tbaa !227
  %299 = icmp eq i8 %298, 3
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = icmp eq i8 %298, 5
  %302 = fcmp ogt float %244, 0x3EE4F8B580000000
  %303 = select i1 %301, i1 %302, i1 false
  br i1 %303, label %306, label %320

304:                                              ; preds = %297
  %305 = fcmp ogt float %244, 0x3EE4F8B580000000
  br i1 %305, label %306, label %320

306:                                              ; preds = %300, %304
  %307 = load <2 x float>, ptr %18, align 4, !tbaa !85
  %308 = load <2 x float>, ptr %239, align 4, !tbaa !85
  %309 = fsub <2 x float> %307, %308
  %310 = insertelement <2 x float> poison, float %245, i64 0
  %311 = shufflevector <2 x float> %310, <2 x float> poison, <2 x i32> zeroinitializer
  %312 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %311, <2 x float> %309, <2 x float> %307)
  store <2 x float> %312, ptr %0, align 4, !tbaa !85
  %313 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !85
  %315 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  %316 = load float, ptr %315, align 4, !tbaa !85
  %317 = fsub float %314, %316
  %318 = tail call float @llvm.fmuladd.f32(float %245, float %317, float %314)
  %319 = getelementptr inbounds float, ptr %0, i64 2
  store float %318, ptr %319, align 4, !tbaa !85
  br label %320

320:                                              ; preds = %304, %306, %300
  %321 = load i8, ptr %216, align 2, !tbaa !226
  %322 = icmp eq i8 %321, 3
  br i1 %322, label %327, label %323

323:                                              ; preds = %320
  %324 = icmp eq i8 %321, 5
  %325 = fcmp ogt float %242, 0x3EE4F8B580000000
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %329, label %344

327:                                              ; preds = %320
  %328 = fcmp ogt float %242, 0x3EE4F8B580000000
  br i1 %328, label %329, label %344

329:                                              ; preds = %323, %327
  %330 = fdiv float 1.000000e+00, %245
  %331 = load <2 x float>, ptr %18, align 4, !tbaa !85
  %332 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %333 = fsub <2 x float> %331, %332
  %334 = insertelement <2 x float> poison, float %330, i64 0
  %335 = shufflevector <2 x float> %334, <2 x float> poison, <2 x i32> zeroinitializer
  %336 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %335, <2 x float> %333, <2 x float> %331)
  store <2 x float> %336, ptr %239, align 4, !tbaa !85
  %337 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %338 = load float, ptr %337, align 4, !tbaa !85
  %339 = getelementptr inbounds float, ptr %0, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !85
  %341 = fsub float %338, %340
  %342 = tail call float @llvm.fmuladd.f32(float %330, float %341, float %338)
  %343 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  store float %342, ptr %343, align 4, !tbaa !85
  br label %344

344:                                              ; preds = %281, %283, %277, %327, %329, %323, %221, %223, %226, %229, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calchandlesNurb_intern(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #7 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !119
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !121
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %14 = load i16, ptr %13, align 4, !tbaa !141
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  %17 = zext nneg i32 %8 to i64
  %18 = getelementptr %struct.BezTriple, ptr %12, i64 %17
  %19 = getelementptr %struct.BezTriple, ptr %18, i64 -1
  %20 = select i1 %16, ptr null, ptr %19
  %21 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 1
  br label %22

22:                                               ; preds = %10, %37
  %23 = phi i32 [ %8, %10 ], [ %27, %37 ]
  %24 = phi ptr [ %21, %10 ], [ %38, %37 ]
  %25 = phi ptr [ %20, %10 ], [ %26, %37 ]
  %26 = phi ptr [ %12, %10 ], [ %39, %37 ]
  %27 = add nsw i32 %23, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %26, ptr noundef %25, ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext %1) #25
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i16, ptr %13, align 4, !tbaa !141
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %11, align 8, !tbaa !122
  br label %37

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 1
  br label %37

37:                                               ; preds = %29, %33, %35
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ], [ null, %29 ]
  %39 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 1
  %40 = icmp eq i32 %27, 0
  br i1 %40, label %41, label %22, !llvm.loop !279

41:                                               ; preds = %37, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handle_calc_simple(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !121
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_nurb_bezt_get_prev(ptr noundef nonnull %0, ptr noundef %1) #25
  %8 = tail call ptr @BKE_nurb_bezt_get_next(ptr noundef nonnull %0, ptr noundef %1) #25
  tail call void @BKE_nurb_handle_calc(ptr noundef %1, ptr noundef %7, ptr noundef %8, i8 noundef zeroext 0) #25
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_nurb_bezt_handle_test(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !277
  %7 = and i8 %6, 1
  %8 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 4, !tbaa !280
  %10 = shl i8 %9, 1
  %11 = and i8 %10, 2
  %12 = or disjoint i8 %11, %7
  %13 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !281
  %15 = shl i8 %14, 2
  %16 = and i8 %15, 4
  %17 = or disjoint i8 %12, %16
  %18 = zext nneg i8 %17 to i32
  switch i8 %17, label %19 [
    i8 7, label %45
    i8 0, label %45
  ]

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %21 = load i8, ptr %20, align 1, !tbaa !227
  switch i8 %21, label %23 [
    i8 1, label %22
    i8 4, label %22
  ]

22:                                               ; preds = %19, %19
  store i8 3, ptr %20, align 1, !tbaa !227
  br label %23

23:                                               ; preds = %19, %22
  %24 = phi i8 [ %21, %19 ], [ 3, %22 ]
  %25 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %26 = load i8, ptr %25, align 2, !tbaa !226
  switch i8 %26, label %28 [
    i8 1, label %27
    i8 4, label %27
  ]

27:                                               ; preds = %23, %23
  store i8 3, ptr %25, align 2, !tbaa !226
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi i8 [ %26, %23 ], [ 3, %27 ]
  %30 = icmp eq i8 %24, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = lshr i32 %18, 1
  %33 = xor i32 %32, %18
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i8 0, ptr %20, align 1, !tbaa !227
  br label %37

37:                                               ; preds = %31, %36, %28
  %38 = icmp eq i8 %29, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = lshr i32 %18, 2
  %41 = lshr i32 %18, 1
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8 0, ptr %25, align 2, !tbaa !226
  br label %45

45:                                               ; preds = %2, %4, %4, %37, %44, %39
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handles_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !119
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !121
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %16, %13 ], [ %8, %10 ]
  %15 = phi ptr [ %17, %13 ], [ %12, %10 ]
  %16 = add nsw i32 %14, -1
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef %15, i8 noundef zeroext %1) #25
  %17 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %13, !llvm.loop !282

19:                                               ; preds = %13, %6
  tail call void @BKE_nurb_handles_calc(ptr noundef %0) #25
  br label %20

20:                                               ; preds = %2, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_handles_autocalc(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %105, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %105, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %104, label %12

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr %struct.BezTriple, ptr %6, i64 %13
  %15 = getelementptr %struct.BezTriple, ptr %14, i64 -2
  %16 = getelementptr %struct.BezTriple, ptr %14, i64 -1
  %17 = icmp eq i32 %1, 0
  br label %18

18:                                               ; preds = %12, %101
  %19 = phi i32 [ %10, %12 ], [ %23, %101 ]
  %20 = phi ptr [ %15, %12 ], [ %21, %101 ]
  %21 = phi ptr [ %16, %12 ], [ %22, %101 ]
  %22 = phi ptr [ %6, %12 ], [ %102, %101 ]
  %23 = add nsw i32 %19, -1
  br i1 %17, label %30, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %26 = load i8, ptr %25, align 1, !tbaa !277
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  store i8 0, ptr %31, align 1, !tbaa !227
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1
  %34 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %32, ptr noundef nonnull %33) #25
  %35 = fcmp uge float %34, 0x3E45798EC0000000
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %38 = tail call float @dist_squared_to_line_v3(ptr noundef nonnull %32, ptr noundef nonnull %21, ptr noundef nonnull %37) #24
  %39 = fcmp olt float %38, 0x3E45798EC0000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 3, ptr %31, align 1, !tbaa !227
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8 [ 1, %40 ], [ 0, %36 ]
  %43 = tail call float @dist_squared_to_line_v3(ptr noundef nonnull %21, ptr noundef nonnull %32, ptr noundef nonnull %33) #24
  %44 = fcmp olt float %43, 0x3E45798EC0000000
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %30
  %46 = phi i8 [ 0, %30 ], [ %42, %41 ]
  store i8 2, ptr %31, align 1, !tbaa !227
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i8 [ %42, %41 ], [ %46, %45 ]
  br i1 %17, label %57, label %49

49:                                               ; preds = %24, %47
  %50 = phi i1 [ %35, %47 ], [ true, %24 ]
  %51 = phi i8 [ %48, %47 ], [ 0, %24 ]
  %52 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %53 = load i8, ptr %52, align 1, !tbaa !281
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, %1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %49, %47
  %58 = phi i1 [ %50, %49 ], [ %35, %47 ]
  %59 = phi i8 [ %51, %49 ], [ %48, %47 ]
  %60 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 0, ptr %60, align 2, !tbaa !226
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  %63 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %61, ptr noundef nonnull %62) #25
  %64 = fcmp olt float %63, 0x3E45798EC0000000
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  store i8 2, ptr %60, align 2, !tbaa !226
  %66 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  %67 = load i8, ptr %66, align 1, !tbaa !227
  %68 = icmp eq i8 %67, 3
  br i1 %68, label %85, label %86

69:                                               ; preds = %57
  %70 = icmp eq i8 %59, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  store i8 3, ptr %60, align 2, !tbaa !226
  br label %72

72:                                               ; preds = %71, %69
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %74 = tail call float @dist_squared_to_line_v3(ptr noundef nonnull %73, ptr noundef nonnull %61, ptr noundef nonnull %62) #24
  %75 = fcmp olt float %74, 0x3E45798EC0000000
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8 2, ptr %60, align 2, !tbaa !226
  br label %86

77:                                               ; preds = %72, %49
  %78 = phi i1 [ %58, %72 ], [ %50, %49 ]
  br i1 %78, label %86, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  %81 = load i8, ptr %80, align 2, !tbaa !226
  %82 = icmp eq i8 %81, 3
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 0, ptr %84, align 2, !tbaa !226
  br label %86

85:                                               ; preds = %65
  store i8 0, ptr %66, align 1, !tbaa !227
  br label %86

86:                                               ; preds = %76, %79, %83, %77, %85, %65
  %87 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  %88 = load i8, ptr %87, align 1, !tbaa !227
  %89 = icmp eq i8 %88, 3
  %90 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  %91 = load i8, ptr %90, align 2, !tbaa !226
  br i1 %89, label %92, label %95

92:                                               ; preds = %86
  %93 = icmp eq i8 %91, 2
  br i1 %93, label %94, label %101

94:                                               ; preds = %92
  store i8 0, ptr %87, align 1, !tbaa !227
  br label %101

95:                                               ; preds = %86
  %96 = icmp eq i8 %91, 3
  %97 = icmp eq i8 %88, 2
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 0, ptr %100, align 2, !tbaa !226
  br label %101

101:                                              ; preds = %92, %94, %99, %95
  %102 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %103 = icmp eq i32 %23, 0
  br i1 %103, label %104, label %18, !llvm.loop !283

104:                                              ; preds = %101, %8
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %0) #25
  br label %105

105:                                              ; preds = %2, %4, %104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !284 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret float %4
}

; Function Attrs: optsize
declare float @dist_squared_to_line_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurbList_handles_autocalc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @BKE_nurb_handles_autocalc(ptr noundef nonnull %6, i32 noundef %1) #25
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !285

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurbList_handles_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = add i8 %1, -1
  %4 = icmp ult i8 %3, 2
  br i1 %4, label %5, label %62

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %151, label %8

8:                                                ; preds = %5, %59
  %9 = phi ptr [ %60, %59 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !119
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %59

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !121
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  br label %20

20:                                               ; preds = %17, %55
  %21 = phi i32 [ %23, %55 ], [ %15, %17 ]
  %22 = phi ptr [ %56, %55 ], [ %19, %17 ]
  %23 = add nsw i32 %21, -1
  %24 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !277
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %30 = load i8, ptr %29, align 1, !tbaa !281
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %55, label %37

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 5
  store i8 %1, ptr %34, align 1, !tbaa !227
  %35 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %36 = load i8, ptr %35, align 1, !tbaa !281
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi i8 [ %30, %28 ], [ %36, %33 ]
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 6
  br i1 %40, label %42, label %44

42:                                               ; preds = %37
  %43 = load i8, ptr %41, align 2, !tbaa !226
  br label %45

44:                                               ; preds = %37
  store i8 %1, ptr %41, align 2, !tbaa !226
  br label %45

45:                                               ; preds = %42, %44
  %46 = phi i8 [ %43, %42 ], [ %1, %44 ]
  %47 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 5
  %48 = load i8, ptr %47, align 1, !tbaa !227
  %49 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 6
  %50 = icmp eq i8 %48, %46
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  switch i8 %48, label %53 [
    i8 3, label %52
    i8 1, label %52
  ]

52:                                               ; preds = %51, %51
  store i8 0, ptr %47, align 1, !tbaa !227
  br label %53

53:                                               ; preds = %51, %52
  switch i8 %46, label %55 [
    i8 3, label %54
    i8 1, label %54
  ]

54:                                               ; preds = %53, %53
  store i8 0, ptr %49, align 2, !tbaa !226
  br label %55

55:                                               ; preds = %53, %45, %54, %28
  %56 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %57 = icmp eq i32 %23, 0
  br i1 %57, label %58, label %20, !llvm.loop !286

58:                                               ; preds = %55, %13
  tail call fastcc void @nurb_handles_calc__align_selected(ptr noundef nonnull %9) #25
  br label %59

59:                                               ; preds = %58, %8
  %60 = load ptr, ptr %9, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %151, label %8, !llvm.loop !287

62:                                               ; preds = %2
  switch i8 %1, label %63 [
    i8 5, label %111
    i8 6, label %66
  ]

63:                                               ; preds = %62
  %64 = load ptr, ptr %0, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  br i1 %65, label %151, label %67

66:                                               ; preds = %62
  br label %111

67:                                               ; preds = %63, %104
  %68 = phi ptr [ %106, %104 ], [ %64, %63 ]
  %69 = phi i8 [ %105, %104 ], [ 0, %63 ]
  %70 = getelementptr inbounds %struct.Nurb, ptr %68, i64 0, i32 2
  %71 = load i16, ptr %70, align 8, !tbaa !119
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %73, label %104

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.Nurb, ptr %68, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !121
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %104, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Nurb, ptr %68, i64 0, i32 18
  %79 = load ptr, ptr %78, align 8, !tbaa !122
  br label %80

80:                                               ; preds = %77, %101
  %81 = phi i32 [ %83, %101 ], [ %75, %77 ]
  %82 = phi ptr [ %102, %101 ], [ %79, %77 ]
  %83 = add nsw i32 %81, -1
  %84 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 7
  %85 = load i8, ptr %84, align 1, !tbaa !277
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 5
  %90 = load i8, ptr %89, align 1, !tbaa !227
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88, %80
  %93 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 9
  %94 = load i8, ptr %93, align 1, !tbaa !281
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 6
  %99 = load i8, ptr %98, align 2, !tbaa !226
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %92
  %102 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 1
  %103 = icmp eq i32 %83, 0
  br i1 %103, label %104, label %80, !llvm.loop !288

104:                                              ; preds = %101, %97, %88, %73, %67
  %105 = phi i8 [ %69, %67 ], [ %69, %73 ], [ %69, %101 ], [ 1, %97 ], [ 1, %88 ]
  %106 = load ptr, ptr %68, align 8, !tbaa !46
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %67, !llvm.loop !289

108:                                              ; preds = %104
  %109 = icmp eq i8 %105, 0
  %110 = select i1 %109, i8 3, i8 0
  br label %111

111:                                              ; preds = %108, %62, %66
  %112 = phi i8 [ %110, %108 ], [ 3, %62 ], [ 0, %66 ]
  %113 = load ptr, ptr %0, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %151, label %115

115:                                              ; preds = %111, %148
  %116 = phi ptr [ %149, %148 ], [ %113, %111 ]
  %117 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 2
  %118 = load i16, ptr %117, align 8, !tbaa !119
  %119 = icmp eq i16 %118, 1
  br i1 %119, label %120, label %148

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 6
  %122 = load i32, ptr %121, align 8, !tbaa !121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %147, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 18
  %126 = load ptr, ptr %125, align 8, !tbaa !122
  br label %127

127:                                              ; preds = %124, %144
  %128 = phi i32 [ %130, %144 ], [ %122, %124 ]
  %129 = phi ptr [ %145, %144 ], [ %126, %124 ]
  %130 = add nsw i32 %128, -1
  %131 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 7
  %132 = load i8, ptr %131, align 1, !tbaa !277
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 5
  store i8 %112, ptr %136, align 1, !tbaa !227
  br label %137

137:                                              ; preds = %135, %127
  %138 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 9
  %139 = load i8, ptr %138, align 1, !tbaa !281
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 6
  store i8 %112, ptr %143, align 2, !tbaa !226
  br label %144

144:                                              ; preds = %142, %137
  %145 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 1
  %146 = icmp eq i32 %130, 0
  br i1 %146, label %147, label %127, !llvm.loop !290

147:                                              ; preds = %144, %120
  tail call fastcc void @nurb_handles_calc__align_selected(ptr noundef nonnull %116) #25
  br label %148

148:                                              ; preds = %115, %147
  %149 = load ptr, ptr %116, align 8, !tbaa !46
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %115, !llvm.loop !291

151:                                              ; preds = %148, %59, %63, %111, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @nurb_handles_calc__align_selected(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !292 {
  tail call fastcc void @nurbList_handles_swap_select(ptr noundef %0) #25
  tail call void @BKE_nurb_handles_calc(ptr noundef %0) #25
  tail call fastcc void @nurbList_handles_swap_select(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurbList_handles_recalculate(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %8, %61
  %11 = phi ptr [ %6, %8 ], [ %62, %61 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !119
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !121
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !122
  br label %22

22:                                               ; preds = %19, %54
  %23 = phi i32 [ %26, %54 ], [ %17, %19 ]
  %24 = phi ptr [ %56, %54 ], [ %21, %19 ]
  %25 = phi i8 [ %55, %54 ], [ 0, %19 ]
  %26 = add nsw i32 %23, -1
  %27 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 7
  %28 = load i8, ptr %27, align 1, !tbaa !277
  %29 = and i8 %28, %2
  %30 = icmp eq i8 %29, %2
  %31 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 9
  %32 = load i8, ptr %31, align 1, !tbaa !281
  %33 = and i8 %32, %2
  %34 = icmp eq i8 %33, %2
  %35 = select i1 %30, i1 true, i1 %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %37 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 5
  %38 = load i8, ptr %37, align 1, !tbaa !227
  %39 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 6
  %40 = load i8, ptr %39, align 2, !tbaa !226
  store i8 1, ptr %37, align 1, !tbaa !227
  store i8 1, ptr %39, align 2, !tbaa !226
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %24) #25
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %41) #25
  tail call void @BKE_nurb_handle_calc_simple(ptr noundef nonnull %11, ptr noundef nonnull %24) #25
  store i8 %38, ptr %37, align 1, !tbaa !227
  store i8 %40, ptr %39, align 2, !tbaa !226
  br i1 %30, label %42, label %43

42:                                               ; preds = %36
  br i1 %9, label %45, label %44

43:                                               ; preds = %36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %4) #25
  br i1 %34, label %48, label %52

44:                                               ; preds = %42
  br i1 %34, label %53, label %52

45:                                               ; preds = %42
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 1
  %47 = call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %46) #25
  tail call void @dist_ensure_v3_v3fl(ptr noundef nonnull %24, ptr noundef nonnull %46, float noundef %47) #24
  br i1 %34, label %49, label %52

48:                                               ; preds = %43
  br i1 %9, label %49, label %53

49:                                               ; preds = %45, %48
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 1
  %51 = call fastcc float @len_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %50) #25
  tail call void @dist_ensure_v3_v3fl(ptr noundef nonnull %41, ptr noundef nonnull %50, float noundef %51) #24
  br label %53

52:                                               ; preds = %44, %45, %43
  call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %5) #25
  br label %53

53:                                               ; preds = %44, %48, %49, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  br label %54

54:                                               ; preds = %22, %53
  %55 = phi i8 [ 1, %53 ], [ %25, %22 ]
  %56 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 1
  %57 = icmp eq i32 %26, 0
  br i1 %57, label %58, label %22, !llvm.loop !293

58:                                               ; preds = %54
  %59 = icmp eq i8 %55, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %11) #25
  br label %61

61:                                               ; preds = %15, %58, %60, %10
  %62 = load ptr, ptr %11, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %10, !llvm.loop !294

64:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: optsize
declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nurbList_flag_set(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %2
  %6 = trunc i16 %1 to i8
  br label %7

7:                                                ; preds = %5, %43
  %8 = phi ptr [ %3, %5 ], [ %44, %43 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !119
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !121
  br i1 %11, label %14, label %28

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i32 [ %22, %19 ], [ %13, %16 ]
  %21 = phi ptr [ %26, %19 ], [ %18, %16 ]
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  store i8 %6, ptr %23, align 1, !tbaa !281
  %24 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  store i8 %6, ptr %24, align 4, !tbaa !280
  %25 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  store i8 %6, ptr %25, align 1, !tbaa !277
  %26 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %43, label %19, !llvm.loop !295

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !115
  %31 = mul nsw i32 %30, %13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i32 [ %39, %36 ], [ %31, %33 ]
  %38 = phi ptr [ %41, %36 ], [ %35, %33 ]
  %39 = add nsw i32 %37, -1
  %40 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 3
  store i16 %1, ptr %40, align 4, !tbaa !296
  %41 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %36, !llvm.loop !297

43:                                               ; preds = %36, %19, %28, %14
  %44 = load ptr, ptr %8, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %7, !llvm.loop !298

46:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nurb_direction_switch(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.BezTriple, align 4
  %3 = alloca %struct.BPoint, align 4
  %4 = alloca %struct.BPoint, align 4
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !115
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %235, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !119
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = and i32 %6, 1
  %18 = add i32 %17, %6
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %235

20:                                               ; preds = %16
  %21 = lshr i32 %18, 1
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = sext i32 %6 to i64
  %25 = getelementptr %struct.BezTriple, ptr %23, i64 %24
  br label %26

26:                                               ; preds = %20, %61
  %27 = phi ptr [ %66, %61 ], [ %23, %20 ]
  %28 = phi ptr [ %30, %61 ], [ %25, %20 ]
  %29 = phi i32 [ %65, %61 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 -1
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %27, i64 72, i1 false), !tbaa.struct !299
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %27, ptr noundef nonnull align 4 dereferenceable(72) %30, i64 72, i1 false), !tbaa.struct !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %30, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !299
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2)
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2
  tail call fastcc void @swap_v3_v3(ptr noundef %27, ptr noundef nonnull %33) #25
  %34 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 2
  tail call fastcc void @swap_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %34) #25
  br label %37

35:                                               ; preds = %26
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2
  tail call fastcc void @swap_v3_v3(ptr noundef %27, ptr noundef nonnull %36) #25
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 5
  %39 = load i8, ptr %38, align 1, !tbaa !227
  %40 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 6
  %41 = load i8, ptr %40, align 2, !tbaa !226
  store i8 %41, ptr %38, align 1, !tbaa !227
  store i8 %39, ptr %40, align 2, !tbaa !226
  %42 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 7
  %43 = load i8, ptr %42, align 1, !tbaa !277
  %44 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 9
  %45 = load i8, ptr %44, align 1, !tbaa !281
  store i8 %45, ptr %42, align 1, !tbaa !277
  store i8 %43, ptr %44, align 1, !tbaa !281
  br i1 %31, label %59, label %46

46:                                               ; preds = %37
  %47 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 5
  %48 = load i8, ptr %47, align 1, !tbaa !227
  %49 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 6
  %50 = load i8, ptr %49, align 2, !tbaa !226
  store i8 %50, ptr %47, align 1, !tbaa !227
  store i8 %48, ptr %49, align 2, !tbaa !226
  %51 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 7
  %52 = load i8, ptr %51, align 1, !tbaa !277
  %53 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 9
  %54 = load i8, ptr %53, align 1, !tbaa !281
  store i8 %54, ptr %51, align 1, !tbaa !277
  store i8 %52, ptr %53, align 1, !tbaa !281
  %55 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !228
  %57 = fneg float %56
  store float %57, ptr %55, align 4, !tbaa !228
  %58 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 1
  br label %61

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 1
  br label %61

61:                                               ; preds = %59, %46
  %62 = phi ptr [ %60, %59 ], [ %58, %46 ]
  %63 = load float, ptr %62, align 4, !tbaa !228
  %64 = fneg float %63
  store float %64, ptr %62, align 4, !tbaa !228
  %65 = add nsw i32 %29, -1
  %66 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 1
  %67 = icmp sgt i32 %29, 1
  br i1 %67, label %26, label %235, !llvm.loop !300

68:                                               ; preds = %12
  %69 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %70 = load i32, ptr %69, align 4, !tbaa !115
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = icmp sgt i32 %70, 0
  br i1 %73, label %74, label %235

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  br label %203

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !124
  %79 = sext i32 %6 to i64
  %80 = getelementptr %struct.BPoint, ptr %78, i64 %79
  %81 = getelementptr inbounds %struct.BPoint, ptr %80, i64 -1
  %82 = icmp ne ptr %78, %81
  %83 = icmp sgt i32 %6, 1
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %76
  %86 = lshr i32 %6, 1
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi ptr [ %100, %87 ], [ %81, %85 ]
  %89 = phi ptr [ %99, %87 ], [ %78, %85 ]
  %90 = phi ptr [ %88, %87 ], [ %80, %85 ]
  %91 = phi i32 [ %92, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %89, i64 36, i1 false), !tbaa.struct !301
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %89, ptr noundef nonnull align 4 dereferenceable(36) %88, i64 36, i1 false), !tbaa.struct !301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %88, ptr noundef nonnull align 4 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !301
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3)
  %92 = add nsw i32 %91, -1
  %93 = getelementptr inbounds %struct.BPoint, ptr %89, i64 0, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !177
  %95 = fneg float %94
  store float %95, ptr %93, align 4, !tbaa !177
  %96 = getelementptr %struct.BPoint, ptr %90, i64 -1, i32 1
  %97 = load float, ptr %96, align 4, !tbaa !177
  %98 = fneg float %97
  store float %98, ptr %96, align 4, !tbaa !177
  %99 = getelementptr inbounds %struct.BPoint, ptr %89, i64 1
  %100 = getelementptr inbounds %struct.BPoint, ptr %88, i64 -1
  %101 = icmp ne ptr %99, %100
  %102 = icmp ugt i32 %91, 1
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %87, label %104, !llvm.loop !302

104:                                              ; preds = %87
  %105 = load i32, ptr %5, align 8, !tbaa !121
  br label %106

106:                                              ; preds = %104, %76
  %107 = phi i32 [ %6, %76 ], [ %105, %104 ]
  %108 = phi ptr [ %78, %76 ], [ %99, %104 ]
  %109 = and i32 %107, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.BPoint, ptr %108, i64 0, i32 1
  %113 = load float, ptr %112, align 4, !tbaa !177
  %114 = fneg float %113
  store float %114, ptr %112, align 4, !tbaa !177
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i16, ptr %13, align 8, !tbaa !119
  %117 = icmp eq i16 %116, 4
  br i1 %117, label %118, label %235

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %120 = load ptr, ptr %119, align 8, !tbaa !138
  %121 = icmp eq ptr %120, null
  br i1 %121, label %235, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %124 = load i16, ptr %123, align 8, !tbaa !140
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %107, %125
  %127 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %128 = load i16, ptr %127, align 4, !tbaa !141
  %129 = and i16 %128, 1
  %130 = icmp eq i16 %129, 0
  %131 = add nsw i32 %125, -1
  %132 = select i1 %130, i32 0, i32 %131
  %133 = add nsw i32 %126, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr float, ptr %120, i64 %134
  %136 = getelementptr inbounds float, ptr %135, i64 -1
  %137 = icmp ne ptr %120, %136
  %138 = icmp sgt i32 %133, 1
  %139 = and i1 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %122
  %141 = lshr i32 %133, 1
  br label %142

142:                                              ; preds = %140, %142
  %143 = phi ptr [ %150, %142 ], [ %136, %140 ]
  %144 = phi ptr [ %149, %142 ], [ %120, %140 ]
  %145 = phi i32 [ %148, %142 ], [ %141, %140 ]
  %146 = load float, ptr %144, align 4, !tbaa !85
  %147 = load float, ptr %143, align 4, !tbaa !85
  store float %147, ptr %144, align 4, !tbaa !85
  store float %146, ptr %143, align 4, !tbaa !85
  %148 = add nsw i32 %145, -1
  %149 = getelementptr inbounds float, ptr %144, i64 1
  %150 = getelementptr inbounds float, ptr %143, i64 -1
  %151 = icmp ne ptr %149, %150
  %152 = icmp ugt i32 %145, 1
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %142, label %154, !llvm.loop !303

154:                                              ; preds = %142, %122
  %155 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %156 = shl nsw i64 %134, 2
  %157 = tail call ptr %155(i64 noundef %156, ptr noundef nonnull @.str.39) #24
  %158 = add nsw i32 %133, -1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, ptr %120, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !85
  %162 = getelementptr inbounds float, ptr %157, i64 %159
  store float %161, ptr %162, align 4, !tbaa !85
  %163 = icmp eq i32 %158, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %154, %164
  %165 = phi ptr [ %169, %164 ], [ %120, %154 ]
  %166 = phi i32 [ %168, %164 ], [ %158, %154 ]
  %167 = phi ptr [ %174, %164 ], [ %157, %154 ]
  %168 = add nsw i32 %166, -1
  %169 = getelementptr inbounds float, ptr %165, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !85
  %171 = load float, ptr %165, align 4, !tbaa !85
  %172 = fsub float %170, %171
  %173 = tail call float @llvm.fabs.f32(float %172)
  store float %173, ptr %167, align 4, !tbaa !85
  %174 = getelementptr inbounds float, ptr %167, i64 1
  %175 = icmp eq i32 %168, 0
  br i1 %175, label %176, label %164, !llvm.loop !304

176:                                              ; preds = %164, %154
  %177 = load i16, ptr %123, align 8, !tbaa !140
  %178 = sext i16 %177 to i32
  %179 = load i32, ptr %5, align 8, !tbaa !121
  %180 = add nsw i32 %179, %178
  %181 = load i16, ptr %127, align 4, !tbaa !141
  %182 = and i16 %181, 1
  %183 = icmp eq i16 %182, 0
  %184 = add nsw i32 %178, -1
  %185 = select i1 %183, i32 0, i32 %184
  %186 = add nsw i32 %180, %185
  %187 = load ptr, ptr %119, align 8, !tbaa !138
  store float 0.000000e+00, ptr %187, align 4, !tbaa !85
  %188 = add nsw i32 %186, -1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %176, %190
  %191 = phi float [ %197, %190 ], [ 0.000000e+00, %176 ]
  %192 = phi i32 [ %199, %190 ], [ %188, %176 ]
  %193 = phi ptr [ %195, %190 ], [ %187, %176 ]
  %194 = phi ptr [ %198, %190 ], [ %157, %176 ]
  %195 = getelementptr inbounds float, ptr %193, i64 1
  %196 = load float, ptr %194, align 4, !tbaa !85
  %197 = fadd float %191, %196
  store float %197, ptr %195, align 4, !tbaa !85
  %198 = getelementptr inbounds float, ptr %194, i64 1
  %199 = add nsw i32 %192, -1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %190, !llvm.loop !305

201:                                              ; preds = %190, %176
  %202 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %202(ptr noundef %157) #24
  br label %235

203:                                              ; preds = %74, %231
  %204 = phi i32 [ %70, %74 ], [ %232, %231 ]
  %205 = phi i32 [ 0, %74 ], [ %233, %231 ]
  %206 = load ptr, ptr %75, align 8, !tbaa !124
  %207 = load i32, ptr %5, align 8, !tbaa !121
  %208 = mul nsw i32 %207, %205
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.BPoint, ptr %206, i64 %209
  %211 = sext i32 %207 to i64
  %212 = getelementptr %struct.BPoint, ptr %210, i64 %211
  %213 = getelementptr inbounds %struct.BPoint, ptr %212, i64 -1
  %214 = icmp ne ptr %210, %213
  %215 = icmp sgt i32 %207, 1
  %216 = and i1 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %203
  %218 = lshr i32 %207, 1
  br label %219

219:                                              ; preds = %217, %219
  %220 = phi ptr [ %225, %219 ], [ %213, %217 ]
  %221 = phi ptr [ %224, %219 ], [ %210, %217 ]
  %222 = phi i32 [ %223, %219 ], [ %218, %217 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %221, i64 36, i1 false), !tbaa.struct !301
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %221, ptr noundef nonnull align 4 dereferenceable(36) %220, i64 36, i1 false), !tbaa.struct !301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %220, ptr noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !301
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4)
  %223 = add nsw i32 %222, -1
  %224 = getelementptr inbounds %struct.BPoint, ptr %221, i64 1
  %225 = getelementptr inbounds %struct.BPoint, ptr %220, i64 -1
  %226 = icmp ne ptr %224, %225
  %227 = icmp ugt i32 %222, 1
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %219, label %229, !llvm.loop !306

229:                                              ; preds = %219
  %230 = load i32, ptr %69, align 4, !tbaa !115
  br label %231

231:                                              ; preds = %229, %203
  %232 = phi i32 [ %230, %229 ], [ %204, %203 ]
  %233 = add nuw nsw i32 %205, 1
  %234 = icmp slt i32 %233, %232
  br i1 %234, label %203, label %235, !llvm.loop !307

235:                                              ; preds = %231, %61, %72, %16, %115, %201, %118, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !PGOFuncName !308 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  store float %4, ptr %0, align 4, !tbaa !85
  store float %3, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  store float %8, ptr %5, align 4, !tbaa !85
  store float %6, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  store float %12, ptr %9, align 4, !tbaa !85
  store float %10, ptr %11, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_nurbs_vertexCos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = tail call i32 @BKE_nurbList_verts_count(ptr noundef %0) #25
  store i32 %3, ptr %1, align 4, !tbaa !159
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %5 = sext i32 %3 to i64
  %6 = mul nsw i64 %5, 12
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.40) #24
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %2, %56
  %11 = phi ptr [ %58, %56 ], [ %8, %2 ]
  %12 = phi ptr [ %57, %56 ], [ %7, %2 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !119
  %15 = icmp eq i16 %14, 1
  %16 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  br i1 %15, label %17, label %36

17:                                               ; preds = %10
  %18 = load i32, ptr %16, align 8, !tbaa !121
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !122
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %33, %23 ], [ %22, %20 ]
  %25 = phi i32 [ %32, %23 ], [ 0, %20 ]
  %26 = phi ptr [ %31, %23 ], [ %12, %20 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef %24) #25
  %27 = getelementptr inbounds float, ptr %26, i64 3
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %28) #25
  %29 = getelementptr inbounds float, ptr %26, i64 6
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %30) #25
  %31 = getelementptr inbounds float, ptr %26, i64 9
  %32 = add nuw nsw i32 %25, 1
  %33 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 1
  %34 = load i32, ptr %16, align 8, !tbaa !121
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %23, label %56, !llvm.loop !309

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %38 = load i32, ptr %16, align 8, !tbaa !121
  %39 = load i32, ptr %37, align 4, !tbaa !115
  %40 = mul nsw i32 %39, %38
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %51, %45 ], [ %44, %42 ]
  %47 = phi i32 [ %50, %45 ], [ 0, %42 ]
  %48 = phi ptr [ %49, %45 ], [ %12, %42 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %48, ptr noundef %46) #25
  %49 = getelementptr inbounds float, ptr %48, i64 3
  %50 = add nuw nsw i32 %47, 1
  %51 = getelementptr inbounds %struct.BPoint, ptr %46, i64 1
  %52 = load i32, ptr %16, align 8, !tbaa !121
  %53 = load i32, ptr %37, align 4, !tbaa !115
  %54 = mul nsw i32 %53, %52
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %45, label %56, !llvm.loop !310

56:                                               ; preds = %45, %23, %36, %17
  %57 = phi ptr [ %12, %17 ], [ %12, %36 ], [ %31, %23 ], [ %49, %45 ]
  %58 = load ptr, ptr %11, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %10, !llvm.loop !311

60:                                               ; preds = %56, %2
  ret ptr %7
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BK_curve_nurbs_vertexCos_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %2, %51
  %6 = phi ptr [ %53, %51 ], [ %3, %2 ]
  %7 = phi ptr [ %52, %51 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !119
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  br i1 %10, label %12, label %31

12:                                               ; preds = %5
  %13 = load i32, ptr %11, align 8, !tbaa !121
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %28, %18 ], [ %17, %15 ]
  %20 = phi i32 [ %27, %18 ], [ 0, %15 ]
  %21 = phi ptr [ %26, %18 ], [ %7, %15 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %19, ptr noundef %21) #25
  %22 = getelementptr inbounds float, ptr %21, i64 3
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %22) #25
  %24 = getelementptr inbounds float, ptr %21, i64 6
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %24) #25
  %26 = getelementptr inbounds float, ptr %21, i64 9
  %27 = add nuw nsw i32 %20, 1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %29 = load i32, ptr %11, align 8, !tbaa !121
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %18, label %51, !llvm.loop !312

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %33 = load i32, ptr %11, align 8, !tbaa !121
  %34 = load i32, ptr %32, align 4, !tbaa !115
  %35 = mul nsw i32 %34, %33
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !124
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %46, %40 ], [ %39, %37 ]
  %42 = phi i32 [ %45, %40 ], [ 0, %37 ]
  %43 = phi ptr [ %44, %40 ], [ %7, %37 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %41, ptr noundef %43) #25
  %44 = getelementptr inbounds float, ptr %43, i64 3
  %45 = add nuw nsw i32 %42, 1
  %46 = getelementptr inbounds %struct.BPoint, ptr %41, i64 1
  %47 = load i32, ptr %11, align 8, !tbaa !121
  %48 = load i32, ptr %32, align 4, !tbaa !115
  %49 = mul nsw i32 %48, %47
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %40, label %51, !llvm.loop !313

51:                                               ; preds = %40, %18, %31, %12
  %52 = phi ptr [ %7, %12 ], [ %7, %31 ], [ %26, %18 ], [ %44, %40 ]
  tail call fastcc void @calchandlesNurb_intern(ptr noundef nonnull %6, i8 noundef zeroext 1) #25
  %53 = load ptr, ptr %6, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %5, !llvm.loop !314

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_nurbs_keyVertexCos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call i32 @BKE_nurbList_verts_count(ptr noundef %0) #25
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %5 = sext i32 %3 to i64
  %6 = mul nsw i64 %5, 12
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.40) #24
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %2, %51
  %11 = phi ptr [ %54, %51 ], [ %8, %2 ]
  %12 = phi ptr [ %53, %51 ], [ %1, %2 ]
  %13 = phi ptr [ %52, %51 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !119
  %16 = icmp eq i16 %15, 1
  %17 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  br i1 %16, label %24, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %20 = load i32, ptr %17, align 8, !tbaa !121
  %21 = load i32, ptr %19, align 4, !tbaa !115
  %22 = mul nsw i32 %21, %20
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %40, label %51

24:                                               ; preds = %10
  %25 = load i32, ptr %17, align 8, !tbaa !121
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %36, %27 ], [ %12, %24 ]
  %29 = phi ptr [ %35, %27 ], [ %13, %24 ]
  %30 = phi i32 [ %37, %27 ], [ 0, %24 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %29, ptr noundef %28) #25
  %31 = getelementptr inbounds float, ptr %29, i64 3
  %32 = getelementptr inbounds float, ptr %28, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %32) #25
  %33 = getelementptr inbounds float, ptr %29, i64 6
  %34 = getelementptr inbounds float, ptr %28, i64 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #25
  %35 = getelementptr inbounds float, ptr %29, i64 9
  %36 = getelementptr inbounds float, ptr %28, i64 12
  %37 = add nuw nsw i32 %30, 1
  %38 = load i32, ptr %17, align 8, !tbaa !121
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %27, label %51, !llvm.loop !315

40:                                               ; preds = %18, %40
  %41 = phi ptr [ %45, %40 ], [ %12, %18 ]
  %42 = phi ptr [ %44, %40 ], [ %13, %18 ]
  %43 = phi i32 [ %46, %40 ], [ 0, %18 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %42, ptr noundef %41) #25
  %44 = getelementptr inbounds float, ptr %42, i64 3
  %45 = getelementptr inbounds float, ptr %41, i64 4
  %46 = add nuw nsw i32 %43, 1
  %47 = load i32, ptr %17, align 8, !tbaa !121
  %48 = load i32, ptr %19, align 4, !tbaa !115
  %49 = mul nsw i32 %48, %47
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %40, label %51, !llvm.loop !316

51:                                               ; preds = %40, %27, %18, %24
  %52 = phi ptr [ %13, %24 ], [ %13, %18 ], [ %35, %27 ], [ %44, %40 ]
  %53 = phi ptr [ %12, %24 ], [ %12, %18 ], [ %36, %27 ], [ %45, %40 ]
  %54 = load ptr, ptr %11, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %10, !llvm.loop !317

56:                                               ; preds = %51, %2
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_nurbs_keyVertexTilts_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2, %48
  %6 = phi ptr [ %50, %48 ], [ %3, %2 ]
  %7 = phi ptr [ %49, %48 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !119
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !121
  br i1 %10, label %13, label %29

13:                                               ; preds = %5
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %27, %18 ], [ %17, %15 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %15 ]
  %21 = phi ptr [ %25, %18 ], [ %7, %15 ]
  %22 = getelementptr inbounds float, ptr %21, i64 9
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 1
  store float %23, ptr %24, align 4, !tbaa !228
  %25 = getelementptr inbounds float, ptr %21, i64 12
  %26 = add nuw nsw i32 %20, 1
  %27 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %28 = icmp eq i32 %26, %12
  br i1 %28, label %48, label %18, !llvm.loop !318

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !115
  %32 = mul nsw i32 %31, %12
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !124
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %46, %37 ], [ %36, %34 ]
  %39 = phi i32 [ %45, %37 ], [ 0, %34 ]
  %40 = phi ptr [ %44, %37 ], [ %7, %34 ]
  %41 = getelementptr inbounds float, ptr %40, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 1
  store float %42, ptr %43, align 4, !tbaa !177
  %44 = getelementptr inbounds float, ptr %40, i64 4
  %45 = add nuw nsw i32 %39, 1
  %46 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1
  %47 = icmp eq i32 %45, %32
  br i1 %47, label %48, label %37, !llvm.loop !319

48:                                               ; preds = %37, %18, %29, %13
  %49 = phi ptr [ %7, %13 ], [ %7, %29 ], [ %25, %18 ], [ %44, %37 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %5, !llvm.loop !320

52:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_check_valid_v(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !119
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !142
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %3, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !117
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !143
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  switch i16 %11, label %28 [
    i16 4, label %25
    i16 3, label %27
  ]

25:                                               ; preds = %24
  %26 = icmp ult i32 %3, 5
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %25, %19, %14
  br label %28

28:                                               ; preds = %24, %25, %9, %5, %1, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %1 ], [ 1, %5 ], [ 0, %9 ], [ 0, %25 ], [ 0, %24 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_check_valid_uv(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call zeroext i8 @BKE_nurb_check_valid_u(ptr noundef %0) #25, !range !127
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !115
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @BKE_nurb_check_valid_v(ptr noundef nonnull %0) #25, !range !127
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %4
  br label %12

12:                                               ; preds = %8, %1, %11
  %13 = phi i8 [ 1, %11 ], [ 0, %1 ], [ 0, %8 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_order_clamp_u(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !140
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @max_ii(i32 noundef 2, i32 noundef %3) #25, !range !321
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %4, align 8, !tbaa !140
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i16 [ %10, %8 ], [ %5, %1 ]
  %13 = phi i8 [ 1, %8 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %15 = load i16, ptr %14, align 4, !tbaa !141
  %16 = and i16 %15, 5
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = icmp slt i16 %12, 3
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = icmp ugt i16 %12, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %18
  %23 = phi i16 [ 3, %18 ], [ 4, %20 ]
  store i16 %23, ptr %4, align 8, !tbaa !140
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = phi i8 [ %13, %11 ], [ 1, %20 ], [ 1, %22 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #19 !PGOFuncName !322 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_order_clamp_v(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !142
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @max_ii(i32 noundef 2, i32 noundef %3) #25, !range !321
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %4, align 2, !tbaa !142
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i16 [ %10, %8 ], [ %5, %1 ]
  %13 = phi i8 [ 1, %8 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %15 = load i16, ptr %14, align 2, !tbaa !143
  %16 = and i16 %15, 5
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = icmp slt i16 %12, 3
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = icmp ugt i16 %12, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %18
  %23 = phi i16 [ 3, %18 ], [ 4, %20 ]
  store i16 %23, ptr %4, align 2, !tbaa !142
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = phi i8 [ %13, %11 ], [ 1, %20 ], [ 1, %22 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nurb_type_convert(ptr nocapture noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !119
  switch i16 %5, label %221 [
    i16 0, label %6
    i16 1, label %67
    i16 4, label %158
  ]

6:                                                ; preds = %3
  switch i16 %1, label %221 [
    i16 1, label %7
    i16 4, label %46
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = sext i32 %9 to i64
  %12 = mul nsw i64 %11, 72
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.41) #24
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  store ptr %13, ptr %14, align 8, !tbaa !122
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %7, %18
  %19 = phi i32 [ %22, %18 ], [ %9, %7 ]
  %20 = phi ptr [ %38, %18 ], [ %16, %7 ]
  %21 = phi ptr [ %39, %18 ], [ %13, %7 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef %20) #25
  %24 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 3
  %25 = load i16, ptr %24, align 4, !tbaa !296
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  store i8 %26, ptr %27, align 1, !tbaa !281
  %28 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  store i8 %26, ptr %28, align 4, !tbaa !280
  %29 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  store i8 %26, ptr %29, align 1, !tbaa !277
  %30 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 2, ptr %30, align 2, !tbaa !226
  %31 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  store i8 2, ptr %31, align 1, !tbaa !227
  %32 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !178
  %34 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 2
  store float %33, ptr %34, align 4, !tbaa !261
  %35 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 5
  %36 = load float, ptr %35, align 4, !tbaa !147
  %37 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 3
  store float %36, ptr %37, align 4, !tbaa !144
  %38 = getelementptr inbounds %struct.BPoint, ptr %20, i64 1
  %39 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %40 = icmp eq i32 %22, 0
  br i1 %40, label %41, label %18, !llvm.loop !323

41:                                               ; preds = %18
  %42 = load ptr, ptr %15, align 8, !tbaa !124
  br label %43

43:                                               ; preds = %41, %7
  %44 = phi ptr [ %42, %41 ], [ %16, %7 ]
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %45(ptr noundef %44) #24
  store ptr null, ptr %15, align 8, !tbaa !124
  store i32 %9, ptr %8, align 8, !tbaa !121
  store i16 1, ptr %4, align 8, !tbaa !119
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %0) #25
  br label %221

46:                                               ; preds = %6
  store i16 4, ptr %4, align 8, !tbaa !119
  %47 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  store i16 4, ptr %47, align 8, !tbaa !140
  %48 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %49 = load i16, ptr %48, align 4, !tbaa !141
  %50 = and i16 %49, 1
  store i16 %50, ptr %48, align 4, !tbaa !141
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %0) #25
  %51 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !121
  %53 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %54 = load i32, ptr %53, align 4, !tbaa !115
  %55 = mul nsw i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %221, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !124
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i32 [ %63, %60 ], [ %55, %57 ]
  %62 = phi ptr [ %65, %60 ], [ %59, %57 ]
  %63 = add nsw i32 %61, -1
  %64 = getelementptr inbounds [4 x float], ptr %62, i64 0, i64 3
  store float 1.000000e+00, ptr %64, align 4, !tbaa !85
  %65 = getelementptr inbounds %struct.BPoint, ptr %62, i64 1
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %221, label %60, !llvm.loop !324

67:                                               ; preds = %3
  %68 = icmp eq i16 %1, 0
  %69 = icmp eq i16 %1, 4
  switch i16 %1, label %221 [
    i16 4, label %70
    i16 0, label %70
  ]

70:                                               ; preds = %67, %67
  %71 = icmp eq i8 %2, 0
  %72 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !121
  %74 = mul nsw i32 %73, 3
  %75 = select i1 %71, i32 %73, i32 %74
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %77 = sext i32 %75 to i64
  %78 = mul nsw i64 %77, 36
  %79 = tail call ptr %76(i64 noundef %78, ptr noundef nonnull @.str.42) #24
  %80 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  store ptr %79, ptr %80, align 8, !tbaa !124
  %81 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !121
  %83 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %84 = load ptr, ptr %83, align 8, !tbaa !122
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %146, label %86

86:                                               ; preds = %70, %139
  %87 = phi i32 [ %91, %139 ], [ %82, %70 ]
  %88 = phi i32 [ %141, %139 ], [ %75, %70 ]
  %89 = phi ptr [ %140, %139 ], [ %79, %70 ]
  %90 = phi ptr [ %142, %139 ], [ %84, %70 ]
  %91 = add nsw i32 %87, -1
  br i1 %68, label %92, label %101

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 5
  %94 = load i8, ptr %93, align 1, !tbaa !227
  %95 = icmp eq i8 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 6
  %98 = load i8, ptr %97, align 2, !tbaa !226
  %99 = icmp eq i8 %98, 2
  %100 = or i1 %71, %99
  br i1 %100, label %102, label %118

101:                                              ; preds = %92, %86
  br i1 %71, label %102, label %118

102:                                              ; preds = %101, %96
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %90, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %89, ptr noundef nonnull %103) #25
  %104 = getelementptr inbounds [4 x float], ptr %89, i64 0, i64 3
  store float 1.000000e+00, ptr %104, align 4, !tbaa !85
  %105 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 8
  %106 = load i8, ptr %105, align 4, !tbaa !280
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds %struct.BPoint, ptr %89, i64 0, i32 3
  store i16 %107, ptr %108, align 4, !tbaa !296
  %109 = add nsw i32 %88, -2
  %110 = select i1 %71, i32 %88, i32 %109
  %111 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 3
  %112 = load float, ptr %111, align 4, !tbaa !144
  %113 = getelementptr inbounds %struct.BPoint, ptr %89, i64 0, i32 5
  store float %112, ptr %113, align 4, !tbaa !147
  %114 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 2
  %115 = load float, ptr %114, align 4, !tbaa !261
  %116 = getelementptr inbounds %struct.BPoint, ptr %89, i64 0, i32 2
  store float %115, ptr %116, align 4, !tbaa !178
  %117 = getelementptr inbounds %struct.BPoint, ptr %89, i64 1
  br label %139

118:                                              ; preds = %96, %101
  %119 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 7
  %120 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 3
  %121 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 0, i32 2
  br label %122

122:                                              ; preds = %118, %122
  %123 = phi i64 [ 0, %118 ], [ %136, %122 ]
  %124 = phi ptr [ %119, %118 ], [ %137, %122 ]
  %125 = phi ptr [ %89, %118 ], [ %135, %122 ]
  %126 = getelementptr inbounds [3 x [3 x float]], ptr %90, i64 0, i64 %123
  tail call fastcc void @copy_v3_v3(ptr noundef %125, ptr noundef %126) #25
  %127 = getelementptr inbounds [4 x float], ptr %125, i64 0, i64 3
  store float 1.000000e+00, ptr %127, align 4, !tbaa !85
  %128 = load i8, ptr %124, align 1, !tbaa !250
  %129 = zext i8 %128 to i16
  %130 = getelementptr inbounds %struct.BPoint, ptr %125, i64 0, i32 3
  store i16 %129, ptr %130, align 4, !tbaa !296
  %131 = load float, ptr %120, align 4, !tbaa !144
  %132 = getelementptr inbounds %struct.BPoint, ptr %125, i64 0, i32 5
  store float %131, ptr %132, align 4, !tbaa !147
  %133 = load float, ptr %121, align 4, !tbaa !261
  %134 = getelementptr inbounds %struct.BPoint, ptr %125, i64 0, i32 2
  store float %133, ptr %134, align 4, !tbaa !178
  %135 = getelementptr inbounds %struct.BPoint, ptr %125, i64 1
  %136 = add nuw nsw i64 %123, 1
  %137 = getelementptr inbounds i8, ptr %124, i64 1
  %138 = icmp eq i64 %136, 3
  br i1 %138, label %139, label %122, !llvm.loop !325

139:                                              ; preds = %122, %102
  %140 = phi ptr [ %117, %102 ], [ %135, %122 ]
  %141 = phi i32 [ %110, %102 ], [ %88, %122 ]
  %142 = getelementptr inbounds %struct.BezTriple, ptr %90, i64 1
  %143 = icmp eq i32 %91, 0
  br i1 %143, label %144, label %86, !llvm.loop !326

144:                                              ; preds = %139
  %145 = load ptr, ptr %83, align 8, !tbaa !122
  br label %146

146:                                              ; preds = %144, %70
  %147 = phi ptr [ %84, %70 ], [ %145, %144 ]
  %148 = phi i32 [ %75, %70 ], [ %141, %144 ]
  %149 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %149(ptr noundef %147) #24
  store ptr null, ptr %83, align 8, !tbaa !122
  store i32 %148, ptr %81, align 8, !tbaa !121
  %150 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  store i32 1, ptr %150, align 4, !tbaa !115
  %151 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  store i16 4, ptr %151, align 8, !tbaa !140
  %152 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  store i16 1, ptr %152, align 2, !tbaa !142
  store i16 %1, ptr %4, align 8, !tbaa !119
  br i1 %69, label %153, label %221

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %155 = load i16, ptr %154, align 4, !tbaa !141
  %156 = and i16 %155, 1
  %157 = or disjoint i16 %156, 4
  store i16 %157, ptr %154, align 4, !tbaa !141
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %0) #25
  br label %221

158:                                              ; preds = %3
  switch i16 %1, label %221 [
    i16 0, label %159
    i16 1, label %172
  ]

159:                                              ; preds = %158
  store i16 0, ptr %4, align 8, !tbaa !119
  %160 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %161 = load ptr, ptr %160, align 8, !tbaa !138
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %164(ptr noundef nonnull %161) #24
  br label %165

165:                                              ; preds = %163, %159
  store ptr null, ptr %160, align 8, !tbaa !138
  %166 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %167 = load ptr, ptr %166, align 8, !tbaa !139
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %170(ptr noundef nonnull %167) #24
  br label %171

171:                                              ; preds = %169, %165
  store ptr null, ptr %166, align 8, !tbaa !139
  br label %221

172:                                              ; preds = %158
  %173 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %174 = load i32, ptr %173, align 8, !tbaa !121
  %175 = sdiv i32 %174, 3
  %176 = icmp slt i32 %174, 6
  br i1 %176, label %221, label %177

177:                                              ; preds = %172
  %178 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %179 = zext nneg i32 %175 to i64
  %180 = mul nuw nsw i64 %179, 72
  %181 = tail call ptr %178(i64 noundef %180, ptr noundef nonnull @.str.41) #24
  %182 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  store ptr %181, ptr %182, align 8, !tbaa !122
  %183 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %184 = load ptr, ptr %183, align 8, !tbaa !124
  br label %185

185:                                              ; preds = %177, %185
  %186 = phi i32 [ %189, %185 ], [ %175, %177 ]
  %187 = phi ptr [ %212, %185 ], [ %184, %177 ]
  %188 = phi ptr [ %213, %185 ], [ %181, %177 ]
  %189 = add nsw i32 %186, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %188, ptr noundef %187) #25
  %190 = getelementptr inbounds %struct.BPoint, ptr %187, i64 0, i32 3
  %191 = load i16, ptr %190, align 4, !tbaa !296
  %192 = trunc i16 %191 to i8
  %193 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 0, i32 7
  store i8 %192, ptr %193, align 1, !tbaa !277
  %194 = getelementptr inbounds %struct.BPoint, ptr %187, i64 1
  %195 = getelementptr inbounds [3 x [3 x float]], ptr %188, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %195, ptr noundef nonnull %194) #25
  %196 = getelementptr inbounds %struct.BPoint, ptr %187, i64 1, i32 3
  %197 = load i16, ptr %196, align 4, !tbaa !296
  %198 = trunc i16 %197 to i8
  %199 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 0, i32 8
  store i8 %198, ptr %199, align 4, !tbaa !280
  %200 = getelementptr inbounds %struct.BPoint, ptr %187, i64 2
  %201 = getelementptr inbounds [3 x [3 x float]], ptr %188, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %201, ptr noundef nonnull %200) #25
  %202 = getelementptr inbounds %struct.BPoint, ptr %187, i64 2, i32 3
  %203 = load i16, ptr %202, align 4, !tbaa !296
  %204 = trunc i16 %203 to i8
  %205 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 0, i32 9
  store i8 %204, ptr %205, align 1, !tbaa !281
  %206 = getelementptr inbounds %struct.BPoint, ptr %187, i64 2, i32 5
  %207 = load float, ptr %206, align 4, !tbaa !147
  %208 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 0, i32 3
  store float %207, ptr %208, align 4, !tbaa !144
  %209 = getelementptr inbounds %struct.BPoint, ptr %187, i64 2, i32 2
  %210 = load float, ptr %209, align 4, !tbaa !178
  %211 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 0, i32 2
  store float %210, ptr %211, align 4, !tbaa !261
  %212 = getelementptr inbounds %struct.BPoint, ptr %187, i64 3
  %213 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 1
  %214 = icmp eq i32 %189, 0
  br i1 %214, label %215, label %185, !llvm.loop !327

215:                                              ; preds = %185
  %216 = load ptr, ptr %183, align 8, !tbaa !124
  %217 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %217(ptr noundef %216) #24
  store ptr null, ptr %183, align 8, !tbaa !124
  %218 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %219 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %220 = load ptr, ptr %219, align 8, !tbaa !138
  tail call void %218(ptr noundef %220) #24
  store ptr null, ptr %219, align 8, !tbaa !138
  store i32 %175, ptr %173, align 8, !tbaa !121
  store i16 1, ptr %4, align 8, !tbaa !119
  br label %221

221:                                              ; preds = %60, %46, %43, %215, %171, %153, %146, %6, %67, %3, %158, %172
  %222 = phi i8 [ 0, %172 ], [ 1, %158 ], [ 1, %3 ], [ 1, %67 ], [ 1, %6 ], [ 1, %146 ], [ 1, %153 ], [ 1, %171 ], [ 1, %215 ], [ 1, %43 ], [ 1, %46 ], [ 1, %60 ]
  ret i8 %222
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_nurb_active_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %0) #25
  %6 = tail call i32 @BLI_findindex(ptr noundef %5, ptr noundef nonnull %1) #24
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %2 ]
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_nurb_active_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !328
  %5 = tail call ptr @BLI_findlink(ptr noundef %2, i32 noundef %4) #24
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_curve_vert_active_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !46
  %4 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #25, !range !127
  %5 = load ptr, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_curve_nurb_vert_active_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  %5 = load i32, ptr %4, align 8, !tbaa !329
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef nonnull %0) #25
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !328
  %11 = tail call ptr @BLI_findlink(ptr noundef %8, i32 noundef %10) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !119
  %16 = icmp eq i16 %15, 1
  %17 = load i32, ptr %4, align 8, !tbaa !329
  %18 = sext i32 %17 to i64
  br i1 %16, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !122
  %22 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 %18
  br label %27

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !124
  %26 = getelementptr inbounds %struct.BPoint, ptr %25, i64 %18
  br label %27

27:                                               ; preds = %7, %23, %19, %3
  %28 = phi ptr [ null, %3 ], [ %22, %19 ], [ %26, %23 ], [ null, %7 ]
  %29 = phi ptr [ null, %3 ], [ %11, %19 ], [ %11, %23 ], [ null, %7 ]
  store ptr %29, ptr %1, align 8, !tbaa !46
  store ptr %28, ptr %2, align 8, !tbaa !46
  %30 = icmp ne ptr %28, null
  %31 = zext i1 %30 to i8
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_nurb_vert_active_set(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  tail call void @BKE_curve_nurb_active_set(ptr noundef %0, ptr noundef nonnull %1) #25
  %6 = icmp eq ptr %2, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !119
  %10 = icmp eq i16 %9, 1
  %11 = ptrtoint ptr %2 to i64
  %12 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  br i1 %10, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %11, %16
  %18 = sdiv exact i64 %17, 72
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %12, align 8, !tbaa !329
  br label %32

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %11, %23
  %25 = sdiv exact i64 %24, 36
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %12, align 8, !tbaa !329
  br label %32

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  store i32 -1, ptr %28, align 8, !tbaa !329
  br label %32

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  store i32 -1, ptr %30, align 8, !tbaa !329
  %31 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  store i32 -1, ptr %31, align 4, !tbaa !328
  br label %32

32:                                               ; preds = %27, %20, %13, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_nurb_vert_active_validate(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %4 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #25, !range !127
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !119
  %10 = icmp eq i16 %9, 1
  %11 = load ptr, ptr %3, align 8, !tbaa !46
  br i1 %10, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !277
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %24

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.BPoint, ptr %11, i64 0, i32 3
  %19 = load i16, ptr %18, align 4, !tbaa !296
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  store i32 -1, ptr %23, align 8, !tbaa !329
  br label %24

24:                                               ; preds = %22, %12, %17, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !330 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_curve_center_median(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #25
  tail call fastcc void @zero_v3(ptr noundef %1) #25
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2, %42
  %7 = phi ptr [ %45, %42 ], [ %4, %2 ]
  %8 = phi i32 [ %44, %42 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !119
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !121
  br i1 %11, label %14, label %28

14:                                               ; preds = %6
  %15 = mul nsw i32 %13, 3
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %26, %20 ], [ %19, %17 ]
  %22 = phi i32 [ %23, %20 ], [ %13, %17 ]
  %23 = add nsw i32 %22, -1
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef %21) #25
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %24) #25
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %25) #25
  %26 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %42, label %20, !llvm.loop !331

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !115
  %31 = mul nsw i32 %30, %13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %40, %36 ], [ %35, %33 ]
  %38 = phi i32 [ %39, %36 ], [ %31, %33 ]
  %39 = add nsw i32 %38, -1
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef %37) #25
  %40 = getelementptr inbounds %struct.BPoint, ptr %37, i64 1
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %36, !llvm.loop !332

42:                                               ; preds = %36, %20, %28, %14
  %43 = phi i32 [ 0, %14 ], [ 0, %28 ], [ %15, %20 ], [ %31, %36 ]
  %44 = add nsw i32 %43, %8
  %45 = load ptr, ptr %7, align 8, !tbaa !46
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %6, !llvm.loop !333

47:                                               ; preds = %42
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = sitofp i32 %44 to float
  %51 = fdiv float 1.000000e+00, %50
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %51) #25
  br label %52

52:                                               ; preds = %2, %49, %47
  %53 = phi i8 [ 1, %49 ], [ 0, %47 ], [ 0, %2 ]
  ret i8 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !334 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !335 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_curve_center_bounds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 8, !tbaa !85
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !85
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %6, align 8, !tbaa !85
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !85
  %7 = call zeroext i8 @BKE_curve_minmax(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #25, !range !127
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_transform_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %4, %46
  %9 = phi ptr [ %47, %46 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !119
  %12 = icmp eq i16 %11, 1
  %13 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !121
  br i1 %12, label %15, label %32

15:                                               ; preds = %8
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %23, %20 ], [ %14, %17 ]
  %22 = phi ptr [ %29, %20 ], [ %19, %17 ]
  %23 = add nsw i32 %21, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %22) #24
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %24) #24
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %25) #24
  %26 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !144
  %28 = fmul float %27, %3
  store float %28, ptr %26, align 4, !tbaa !144
  %29 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %30 = icmp eq i32 %23, 0
  br i1 %30, label %31, label %20, !llvm.loop !336

31:                                               ; preds = %20, %15
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %9) #25
  br label %46

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !115
  %35 = mul nsw i32 %34, %14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !124
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i32 [ %43, %40 ], [ %35, %37 ]
  %42 = phi ptr [ %44, %40 ], [ %39, %37 ]
  %43 = add nsw i32 %41, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %42) #24
  %44 = getelementptr inbounds %struct.BPoint, ptr %42, i64 1
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %40, !llvm.loop !337

46:                                               ; preds = %40, %32, %31
  %47 = load ptr, ptr %9, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %8, !llvm.loop !338

49:                                               ; preds = %46, %4
  %50 = icmp eq i8 %2, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = icmp eq ptr %53, null
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Key, ptr %53, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %62

59:                                               ; preds = %70, %62
  %60 = load ptr, ptr %63, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62, !llvm.loop !339

62:                                               ; preds = %55, %59
  %63 = phi ptr [ %60, %59 ], [ %57, %55 ]
  %64 = getelementptr inbounds %struct.KeyBlock, ptr %63, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !340
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %59, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.KeyBlock, ptr %63, i64 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !342
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi ptr [ %74, %70 ], [ %69, %67 ]
  %72 = phi i32 [ %73, %70 ], [ %65, %67 ]
  %73 = add nsw i32 %72, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %71) #24
  %74 = getelementptr inbounds float, ptr %71, i64 3
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %59, label %70, !llvm.loop !343

76:                                               ; preds = %59, %55, %51, %49
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_curve_transform(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call float @mat4_to_scale(ptr noundef %1) #24
  tail call void @BKE_curve_transform_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %4) #25
  ret void
}

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_translate(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #25
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3, %41
  %8 = phi ptr [ %42, %41 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !119
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !121
  br i1 %11, label %14, label %27

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %25, %19 ], [ %18, %16 ]
  %21 = phi i32 [ %22, %19 ], [ %13, %16 ]
  %22 = add nsw i32 %21, -1
  tail call fastcc void @add_v3_v3(ptr noundef %20, ptr noundef %1) #25
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %23, ptr noundef %1) #25
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 2
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %24, ptr noundef %1) #25
  %25 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 1
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %41, label %19, !llvm.loop !344

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !115
  %30 = mul nsw i32 %29, %13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %39, %35 ], [ %34, %32 ]
  %37 = phi i32 [ %38, %35 ], [ %30, %32 ]
  %38 = add nsw i32 %37, -1
  tail call fastcc void @add_v3_v3(ptr noundef %36, ptr noundef %1) #25
  %39 = getelementptr inbounds %struct.BPoint, ptr %36, i64 1
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %35, !llvm.loop !345

41:                                               ; preds = %35, %19, %27, %14
  %42 = load ptr, ptr %8, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %7, !llvm.loop !346

44:                                               ; preds = %41, %3
  %45 = icmp eq i8 %2, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Key, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %57

54:                                               ; preds = %65, %57
  %55 = load ptr, ptr %58, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57, !llvm.loop !347

57:                                               ; preds = %50, %54
  %58 = phi ptr [ %55, %54 ], [ %52, %50 ]
  %59 = getelementptr inbounds %struct.KeyBlock, ptr %58, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !340
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %54, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.KeyBlock, ptr %58, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !342
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %69, %65 ], [ %64, %62 ]
  %67 = phi i32 [ %68, %65 ], [ %60, %62 ]
  %68 = add nsw i32 %67, -1
  tail call fastcc void @add_v3_v3(ptr noundef %66, ptr noundef %1) #25
  %69 = getelementptr inbounds float, ptr %66, i64 3
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %54, label %65, !llvm.loop !348

71:                                               ; preds = %54, %50, %46, %44
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_material_index_remove(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call signext i16 @BKE_curve_type_get(ptr noundef %0) #25
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 50
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  br label %12

12:                                               ; preds = %9, %24
  %13 = phi i32 [ %15, %24 ], [ %7, %9 ]
  %14 = phi ptr [ %25, %24 ], [ %11, %9 ]
  %15 = add nsw i32 %13, -1
  %16 = getelementptr inbounds %struct.CharInfo, ptr %14, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !349
  %18 = icmp eq i16 %17, 0
  %19 = sext i16 %17 to i32
  %20 = icmp slt i32 %19, %1
  %21 = or i1 %18, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = add i16 %17, -1
  store i16 %23, ptr %16, align 2, !tbaa !349
  br label %24

24:                                               ; preds = %12, %22
  %25 = getelementptr inbounds %struct.CharInfo, ptr %14, i64 1
  %26 = icmp ugt i32 %13, 1
  br i1 %26, label %12, label %50, !llvm.loop !350

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = icmp eq i16 %3, 2
  br label %33

33:                                               ; preds = %31, %47
  %34 = phi ptr [ %29, %31 ], [ %48, %47 ]
  %35 = getelementptr inbounds %struct.Nurb, ptr %34, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !351
  %37 = icmp eq i16 %36, 0
  %38 = sext i16 %36 to i32
  %39 = icmp slt i32 %38, %1
  %40 = or i1 %37, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = add i16 %36, -1
  store i16 %42, ptr %35, align 2, !tbaa !351
  br i1 %32, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Nurb, ptr %34, i64 0, i32 21
  %45 = load i32, ptr %44, align 4, !tbaa !218
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !218
  br label %47

47:                                               ; preds = %33, %43, %41
  %48 = load ptr, ptr %34, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %33, !llvm.loop !352

50:                                               ; preds = %47, %24, %27, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_material_index_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call signext i16 @BKE_curve_type_get(ptr noundef %0) #25
  %3 = icmp eq i16 %2, 4
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !94
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %14, %11 ], [ %6, %8 ]
  %13 = phi ptr [ %16, %11 ], [ %10, %8 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.CharInfo, ptr %13, i64 0, i32 1
  store i16 0, ptr %15, align 2, !tbaa !349
  %16 = getelementptr inbounds %struct.CharInfo, ptr %13, i64 1
  %17 = icmp ugt i32 %12, 1
  br i1 %17, label %11, label %32, !llvm.loop !353

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = icmp eq i16 %2, 2
  br label %24

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %20, %22 ], [ %30, %29 ]
  %26 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 3
  store i16 0, ptr %26, align 2, !tbaa !351
  br i1 %23, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 21
  store i32 0, ptr %28, align 4, !tbaa !218
  br label %29

29:                                               ; preds = %24, %27
  %30 = load ptr, ptr %25, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !354

32:                                               ; preds = %29, %11, %18, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_curve_material_index_validate(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call signext i16 @BKE_curve_type_get(ptr noundef %0) #25
  %3 = icmp eq i16 %2, 4
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %5 = load i16, ptr %4, align 2, !tbaa !34
  %6 = sext i16 %5 to i32
  br i1 %3, label %7, label %29

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %6) #25, !range !321
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 50
  %10 = load i32, ptr %9, align 8, !tbaa !94
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  br label %15

15:                                               ; preds = %12, %25
  %16 = phi i32 [ %19, %25 ], [ %10, %12 ]
  %17 = phi i8 [ %26, %25 ], [ 1, %12 ]
  %18 = phi ptr [ %27, %25 ], [ %14, %12 ]
  %19 = add nsw i32 %16, -1
  %20 = getelementptr inbounds %struct.CharInfo, ptr %18, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !349
  %22 = sext i16 %21 to i32
  %23 = icmp slt i32 %8, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i16 0, ptr %20, align 2, !tbaa !349
  br label %25

25:                                               ; preds = %15, %24
  %26 = phi i8 [ 0, %24 ], [ %17, %15 ]
  %27 = getelementptr inbounds %struct.CharInfo, ptr %18, i64 1
  %28 = icmp ugt i32 %16, 1
  br i1 %28, label %15, label %51, !llvm.loop !355

29:                                               ; preds = %1
  %30 = add nsw i32 %6, -1
  %31 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %30) #25, !range !321
  %32 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %29
  %36 = icmp eq i16 %2, 2
  br label %37

37:                                               ; preds = %35, %47
  %38 = phi ptr [ %33, %35 ], [ %49, %47 ]
  %39 = phi i8 [ 1, %35 ], [ %48, %47 ]
  %40 = getelementptr inbounds %struct.Nurb, ptr %38, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !351
  %42 = sext i16 %41 to i32
  %43 = icmp slt i32 %31, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  store i16 0, ptr %40, align 2, !tbaa !351
  br i1 %36, label %45, label %47

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.Nurb, ptr %38, i64 0, i32 21
  store i32 0, ptr %46, align 4, !tbaa !218
  br label %47

47:                                               ; preds = %44, %45, %37
  %48 = phi i8 [ %39, %37 ], [ 0, %45 ], [ 0, %44 ]
  %49 = load ptr, ptr %38, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %37, !llvm.loop !356

51:                                               ; preds = %47, %25
  %52 = phi i8 [ %26, %25 ], [ %48, %47 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #24
  br label %55

55:                                               ; preds = %29, %7, %51, %54
  %56 = phi i32 [ 1, %54 ], [ 0, %51 ], [ 0, %7 ], [ 0, %29 ]
  ret i32 %56
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_curve_rect_from_textbox(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 44
  %5 = load float, ptr %4, align 8, !tbaa !357
  %6 = load float, ptr %1, align 4, !tbaa !358
  %7 = fadd float %5, %6
  store float %7, ptr %2, align 4, !tbaa !360
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 45
  %9 = load float, ptr %8, align 4, !tbaa !362
  %10 = getelementptr inbounds %struct.TextBox, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !363
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 40
  %14 = load float, ptr %13, align 8, !tbaa !364
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  store float %15, ptr %16, align 4, !tbaa !365
  %17 = getelementptr inbounds %struct.TextBox, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !366
  %19 = fadd float %7, %18
  %20 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  store float %19, ptr %20, align 4, !tbaa !367
  %21 = getelementptr inbounds %struct.TextBox, ptr %1, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !368
  %23 = fsub float %15, %22
  %24 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  store float %23, ptr %24, align 4, !tbaa !369
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !370 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #25
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #24
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #25
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #25
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !371 {
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !372 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @calcknots(ptr nocapture noundef writeonly %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #20 !PGOFuncName !373 {
  %5 = sext i16 %2 to i32
  %6 = add i32 %5, %1
  %7 = and i16 %3, 6
  switch i16 %7, label %16 [
    i16 2, label %8
    i16 4, label %70
  ]

8:                                                ; preds = %4
  %9 = getelementptr float, ptr %0, i64 -1
  %10 = icmp slt i32 %6, 1
  br i1 %10, label %102, label %11

11:                                               ; preds = %8
  %12 = sext i32 %1 to i64
  %13 = sext i16 %2 to i64
  %14 = add nuw i32 %6, 1
  %15 = zext i32 %14 to i64
  br label %59

16:                                               ; preds = %4
  %17 = icmp sgt i32 %6, 0
  br i1 %17, label %18, label %102

18:                                               ; preds = %16
  %19 = zext nneg i32 %6 to i64
  %20 = add nuw nsw i64 %19, 3
  %21 = and i64 %20, 4294967292
  %22 = add nsw i64 %19, -1
  %23 = insertelement <4 x i64> poison, i64 %22, i64 0
  %24 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %55, %18
  %26 = phi i64 [ 0, %18 ], [ %56, %55 ]
  %27 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %18 ], [ %57, %55 ]
  %28 = trunc i64 %26 to i32
  %29 = icmp ule <4 x i64> %27, %24
  %30 = extractelement <4 x i1> %29, i64 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds float, ptr %0, i64 %26
  %33 = sitofp i32 %28 to float
  store float %33, ptr %32, align 4, !tbaa !85
  br label %34

34:                                               ; preds = %31, %25
  %35 = extractelement <4 x i1> %29, i64 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = or disjoint i64 %26, 1
  %38 = or disjoint i32 %28, 1
  %39 = getelementptr inbounds float, ptr %0, i64 %37
  %40 = sitofp i32 %38 to float
  store float %40, ptr %39, align 4, !tbaa !85
  br label %41

41:                                               ; preds = %36, %34
  %42 = extractelement <4 x i1> %29, i64 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = or disjoint i64 %26, 2
  %45 = or disjoint i32 %28, 2
  %46 = getelementptr inbounds float, ptr %0, i64 %44
  %47 = sitofp i32 %45 to float
  store float %47, ptr %46, align 4, !tbaa !85
  br label %48

48:                                               ; preds = %43, %41
  %49 = extractelement <4 x i1> %29, i64 3
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = or disjoint i64 %26, 3
  %52 = or disjoint i32 %28, 3
  %53 = getelementptr inbounds float, ptr %0, i64 %51
  %54 = sitofp i32 %52 to float
  store float %54, ptr %53, align 4, !tbaa !85
  br label %55

55:                                               ; preds = %50, %48
  %56 = add i64 %26, 4
  %57 = add <4 x i64> %27, <i64 4, i64 4, i64 4, i64 4>
  %58 = icmp eq i64 %56, %21
  br i1 %58, label %102, label %25, !llvm.loop !374

59:                                               ; preds = %11, %59
  %60 = phi i64 [ 1, %11 ], [ %68, %59 ]
  %61 = phi float [ 0.000000e+00, %11 ], [ %67, %59 ]
  %62 = getelementptr float, ptr %9, i64 %60
  store float %61, ptr %62, align 4, !tbaa !85
  %63 = icmp slt i64 %60, %13
  %64 = icmp sgt i64 %60, %12
  %65 = or i1 %63, %64
  %66 = fadd float %61, 1.000000e+00
  %67 = select i1 %65, float %61, float %66
  %68 = add nuw nsw i64 %60, 1
  %69 = icmp eq i64 %68, %15
  br i1 %69, label %102, label %59, !llvm.loop !377

70:                                               ; preds = %4
  switch i16 %2, label %100 [
    i16 4, label %76
    i16 3, label %71
  ]

71:                                               ; preds = %70
  %72 = icmp sgt i32 %6, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %71
  %74 = sext i32 %1 to i64
  %75 = zext nneg i32 %6 to i64
  br label %88

76:                                               ; preds = %70
  %77 = icmp sgt i32 %6, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %76
  %79 = zext nneg i32 %6 to i64
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i64 [ 0, %78 ], [ %86, %80 ]
  %82 = phi float [ 0x3FD5C28F60000000, %78 ], [ %85, %80 ]
  %83 = tail call float @llvm.floor.f32(float %82)
  %84 = getelementptr inbounds float, ptr %0, i64 %81
  store float %83, ptr %84, align 4, !tbaa !85
  %85 = fadd float %82, 0x3FD5555560000000
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, %79
  br i1 %87, label %102, label %80, !llvm.loop !378

88:                                               ; preds = %73, %88
  %89 = phi i64 [ 0, %73 ], [ %98, %88 ]
  %90 = phi float [ 0x3FE3333340000000, %73 ], [ %95, %88 ]
  %91 = icmp ult i64 %89, 3
  %92 = icmp sgt i64 %89, %74
  %93 = or i1 %91, %92
  %94 = fadd float %90, 5.000000e-01
  %95 = select i1 %93, float %90, float %94
  %96 = tail call float @llvm.floor.f32(float %95)
  %97 = getelementptr inbounds float, ptr %0, i64 %89
  store float %96, ptr %97, align 4, !tbaa !85
  %98 = add nuw nsw i64 %89, 1
  %99 = icmp eq i64 %98, %75
  br i1 %99, label %102, label %88, !llvm.loop !379

100:                                              ; preds = %70
  %101 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %102

102:                                              ; preds = %88, %80, %59, %55, %71, %76, %8, %16, %100
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @makecyclicknots(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) unnamed_addr #13 !PGOFuncName !380 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = sext i16 %2 to i32
  %7 = add nsw i32 %6, -1
  %8 = icmp sgt i16 %2, 2
  %9 = add i32 %7, %1
  br i1 %8, label %10, label %34

10:                                               ; preds = %5
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds float, ptr %0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !85
  %14 = zext i32 %7 to i64
  br label %15

15:                                               ; preds = %10, %21
  %16 = phi i64 [ 1, %10 ], [ %22, %21 ]
  %17 = sub nsw i64 %11, %16
  %18 = getelementptr inbounds float, ptr %0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !85
  %20 = fcmp une float %13, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %14
  br i1 %23, label %27, label %15, !llvm.loop !381

24:                                               ; preds = %15
  %25 = trunc i64 %16 to i32
  %26 = icmp eq i32 %7, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %24
  %28 = add nsw i32 %6, %1
  %29 = sext i32 %28 to i64
  %30 = getelementptr float, ptr %0, i64 %29
  %31 = getelementptr float, ptr %30, i64 -2
  %32 = load float, ptr %31, align 4, !tbaa !85
  %33 = fadd float %32, 1.000000e+00
  store float %33, ptr %31, align 4, !tbaa !85
  br label %34

34:                                               ; preds = %5, %24, %27
  %35 = add i32 %9, %6
  %36 = icmp slt i32 %9, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = sext i32 %9 to i64
  %39 = sext i16 %2 to i64
  %40 = shl nsw i64 %38, 2
  %41 = getelementptr i8, ptr %0, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -4
  %43 = load float, ptr %42, align 4
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi float [ %43, %37 ], [ %54, %44 ]
  %46 = phi i64 [ %39, %37 ], [ %55, %44 ]
  %47 = phi i64 [ %38, %37 ], [ %56, %44 ]
  %48 = getelementptr float, ptr %0, i64 %47
  %49 = getelementptr inbounds float, ptr %0, i64 %46
  %50 = load float, ptr %49, align 4, !tbaa !85
  %51 = getelementptr float, ptr %49, i64 -1
  %52 = load float, ptr %51, align 4, !tbaa !85
  %53 = fsub float %50, %52
  %54 = fadd float %45, %53
  store float %54, ptr %48, align 4, !tbaa !85
  %55 = add nsw i64 %46, -1
  %56 = add nsw i64 %47, 1
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %35, %57
  br i1 %58, label %59, label %44, !llvm.loop !382

59:                                               ; preds = %44, %34, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !383 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #25
  %3 = tail call float @sqrtf(float noundef %2) #24
  ret float %3
}

; Function Attrs: optsize
declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @cu_isectLL(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #9 !PGOFuncName !384 {
  %8 = load float, ptr %0, align 4, !tbaa !85
  %9 = load float, ptr %1, align 4, !tbaa !85
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = fsub float %12, %14
  %16 = load float, ptr %2, align 4, !tbaa !85
  %17 = load float, ptr %3, align 4, !tbaa !85
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !85
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !85
  %23 = fsub float %20, %22
  %24 = fneg float %18
  %25 = fmul float %23, %24
  %26 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %25)
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %89, label %28

28:                                               ; preds = %7
  %29 = fsub float %20, %12
  %30 = fsub float %8, %16
  %31 = fneg float %30
  %32 = fmul float %15, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %18, float %32)
  %34 = fneg float %33
  %35 = fdiv float %34, %26
  store float %35, ptr %4, align 4, !tbaa !85
  %36 = load float, ptr %11, align 4, !tbaa !85
  %37 = load float, ptr %13, align 4, !tbaa !85
  %38 = fsub float %36, %37
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load float, ptr %2, align 4, !tbaa !85
  %42 = load float, ptr %3, align 4, !tbaa !85
  %43 = fsub float %41, %42
  %44 = load float, ptr %1, align 4, !tbaa !85
  %45 = load float, ptr %0, align 4, !tbaa !85
  %46 = fsub float %44, %45
  %47 = tail call float @llvm.fmuladd.f32(float %35, float %46, float %45)
  %48 = fsub float %47, %41
  br label %55

49:                                               ; preds = %28
  %50 = load float, ptr %21, align 4, !tbaa !85
  %51 = load float, ptr %19, align 4, !tbaa !85
  %52 = fsub float %50, %51
  %53 = tail call float @llvm.fmuladd.f32(float %35, float %52, float %51)
  %54 = fsub float %53, %36
  br label %55

55:                                               ; preds = %49, %40
  %56 = phi float [ %54, %49 ], [ %48, %40 ]
  %57 = phi float [ %38, %49 ], [ %43, %40 ]
  %58 = fneg float %56
  %59 = fdiv float %58, %57
  store float %59, ptr %5, align 4, !tbaa !85
  %60 = load float, ptr %4, align 4, !tbaa !85
  %61 = load float, ptr %1, align 4, !tbaa !85
  %62 = load float, ptr %0, align 4, !tbaa !85
  %63 = fsub float %61, %62
  %64 = tail call float @llvm.fmuladd.f32(float %60, float %63, float %62)
  store float %64, ptr %6, align 4, !tbaa !85
  %65 = load float, ptr %4, align 4, !tbaa !85
  %66 = load float, ptr %21, align 4, !tbaa !85
  %67 = load float, ptr %19, align 4, !tbaa !85
  %68 = fsub float %66, %67
  %69 = tail call float @llvm.fmuladd.f32(float %65, float %68, float %67)
  %70 = getelementptr inbounds float, ptr %6, i64 1
  store float %69, ptr %70, align 4, !tbaa !85
  %71 = load float, ptr %4, align 4, !tbaa !85
  %72 = fcmp ult float %71, 0.000000e+00
  %73 = fcmp ugt float %71, 1.000000e+00
  %74 = or i1 %72, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %55
  %76 = load float, ptr %5, align 4, !tbaa !85
  %77 = fcmp ult float %76, 0.000000e+00
  %78 = fcmp ugt float %76, 1.000000e+00
  %79 = or i1 %77, %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = fcmp oeq float %71, 0.000000e+00
  %82 = fcmp oeq float %71, 1.000000e+00
  %83 = or i1 %81, %82
  %84 = fcmp oeq float %76, 0.000000e+00
  %85 = or i1 %83, %84
  %86 = fcmp oeq float %76, 1.000000e+00
  %87 = or i1 %86, %85
  %88 = select i1 %87, i32 1, i32 2
  br label %89

89:                                               ; preds = %80, %55, %75, %7
  %90 = phi i32 [ -1, %7 ], [ 0, %75 ], [ 0, %55 ], [ %88, %80 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @calc_bevel_sin_cos(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #21 !PGOFuncName !385 {
  %7 = insertelement <2 x float> poison, float %3, i64 0
  %8 = insertelement <2 x float> %7, float %1, i64 1
  %9 = fmul <2 x float> %8, %8
  %10 = insertelement <2 x float> poison, float %2, i64 0
  %11 = insertelement <2 x float> %10, float %0, i64 1
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %11, <2 x float> %9)
  %13 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %12)
  %14 = fcmp oeq <2 x float> %13, zeroinitializer
  %15 = extractelement <2 x i1> %14, i64 1
  %16 = extractelement <2 x float> %13, i64 1
  %17 = select i1 %15, float 1.000000e+00, float %16
  %18 = extractelement <2 x i1> %14, i64 0
  %19 = extractelement <2 x float> %13, i64 0
  %20 = select i1 %18, float 1.000000e+00, float %19
  %21 = insertelement <2 x float> poison, float %0, i64 0
  %22 = insertelement <2 x float> %21, float %1, i64 1
  %23 = insertelement <2 x float> poison, float %17, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x float> %22, %24
  %26 = insertelement <2 x float> %10, float %3, i64 1
  %27 = insertelement <2 x float> poison, float %20, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fdiv <2 x float> %26, %28
  %30 = fmul <2 x float> %25, %29
  %31 = extractelement <2 x float> %30, i64 1
  %32 = extractelement <2 x float> %25, i64 0
  %33 = extractelement <2 x float> %29, i64 0
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %31)
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp ult float %35, 1.000000e+00
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = tail call fastcc float @saacos(float noundef %34) #25
  %39 = fmul float %38, 5.000000e-01
  br label %40

40:                                               ; preds = %6, %37
  %41 = phi float [ %39, %37 ], [ 0x3FF921FB60000000, %6 ]
  %42 = tail call float @sinf(float noundef %41) #24
  %43 = fsub <2 x float> %25, %29
  %44 = extractelement <2 x float> %43, i64 0
  %45 = fcmp oeq float %44, 0.000000e+00
  %46 = extractelement <2 x float> %43, i64 1
  %47 = fcmp oeq float %46, 0.000000e+00
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = fneg float %32
  %51 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %52 = insertelement <2 x float> %51, float %50, i64 1
  br label %60

53:                                               ; preds = %40
  %54 = fmul float %46, %46
  %55 = tail call float @llvm.fmuladd.f32(float %44, float %44, float %54)
  %56 = tail call float @llvm.sqrt.f32(float %55)
  %57 = insertelement <2 x float> poison, float %56, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = fdiv <2 x float> %43, %58
  br label %60

60:                                               ; preds = %53, %49
  %61 = phi <2 x float> [ %52, %49 ], [ %59, %53 ]
  %62 = fcmp oeq float %42, 0.000000e+00
  %63 = select i1 %62, float 1.000000e+00, float %42
  %64 = extractelement <2 x float> %61, i64 1
  %65 = fneg float %64
  %66 = fdiv float %65, %63
  store float %66, ptr %4, align 4, !tbaa !85
  %67 = extractelement <2 x float> %61, i64 0
  %68 = fdiv float %67, %63
  store float %68, ptr %5, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #21 !PGOFuncName !386 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #24
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare void @bisect_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_3D_tangent(ptr noundef %0) unnamed_addr #2 !PGOFuncName !387 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  tail call fastcc void @bevel_list_calc_bisect(ptr noundef %0) #25
  tail call fastcc void @bevel_list_flip_tangents(ptr noundef %0) #25
  %5 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !159
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = sext i32 %7 to i64
  %11 = getelementptr %struct.BevPoint, ptr %5, i64 %10
  %12 = getelementptr %struct.BevPoint, ptr %11, i64 -1
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %17, %13 ], [ %7, %9 ]
  %15 = phi ptr [ %16, %13 ], [ %12, %9 ]
  %16 = phi ptr [ %21, %13 ], [ %5, %9 ]
  %17 = add nsw i32 %14, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #26
  %18 = getelementptr inbounds %struct.BevPoint, ptr %15, i64 0, i32 8
  %19 = getelementptr inbounds %struct.BevPoint, ptr %15, i64 0, i32 7
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef nonnull %19) #25
  %20 = tail call fastcc float @normalize_v3(ptr noundef nonnull %18) #25
  %21 = getelementptr inbounds %struct.BevPoint, ptr %16, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #26
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %23, label %13, !llvm.loop !388

23:                                               ; preds = %13
  %24 = load i32, ptr %6, align 8, !tbaa !159
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr %struct.BevPoint, ptr %5, i64 %27
  %29 = getelementptr %struct.BevPoint, ptr %28, i64 -1
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i32 [ %34, %30 ], [ %24, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  %33 = phi ptr [ %40, %30 ], [ %5, %26 ]
  %34 = add nsw i32 %31, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %35 = getelementptr inbounds %struct.BevPoint, ptr %32, i64 0, i32 8
  %36 = getelementptr inbounds %struct.BevPoint, ptr %32, i64 0, i32 7
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %35, ptr noundef nonnull %36) #25
  %37 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #25
  %38 = getelementptr inbounds %struct.BevPoint, ptr %32, i64 0, i32 9
  %39 = call float @tri_to_quat(ptr noundef nonnull %38, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %35) #24
  %40 = getelementptr inbounds %struct.BevPoint, ptr %33, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  %41 = icmp eq i32 %34, 0
  br i1 %41, label %42, label %30, !llvm.loop !389

42:                                               ; preds = %30, %1, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_3D_minimum_twist(ptr noundef %0) unnamed_addr #2 !PGOFuncName !390 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  tail call fastcc void @bevel_list_calc_bisect(ptr noundef %0) #25
  %6 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = sext i32 %8 to i64
  %12 = getelementptr %struct.BevPoint, ptr %6, i64 %11
  %13 = getelementptr %struct.BevPoint, ptr %12, i64 -2
  %14 = getelementptr %struct.BevPoint, ptr %12, i64 -1
  br label %15

15:                                               ; preds = %10, %28
  %16 = phi ptr [ %29, %28 ], [ %6, %10 ]
  %17 = phi ptr [ %16, %28 ], [ %14, %10 ]
  %18 = phi ptr [ %17, %28 ], [ %13, %10 ]
  %19 = phi i32 [ %20, %28 ], [ %8, %10 ]
  %20 = add nsw i32 %19, -1
  %21 = add nsw i32 %19, 3
  %22 = load i32, ptr %7, align 8, !tbaa !159
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.BevPoint, ptr %17, i64 0, i32 9
  %26 = getelementptr inbounds %struct.BevPoint, ptr %17, i64 0, i32 7
  tail call void @vec_to_quat(ptr noundef nonnull %25, ptr noundef nonnull %26, i16 noundef signext 5, i16 noundef signext 1) #24
  br label %28

27:                                               ; preds = %15
  tail call fastcc void @minimum_twist_between_two_points(ptr noundef %17, ptr noundef %18) #25
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.BevPoint, ptr %16, i64 1
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %31, label %15, !llvm.loop !391

31:                                               ; preds = %28, %1
  %32 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !159
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %74, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.make_bevel_list_3D_minimum_twist.vec_2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.make_bevel_list_3D_minimum_twist.vec_2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %36 = load i32, ptr %7, align 8, !tbaa !159
  %37 = sext i32 %36 to i64
  %38 = getelementptr %struct.BevPoint, ptr %6, i64 %37
  %39 = getelementptr %struct.BevPoint, ptr %38, i64 -1, i32 9
  call void @mul_qt_v3(ptr noundef %39, ptr noundef nonnull %3) #24
  %40 = getelementptr %struct.BevPoint, ptr %38, i64 -2, i32 9
  call void @mul_qt_v3(ptr noundef %40, ptr noundef nonnull %4) #24
  %41 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #25
  %42 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #25
  %43 = getelementptr %struct.BevPoint, ptr %38, i64 -2, i32 7
  %44 = getelementptr %struct.BevPoint, ptr %38, i64 -1, i32 7
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef %43, ptr noundef %44) #25
  %45 = call float @angle_normalized_v3v3(ptr noundef %44, ptr noundef %43) #24
  call void @axis_angle_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %5, float noundef %45) #24
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %4) #24
  %46 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %47 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  %48 = call float @angle_normalized_v3v3(ptr noundef %44, ptr noundef nonnull %5) #24
  %49 = fcmp olt float %48, 0x3FF921FB60000000
  %50 = fneg float %46
  %51 = select i1 %49, float %50, float %46
  %52 = load i32, ptr %7, align 8, !tbaa !159
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %35
  %55 = sext i32 %52 to i64
  %56 = getelementptr %struct.BevPoint, ptr %6, i64 %55
  %57 = getelementptr %struct.BevPoint, ptr %56, i64 -1
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %71, %58 ], [ %6, %54 ]
  %60 = phi ptr [ %59, %58 ], [ %57, %54 ]
  %61 = phi i32 [ %62, %58 ], [ %52, %54 ]
  %62 = add nsw i32 %61, -1
  %63 = sitofp i32 %62 to float
  %64 = load i32, ptr %7, align 8, !tbaa !159
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %63, %65
  %67 = fsub float 1.000000e+00, %66
  %68 = fmul float %51, %67
  %69 = getelementptr inbounds %struct.BevPoint, ptr %60, i64 0, i32 7
  call void @axis_angle_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %69, float noundef %68) #24
  %70 = getelementptr inbounds %struct.BevPoint, ptr %60, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %70, ptr noundef nonnull %2, ptr noundef nonnull %70) #24
  %71 = getelementptr inbounds %struct.BevPoint, ptr %59, i64 1
  %72 = icmp eq i32 %62, 0
  br i1 %72, label %73, label %58, !llvm.loop !392

73:                                               ; preds = %58, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  br label %81

74:                                               ; preds = %31
  %75 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  tail call fastcc void @minimum_twist_between_two_points(ptr noundef nonnull %6, ptr noundef nonnull %75) #25
  %76 = load i32, ptr %7, align 8, !tbaa !159
  %77 = sext i32 %76 to i64
  %78 = getelementptr %struct.BevPoint, ptr %6, i64 %77
  %79 = getelementptr %struct.BevPoint, ptr %78, i64 -1
  %80 = getelementptr %struct.BevPoint, ptr %78, i64 -2
  tail call fastcc void @minimum_twist_between_two_points(ptr noundef %79, ptr noundef %80) #25
  br label %81

81:                                               ; preds = %74, %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_bevel_list_3D_zup(ptr noundef %0) unnamed_addr #2 !PGOFuncName !393 {
  %2 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !159
  tail call fastcc void @bevel_list_calc_bisect(ptr noundef %0) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %10, %7 ], [ %3, %5 ]
  %9 = phi ptr [ %13, %7 ], [ %6, %5 ]
  %10 = add nsw i32 %8, -1
  %11 = getelementptr inbounds %struct.BevPoint, ptr %9, i64 0, i32 9
  %12 = getelementptr inbounds %struct.BevPoint, ptr %9, i64 0, i32 7
  tail call void @vec_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %12, i16 noundef signext 5, i16 noundef signext 1) #24
  %13 = getelementptr inbounds %struct.BevPoint, ptr %9, i64 1
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %15, label %7, !llvm.loop !394

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_list_smooth(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !395 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  %14 = getelementptr inbounds %struct.BevList, ptr %0, i64 3, i32 8
  br label %15

15:                                               ; preds = %9, %47
  %16 = phi i32 [ 0, %9 ], [ %48, %47 ]
  %17 = load i32, ptr %11, align 8, !tbaa !159
  %18 = sext i32 %17 to i64
  %19 = getelementptr %struct.BevPoint, ptr %10, i64 %18
  %20 = getelementptr %struct.BevPoint, ptr %19, i64 -1
  %21 = getelementptr %struct.BevPoint, ptr %19, i64 -2
  %22 = load i32, ptr %12, align 8, !tbaa !159
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = add nsw i32 %17, -2
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi ptr [ %14, %24 ], [ %10, %15 ]
  %28 = phi ptr [ %13, %24 ], [ %20, %15 ]
  %29 = phi ptr [ %10, %24 ], [ %21, %15 ]
  %30 = phi i32 [ %25, %24 ], [ %17, %15 ]
  %31 = getelementptr inbounds %struct.BevPoint, ptr %29, i64 0, i32 9
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %31) #24
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %26, %33
  %34 = phi i32 [ %37, %33 ], [ %30, %26 ]
  %35 = phi ptr [ %36, %33 ], [ %28, %26 ]
  %36 = phi ptr [ %45, %33 ], [ %27, %26 ]
  %37 = add nsw i32 %34, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.bevel_list_smooth.zaxis, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #26
  %38 = getelementptr inbounds %struct.BevPoint, ptr %36, i64 0, i32 9
  call void @interp_qt_qtqt(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %38, float noundef 5.000000e-01) #24
  %39 = call float @normalize_qt(ptr noundef nonnull %3) #24
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #24
  %40 = getelementptr inbounds %struct.BevPoint, ptr %35, i64 0, i32 7
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %40) #25
  %41 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %40) #24
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %41) #24
  %42 = call float @normalize_qt(ptr noundef nonnull %7) #24
  %43 = getelementptr inbounds %struct.BevPoint, ptr %35, i64 0, i32 9
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %43) #24
  call void @mul_qt_qtqt(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %3) #24
  call void @interp_qt_qtqt(ptr noundef nonnull %43, ptr noundef nonnull %43, ptr noundef nonnull %3, float noundef 5.000000e-01) #24
  %44 = call float @normalize_qt(ptr noundef nonnull %43) #24
  %45 = getelementptr inbounds %struct.BevPoint, ptr %36, i64 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  %46 = icmp eq i32 %37, 0
  br i1 %46, label %47, label %33, !llvm.loop !396

47:                                               ; preds = %33, %26
  %48 = add nuw nsw i32 %16, 1
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %50, label %15, !llvm.loop !397

50:                                               ; preds = %47, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_list_apply_tilt(ptr noundef %0) unnamed_addr #2 !PGOFuncName !398 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  %3 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !159
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %8 = sext i32 %4 to i64
  %9 = getelementptr %struct.BevPoint, ptr %7, i64 %8
  %10 = getelementptr %struct.BevPoint, ptr %9, i64 -1
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %4, %6 ]
  %13 = phi ptr [ %14, %11 ], [ %10, %6 ]
  %14 = phi ptr [ %21, %11 ], [ %7, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds %struct.BevPoint, ptr %13, i64 0, i32 7
  %17 = getelementptr inbounds %struct.BevPoint, ptr %13, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !221
  call void @axis_angle_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %16, float noundef %18) #24
  %19 = getelementptr inbounds %struct.BevPoint, ptr %13, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %19, ptr noundef nonnull %2, ptr noundef nonnull %19) #24
  %20 = call float @normalize_qt(ptr noundef nonnull %19) #24
  %21 = getelementptr inbounds %struct.BevPoint, ptr %14, i64 1
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %23, label %11, !llvm.loop !399

23:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_list_calc_bisect(ptr noundef %0) unnamed_addr #2 !PGOFuncName !400 {
  %2 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = icmp eq i32 %3, -1
  %5 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  br i1 %4, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sext i32 %8 to i64
  %10 = getelementptr %struct.BevPoint, ptr %5, i64 %9
  %11 = getelementptr %struct.BevPoint, ptr %10, i64 -1
  %12 = getelementptr %struct.BevPoint, ptr %10, i64 -2
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  %15 = getelementptr inbounds %struct.BevList, ptr %0, i64 3, i32 8
  %16 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !159
  %18 = add nsw i32 %17, -2
  br label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %11, %6 ], [ %14, %13 ]
  %21 = phi ptr [ %12, %6 ], [ %5, %13 ]
  %22 = phi i32 [ %8, %6 ], [ %18, %13 ]
  %23 = phi ptr [ %5, %6 ], [ %15, %13 ]
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %32, %25 ], [ %23, %19 ]
  %27 = phi i32 [ %30, %25 ], [ %22, %19 ]
  %28 = phi ptr [ %29, %25 ], [ %21, %19 ]
  %29 = phi ptr [ %26, %25 ], [ %20, %19 ]
  %30 = add nsw i32 %27, -1
  %31 = getelementptr inbounds %struct.BevPoint, ptr %29, i64 0, i32 7
  tail call void @bisect_v3_v3v3v3(ptr noundef nonnull %31, ptr noundef %28, ptr noundef %29, ptr noundef nonnull %26) #24
  %32 = getelementptr inbounds %struct.BevPoint, ptr %26, i64 1
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %25, !llvm.loop !401

34:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_list_flip_tangents(ptr noundef %0) unnamed_addr #2 !PGOFuncName !402 {
  %2 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %7 = sext i32 %3 to i64
  %8 = getelementptr %struct.BevPoint, ptr %6, i64 %7
  %9 = getelementptr %struct.BevPoint, ptr %8, i64 -2
  %10 = getelementptr %struct.BevPoint, ptr %8, i64 -1
  br label %11

11:                                               ; preds = %5, %22
  %12 = phi i32 [ %16, %22 ], [ %3, %5 ]
  %13 = phi ptr [ %14, %22 ], [ %9, %5 ]
  %14 = phi ptr [ %15, %22 ], [ %10, %5 ]
  %15 = phi ptr [ %23, %22 ], [ %6, %5 ]
  %16 = add nsw i32 %12, -1
  %17 = getelementptr inbounds %struct.BevPoint, ptr %13, i64 0, i32 8
  %18 = getelementptr inbounds %struct.BevPoint, ptr %14, i64 0, i32 8
  %19 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %18) #24
  %20 = fcmp ogt float %19, 0x3FF921FB60000000
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  tail call fastcc void @negate_v3(ptr noundef nonnull %18) #25
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct.BevPoint, ptr %15, i64 1
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %11, !llvm.loop !403

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: optsize
declare float @tri_to_quat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !404 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @minimum_twist_between_two_points(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !405 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 7
  %6 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 7
  %7 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  call void @axis_angle_to_quat(ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %7) #24
  %10 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 9
  %14 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  tail call void @copy_qt_qt(ptr noundef nonnull %13, ptr noundef nonnull %14) #24
  br label %15

15:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #9 !PGOFuncName !406 {
  %5 = load float, ptr %1, align 4, !tbaa !85
  %6 = load float, ptr %2, align 4, !tbaa !85
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !85
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !85
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !85
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @nurbList_handles_swap_select(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !407 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  br label %8

8:                                                ; preds = %5, %22
  %9 = phi i32 [ %11, %22 ], [ %3, %5 ]
  %10 = phi ptr [ %23, %22 ], [ %7, %5 ]
  %11 = add nsw i32 %9, -1
  %12 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !277
  %14 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !281
  %16 = xor i8 %15, %13
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %8
  %20 = xor i8 %13, 1
  store i8 %20, ptr %12, align 1, !tbaa !277
  %21 = xor i8 %15, 1
  store i8 %21, ptr %14, align 1, !tbaa !281
  br label %22

22:                                               ; preds = %8, %19
  %23 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 1
  %24 = icmp eq i32 %11, 0
  br i1 %24, label %25, label %8, !llvm.loop !408

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #22

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }

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
!34 = !{!35, !40, i64 266}
!35 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !43, i64 252, !43, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !44, i64 504, !43, i64 512, !43, i64 516, !43, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!45 = !{!35, !37, i64 200}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !41, i64 100}
!48 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !49, i64 224, !50, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!49 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!50 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!35, !37, i64 448}
!54 = !{!55, !41, i64 100}
!55 = !{!"VFont", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160}
!56 = !{!35, !37, i64 456}
!57 = !{!35, !37, i64 464}
!58 = !{!35, !37, i64 472}
!59 = !{!35, !37, i64 192}
!60 = !{!61, !41, i64 100}
!61 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !41, i64 220}
!62 = !{!35, !37, i64 376}
!63 = !{!64, !37, i64 16}
!64 = !{!"EditFont", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!65 = !{!64, !37, i64 24}
!66 = !{!64, !37, i64 0}
!67 = !{!64, !37, i64 8}
!68 = !{!64, !37, i64 32}
!69 = !{!70, !37, i64 16}
!70 = !{!"EditNurb", !42, i64 0, !37, i64 16, !41, i64 24, !38, i64 28}
!71 = !{!35, !37, i64 152}
!72 = !{!42, !37, i64 0}
!73 = !{!74, !37, i64 0}
!74 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!75 = distinct !{!75, !52}
!76 = !{!35, !37, i64 368}
!77 = !{!35, !37, i64 496}
!78 = !{!35, !37, i64 128}
!79 = !{!35, !37, i64 480}
!80 = !{!35, !41, i64 268}
!81 = !{!35, !41, i64 260}
!82 = !{!35, !40, i64 286}
!83 = !{!35, !40, i64 284}
!84 = !{!35, !43, i64 272}
!85 = !{!43, !43, i64 0}
!86 = !{!35, !43, i64 332}
!87 = !{!35, !40, i64 246}
!88 = !{!35, !43, i64 256}
!89 = !{!35, !40, i64 250}
!90 = !{!35, !40, i64 244}
!91 = !{!35, !38, i64 524}
!92 = !{!35, !38, i64 525}
!93 = !{!35, !41, i64 348}
!94 = !{!35, !41, i64 360}
!95 = !{!35, !41, i64 364}
!96 = !{!35, !41, i64 492}
!97 = !{!35, !41, i64 488}
!98 = !{!"curve.c:copy_v3_fl"}
!99 = distinct !{!99, !52}
!100 = !{!61, !37, i64 200}
!101 = !{!"curve.c:BLI_listbase_clear"}
!102 = distinct !{!102, !52}
!103 = !{!104, !37, i64 0}
!104 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!105 = !{!35, !37, i64 24}
!106 = !{!35, !41, i64 100}
!107 = !{!108, !37, i64 296}
!108 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !109, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !110, i64 1304, !110, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!109 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!110 = !{!"long", !38, i64 0}
!111 = !{!108, !37, i64 24}
!112 = distinct !{!112, !52}
!113 = distinct !{!113, !52}
!114 = !{!"curve.c:extern_local_curve"}
!115 = !{!74, !41, i64 28}
!116 = distinct !{!116, !52}
!117 = !{!74, !40, i64 22}
!118 = distinct !{!118, !52}
!119 = !{!74, !40, i64 16}
!120 = distinct !{!120, !52}
!121 = !{!74, !41, i64 24}
!122 = !{!74, !37, i64 72}
!123 = distinct !{!123, !52}
!124 = !{!74, !37, i64 64}
!125 = distinct !{!125, !52}
!126 = !{!108, !40, i64 136}
!127 = !{i8 0, i8 2}
!128 = !{!129, !41, i64 96}
!129 = !{!"BoundBox", !38, i64 0, !41, i64 96, !41, i64 100}
!130 = distinct !{!130, !52}
!131 = !{!108, !37, i64 264}
!132 = distinct !{!132, !52}
!133 = !{!"curve.c:copy_v3_v3"}
!134 = !{!"curve.c:zero_v3"}
!135 = distinct !{!135, !52}
!136 = distinct !{!136, !52}
!137 = distinct !{!137, !52}
!138 = !{!74, !37, i64 48}
!139 = !{!74, !37, i64 56}
!140 = !{!74, !40, i64 40}
!141 = !{!74, !40, i64 44}
!142 = !{!74, !40, i64 42}
!143 = !{!74, !40, i64 46}
!144 = !{!145, !43, i64 44}
!145 = !{!"BezTriple", !38, i64 0, !43, i64 36, !43, i64 40, !43, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !43, i64 56, !43, i64 60, !43, i64 64, !38, i64 68}
!146 = distinct !{!146, !52}
!147 = !{!148, !43, i64 28}
!148 = !{!"BPoint", !38, i64 0, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !43, i64 28, !43, i64 32}
!149 = distinct !{!149, !52}
!150 = !{!"curve.c:add_v3_v3v3"}
!151 = !{!"curve.c:sub_v3_v3v3"}
!152 = distinct !{!152, !52}
!153 = distinct !{!153, !52}
!154 = !{!"curve.c:normalize_v3"}
!155 = !{!"curve.c:cross_v3_v3v3"}
!156 = !{!"curve.c:makeknots"}
!157 = distinct !{!157, !52}
!158 = distinct !{!158, !52}
!159 = !{!41, !41, i64 0}
!160 = distinct !{!160, !52}
!161 = distinct !{!161, !52}
!162 = distinct !{!162, !52}
!163 = distinct !{!163, !52}
!164 = distinct !{!164, !52}
!165 = distinct !{!165, !52}
!166 = distinct !{!166, !52}
!167 = distinct !{!167, !52}
!168 = !{!"curve.c:basisNurb"}
!169 = distinct !{!169, !52}
!170 = distinct !{!170, !52}
!171 = distinct !{!171, !52}
!172 = distinct !{!172, !52}
!173 = distinct !{!173, !52}
!174 = !{!"curve.c:madd_v3_v3fl"}
!175 = distinct !{!175, !52}
!176 = distinct !{!176, !52}
!177 = !{!148, !43, i64 16}
!178 = !{!148, !43, i64 20}
!179 = distinct !{!179, !52}
!180 = distinct !{!180, !52}
!181 = distinct !{!181, !52}
!182 = !{!35, !40, i64 288}
!183 = !{!35, !40, i64 290}
!184 = !{!74, !40, i64 36}
!185 = !{!74, !40, i64 38}
!186 = distinct !{!186, !52}
!187 = distinct !{!187, !52}
!188 = distinct !{!188, !52}
!189 = distinct !{!189, !52}
!190 = distinct !{!190, !52}
!191 = distinct !{!191, !52}
!192 = !{!193, !40, i64 16}
!193 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!194 = !{!193, !41, i64 24}
!195 = !{!193, !40, i64 18}
!196 = !{!193, !41, i64 20}
!197 = distinct !{!197, !52}
!198 = !{!193, !37, i64 32}
!199 = distinct !{!199, !52}
!200 = distinct !{!200, !52}
!201 = distinct !{!201, !52}
!202 = distinct !{!202, !52}
!203 = !{!35, !37, i64 160}
!204 = !{!35, !43, i64 276}
!205 = !{!35, !43, i64 280}
!206 = !{!108, !37, i64 1280}
!207 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 2, !208, i64 18, i64 2, !208, i64 20, i64 4, !159, i64 24, i64 4, !159, i64 28, i64 2, !208, i64 30, i64 2, !208, i64 32, i64 8, !46, i64 40, i64 8, !46, i64 48, i64 8, !46, i64 56, i64 4, !159, i64 60, i64 4, !159, i64 64, i64 8, !46}
!208 = !{!40, !40, i64 0}
!209 = distinct !{!209, !52}
!210 = !{!193, !37, i64 0}
!211 = distinct !{!211, !52}
!212 = !{!35, !40, i64 264}
!213 = distinct !{!213, !52}
!214 = distinct !{!214, !52}
!215 = distinct !{!215, !52}
!216 = distinct !{!216, !52}
!217 = !{!74, !40, i64 20}
!218 = !{!74, !41, i64 84}
!219 = !{!220, !43, i64 24}
!220 = !{!"BevPoint", !38, i64 0, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !38, i64 36, !38, i64 48, !38, i64 60, !40, i64 76, !40, i64 78}
!221 = !{!220, !43, i64 12}
!222 = !{!220, !43, i64 16}
!223 = !{!220, !43, i64 20}
!224 = !{!220, !40, i64 76}
!225 = distinct !{!225, !52}
!226 = !{!145, !38, i64 50}
!227 = !{!145, !38, i64 49}
!228 = !{!145, !43, i64 36}
!229 = !{!220, !40, i64 78}
!230 = distinct !{!230, !52}
!231 = distinct !{!231, !52}
!232 = distinct !{!232, !52}
!233 = distinct !{!233, !52}
!234 = distinct !{!234, !52}
!235 = distinct !{!235, !52}
!236 = distinct !{!236, !52}
!237 = distinct !{!237, !52}
!238 = distinct !{!238, !52}
!239 = distinct !{!239, !52}
!240 = distinct !{!240, !52}
!241 = distinct !{!241, !52}
!242 = !{!243, !37, i64 0}
!243 = !{!"BevelSort", !37, i64 0, !43, i64 8, !41, i64 12}
!244 = !{!243, !43, i64 8}
!245 = distinct !{!245, !52}
!246 = distinct !{!246, !52}
!247 = distinct !{!247, !52}
!248 = !{!243, !41, i64 12}
!249 = !{i64 0, i64 12, !250, i64 12, i64 4, !85, i64 16, i64 4, !85, i64 20, i64 4, !85, i64 24, i64 4, !85, i64 28, i64 4, !85, i64 32, i64 4, !85, i64 36, i64 12, !250, i64 48, i64 12, !250, i64 60, i64 16, !250, i64 76, i64 2, !208, i64 78, i64 2, !208}
!250 = !{!38, !38, i64 0}
!251 = distinct !{!251, !52}
!252 = distinct !{!252, !52}
!253 = distinct !{!253, !52}
!254 = !{!35, !43, i64 252}
!255 = distinct !{!255, !52}
!256 = !{!"curve.c:len_v3v3"}
!257 = !{!"curve.c:bevlist_firstlast_direction_calc_from_bpoint"}
!258 = !{!"curve.c:alfa_bezpart"}
!259 = !{!74, !40, i64 80}
!260 = !{!74, !40, i64 82}
!261 = !{!145, !43, i64 40}
!262 = distinct !{!262, !52}
!263 = !{!"curve.c:forward_diff_bezier_cotangent"}
!264 = distinct !{!264, !52}
!265 = distinct !{!265, !52}
!266 = !{!"curve.c:vergxcobev"}
!267 = !{!"curve.c:bevelinside"}
!268 = distinct !{!268, !52}
!269 = !{!"curve.c:make_bevel_list_segment_2D"}
!270 = !{!"curve.c:make_bevel_list_2D"}
!271 = distinct !{!271, !52}
!272 = !{!220, !43, i64 28}
!273 = !{!220, !43, i64 32}
!274 = !{!"curve.c:make_bevel_list_segment_3D"}
!275 = !{!"curve.c:make_bevel_list_3D"}
!276 = !{!"curve.c:calchandleNurb_intern"}
!277 = !{!145, !38, i64 51}
!278 = !{!"curve.c:calchandlesNurb_intern"}
!279 = distinct !{!279, !52}
!280 = !{!145, !38, i64 52}
!281 = !{!145, !38, i64 53}
!282 = distinct !{!282, !52}
!283 = distinct !{!283, !52}
!284 = !{!"curve.c:len_squared_v3v3"}
!285 = distinct !{!285, !52}
!286 = distinct !{!286, !52}
!287 = distinct !{!287, !52}
!288 = distinct !{!288, !52}
!289 = distinct !{!289, !52}
!290 = distinct !{!290, !52}
!291 = distinct !{!291, !52}
!292 = !{!"curve.c:nurb_handles_calc__align_selected"}
!293 = distinct !{!293, !52}
!294 = distinct !{!294, !52}
!295 = distinct !{!295, !52}
!296 = !{!148, !40, i64 24}
!297 = distinct !{!297, !52}
!298 = distinct !{!298, !52}
!299 = !{i64 0, i64 36, !250, i64 36, i64 4, !85, i64 40, i64 4, !85, i64 44, i64 4, !85, i64 48, i64 1, !250, i64 49, i64 1, !250, i64 50, i64 1, !250, i64 51, i64 1, !250, i64 52, i64 1, !250, i64 53, i64 1, !250, i64 54, i64 1, !250, i64 55, i64 1, !250, i64 56, i64 4, !85, i64 60, i64 4, !85, i64 64, i64 4, !85, i64 68, i64 4, !250}
!300 = distinct !{!300, !52}
!301 = !{i64 0, i64 16, !250, i64 16, i64 4, !85, i64 20, i64 4, !85, i64 24, i64 2, !208, i64 26, i64 2, !208, i64 28, i64 4, !85, i64 32, i64 4, !85}
!302 = distinct !{!302, !52}
!303 = distinct !{!303, !52}
!304 = distinct !{!304, !52}
!305 = distinct !{!305, !52}
!306 = distinct !{!306, !52}
!307 = distinct !{!307, !52}
!308 = !{!"curve.c:swap_v3_v3"}
!309 = distinct !{!309, !52}
!310 = distinct !{!310, !52}
!311 = distinct !{!311, !52}
!312 = distinct !{!312, !52}
!313 = distinct !{!313, !52}
!314 = distinct !{!314, !52}
!315 = distinct !{!315, !52}
!316 = distinct !{!316, !52}
!317 = distinct !{!317, !52}
!318 = distinct !{!318, !52}
!319 = distinct !{!319, !52}
!320 = distinct !{!320, !52}
!321 = !{i32 -2147483648, i32 32768}
!322 = !{!"curve.c:max_ii"}
!323 = distinct !{!323, !52}
!324 = distinct !{!324, !52}
!325 = distinct !{!325, !52}
!326 = distinct !{!326, !52}
!327 = distinct !{!327, !52}
!328 = !{!35, !41, i64 292}
!329 = !{!35, !41, i64 296}
!330 = !{!"curve.c:BLI_listbase_is_empty"}
!331 = distinct !{!331, !52}
!332 = distinct !{!332, !52}
!333 = distinct !{!333, !52}
!334 = !{!"curve.c:add_v3_v3"}
!335 = !{!"curve.c:mul_v3_fl"}
!336 = distinct !{!336, !52}
!337 = distinct !{!337, !52}
!338 = distinct !{!338, !52}
!339 = distinct !{!339, !52}
!340 = !{!341, !41, i64 32}
!341 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !43, i64 180}
!342 = !{!341, !37, i64 40}
!343 = distinct !{!343, !52}
!344 = distinct !{!344, !52}
!345 = distinct !{!345, !52}
!346 = distinct !{!346, !52}
!347 = distinct !{!347, !52}
!348 = distinct !{!348, !52}
!349 = !{!44, !40, i64 2}
!350 = distinct !{!350, !52}
!351 = !{!74, !40, i64 18}
!352 = distinct !{!352, !52}
!353 = distinct !{!353, !52}
!354 = distinct !{!354, !52}
!355 = distinct !{!355, !52}
!356 = distinct !{!356, !52}
!357 = !{!35, !43, i64 336}
!358 = !{!359, !43, i64 0}
!359 = !{!"TextBox", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!360 = !{!361, !43, i64 0}
!361 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!362 = !{!35, !43, i64 340}
!363 = !{!359, !43, i64 4}
!364 = !{!35, !43, i64 320}
!365 = !{!361, !43, i64 12}
!366 = !{!359, !43, i64 8}
!367 = !{!361, !43, i64 4}
!368 = !{!359, !43, i64 12}
!369 = !{!361, !43, i64 8}
!370 = !{!"curve.c:normalize_v3_v3"}
!371 = !{!"curve.c:dot_v3v3"}
!372 = !{!"curve.c:mul_v3_v3fl"}
!373 = !{!"curve.c:calcknots"}
!374 = distinct !{!374, !52, !375, !376}
!375 = !{!"llvm.loop.isvectorized", i32 1}
!376 = !{!"llvm.loop.unroll.runtime.disable"}
!377 = distinct !{!377, !52}
!378 = distinct !{!378, !52}
!379 = distinct !{!379, !52}
!380 = !{!"curve.c:makecyclicknots"}
!381 = distinct !{!381, !52}
!382 = distinct !{!382, !52}
!383 = !{!"curve.c:len_v3"}
!384 = !{!"curve.c:cu_isectLL"}
!385 = !{!"curve.c:calc_bevel_sin_cos"}
!386 = !{!"curve.c:saacos"}
!387 = !{!"curve.c:make_bevel_list_3D_tangent"}
!388 = distinct !{!388, !52}
!389 = distinct !{!389, !52}
!390 = !{!"curve.c:make_bevel_list_3D_minimum_twist"}
!391 = distinct !{!391, !52}
!392 = distinct !{!392, !52}
!393 = !{!"curve.c:make_bevel_list_3D_zup"}
!394 = distinct !{!394, !52}
!395 = !{!"curve.c:bevel_list_smooth"}
!396 = distinct !{!396, !52}
!397 = distinct !{!397, !52}
!398 = !{!"curve.c:bevel_list_apply_tilt"}
!399 = distinct !{!399, !52}
!400 = !{!"curve.c:bevel_list_calc_bisect"}
!401 = distinct !{!401, !52}
!402 = !{!"curve.c:bevel_list_flip_tangents"}
!403 = distinct !{!403, !52}
!404 = !{!"curve.c:negate_v3"}
!405 = !{!"curve.c:minimum_twist_between_two_points"}
!406 = !{!"curve.c:madd_v3_v3v3fl"}
!407 = !{!"curve.c:nurbList_handles_swap_select"}
!408 = distinct !{!408, !52}
