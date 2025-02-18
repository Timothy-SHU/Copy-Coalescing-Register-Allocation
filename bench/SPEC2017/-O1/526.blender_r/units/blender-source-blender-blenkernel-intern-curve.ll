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
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.TextBox = type { float, float, float, float }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !55
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !55
  br label %29

29:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !55
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 4, !tbaa !55
  br label %37

37:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !55
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !55
  br label %45

45:                                               ; preds = %41, %37
  store ptr null, ptr %38, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !55
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %50, align 4, !tbaa !55
  br label %53

53:                                               ; preds = %49, %45
  store ptr null, ptr %46, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !61
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %58, align 4, !tbaa !61
  br label %61

61:                                               ; preds = %57, %53
  store ptr null, ptr %54, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_editfont_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 53
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %10(ptr noundef nonnull %7) #22
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %16(ptr noundef nonnull %13) #22
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %3, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %21(ptr noundef nonnull %18) #22
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %27(ptr noundef nonnull %24) #22
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.EditFont, ptr %3, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %33(ptr noundef nonnull %30) #22
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %3) #22
  store ptr null, ptr %2, align 8, !tbaa !63
  br label %36

36:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_editNurb_keyIndex_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef %6) #22
  store ptr null, ptr %2, align 8, !tbaa !70
  br label %7

7:                                                ; preds = %1, %5
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_editNurb_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %5, %34
  %9 = phi ptr [ %10, %34 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %15(ptr noundef nonnull %12) #22
  br label %16

16:                                               ; preds = %14, %8
  store ptr null, ptr %11, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %21(ptr noundef nonnull %18) #22
  br label %22

22:                                               ; preds = %20, %16
  store ptr null, ptr %17, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %27(ptr noundef nonnull %24) #22
  br label %28

28:                                               ; preds = %26, %22
  store ptr null, ptr %23, align 8, !tbaa !78
  %29 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %33(ptr noundef nonnull %30) #22
  br label %34

34:                                               ; preds = %32, %28
  store ptr null, ptr %29, align 8, !tbaa !79
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %9) #22
  %36 = icmp eq ptr %10, null
  br i1 %36, label %37, label %8, !llvm.loop !80

37:                                               ; preds = %34, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %38 = load ptr, ptr %2, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct.EditNurb, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef nonnull %40, ptr noundef null, ptr noundef %43) #22
  store ptr null, ptr %39, align 8, !tbaa !70
  br label %44

44:                                               ; preds = %37, %42
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %46 = load ptr, ptr %2, align 8, !tbaa !72
  tail call void %45(ptr noundef %46) #22
  store ptr null, ptr %2, align 8, !tbaa !72
  br label %47

47:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurbList_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3, %32
  %7 = phi ptr [ %8, %32 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %10) #22
  br label %14

14:                                               ; preds = %12, %6
  store ptr null, ptr %9, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %19(ptr noundef nonnull %16) #22
  br label %20

20:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %25(ptr noundef nonnull %22) #22
  br label %26

26:                                               ; preds = %24, %20
  store ptr null, ptr %21, align 8, !tbaa !78
  %27 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %31(ptr noundef nonnull %28) #22
  br label %32

32:                                               ; preds = %30, %26
  store ptr null, ptr %27, align 8, !tbaa !79
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %33(ptr noundef nonnull %7) #22
  %34 = icmp eq ptr %8, null
  br i1 %34, label %35, label %6, !llvm.loop !80

35:                                               ; preds = %32, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %36

36:                                               ; preds = %1, %35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1, %31
  %6 = phi ptr [ %7, %31 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef nonnull %9) #22
  br label %13

13:                                               ; preds = %11, %5
  store ptr null, ptr %8, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %18(ptr noundef nonnull %15) #22
  br label %19

19:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %24(ptr noundef nonnull %21) #22
  br label %25

25:                                               ; preds = %23, %19
  store ptr null, ptr %20, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %30(ptr noundef nonnull %27) #22
  br label %31

31:                                               ; preds = %29, %25
  store ptr null, ptr %26, align 8, !tbaa !79
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %32(ptr noundef nonnull %6) #22
  %33 = icmp eq ptr %7, null
  br i1 %33, label %34, label %5, !llvm.loop !80

34:                                               ; preds = %31, %1
  %35 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  br i1 %37, label %69, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.EditFont, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %43(ptr noundef nonnull %40) #22
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.EditFont, ptr %36, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %49(ptr noundef nonnull %46) #22
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr %36, align 8, !tbaa !67
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %54(ptr noundef nonnull %51) #22
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.EditFont, ptr %36, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %60(ptr noundef nonnull %57) #22
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.EditFont, ptr %36, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !69
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %66(ptr noundef nonnull %63) #22
  br label %67

67:                                               ; preds = %65, %61
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %68(ptr noundef nonnull %36) #22
  store ptr null, ptr %35, align 8, !tbaa !63
  br label %69

69:                                               ; preds = %34, %67
  tail call void @BKE_curve_editNurb_free(ptr noundef %0)
  %70 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %71 = load i16, ptr %70, align 2, !tbaa !34
  %72 = icmp sgt i16 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = zext nneg i16 %71 to i64
  %75 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %76

76:                                               ; preds = %86, %73
  %77 = phi i64 [ 0, %73 ], [ %87, %86 ]
  %78 = load ptr, ptr %75, align 8, !tbaa !45
  %79 = getelementptr inbounds ptr, ptr %78, i64 %77
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.ID, ptr %80, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !47
  %85 = add nsw i32 %84, -1
  store i32 %85, ptr %83, align 4, !tbaa !47
  br label %86

86:                                               ; preds = %82, %76
  store ptr null, ptr %79, align 8, !tbaa !46
  %87 = add nuw nsw i64 %77, 1
  %88 = icmp eq i64 %87, %74
  br i1 %88, label %89, label %76, !llvm.loop !51

89:                                               ; preds = %86, %69
  %90 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ID, ptr %91, i64 0, i32 6
  %95 = load i32, ptr %94, align 4, !tbaa !55
  %96 = add nsw i32 %95, -1
  store i32 %96, ptr %94, align 4, !tbaa !55
  br label %97

97:                                               ; preds = %93, %89
  store ptr null, ptr %90, align 8, !tbaa !54
  %98 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %99 = load ptr, ptr %98, align 8, !tbaa !57
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 6
  %103 = load i32, ptr %102, align 4, !tbaa !55
  %104 = add nsw i32 %103, -1
  store i32 %104, ptr %102, align 4, !tbaa !55
  br label %105

105:                                              ; preds = %101, %97
  store ptr null, ptr %98, align 8, !tbaa !57
  %106 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %107 = load ptr, ptr %106, align 8, !tbaa !58
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !55
  %112 = add nsw i32 %111, -1
  store i32 %112, ptr %110, align 4, !tbaa !55
  br label %113

113:                                              ; preds = %109, %105
  store ptr null, ptr %106, align 8, !tbaa !58
  %114 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %115 = load ptr, ptr %114, align 8, !tbaa !59
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ID, ptr %115, i64 0, i32 6
  %119 = load i32, ptr %118, align 4, !tbaa !55
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %118, align 4, !tbaa !55
  br label %121

121:                                              ; preds = %117, %113
  store ptr null, ptr %114, align 8, !tbaa !59
  %122 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !60
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  %127 = load i32, ptr %126, align 4, !tbaa !61
  %128 = add nsw i32 %127, -1
  store i32 %128, ptr %126, align 4, !tbaa !61
  br label %129

129:                                              ; preds = %121, %125
  store ptr null, ptr %122, align 8, !tbaa !60
  tail call void @BKE_free_animdata(ptr noundef %0) #22
  %130 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %134(ptr noundef nonnull %131) #22
  br label %135

135:                                              ; preds = %133, %129
  %136 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 52
  %137 = load ptr, ptr %136, align 8, !tbaa !81
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %140(ptr noundef nonnull %137) #22
  br label %141

141:                                              ; preds = %139, %135
  %142 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %143 = load ptr, ptr %142, align 8, !tbaa !82
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %146(ptr noundef nonnull %143) #22
  br label %147

147:                                              ; preds = %145, %141
  %148 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !83
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %152(ptr noundef nonnull %149) #22
  br label %153

153:                                              ; preds = %151, %147
  %154 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 59
  %155 = load ptr, ptr %154, align 8, !tbaa !84
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %158(ptr noundef nonnull %155) #22
  br label %159

159:                                              ; preds = %157, %153
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21827, ptr noundef %1) #22
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12
  store float 1.000000e+00, ptr %5, align 4, !tbaa !85
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !85
  %7 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %7, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  store i32 4166, ptr %8, align 4, !tbaa !86
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 20
  store i32 100, ptr %9, align 4, !tbaa !87
  %10 = icmp eq i32 %2, 3
  %11 = select i1 %10, i16 4, i16 12
  %12 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 28
  store i16 %11, ptr %12, align 2, !tbaa !88
  %13 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 27
  store i16 %11, ptr %13, align 4, !tbaa !89
  %14 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 24
  store float 1.000000e+00, ptr %14, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 41
  store float 1.000000e+00, ptr %15, align 4, !tbaa !91
  %16 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 38
  store float 1.000000e+00, ptr %16, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 37
  store float 1.000000e+00, ptr %17, align 4, !tbaa !93
  %18 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 40
  store float 1.000000e+00, ptr %18, align 8, !tbaa !94
  %19 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 43
  store float 0x3FA99999A0000000, ptr %19, align 4, !tbaa !95
  %20 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 15
  store i16 1, ptr %20, align 2, !tbaa !96
  %21 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 19
  store float 7.500000e-01, ptr %21, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 17
  store i16 3, ptr %22, align 2, !tbaa !98
  %23 = trunc i32 %2 to i16
  %24 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 14
  store i16 %23, ptr %24, align 4, !tbaa !99
  %25 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 65
  store float 0.000000e+00, ptr %25, align 4, !tbaa !100
  %26 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 66
  store float 1.000000e+00, ptr %26, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 67
  store i8 0, ptr %27, align 4, !tbaa !102
  %28 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 68
  store i8 0, ptr %28, align 1, !tbaa !103
  %29 = tail call ptr @BKE_boundbox_alloc_unit() #22
  %30 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !83
  %31 = icmp eq i32 %2, 4
  br i1 %31, label %32, label %58

32:                                               ; preds = %3
  %33 = tail call ptr @BKE_vfont_builtin_get() #22
  %34 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 58
  store ptr %33, ptr %34, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 57
  store ptr %33, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 56
  store ptr %33, ptr %36, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 55
  store ptr %33, ptr %37, align 8, !tbaa !54
  %38 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !55
  %40 = add nsw i32 %39, 4
  store i32 %40, ptr %38, align 4, !tbaa !55
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %42 = tail call ptr %41(i64 noundef 12, ptr noundef nonnull @.str) #22
  %43 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 52
  store ptr %42, ptr %43, align 8, !tbaa !81
  %44 = tail call ptr @BLI_strncpy(ptr noundef %42, ptr noundef nonnull @.str.1, i64 noundef 12) #22
  %45 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 47
  store i32 4, ptr %45, align 4, !tbaa !104
  %46 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 50
  store i32 4, ptr %46, align 8, !tbaa !105
  %47 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 51
  store i32 4, ptr %47, align 4, !tbaa !106
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %49 = tail call ptr %48(i64 noundef 96, ptr noundef nonnull @.str.2) #22
  %50 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 62
  store ptr %49, ptr %50, align 8, !tbaa !82
  %51 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 61
  store i32 1, ptr %51, align 4, !tbaa !107
  %52 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 60
  store i32 1, ptr %52, align 8, !tbaa !108
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %54 = tail call ptr %53(i64 noundef 4096, ptr noundef nonnull @.str.3) #22
  %55 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 59
  store ptr %54, ptr %55, align 8, !tbaa !84
  %56 = getelementptr inbounds %struct.TextBox, ptr %54, i64 0, i32 3
  store float 0.000000e+00, ptr %56, align 4, !tbaa !109
  %57 = getelementptr inbounds %struct.TextBox, ptr %54, i64 0, i32 2
  store float 0.000000e+00, ptr %57, align 4, !tbaa !111
  br label %58

58:                                               ; preds = %32, %3
  ret ptr %4
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_boundbox_alloc_unit() local_unnamed_addr #3

declare ptr @BKE_vfont_builtin_get() local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #22
  %3 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @BKE_nurbList_duplicate(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call ptr %5(ptr noundef %7) #22
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
  tail call void @id_us_plus(ptr noundef %17) #22
  %18 = add nuw nsw i64 %14, 1
  %19 = load i16, ptr %10, align 2, !tbaa !34
  %20 = sext i16 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !112

22:                                               ; preds = %13, %1
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 52
  %25 = load ptr, ptr %24, align 8, !tbaa !81
  %26 = tail call ptr %23(ptr noundef %25) #22
  %27 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 52
  store ptr %26, ptr %27, align 8, !tbaa !81
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = tail call ptr %28(ptr noundef %30) #22
  %32 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 62
  store ptr %31, ptr %32, align 8, !tbaa !82
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 59
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = tail call ptr %33(ptr noundef %35) #22
  %37 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 59
  store ptr %36, ptr %37, align 8, !tbaa !84
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = tail call ptr %38(ptr noundef %40) #22
  %42 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !83
  %43 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = tail call ptr @BKE_key_copy(ptr noundef %44) #22
  %46 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 9
  store ptr %45, ptr %46, align 8, !tbaa !60
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.Key, ptr %45, i64 0, i32 8
  store ptr %2, ptr %49, align 8, !tbaa !113
  br label %50

50:                                               ; preds = %48, %22
  %51 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 4
  store ptr null, ptr %51, align 8, !tbaa !72
  %52 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 53
  store ptr null, ptr %52, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 55
  %54 = load ptr, ptr %53, align 8, !tbaa !54
  tail call void @id_us_plus(ptr noundef %54) #22
  %55 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 56
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  tail call void @id_us_plus(ptr noundef %56) #22
  %57 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 57
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  tail call void @id_us_plus(ptr noundef %58) #22
  %59 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 58
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  tail call void @id_us_plus(ptr noundef %60) #22
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurbList_duplicate(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %4, %33
  %8 = phi ptr [ %9, %33 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %14(ptr noundef nonnull %11) #22
  br label %15

15:                                               ; preds = %13, %7
  store ptr null, ptr %10, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %17) #22
  br label %21

21:                                               ; preds = %19, %15
  store ptr null, ptr %16, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef nonnull %23) #22
  br label %27

27:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !79
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %32(ptr noundef nonnull %29) #22
  br label %33

33:                                               ; preds = %31, %27
  store ptr null, ptr %28, align 8, !tbaa !79
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %34(ptr noundef nonnull %8) #22
  %35 = icmp eq ptr %9, null
  br i1 %35, label %36, label %7, !llvm.loop !80

36:                                               ; preds = %33, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %2, %36
  %38 = load ptr, ptr %1, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %37 ]
  %42 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %41)
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %42) #22
  %43 = load ptr, ptr %41, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !llvm.loop !114

45:                                               ; preds = %40, %37
  ret void
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_make_local(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @G, align 8, !tbaa !115
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %99, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !118
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #22
  %11 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void @id_lib_extern(ptr noundef %12) #22
  %13 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @id_lib_extern(ptr noundef %14) #22
  %15 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  tail call void @id_lib_extern(ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  tail call void @id_lib_extern(ptr noundef %18) #22
  %19 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %99, label %95

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %22, %43
  %27 = phi ptr [ %46, %43 ], [ %24, %22 ]
  %28 = phi i8 [ %45, %43 ], [ 0, %22 ]
  %29 = phi i8 [ %44, %43 ], [ 0, %22 ]
  %30 = icmp eq i8 %28, 0
  %31 = icmp eq i8 %29, 0
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !123
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i8 1, i8 %29
  %42 = select i1 %40, i8 %28, i8 1
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i8 [ %29, %33 ], [ %41, %37 ]
  %45 = phi i8 [ %28, %33 ], [ %42, %37 ]
  %46 = load ptr, ptr %27, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %26, !llvm.loop !124

48:                                               ; preds = %43, %26
  %49 = phi i8 [ %29, %26 ], [ %44, %43 ]
  %50 = phi i8 [ %28, %26 ], [ %45, %43 ]
  %51 = icmp ne i8 %49, 0
  br label %52

52:                                               ; preds = %48, %22
  %53 = phi i1 [ false, %22 ], [ %51, %48 ]
  %54 = phi i8 [ 0, %22 ], [ %50, %48 ]
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #22
  %58 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  tail call void @id_lib_extern(ptr noundef %59) #22
  %60 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %61 = load ptr, ptr %60, align 8, !tbaa !57
  tail call void @id_lib_extern(ptr noundef %61) #22
  %62 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %63 = load ptr, ptr %62, align 8, !tbaa !58
  tail call void @id_lib_extern(ptr noundef %63) #22
  %64 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  tail call void @id_lib_extern(ptr noundef %65) #22
  %66 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = icmp eq ptr %67, null
  br i1 %68, label %99, label %95

69:                                               ; preds = %52
  %70 = icmp ne i8 %54, 0
  %71 = select i1 %53, i1 %70, i1 false
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = tail call ptr @BKE_curve_copy(ptr noundef %0)
  %74 = getelementptr inbounds %struct.ID, ptr %73, i64 0, i32 6
  store i32 0, ptr %74, align 4, !tbaa !118
  %75 = load ptr, ptr %3, align 8, !tbaa !117
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %75, ptr noundef %73) #22
  %76 = load ptr, ptr %23, align 8, !tbaa !46
  %77 = icmp eq ptr %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %72, %92
  %79 = phi ptr [ %93, %92 ], [ %76, %72 ]
  %80 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 19
  %81 = load ptr, ptr %80, align 8, !tbaa !119
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ID, ptr %79, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !123
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  store ptr %73, ptr %80, align 8, !tbaa !119
  %88 = load i32, ptr %74, align 4, !tbaa !118
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %74, align 4, !tbaa !118
  %90 = load i32, ptr %7, align 4, !tbaa !118
  %91 = add nsw i32 %90, -1
  store i32 %91, ptr %7, align 4, !tbaa !118
  br label %92

92:                                               ; preds = %78, %87, %83
  %93 = load ptr, ptr %79, align 8, !tbaa !46
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %78, !llvm.loop !125

95:                                               ; preds = %57, %10
  %96 = phi ptr [ %20, %10 ], [ %67, %57 ]
  %97 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %98 = load i16, ptr %97, align 2, !tbaa !34
  tail call void @extern_local_matarar(ptr noundef nonnull %96, i16 noundef signext %98) #22
  br label %99

99:                                               ; preds = %92, %95, %72, %57, %10, %69, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_curve_editNurbs_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @BKE_curve_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 4, !tbaa !99
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %9 ]
  %15 = phi i32 [ %19, %13 ], [ 2, %9 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !126
  %18 = icmp sgt i32 %17, 1
  %19 = select i1 %18, i32 3, i32 %15
  %20 = load ptr, ptr %14, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !127

22:                                               ; preds = %13
  %23 = trunc i32 %19 to i16
  br label %24

24:                                               ; preds = %5, %9, %22, %1
  %25 = phi i16 [ 4, %1 ], [ %7, %5 ], [ 2, %9 ], [ %23, %22 ]
  ret i16 %25
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_curve_curve_dimension_update(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %6 = select i1 %4, ptr %5, ptr %3
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %9 = load i32, ptr %8, align 4, !tbaa !86
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq ptr %7, null
  br i1 %11, label %14, label %13

13:                                               ; preds = %1
  br i1 %12, label %103, label %15

14:                                               ; preds = %1
  br i1 %12, label %103, label %22

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %20, %15 ], [ %7, %13 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !128
  %19 = and i16 %18, -9
  store i16 %19, ptr %17, align 2, !tbaa !128
  %20 = load ptr, ptr %16, align 8, !tbaa !74
  %21 = icmp eq ptr %20, null
  br i1 %21, label %103, label %15, !llvm.loop !129

22:                                               ; preds = %14, %100
  %23 = phi ptr [ %101, %100 ], [ %7, %14 ]
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 5
  %25 = load i16, ptr %24, align 2, !tbaa !128
  %26 = or i16 %25, 8
  store i16 %26, ptr %24, align 2, !tbaa !128
  %27 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !130
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !131
  br i1 %29, label %32, label %46

32:                                               ; preds = %22
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %40, %37 ], [ %31, %34 ]
  %39 = phi ptr [ %44, %37 ], [ %36, %34 ]
  %40 = add nsw i32 %38, -1
  %41 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 2
  store float 0.000000e+00, ptr %41, align 4, !tbaa !85
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %39, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %42, align 4, !tbaa !85
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %39, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %43, align 4, !tbaa !85
  %44 = getelementptr inbounds %struct.BezTriple, ptr %39, i64 1
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %61, label %37, !llvm.loop !132

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !126
  %49 = mul nsw i32 %48, %31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi i32 [ %57, %54 ], [ %49, %51 ]
  %56 = phi ptr [ %59, %54 ], [ %53, %51 ]
  %57 = add nsw i32 %55, -1
  %58 = getelementptr inbounds [4 x float], ptr %56, i64 0, i64 2
  store float 0.000000e+00, ptr %58, align 4, !tbaa !85
  %59 = getelementptr inbounds %struct.BPoint, ptr %56, i64 1
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %61, label %54, !llvm.loop !133

61:                                               ; preds = %54, %37, %32, %46
  %62 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 2
  %63 = load i16, ptr %62, align 8, !tbaa !130
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !131
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %100, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  %72 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 13
  %73 = load i16, ptr %72, align 4, !tbaa !134
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  %76 = zext nneg i32 %67 to i64
  %77 = getelementptr %struct.BezTriple, ptr %71, i64 %76
  %78 = getelementptr %struct.BezTriple, ptr %77, i64 -1
  %79 = select i1 %75, ptr null, ptr %78
  %80 = getelementptr inbounds %struct.BezTriple, ptr %71, i64 1
  br label %81

81:                                               ; preds = %96, %69
  %82 = phi i32 [ %67, %69 ], [ %86, %96 ]
  %83 = phi ptr [ %80, %69 ], [ %97, %96 ]
  %84 = phi ptr [ %79, %69 ], [ %85, %96 ]
  %85 = phi ptr [ %71, %69 ], [ %98, %96 ]
  %86 = add nsw i32 %82, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %85, ptr noundef %84, ptr noundef %83, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i16, ptr %72, align 4, !tbaa !134
  %90 = and i16 %89, 1
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %70, align 8, !tbaa !76
  br label %96

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 1
  br label %96

96:                                               ; preds = %94, %92, %88
  %97 = phi ptr [ %93, %92 ], [ %95, %94 ], [ null, %88 ]
  %98 = getelementptr inbounds %struct.BezTriple, ptr %85, i64 1
  %99 = icmp eq i32 %86, 0
  br i1 %99, label %100, label %81, !llvm.loop !135

100:                                              ; preds = %96, %65, %61
  %101 = load ptr, ptr %23, align 8, !tbaa !74
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %22, !llvm.loop !136

103:                                              ; preds = %15, %100, %13, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_curve_nurbs_get(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %6 = select i1 %4, ptr %5, ptr %3
  ret ptr %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nurb_test2D(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !128
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !130
  %9 = icmp eq i16 %8, 1
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !131
  br i1 %9, label %12, label %26

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !76
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
  br i1 %25, label %41, label %17, !llvm.loop !132

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !126
  %29 = mul nsw i32 %28, %11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %37, %34 ], [ %29, %31 ]
  %36 = phi ptr [ %39, %34 ], [ %33, %31 ]
  %37 = add nsw i32 %35, -1
  %38 = getelementptr inbounds [4 x float], ptr %36, i64 0, i64 2
  store float 0.000000e+00, ptr %38, align 4, !tbaa !85
  %39 = getelementptr inbounds %struct.BPoint, ptr %36, i64 1
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %34, !llvm.loop !133

41:                                               ; preds = %34, %17, %26, %12, %1
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handles_calc(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !130
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %13 = load i16, ptr %12, align 4, !tbaa !134
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  %16 = zext nneg i32 %7 to i64
  %17 = getelementptr %struct.BezTriple, ptr %11, i64 %16
  %18 = getelementptr %struct.BezTriple, ptr %17, i64 -1
  %19 = select i1 %15, ptr null, ptr %18
  %20 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 1
  br label %21

21:                                               ; preds = %36, %9
  %22 = phi i32 [ %7, %9 ], [ %26, %36 ]
  %23 = phi ptr [ %20, %9 ], [ %37, %36 ]
  %24 = phi ptr [ %19, %9 ], [ %25, %36 ]
  %25 = phi ptr [ %11, %9 ], [ %38, %36 ]
  %26 = add nsw i32 %22, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %25, ptr noundef %24, ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i16, ptr %12, align 4, !tbaa !134
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 8, !tbaa !76
  br label %36

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 1
  br label %36

36:                                               ; preds = %34, %32, %28
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ], [ null, %28 ]
  %38 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 1
  %39 = icmp eq i32 %26, 0
  br i1 %39, label %40, label %21, !llvm.loop !135

40:                                               ; preds = %36, %1, %5
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_curve_type_test(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 14
  %9 = load i16, ptr %8, align 4, !tbaa !99
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %22, %15 ], [ %13, %11 ]
  %17 = phi i32 [ %21, %15 ], [ 2, %11 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !126
  %20 = icmp sgt i32 %19, 1
  %21 = select i1 %20, i32 3, i32 %17
  %22 = load ptr, ptr %16, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !127

24:                                               ; preds = %15
  %25 = trunc i32 %21 to i16
  br label %26

26:                                               ; preds = %7, %11, %24, %1
  %27 = phi i16 [ 4, %1 ], [ %9, %7 ], [ 2, %11 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  store i16 %27, ptr %28, align 8, !tbaa !137
  %29 = icmp eq i16 %27, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @BKE_curve_curve_dimension_update(ptr noundef %3)
  br label %31

31:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_boundbox_calc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = tail call ptr %11(i64 noundef 104, ptr noundef nonnull @.str.4) #22
  store ptr %12, ptr %7, align 8, !tbaa !83
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %7, align 8, !tbaa !83
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr %6, ptr %1
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 4, !tbaa !85
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %19, align 4, !tbaa !85
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !85
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %20, align 4, !tbaa !85
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %21, align 4, !tbaa !85
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !85
  %22 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %26 = select i1 %24, ptr %25, ptr %23
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %13, %29
  %30 = phi ptr [ %31, %29 ], [ %27, %13 ]
  call void @BKE_nurb_minmax(ptr noundef nonnull %30, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !138

33:                                               ; preds = %29, %13
  %34 = load ptr, ptr %26, align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store float -1.000000e+00, ptr %18, align 4, !tbaa !85
  store float -1.000000e+00, ptr %19, align 4, !tbaa !85
  store float -1.000000e+00, ptr %4, align 4, !tbaa !85
  store float 1.000000e+00, ptr %20, align 4, !tbaa !85
  store float 1.000000e+00, ptr %21, align 4, !tbaa !85
  store float 1.000000e+00, ptr %5, align 4, !tbaa !85
  br label %37

37:                                               ; preds = %36, %33
  call void @mid_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  br i1 %17, label %53, label %38

38:                                               ; preds = %37
  %39 = load float, ptr %5, align 4, !tbaa !85
  %40 = load float, ptr %4, align 4, !tbaa !85
  %41 = fsub float %39, %40
  %42 = fmul float %41, 5.000000e-01
  store float %42, ptr %2, align 4, !tbaa !85
  %43 = getelementptr inbounds float, ptr %2, i64 1
  %44 = load float, ptr %21, align 4, !tbaa !85
  %45 = load float, ptr %19, align 4, !tbaa !85
  %46 = fsub float %44, %45
  %47 = fmul float %46, 5.000000e-01
  store float %47, ptr %43, align 4, !tbaa !85
  %48 = getelementptr inbounds float, ptr %2, i64 2
  %49 = load float, ptr %20, align 4, !tbaa !85
  %50 = load float, ptr %18, align 4, !tbaa !85
  %51 = fsub float %49, %50
  %52 = fmul float %51, 5.000000e-01
  store float %52, ptr %48, align 4, !tbaa !85
  br label %53

53:                                               ; preds = %37, %38
  call void @BKE_boundbox_init_from_minmax(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %54 = getelementptr inbounds %struct.BoundBox, ptr %14, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !139
  %56 = and i32 %55, -3
  store i32 %56, ptr %54, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_curve_minmax(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %9 = select i1 %7, ptr %8, ptr %6
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %4 ]
  tail call void @BKE_nurb_minmax(ptr noundef nonnull %13, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3)
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !138

16:                                               ; preds = %12, %4
  %17 = load ptr, ptr %9, align 8, !tbaa !73
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  ret i8 %19
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_boundbox_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BoundBox, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !139
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %13, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @BKE_curve_boundbox_calc(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %19 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 15
  %20 = load i16, ptr %19, align 2, !tbaa !96
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18, %38
  %24 = phi i64 [ %39, %38 ], [ 0, %18 ]
  %25 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !85
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = fcmp ogt float %26, 0.000000e+00
  %30 = fcmp olt float %26, 0x3EE4F8B580000000
  %31 = and i1 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = fcmp olt float %26, 0.000000e+00
  %34 = fcmp ogt float %26, 0xBEE4F8B580000000
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28, %23
  %37 = phi float [ 1.000000e+00, %23 ], [ 0x3EE4F8B580000000, %28 ], [ 0xBEE4F8B580000000, %32 ]
  store float %37, ptr %25, align 4, !tbaa !85
  br label %38

38:                                               ; preds = %36, %32
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %23, !llvm.loop !142

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 11
  %43 = load float, ptr %2, align 4, !tbaa !85
  store float %43, ptr %42, align 4, !tbaa !85
  %44 = getelementptr inbounds float, ptr %2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !85
  %46 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 11, i64 1
  store float %45, ptr %46, align 4, !tbaa !85
  %47 = getelementptr inbounds float, ptr %2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !85
  %49 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 11, i64 2
  store float %48, ptr %49, align 4, !tbaa !85
  %50 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 12
  %51 = load float, ptr %3, align 4, !tbaa !85
  store float %51, ptr %50, align 4, !tbaa !85
  %52 = getelementptr inbounds float, ptr %3, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !85
  %54 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 12, i64 1
  store float %53, ptr %54, align 4, !tbaa !85
  %55 = getelementptr inbounds float, ptr %3, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !85
  %57 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 12, i64 2
  store float %56, ptr %57, align 4, !tbaa !85
  %58 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 13
  store float 0.000000e+00, ptr %58, align 4, !tbaa !85
  %59 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 13, i64 1
  store float 0.000000e+00, ptr %59, align 4, !tbaa !85
  %60 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 13, i64 2
  store float 0.000000e+00, ptr %60, align 4, !tbaa !85
  br label %61

61:                                               ; preds = %18, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  br label %62

62:                                               ; preds = %61, %13
  %63 = load ptr, ptr %10, align 8, !tbaa !83
  br label %64

64:                                               ; preds = %1, %62
  %65 = phi ptr [ %63, %62 ], [ %7, %1 ]
  ret ptr %65
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_texspace_calc(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @BKE_curve_boundbox_calc(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !96
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %46, label %8

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
  br i1 %25, label %26, label %8, !llvm.loop !142

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11
  %28 = load float, ptr %2, align 4, !tbaa !85
  store float %28, ptr %27, align 4, !tbaa !85
  %29 = getelementptr inbounds float, ptr %2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !85
  %31 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11, i64 1
  store float %30, ptr %31, align 4, !tbaa !85
  %32 = getelementptr inbounds float, ptr %2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !85
  %34 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11, i64 2
  store float %33, ptr %34, align 4, !tbaa !85
  %35 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12
  %36 = load float, ptr %3, align 4, !tbaa !85
  store float %36, ptr %35, align 4, !tbaa !85
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !85
  %39 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12, i64 1
  store float %38, ptr %39, align 4, !tbaa !85
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !85
  %42 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12, i64 2
  store float %41, ptr %42, align 4, !tbaa !85
  %43 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13
  store float 0.000000e+00, ptr %43, align 4, !tbaa !85
  %44 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13, i64 1
  store float 0.000000e+00, ptr %44, align 4, !tbaa !85
  %45 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13, i64 2
  store float 0.000000e+00, ptr %45, align 4, !tbaa !85
  br label %46

46:                                               ; preds = %26, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_texspace_get(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BoundBox, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !139
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @BKE_curve_boundbox_calc(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %16 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 15
  %17 = load i16, ptr %16, align 2, !tbaa !96
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %15, %35
  %21 = phi i64 [ %36, %35 ], [ 0, %15 ]
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = fcmp ogt float %23, 0.000000e+00
  %27 = fcmp olt float %23, 0x3EE4F8B580000000
  %28 = and i1 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = fcmp olt float %23, 0.000000e+00
  %31 = fcmp ogt float %23, 0xBEE4F8B580000000
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25, %20
  %34 = phi float [ 1.000000e+00, %20 ], [ 0x3EE4F8B580000000, %25 ], [ 0xBEE4F8B580000000, %29 ]
  store float %34, ptr %22, align 4, !tbaa !85
  br label %35

35:                                               ; preds = %33, %29
  %36 = add nuw nsw i64 %21, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %20, !llvm.loop !142

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11
  %40 = load float, ptr %5, align 4, !tbaa !85
  store float %40, ptr %39, align 4, !tbaa !85
  %41 = getelementptr inbounds float, ptr %5, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11, i64 1
  store float %42, ptr %43, align 4, !tbaa !85
  %44 = getelementptr inbounds float, ptr %5, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !85
  %46 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11, i64 2
  store float %45, ptr %46, align 4, !tbaa !85
  %47 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12
  %48 = load float, ptr %6, align 4, !tbaa !85
  store float %48, ptr %47, align 4, !tbaa !85
  %49 = getelementptr inbounds float, ptr %6, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !85
  %51 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12, i64 1
  store float %50, ptr %51, align 4, !tbaa !85
  %52 = getelementptr inbounds float, ptr %6, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !85
  %54 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12, i64 2
  store float %53, ptr %54, align 4, !tbaa !85
  %55 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13
  store float 0.000000e+00, ptr %55, align 4, !tbaa !85
  %56 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13, i64 1
  store float 0.000000e+00, ptr %56, align 4, !tbaa !85
  %57 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13, i64 2
  store float 0.000000e+00, ptr %57, align 4, !tbaa !85
  br label %58

58:                                               ; preds = %15, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %59

59:                                               ; preds = %58, %10
  %60 = icmp eq ptr %1, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11
  %63 = load float, ptr %62, align 4, !tbaa !85
  store float %63, ptr %1, align 4, !tbaa !85
  %64 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !85
  %66 = getelementptr inbounds float, ptr %1, i64 1
  store float %65, ptr %66, align 4, !tbaa !85
  %67 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 11, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !85
  %69 = getelementptr inbounds float, ptr %1, i64 2
  store float %68, ptr %69, align 4, !tbaa !85
  br label %70

70:                                               ; preds = %61, %59
  %71 = icmp eq ptr %2, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13
  %74 = load float, ptr %73, align 4, !tbaa !85
  store float %74, ptr %2, align 4, !tbaa !85
  %75 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !85
  %77 = getelementptr inbounds float, ptr %2, i64 1
  store float %76, ptr %77, align 4, !tbaa !85
  %78 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 13, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !85
  %80 = getelementptr inbounds float, ptr %2, i64 2
  store float %79, ptr %80, align 4, !tbaa !85
  br label %81

81:                                               ; preds = %72, %70
  %82 = icmp eq ptr %3, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12
  %85 = load float, ptr %84, align 4, !tbaa !85
  store float %85, ptr %3, align 4, !tbaa !85
  %86 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !85
  %88 = getelementptr inbounds float, ptr %3, i64 1
  store float %87, ptr %88, align 4, !tbaa !85
  %89 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 12, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !85
  %91 = getelementptr inbounds float, ptr %3, i64 2
  store float %90, ptr %91, align 4, !tbaa !85
  br label %92

92:                                               ; preds = %83, %81
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nurbList_index_get_co(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds float, ptr %2, i64 1
  %5 = getelementptr inbounds float, ptr %2, i64 2
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = getelementptr inbounds float, ptr %2, i64 2
  br label %8

8:                                                ; preds = %51, %3
  %9 = phi ptr [ %0, %3 ], [ %11, %51 ]
  %10 = phi i32 [ 0, %3 ], [ %52, %51 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !130
  %16 = icmp eq i16 %15, 1
  %17 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !131
  br i1 %16, label %19, label %32

19:                                               ; preds = %13
  %20 = sub nsw i32 %1, %10
  %21 = icmp slt i32 %20, %18
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = sext i32 %20 to i64
  %26 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !85
  store float %27, ptr %2, align 4, !tbaa !85
  %28 = getelementptr inbounds float, ptr %26, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !85
  store float %29, ptr %6, align 4, !tbaa !85
  %30 = getelementptr inbounds float, ptr %26, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !85
  store float %31, ptr %7, align 4, !tbaa !85
  br label %51

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !126
  %35 = mul nsw i32 %34, %18
  %36 = sub nsw i32 %1, %10
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds %struct.BPoint, ptr %40, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !85
  store float %43, ptr %2, align 4, !tbaa !85
  %44 = getelementptr inbounds float, ptr %42, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !85
  store float %45, ptr %4, align 4, !tbaa !85
  %46 = getelementptr inbounds float, ptr %42, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !85
  store float %47, ptr %5, align 4, !tbaa !85
  br label %51

48:                                               ; preds = %32, %19
  %49 = phi i32 [ %18, %19 ], [ %35, %32 ]
  %50 = add nsw i32 %49, %10
  br label %51

51:                                               ; preds = %48, %38, %22
  %52 = phi i32 [ %10, %22 ], [ %50, %48 ], [ %10, %38 ]
  %53 = phi i1 [ false, %22 ], [ true, %48 ], [ false, %38 ]
  br i1 %53, label %8, label %54, !llvm.loop !143

54:                                               ; preds = %8, %51
  %55 = phi i8 [ 1, %51 ], [ 0, %8 ]
  ret i8 %55
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_nurbList_verts_count(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %26
  %5 = phi ptr [ %28, %26 ], [ %2, %1 ]
  %6 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !131
  %13 = mul nsw i32 %12, 3
  %14 = add nsw i32 %13, %6
  br label %26

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !131
  %22 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !126
  %24 = mul nsw i32 %23, %21
  %25 = add nsw i32 %24, %6
  br label %26

26:                                               ; preds = %15, %19, %10
  %27 = phi i32 [ %14, %10 ], [ %25, %19 ], [ %6, %15 ]
  %28 = load ptr, ptr %5, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %4, !llvm.loop !144

30:                                               ; preds = %26, %1
  %31 = phi i32 [ 0, %1 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_nurbList_verts_count_without_handles(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %27, %25 ], [ %2, %1 ]
  %6 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !131
  %13 = add nsw i32 %12, %6
  br label %25

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !126
  %23 = mul nsw i32 %22, %20
  %24 = add nsw i32 %23, %6
  br label %25

25:                                               ; preds = %14, %18, %10
  %26 = phi i32 [ %13, %10 ], [ %24, %18 ], [ %6, %14 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !llvm.loop !145

29:                                               ; preds = %25, %1
  %30 = phi i32 [ 0, %1 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %5) #22
  br label %9

9:                                                ; preds = %7, %3
  store ptr null, ptr %4, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %14(ptr noundef nonnull %11) #22
  br label %15

15:                                               ; preds = %13, %9
  store ptr null, ptr %10, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %17) #22
  br label %21

21:                                               ; preds = %19, %15
  store ptr null, ptr %16, align 8, !tbaa !78
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef nonnull %23) #22
  br label %27

27:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !79
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %28(ptr noundef nonnull %0) #22
  br label %29

29:                                               ; preds = %1, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_nurb_duplicate(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str.5) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !131
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 72
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.6) #22
  %16 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 18
  store ptr %15, ptr %16, align 8, !tbaa !76
  %17 = load ptr, ptr %6, align 8, !tbaa !76
  %18 = load i32, ptr %11, align 8, !tbaa !131
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %17, i64 %20, i1 false)
  br label %85

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !126
  %26 = mul nsw i32 %25, %23
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %28 = sext i32 %26 to i64
  %29 = mul nsw i64 %28, 36
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @.str.7) #22
  %31 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 17
  store ptr %30, ptr %31, align 8, !tbaa !77
  %32 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %33, i64 %29, i1 false)
  %34 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 16
  %35 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 15
  %36 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %41 = load i16, ptr %40, align 8, !tbaa !146
  %42 = sext i16 %41 to i32
  %43 = load i32, ptr %22, align 8, !tbaa !131
  %44 = add nsw i32 %43, %42
  %45 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %46 = load i16, ptr %45, align 4, !tbaa !134
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
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.8) #22
  store ptr %57, ptr %35, align 8, !tbaa !78
  %58 = load ptr, ptr %36, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %57, ptr align 4 %58, i64 %56, i1 false)
  br label %59

59:                                               ; preds = %39, %53, %21
  %60 = load i32, ptr %24, align 4, !tbaa !126
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %64 = load ptr, ptr %63, align 8, !tbaa !79
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %68 = load i16, ptr %67, align 2, !tbaa !147
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %60, %69
  %71 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %72 = load i16, ptr %71, align 2, !tbaa !148
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
  %83 = tail call ptr %80(i64 noundef %82, ptr noundef nonnull @.str.9) #22
  store ptr %83, ptr %34, align 8, !tbaa !79
  %84 = load ptr, ptr %63, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 4 %84, i64 %82, i1 false)
  br label %85

85:                                               ; preds = %9, %66, %79, %62, %59, %1
  %86 = phi ptr [ null, %1 ], [ %3, %59 ], [ %3, %62 ], [ %3, %79 ], [ %3, %66 ], [ %3, %9 ]
  ret ptr %86
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_nurb_copy(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 88, ptr noundef nonnull @.str.10) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %6 = icmp eq i32 %1, 1
  %7 = select i1 %6, i32 1, i32 %2
  %8 = select i1 %6, i32 %2, i32 %1
  %9 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  store i32 %8, ptr %9, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  store i32 %7, ptr %10, align 4, !tbaa !126
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %15 = mul nsw i32 %8, %7
  %16 = sext i32 %15 to i64
  br i1 %13, label %21, label %17

17:                                               ; preds = %3
  %18 = mul nsw i64 %16, 72
  %19 = tail call ptr %14(i64 noundef %18, ptr noundef nonnull @.str.11) #22
  %20 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  store ptr %19, ptr %20, align 8, !tbaa !76
  br label %25

21:                                               ; preds = %3
  %22 = mul nsw i64 %16, 36
  %23 = tail call ptr %14(i64 noundef %22, ptr noundef nonnull @.str.12) #22
  %24 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  store ptr %23, ptr %24, align 8, !tbaa !77
  br label %25

25:                                               ; preds = %21, %17
  ret ptr %5
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_minmax(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !130
  %8 = icmp eq i16 %7, 1
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !131
  br i1 %8, label %11, label %48

11:                                               ; preds = %4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %87, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i8 %1, 0
  %17 = getelementptr inbounds float, ptr %5, i64 1
  %18 = getelementptr inbounds float, ptr %5, i64 2
  br label %19

19:                                               ; preds = %13, %43
  %20 = phi i32 [ %10, %13 ], [ %22, %43 ]
  %21 = phi ptr [ %15, %13 ], [ %46, %43 ]
  %22 = add nsw i32 %20, -1
  br i1 %16, label %41, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !149
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !85
  %28 = fadd float %25, %27
  store float %28, ptr %5, align 4, !tbaa !85
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !85
  %31 = fadd float %25, %30
  store float %31, ptr %17, align 4, !tbaa !85
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !85
  %34 = fadd float %25, %33
  store float %34, ptr %18, align 4, !tbaa !85
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #22
  %35 = load float, ptr %26, align 4, !tbaa !85
  %36 = fsub float %35, %25
  store float %36, ptr %5, align 4, !tbaa !85
  %37 = load float, ptr %29, align 4, !tbaa !85
  %38 = fsub float %37, %25
  store float %38, ptr %17, align 4, !tbaa !85
  %39 = load float, ptr %32, align 4, !tbaa !85
  %40 = fsub float %39, %25
  store float %40, ptr %18, align 4, !tbaa !85
  br label %43

41:                                               ; preds = %19
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  br label %43

43:                                               ; preds = %41, %23
  %44 = phi ptr [ %42, %41 ], [ %5, %23 ]
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %44) #22
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef %21) #22
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %45) #22
  %46 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %47 = icmp eq i32 %22, 0
  br i1 %47, label %87, label %19, !llvm.loop !151

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 4, !tbaa !126
  %51 = mul nsw i32 %50, %10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !77
  %56 = icmp ne i8 %1, 0
  %57 = getelementptr inbounds float, ptr %5, i64 1
  %58 = getelementptr inbounds float, ptr %5, i64 2
  br label %59

59:                                               ; preds = %53, %84
  %60 = phi i32 [ %51, %53 ], [ %62, %84 ]
  %61 = phi ptr [ %55, %53 ], [ %85, %84 ]
  %62 = add nsw i32 %60, -1
  %63 = load i32, ptr %49, align 4, !tbaa !126
  %64 = icmp eq i32 %63, 1
  %65 = and i1 %56, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.BPoint, ptr %61, i64 0, i32 5
  %68 = load float, ptr %67, align 4, !tbaa !152
  %69 = load float, ptr %61, align 4, !tbaa !85
  %70 = fadd float %68, %69
  store float %70, ptr %5, align 4, !tbaa !85
  %71 = getelementptr inbounds float, ptr %61, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !85
  %73 = fadd float %68, %72
  store float %73, ptr %57, align 4, !tbaa !85
  %74 = getelementptr inbounds float, ptr %61, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !85
  %76 = fadd float %68, %75
  store float %76, ptr %58, align 4, !tbaa !85
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #22
  %77 = load float, ptr %61, align 4, !tbaa !85
  %78 = fsub float %77, %68
  store float %78, ptr %5, align 4, !tbaa !85
  %79 = load float, ptr %71, align 4, !tbaa !85
  %80 = fsub float %79, %68
  store float %80, ptr %57, align 4, !tbaa !85
  %81 = load float, ptr %74, align 4, !tbaa !85
  %82 = fsub float %81, %68
  store float %82, ptr %58, align 4, !tbaa !85
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #22
  br label %84

83:                                               ; preds = %59
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef %61) #22
  br label %84

84:                                               ; preds = %83, %66
  %85 = getelementptr inbounds %struct.BPoint, ptr %61, i64 1
  %86 = icmp eq i32 %62, 0
  br i1 %86, label %87, label %59, !llvm.loop !154

87:                                               ; preds = %84, %43, %48, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_points_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = add nsw i32 %7, %1
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 36
  %11 = tail call ptr %3(ptr noundef %5, i64 noundef %10, ptr noundef nonnull @__func__.BKE_nurb_points_add) #22
  store ptr %11, ptr %4, align 8, !tbaa !77
  %12 = load i32, ptr %6, align 8, !tbaa !131
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
  store float 1.000000e+00, ptr %20, align 4, !tbaa !152
  %21 = add nuw nsw i32 %18, 1
  %22 = getelementptr inbounds %struct.BPoint, ptr %19, i64 1
  %23 = icmp eq i32 %21, %1
  br i1 %23, label %24, label %17, !llvm.loop !155

24:                                               ; preds = %17, %2
  %25 = add nsw i32 %12, %1
  store i32 %25, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_bezierPoints_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = add nsw i32 %7, %1
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 72
  %11 = tail call ptr %3(ptr noundef %5, i64 noundef %10, ptr noundef nonnull @__func__.BKE_nurb_bezierPoints_add) #22
  store ptr %11, ptr %4, align 8, !tbaa !76
  %12 = load i32, ptr %6, align 8, !tbaa !131
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
  store float 1.000000e+00, ptr %20, align 4, !tbaa !149
  %21 = add nuw nsw i32 %18, 1
  %22 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %23 = icmp eq i32 %21, %1
  br i1 %23, label %24, label %17, !llvm.loop !156

24:                                               ; preds = %17, %2
  %25 = add nsw i32 %12, %1
  store i32 %25, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bezt_get_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BezTriple, ptr %4, i64 %7
  %9 = getelementptr %struct.BezTriple, ptr %8, i64 -1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %13 = load i16, ptr %12, align 4, !tbaa !134
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bpoint_get_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BPoint, ptr %4, i64 %7
  %9 = getelementptr %struct.BPoint, ptr %8, i64 -1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %13 = load i16, ptr %12, align 4, !tbaa !134
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bezt_get_prev(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %8 = load i16, ptr %7, align 4, !tbaa !134
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = sext i32 %13 to i64
  %15 = getelementptr %struct.BezTriple, ptr %4, i64 %14
  %16 = getelementptr %struct.BezTriple, ptr %15, i64 -1
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 -1
  br label %19

19:                                               ; preds = %6, %11, %17
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_nurb_bpoint_get_prev(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %8 = load i16, ptr %7, align 4, !tbaa !134
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = sext i32 %13 to i64
  %15 = getelementptr %struct.BPoint, ptr %4, i64 %14
  %16 = getelementptr %struct.BPoint, ptr %15, i64 -1
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BPoint, ptr %1, i64 -1
  br label %19

19:                                               ; preds = %6, %11, %17
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BKE_nurb_bezt_calc_normal(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %5 = load float, ptr %1, align 4, !tbaa !85
  %6 = load float, ptr %4, align 4, !tbaa !85
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !85
  %20 = fsub float %6, %19
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !85
  %23 = fsub float %11, %22
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !85
  %26 = fsub float %16, %25
  %27 = fmul float %12, %12
  %28 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = tail call float @sqrtf(float noundef %29) #22
  %33 = fdiv float 1.000000e+00, %32
  %34 = fmul float %7, %33
  %35 = fmul float %12, %33
  %36 = fmul float %17, %33
  br label %37

37:                                               ; preds = %3, %31
  %38 = phi float [ %35, %31 ], [ 0.000000e+00, %3 ]
  %39 = phi float [ %34, %31 ], [ 0.000000e+00, %3 ]
  %40 = phi float [ %36, %31 ], [ 0.000000e+00, %3 ]
  %41 = fmul float %23, %23
  %42 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %42)
  %44 = fcmp ogt float %43, 0x38AA95A5C0000000
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = tail call float @sqrtf(float noundef %43) #22
  %47 = fdiv float 1.000000e+00, %46
  %48 = fmul float %20, %47
  %49 = fmul float %23, %47
  %50 = fmul float %26, %47
  br label %51

51:                                               ; preds = %37, %45
  %52 = phi float [ %49, %45 ], [ 0.000000e+00, %37 ]
  %53 = phi float [ %48, %45 ], [ 0.000000e+00, %37 ]
  %54 = phi float [ %50, %45 ], [ 0.000000e+00, %37 ]
  %55 = fadd float %39, %53
  store float %55, ptr %2, align 4, !tbaa !85
  %56 = fadd float %38, %52
  %57 = getelementptr inbounds float, ptr %2, i64 1
  store float %56, ptr %57, align 4, !tbaa !85
  %58 = fadd float %40, %54
  %59 = getelementptr inbounds float, ptr %2, i64 2
  store float %58, ptr %59, align 4, !tbaa !85
  %60 = fmul float %56, %56
  %61 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = tail call float @sqrtf(float noundef %62) #22
  %66 = fdiv float 1.000000e+00, %65
  %67 = load float, ptr %2, align 4, !tbaa !85
  %68 = fmul float %67, %66
  store float %68, ptr %2, align 4, !tbaa !85
  %69 = load float, ptr %57, align 4, !tbaa !85
  %70 = fmul float %66, %69
  store float %70, ptr %57, align 4, !tbaa !85
  %71 = load float, ptr %59, align 4, !tbaa !85
  %72 = fmul float %66, %71
  br label %74

73:                                               ; preds = %51
  store float 0.000000e+00, ptr %2, align 4, !tbaa !85
  store float 0.000000e+00, ptr %57, align 4, !tbaa !85
  br label %74

74:                                               ; preds = %64, %73
  %75 = phi float [ 0.000000e+00, %73 ], [ %72, %64 ]
  store float %75, ptr %59, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_bezt_calc_plane(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %5 = load float, ptr %1, align 4, !tbaa !85
  %6 = load float, ptr %4, align 4, !tbaa !85
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !85
  %20 = fsub float %6, %19
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !85
  %23 = fsub float %11, %22
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !85
  %26 = fsub float %16, %25
  %27 = fmul float %12, %12
  %28 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = tail call float @sqrtf(float noundef %29) #22
  %33 = fdiv float 1.000000e+00, %32
  %34 = fmul float %7, %33
  %35 = fmul float %12, %33
  %36 = fmul float %17, %33
  br label %37

37:                                               ; preds = %3, %31
  %38 = phi float [ %34, %31 ], [ 0.000000e+00, %3 ]
  %39 = phi float [ %35, %31 ], [ 0.000000e+00, %3 ]
  %40 = phi float [ %36, %31 ], [ 0.000000e+00, %3 ]
  %41 = fmul float %23, %23
  %42 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %42)
  %44 = fcmp ogt float %43, 0x38AA95A5C0000000
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = tail call float @sqrtf(float noundef %43) #22
  %47 = fdiv float 1.000000e+00, %46
  %48 = fmul float %20, %47
  %49 = fmul float %23, %47
  %50 = fmul float %26, %47
  br label %51

51:                                               ; preds = %37, %45
  %52 = phi float [ %48, %45 ], [ 0.000000e+00, %37 ]
  %53 = phi float [ %49, %45 ], [ 0.000000e+00, %37 ]
  %54 = phi float [ %50, %45 ], [ 0.000000e+00, %37 ]
  %55 = fneg float %40
  %56 = fmul float %53, %55
  %57 = tail call float @llvm.fmuladd.f32(float %39, float %54, float %56)
  store float %57, ptr %2, align 4, !tbaa !85
  %58 = fneg float %38
  %59 = fmul float %54, %58
  %60 = tail call float @llvm.fmuladd.f32(float %40, float %52, float %59)
  %61 = getelementptr inbounds float, ptr %2, i64 1
  store float %60, ptr %61, align 4, !tbaa !85
  %62 = fneg float %39
  %63 = fmul float %52, %62
  %64 = tail call float @llvm.fmuladd.f32(float %38, float %53, float %63)
  %65 = getelementptr inbounds float, ptr %2, i64 2
  store float %64, ptr %65, align 4, !tbaa !85
  %66 = fmul float %60, %60
  %67 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %67)
  %69 = fcmp ogt float %68, 0x38AA95A5C0000000
  br i1 %69, label %70, label %80

70:                                               ; preds = %51
  %71 = tail call float @sqrtf(float noundef %68) #22
  %72 = fdiv float 1.000000e+00, %71
  %73 = load float, ptr %2, align 4, !tbaa !85
  %74 = fmul float %73, %72
  store float %74, ptr %2, align 4, !tbaa !85
  %75 = load float, ptr %61, align 4, !tbaa !85
  %76 = fmul float %72, %75
  store float %76, ptr %61, align 4, !tbaa !85
  %77 = load float, ptr %65, align 4, !tbaa !85
  %78 = fmul float %72, %77
  %79 = fcmp olt float %71, 0x3E80000000000000
  store float %78, ptr %65, align 4, !tbaa !85
  br i1 %79, label %81, label %181

80:                                               ; preds = %51
  store float 0.000000e+00, ptr %2, align 4, !tbaa !85
  store float 0.000000e+00, ptr %61, align 4, !tbaa !85
  store float 0.000000e+00, ptr %65, align 4, !tbaa !85
  br label %81

81:                                               ; preds = %80, %70
  %82 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %87 = load i16, ptr %86, align 4, !tbaa !134
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !131
  %93 = sext i32 %92 to i64
  %94 = getelementptr %struct.BezTriple, ptr %83, i64 %93
  %95 = getelementptr %struct.BezTriple, ptr %94, i64 -1
  br label %98

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 -1
  br label %98

98:                                               ; preds = %85, %90, %96
  %99 = phi ptr [ %95, %90 ], [ %97, %96 ], [ null, %85 ]
  %100 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !131
  %102 = sext i32 %101 to i64
  %103 = getelementptr %struct.BezTriple, ptr %83, i64 %102
  %104 = getelementptr %struct.BezTriple, ptr %103, i64 -1
  %105 = icmp eq ptr %104, %1
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %108 = load i16, ptr %107, align 4, !tbaa !134
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  %111 = select i1 %110, ptr null, ptr %83
  br label %114

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi ptr [ %113, %112 ], [ %111, %106 ]
  %116 = icmp eq ptr %99, null
  br i1 %116, label %140, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds [3 x [3 x float]], ptr %99, i64 0, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !85
  %120 = load float, ptr %4, align 4, !tbaa !85
  %121 = fsub float %119, %120
  %122 = getelementptr inbounds [3 x [3 x float]], ptr %99, i64 0, i64 1, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !85
  %124 = load float, ptr %10, align 4, !tbaa !85
  %125 = fsub float %123, %124
  %126 = getelementptr inbounds [3 x [3 x float]], ptr %99, i64 0, i64 1, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !85
  %128 = load float, ptr %15, align 4, !tbaa !85
  %129 = fsub float %127, %128
  %130 = fmul float %125, %125
  %131 = tail call float @llvm.fmuladd.f32(float %121, float %121, float %130)
  %132 = tail call float @llvm.fmuladd.f32(float %129, float %129, float %131)
  %133 = fcmp ogt float %132, 0x38AA95A5C0000000
  br i1 %133, label %134, label %140

134:                                              ; preds = %117
  %135 = tail call float @sqrtf(float noundef %132) #22
  %136 = fdiv float 1.000000e+00, %135
  %137 = fmul float %121, %136
  %138 = fmul float %125, %136
  %139 = fmul float %129, %136
  br label %140

140:                                              ; preds = %134, %117, %114
  %141 = phi float [ %38, %114 ], [ %137, %134 ], [ 0.000000e+00, %117 ]
  %142 = phi float [ %39, %114 ], [ %138, %134 ], [ 0.000000e+00, %117 ]
  %143 = phi float [ %40, %114 ], [ %139, %134 ], [ 0.000000e+00, %117 ]
  %144 = icmp eq ptr %115, null
  br i1 %144, label %168, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds [3 x [3 x float]], ptr %115, i64 0, i64 1
  %147 = load float, ptr %4, align 4, !tbaa !85
  %148 = load float, ptr %146, align 4, !tbaa !85
  %149 = fsub float %147, %148
  %150 = load float, ptr %10, align 4, !tbaa !85
  %151 = getelementptr inbounds [3 x [3 x float]], ptr %115, i64 0, i64 1, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !85
  %153 = fsub float %150, %152
  %154 = load float, ptr %15, align 4, !tbaa !85
  %155 = getelementptr inbounds [3 x [3 x float]], ptr %115, i64 0, i64 1, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !85
  %157 = fsub float %154, %156
  %158 = fmul float %153, %153
  %159 = tail call float @llvm.fmuladd.f32(float %149, float %149, float %158)
  %160 = tail call float @llvm.fmuladd.f32(float %157, float %157, float %159)
  %161 = fcmp ogt float %160, 0x38AA95A5C0000000
  br i1 %161, label %162, label %168

162:                                              ; preds = %145
  %163 = tail call float @sqrtf(float noundef %160) #22
  %164 = fdiv float 1.000000e+00, %163
  %165 = fmul float %149, %164
  %166 = fmul float %153, %164
  %167 = fmul float %157, %164
  br label %168

168:                                              ; preds = %162, %145, %140
  %169 = phi float [ %52, %140 ], [ %165, %162 ], [ 0.000000e+00, %145 ]
  %170 = phi float [ %53, %140 ], [ %166, %162 ], [ 0.000000e+00, %145 ]
  %171 = phi float [ %54, %140 ], [ %167, %162 ], [ 0.000000e+00, %145 ]
  %172 = fneg float %143
  %173 = fmul float %170, %172
  %174 = tail call float @llvm.fmuladd.f32(float %142, float %171, float %173)
  store float %174, ptr %2, align 4, !tbaa !85
  %175 = fneg float %141
  %176 = fmul float %171, %175
  %177 = tail call float @llvm.fmuladd.f32(float %143, float %169, float %176)
  store float %177, ptr %61, align 4, !tbaa !85
  %178 = fneg float %142
  %179 = fmul float %169, %178
  %180 = tail call float @llvm.fmuladd.f32(float %141, float %170, float %179)
  store float %180, ptr %65, align 4, !tbaa !85
  br label %181

181:                                              ; preds = %168, %70
  %182 = phi float [ %169, %168 ], [ %52, %70 ]
  %183 = phi float [ %170, %168 ], [ %53, %70 ]
  %184 = phi float [ %171, %168 ], [ %54, %70 ]
  %185 = phi float [ %141, %168 ], [ %38, %70 ]
  %186 = phi float [ %142, %168 ], [ %39, %70 ]
  %187 = phi float [ %143, %168 ], [ %40, %70 ]
  %188 = fadd float %182, %185
  %189 = fadd float %183, %186
  %190 = fadd float %184, %187
  %191 = load float, ptr %61, align 4, !tbaa !85
  %192 = load float, ptr %65, align 4, !tbaa !85
  %193 = fneg float %192
  %194 = fmul float %189, %193
  %195 = tail call float @llvm.fmuladd.f32(float %191, float %190, float %194)
  %196 = load float, ptr %2, align 4, !tbaa !85
  %197 = fneg float %196
  %198 = fmul float %190, %197
  %199 = tail call float @llvm.fmuladd.f32(float %192, float %188, float %198)
  %200 = fneg float %191
  %201 = fmul float %188, %200
  %202 = tail call float @llvm.fmuladd.f32(float %196, float %189, float %201)
  store float %195, ptr %2, align 4, !tbaa !85
  store float %199, ptr %61, align 4, !tbaa !85
  store float %202, ptr %65, align 4, !tbaa !85
  %203 = fmul float %199, %199
  %204 = tail call float @llvm.fmuladd.f32(float %195, float %195, float %203)
  %205 = tail call float @llvm.fmuladd.f32(float %202, float %202, float %204)
  %206 = fcmp ogt float %205, 0x38AA95A5C0000000
  br i1 %206, label %207, label %216

207:                                              ; preds = %181
  %208 = tail call float @sqrtf(float noundef %205) #22
  %209 = fdiv float 1.000000e+00, %208
  %210 = load float, ptr %2, align 4, !tbaa !85
  %211 = fmul float %210, %209
  store float %211, ptr %2, align 4, !tbaa !85
  %212 = load float, ptr %61, align 4, !tbaa !85
  %213 = fmul float %209, %212
  store float %213, ptr %61, align 4, !tbaa !85
  %214 = load float, ptr %65, align 4, !tbaa !85
  %215 = fmul float %209, %214
  br label %217

216:                                              ; preds = %181
  store float 0.000000e+00, ptr %2, align 4, !tbaa !85
  store float 0.000000e+00, ptr %61, align 4, !tbaa !85
  br label %217

217:                                              ; preds = %207, %216
  %218 = phi float [ 0.000000e+00, %216 ], [ %215, %207 ]
  store float %218, ptr %65, align 4, !tbaa !85
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_knot_calc_u(ptr nocapture noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @makeknots(ptr noundef %0, i16 noundef signext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @makeknots(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !130
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %6, label %258

6:                                                ; preds = %2
  %7 = icmp eq i16 %1, 1
  br i1 %7, label %8, label %133

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %10) #22
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !131
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %132, label %18

18:                                               ; preds = %14
  %19 = load i16, ptr %3, align 8, !tbaa !130
  %20 = icmp eq i16 %19, 4
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !146
  %24 = sext i16 %23 to i32
  %25 = icmp slt i32 %16, %24
  br i1 %25, label %132, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !128
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %33 = load i16, ptr %32, align 4, !tbaa !134
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  switch i16 %23, label %132 [
    i16 4, label %37
    i16 3, label %39
  ]

37:                                               ; preds = %36
  %38 = icmp slt i32 %16, 5
  br i1 %38, label %132, label %39

39:                                               ; preds = %26, %31, %36, %37, %18
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %42 = load i16, ptr %41, align 8, !tbaa !146
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %16, %43
  %45 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %46 = load i16, ptr %45, align 4, !tbaa !134
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  %49 = add nsw i32 %43, -1
  %50 = select i1 %48, i32 0, i32 %49
  %51 = add nsw i32 %44, %50
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 2
  %54 = add nsw i64 %53, 4
  %55 = tail call ptr %40(i64 noundef %54, ptr noundef nonnull @.str.43) #22
  store ptr %55, ptr %9, align 8, !tbaa !78
  %56 = load i16, ptr %45, align 4, !tbaa !134
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  %59 = load i32, ptr %15, align 8, !tbaa !131
  %60 = load i16, ptr %41, align 8, !tbaa !146
  br i1 %58, label %131, label %61

61:                                               ; preds = %39
  %62 = sext i16 %60 to i32
  %63 = add nsw i32 %59, %62
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = zext nneg i32 %63 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ 0, %65 ], [ %72, %67 ]
  %69 = trunc i64 %68 to i32
  %70 = sitofp i32 %69 to float
  %71 = getelementptr inbounds float, ptr %55, i64 %68
  store float %70, ptr %71, align 4, !tbaa !85
  %72 = add nuw nsw i64 %68, 1
  %73 = icmp eq i64 %72, %66
  br i1 %73, label %74, label %67, !llvm.loop !157

74:                                               ; preds = %67, %61
  %75 = icmp eq ptr %55, null
  br i1 %75, label %258, label %76

76:                                               ; preds = %74
  %77 = add nsw i32 %62, -1
  %78 = icmp sgt i16 %60, 2
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = add nsw i32 %77, %59
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %55, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !85
  %84 = zext i32 %77 to i64
  br label %85

85:                                               ; preds = %91, %79
  %86 = phi i64 [ 1, %79 ], [ %92, %91 ]
  %87 = sub nsw i64 %81, %86
  %88 = getelementptr inbounds float, ptr %55, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !85
  %90 = fcmp une float %83, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, %84
  br i1 %93, label %96, label %85, !llvm.loop !158

94:                                               ; preds = %85
  %95 = trunc i64 %86 to i32
  br label %96

96:                                               ; preds = %91, %94
  %97 = phi i32 [ %95, %94 ], [ %77, %91 ]
  %98 = icmp eq i32 %97, %77
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = sext i32 %63 to i64
  %101 = getelementptr float, ptr %55, i64 %100
  %102 = getelementptr float, ptr %101, i64 -2
  %103 = load float, ptr %102, align 4, !tbaa !85
  %104 = fadd float %103, 1.000000e+00
  store float %104, ptr %102, align 4, !tbaa !85
  br label %105

105:                                              ; preds = %99, %96, %76
  %106 = add i32 %77, %59
  %107 = add i32 %106, %62
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %258

109:                                              ; preds = %105
  %110 = sext i32 %106 to i64
  %111 = sext i16 %60 to i64
  %112 = shl nsw i64 %110, 2
  %113 = getelementptr i8, ptr %55, i64 %112
  %114 = getelementptr i8, ptr %113, i64 -4
  %115 = load float, ptr %114, align 4
  br label %116

116:                                              ; preds = %116, %109
  %117 = phi float [ %115, %109 ], [ %126, %116 ]
  %118 = phi i64 [ %111, %109 ], [ %127, %116 ]
  %119 = phi i64 [ %110, %109 ], [ %128, %116 ]
  %120 = getelementptr float, ptr %55, i64 %119
  %121 = getelementptr inbounds float, ptr %55, i64 %118
  %122 = load float, ptr %121, align 4, !tbaa !85
  %123 = getelementptr float, ptr %121, i64 -1
  %124 = load float, ptr %123, align 4, !tbaa !85
  %125 = fsub float %122, %124
  %126 = fadd float %117, %125
  store float %126, ptr %120, align 4, !tbaa !85
  %127 = add nsw i64 %118, -1
  %128 = add nsw i64 %119, 1
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %107, %129
  br i1 %130, label %258, label %116, !llvm.loop !159

131:                                              ; preds = %39
  tail call fastcc void @calcknots(ptr noundef %55, i32 noundef %59, i16 noundef signext %60, i16 noundef signext %56)
  br label %258

132:                                              ; preds = %37, %36, %21, %14
  store ptr null, ptr %9, align 8, !tbaa !78
  br label %258

133:                                              ; preds = %6
  %134 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %135 = load ptr, ptr %134, align 8, !tbaa !79
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %138(ptr noundef nonnull %135) #22
  br label %139

139:                                              ; preds = %137, %133
  %140 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %141 = load i32, ptr %140, align 4, !tbaa !126
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %257, label %143

143:                                              ; preds = %139
  %144 = load i16, ptr %3, align 8, !tbaa !130
  %145 = icmp eq i16 %144, 4
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %148 = load i16, ptr %147, align 2, !tbaa !147
  %149 = sext i16 %148 to i32
  %150 = icmp slt i32 %141, %149
  br i1 %150, label %257, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %153 = load i16, ptr %152, align 2, !tbaa !128
  %154 = and i16 %153, 1
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %158 = load i16, ptr %157, align 2, !tbaa !148
  %159 = and i16 %158, 4
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  switch i16 %148, label %257 [
    i16 4, label %162
    i16 3, label %164
  ]

162:                                              ; preds = %161
  %163 = icmp slt i32 %141, 5
  br i1 %163, label %257, label %164

164:                                              ; preds = %151, %156, %161, %162, %143
  %165 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %166 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %167 = load i16, ptr %166, align 2, !tbaa !147
  %168 = sext i16 %167 to i32
  %169 = add nsw i32 %141, %168
  %170 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %171 = load i16, ptr %170, align 2, !tbaa !148
  %172 = and i16 %171, 1
  %173 = icmp eq i16 %172, 0
  %174 = add nsw i32 %168, -1
  %175 = select i1 %173, i32 0, i32 %174
  %176 = add nsw i32 %169, %175
  %177 = sext i32 %176 to i64
  %178 = shl nsw i64 %177, 2
  %179 = add nsw i64 %178, 4
  %180 = tail call ptr %165(i64 noundef %179, ptr noundef nonnull @.str.43) #22
  store ptr %180, ptr %134, align 8, !tbaa !79
  %181 = load i16, ptr %170, align 2, !tbaa !148
  %182 = and i16 %181, 1
  %183 = icmp eq i16 %182, 0
  %184 = load i32, ptr %140, align 4, !tbaa !126
  %185 = load i16, ptr %166, align 2, !tbaa !147
  br i1 %183, label %256, label %186

186:                                              ; preds = %164
  %187 = sext i16 %185 to i32
  %188 = add nsw i32 %184, %187
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = zext nneg i32 %188 to i64
  br label %192

192:                                              ; preds = %190, %192
  %193 = phi i64 [ 0, %190 ], [ %197, %192 ]
  %194 = trunc i64 %193 to i32
  %195 = sitofp i32 %194 to float
  %196 = getelementptr inbounds float, ptr %180, i64 %193
  store float %195, ptr %196, align 4, !tbaa !85
  %197 = add nuw nsw i64 %193, 1
  %198 = icmp eq i64 %197, %191
  br i1 %198, label %199, label %192, !llvm.loop !157

199:                                              ; preds = %192, %186
  %200 = icmp eq ptr %180, null
  br i1 %200, label %258, label %201

201:                                              ; preds = %199
  %202 = add nsw i32 %187, -1
  %203 = icmp sgt i16 %185, 2
  br i1 %203, label %204, label %230

204:                                              ; preds = %201
  %205 = add nsw i32 %202, %184
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, ptr %180, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !85
  %209 = zext i32 %202 to i64
  br label %210

210:                                              ; preds = %216, %204
  %211 = phi i64 [ 1, %204 ], [ %217, %216 ]
  %212 = sub nsw i64 %206, %211
  %213 = getelementptr inbounds float, ptr %180, i64 %212
  %214 = load float, ptr %213, align 4, !tbaa !85
  %215 = fcmp une float %208, %214
  br i1 %215, label %219, label %216

216:                                              ; preds = %210
  %217 = add nuw nsw i64 %211, 1
  %218 = icmp eq i64 %217, %209
  br i1 %218, label %221, label %210, !llvm.loop !158

219:                                              ; preds = %210
  %220 = trunc i64 %211 to i32
  br label %221

221:                                              ; preds = %216, %219
  %222 = phi i32 [ %220, %219 ], [ %202, %216 ]
  %223 = icmp eq i32 %222, %202
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = sext i32 %188 to i64
  %226 = getelementptr float, ptr %180, i64 %225
  %227 = getelementptr float, ptr %226, i64 -2
  %228 = load float, ptr %227, align 4, !tbaa !85
  %229 = fadd float %228, 1.000000e+00
  store float %229, ptr %227, align 4, !tbaa !85
  br label %230

230:                                              ; preds = %224, %221, %201
  %231 = add i32 %202, %184
  %232 = add i32 %231, %187
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %258

234:                                              ; preds = %230
  %235 = sext i32 %231 to i64
  %236 = sext i16 %185 to i64
  %237 = shl nsw i64 %235, 2
  %238 = getelementptr i8, ptr %180, i64 %237
  %239 = getelementptr i8, ptr %238, i64 -4
  %240 = load float, ptr %239, align 4
  br label %241

241:                                              ; preds = %241, %234
  %242 = phi float [ %240, %234 ], [ %251, %241 ]
  %243 = phi i64 [ %236, %234 ], [ %252, %241 ]
  %244 = phi i64 [ %235, %234 ], [ %253, %241 ]
  %245 = getelementptr float, ptr %180, i64 %244
  %246 = getelementptr inbounds float, ptr %180, i64 %243
  %247 = load float, ptr %246, align 4, !tbaa !85
  %248 = getelementptr float, ptr %246, i64 -1
  %249 = load float, ptr %248, align 4, !tbaa !85
  %250 = fsub float %247, %249
  %251 = fadd float %242, %250
  store float %251, ptr %245, align 4, !tbaa !85
  %252 = add nsw i64 %243, -1
  %253 = add nsw i64 %244, 1
  %254 = trunc i64 %253 to i32
  %255 = icmp eq i32 %232, %254
  br i1 %255, label %258, label %241, !llvm.loop !159

256:                                              ; preds = %164
  tail call fastcc void @calcknots(ptr noundef %180, i32 noundef %184, i16 noundef signext %185, i16 noundef signext %181)
  br label %258

257:                                              ; preds = %162, %161, %146, %139
  store ptr null, ptr %134, align 8, !tbaa !79
  br label %258

258:                                              ; preds = %241, %116, %230, %199, %105, %74, %131, %132, %257, %256, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_knot_calc_v(ptr nocapture noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @makeknots(ptr noundef %0, i16 noundef signext 2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_makeFaces(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = mul nsw i32 %9, %3
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !126
  %13 = mul i32 %12, %4
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %388, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %388, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !146
  %24 = sext i16 %23 to i32
  %25 = icmp slt i32 %9, %24
  br i1 %25, label %388, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %28 = load i16, ptr %27, align 2, !tbaa !147
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %12, %29
  %31 = icmp eq ptr %1, null
  %32 = or i1 %31, %30
  br i1 %32, label %388, label %33

33:                                               ; preds = %26
  %34 = mul nsw i32 %13, %10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %388, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %38 = sext i32 %34 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.13) #22
  %41 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %42 = load i32, ptr %8, align 8, !tbaa !131
  %43 = load i32, ptr %11, align 4, !tbaa !126
  %44 = mul nsw i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %41, align 8, !tbaa !77
  %48 = getelementptr inbounds [4 x float], ptr %47, i64 0, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !85
  %50 = fcmp une float %49, 1.000000e+00
  br i1 %50, label %61, label %51

51:                                               ; preds = %46, %56
  %52 = phi ptr [ %57, %56 ], [ %47, %46 ]
  %53 = phi i32 [ %54, %56 ], [ %44, %46 ]
  %54 = add nsw i32 %53, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56, !llvm.loop !160

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.BPoint, ptr %52, i64 1
  %58 = getelementptr inbounds %struct.BPoint, ptr %52, i64 1, i32 0, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !85
  %60 = fcmp une float %59, 1.000000e+00
  br i1 %60, label %61, label %51, !llvm.loop !160

61:                                               ; preds = %56, %51, %46, %36
  %62 = phi i1 [ %45, %36 ], [ %45, %46 ], [ %55, %51 ], [ %55, %56 ]
  %63 = load ptr, ptr %14, align 8, !tbaa !78
  %64 = load i16, ptr %22, align 8, !tbaa !146
  %65 = sext i16 %64 to i64
  %66 = getelementptr float, ptr %63, i64 %65
  %67 = getelementptr float, ptr %66, i64 -1
  %68 = load float, ptr %67, align 4, !tbaa !85
  %69 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %70 = load i16, ptr %69, align 4, !tbaa !134
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  %73 = sext i16 %64 to i32
  %74 = add nsw i32 %42, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr float, ptr %63, i64 %75
  %77 = getelementptr float, ptr %76, i64 -1
  %78 = sext i32 %42 to i64
  %79 = getelementptr inbounds float, ptr %63, i64 %78
  %80 = select i1 %72, ptr %79, ptr %77
  %81 = load float, ptr %80, align 4, !tbaa !85
  %82 = fsub float %81, %68
  %83 = sext i1 %72 to i32
  %84 = add nsw i32 %10, %83
  %85 = sitofp i32 %84 to float
  %86 = fdiv float %82, %85
  %87 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %88 = sext i16 %64 to i32
  %89 = add nsw i32 %42, %88
  %90 = add nsw i32 %88, -1
  %91 = select i1 %72, i32 0, i32 %90
  %92 = add nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 2
  %95 = tail call ptr %87(i64 noundef %94, ptr noundef nonnull @.str.14) #22
  %96 = load ptr, ptr %18, align 8, !tbaa !79
  %97 = load i16, ptr %27, align 2, !tbaa !147
  %98 = sext i16 %97 to i64
  %99 = getelementptr float, ptr %96, i64 %98
  %100 = getelementptr float, ptr %99, i64 -1
  %101 = load float, ptr %100, align 4, !tbaa !85
  %102 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %103 = load i16, ptr %102, align 2, !tbaa !148
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %61
  %107 = sext i16 %97 to i32
  %108 = load i32, ptr %11, align 4, !tbaa !126
  %109 = add nsw i32 %108, %107
  %110 = sext i32 %109 to i64
  %111 = getelementptr float, ptr %96, i64 %110
  %112 = getelementptr float, ptr %111, i64 -1
  br label %117

113:                                              ; preds = %61
  %114 = load i32, ptr %11, align 4, !tbaa !126
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, ptr %96, i64 %115
  br label %117

117:                                              ; preds = %113, %106
  %118 = phi ptr [ %112, %106 ], [ %116, %113 ]
  %119 = load float, ptr %118, align 4, !tbaa !85
  %120 = fsub float %119, %101
  %121 = sext i1 %105 to i32
  %122 = add nsw i32 %13, %121
  %123 = sitofp i32 %122 to float
  %124 = fdiv float %120, %123
  %125 = sext i16 %97 to i32
  %126 = load i32, ptr %11, align 4, !tbaa !126
  %127 = add nsw i32 %125, -1
  %128 = select i1 %105, i32 0, i32 %127
  %129 = add nsw i32 %128, %125
  %130 = add i32 %129, %126
  %131 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %132 = sext i32 %130 to i64
  %133 = sext i32 %13 to i64
  %134 = shl nsw i64 %133, 2
  %135 = mul i64 %134, %132
  %136 = tail call ptr %131(i64 noundef %135, ptr noundef nonnull @.str.14) #22
  %137 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %138 = shl nsw i64 %133, 2
  %139 = tail call ptr %137(i64 noundef %138, ptr noundef nonnull @.str.15) #22
  %140 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %141 = tail call ptr %140(i64 noundef %138, ptr noundef nonnull @.str.16) #22
  %142 = load i16, ptr %102, align 2, !tbaa !148
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %117
  %146 = load i16, ptr %27, align 2, !tbaa !147
  %147 = sext i16 %146 to i32
  %148 = add nsw i32 %147, -1
  br label %149

149:                                              ; preds = %117, %145
  %150 = phi i32 [ %148, %145 ], [ 0, %117 ]
  %151 = icmp eq i32 %13, 0
  br i1 %151, label %180, label %152

152:                                              ; preds = %149
  %153 = sext i32 %13 to i64
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi i64 [ %153, %152 ], [ %158, %154 ]
  %156 = phi ptr [ %136, %152 ], [ %176, %154 ]
  %157 = phi float [ %101, %152 ], [ %177, %154 ]
  %158 = add nsw i64 %155, -1
  %159 = load i16, ptr %27, align 2, !tbaa !147
  %160 = load i32, ptr %11, align 4, !tbaa !126
  %161 = add nsw i32 %160, %150
  %162 = load ptr, ptr %18, align 8, !tbaa !79
  %163 = getelementptr inbounds i32, ptr %139, i64 %158
  %164 = getelementptr inbounds i32, ptr %141, i64 %158
  tail call fastcc void @basisNurb(float noundef %157, i16 noundef signext %159, i32 noundef %161, ptr noundef %162, ptr noundef %156, ptr noundef %163, ptr noundef %164)
  %165 = load i16, ptr %27, align 2, !tbaa !147
  %166 = sext i16 %165 to i32
  %167 = load i32, ptr %11, align 4, !tbaa !126
  %168 = add nsw i32 %167, %166
  %169 = load i16, ptr %102, align 2, !tbaa !148
  %170 = and i16 %169, 1
  %171 = icmp eq i16 %170, 0
  %172 = add nsw i32 %166, -1
  %173 = select i1 %171, i32 0, i32 %172
  %174 = add nsw i32 %168, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, ptr %156, i64 %175
  %177 = fadd float %124, %157
  %178 = and i64 %158, 4294967295
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %154, !llvm.loop !161

180:                                              ; preds = %154, %149
  %181 = load i16, ptr %69, align 4, !tbaa !134
  %182 = and i16 %181, 1
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i16, ptr %22, align 8, !tbaa !146
  %186 = sext i16 %185 to i32
  %187 = add nsw i32 %186, -1
  br label %188

188:                                              ; preds = %180, %184
  %189 = phi i32 [ %187, %184 ], [ 0, %180 ]
  %190 = icmp eq i32 %10, 0
  br i1 %190, label %382, label %191

191:                                              ; preds = %188
  %192 = icmp eq i32 %13, 0
  %193 = icmp eq i32 %2, 0
  %194 = sext i32 %2 to i64
  %195 = mul nsw i32 %13, 3
  %196 = sext i32 %195 to i64
  %197 = shl nsw i64 %196, 2
  %198 = sub nsw i64 %194, %197
  %199 = sext i32 %13 to i64
  %200 = select i1 %193, i64 0, i64 %198
  br label %201

201:                                              ; preds = %191, %377
  %202 = phi i32 [ %10, %191 ], [ %205, %377 ]
  %203 = phi ptr [ %1, %191 ], [ %380, %377 ]
  %204 = phi float [ %68, %191 ], [ %379, %377 ]
  %205 = add nsw i32 %202, -1
  %206 = load i16, ptr %22, align 8, !tbaa !146
  %207 = load i32, ptr %8, align 8, !tbaa !131
  %208 = add nsw i32 %207, %189
  %209 = load ptr, ptr %14, align 8, !tbaa !78
  call fastcc void @basisNurb(float noundef %204, i16 noundef signext %206, i32 noundef %208, ptr noundef %209, ptr noundef %95, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br i1 %192, label %377, label %210

210:                                              ; preds = %201
  %211 = load i32, ptr %6, align 4
  %212 = sext i32 %211 to i64
  %213 = load i32, ptr %7, align 4
  %214 = icmp sgt i32 %211, %213
  %215 = icmp sgt i32 %211, %213
  %216 = sext i32 %211 to i64
  %217 = icmp sgt i32 %211, %213
  %218 = load i16, ptr %27, align 2, !tbaa !147
  %219 = sext i16 %218 to i32
  %220 = load i32, ptr %11, align 4, !tbaa !126
  %221 = add nsw i32 %220, %219
  %222 = load i16, ptr %102, align 2, !tbaa !148
  %223 = and i16 %222, 1
  %224 = icmp eq i16 %223, 0
  %225 = add nsw i32 %219, -1
  %226 = select i1 %224, i32 0, i32 %225
  %227 = add nsw i32 %221, %226
  %228 = sext i32 %227 to i64
  %229 = add i32 %213, 1
  br label %230

230:                                              ; preds = %210, %372
  %231 = phi i64 [ %199, %210 ], [ %234, %372 ]
  %232 = phi ptr [ %136, %210 ], [ %374, %372 ]
  %233 = phi ptr [ %203, %210 ], [ %373, %372 ]
  %234 = add nsw i64 %231, -1
  %235 = getelementptr inbounds i32, ptr %139, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !162
  %237 = getelementptr inbounds i32, ptr %141, i64 %234
  %238 = load i32, ptr %237, align 4, !tbaa !162
  %239 = icmp sgt i32 %236, %238
  br i1 %239, label %299, label %240

240:                                              ; preds = %230
  %241 = load i32, ptr %11, align 4, !tbaa !126
  %242 = load ptr, ptr %41, align 8, !tbaa !77
  %243 = load i32, ptr %8, align 8, !tbaa !131
  %244 = sext i32 %243 to i64
  %245 = sext i32 %243 to i64
  %246 = sext i32 %236 to i64
  %247 = sext i32 %241 to i64
  %248 = add i32 %238, 1
  br label %249

249:                                              ; preds = %240, %293
  %250 = phi i64 [ %246, %240 ], [ %296, %293 ]
  %251 = phi ptr [ %40, %240 ], [ %295, %293 ]
  %252 = phi float [ 0.000000e+00, %240 ], [ %294, %293 ]
  %253 = icmp slt i64 %250, %247
  %254 = select i1 %253, i32 0, i32 %241
  %255 = trunc i64 %250 to i32
  %256 = sub nsw i32 %255, %254
  %257 = mul nsw i32 %256, %243
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.BPoint, ptr %242, i64 %258
  br i1 %214, label %293, label %260

260:                                              ; preds = %249
  %261 = getelementptr inbounds %struct.BPoint, ptr %259, i64 %212
  %262 = getelementptr inbounds %struct.BPoint, ptr %261, i64 -1
  %263 = getelementptr inbounds float, ptr %232, i64 %250
  %264 = getelementptr inbounds float, ptr %232, i64 %250
  br label %265

265:                                              ; preds = %260, %287
  %266 = phi i64 [ %212, %260 ], [ %289, %287 ]
  %267 = phi ptr [ %262, %260 ], [ %274, %287 ]
  %268 = phi ptr [ %251, %260 ], [ %290, %287 ]
  %269 = phi float [ %252, %260 ], [ %288, %287 ]
  %270 = icmp slt i64 %266, %245
  %271 = sub nsw i64 %266, %244
  %272 = getelementptr inbounds %struct.BPoint, ptr %259, i64 %271
  %273 = getelementptr inbounds %struct.BPoint, ptr %267, i64 1
  %274 = select i1 %270, ptr %273, ptr %272
  %275 = getelementptr inbounds float, ptr %95, i64 %266
  %276 = load float, ptr %275, align 4, !tbaa !85
  br i1 %62, label %284, label %277

277:                                              ; preds = %265
  %278 = load float, ptr %263, align 4, !tbaa !85
  %279 = fmul float %276, %278
  %280 = getelementptr inbounds [4 x float], ptr %274, i64 0, i64 3
  %281 = load float, ptr %280, align 4, !tbaa !85
  %282 = fmul float %279, %281
  store float %282, ptr %268, align 4, !tbaa !85
  %283 = fadd float %269, %282
  br label %287

284:                                              ; preds = %265
  %285 = load float, ptr %264, align 4, !tbaa !85
  %286 = fmul float %276, %285
  store float %286, ptr %268, align 4, !tbaa !85
  br label %287

287:                                              ; preds = %277, %284
  %288 = phi float [ %283, %277 ], [ %269, %284 ]
  %289 = add nsw i64 %266, 1
  %290 = getelementptr inbounds float, ptr %268, i64 1
  %291 = trunc i64 %289 to i32
  %292 = icmp eq i32 %229, %291
  br i1 %292, label %293, label %265, !llvm.loop !163

293:                                              ; preds = %287, %249
  %294 = phi float [ %252, %249 ], [ %288, %287 ]
  %295 = phi ptr [ %251, %249 ], [ %290, %287 ]
  %296 = add nsw i64 %250, 1
  %297 = trunc i64 %296 to i32
  %298 = icmp eq i32 %248, %297
  br i1 %298, label %299, label %249, !llvm.loop !164

299:                                              ; preds = %293, %230
  %300 = phi float [ 0.000000e+00, %230 ], [ %294, %293 ]
  %301 = icmp sgt i32 %236, %238
  %302 = or i1 %62, %301
  br i1 %302, label %318, label %303

303:                                              ; preds = %299, %314
  %304 = phi ptr [ %315, %314 ], [ %40, %299 ]
  %305 = phi i32 [ %316, %314 ], [ %236, %299 ]
  br i1 %215, label %314, label %306

306:                                              ; preds = %303, %306
  %307 = phi ptr [ %312, %306 ], [ %304, %303 ]
  %308 = phi i32 [ %311, %306 ], [ %211, %303 ]
  %309 = load float, ptr %307, align 4, !tbaa !85
  %310 = fdiv float %309, %300
  store float %310, ptr %307, align 4, !tbaa !85
  %311 = add i32 %308, 1
  %312 = getelementptr inbounds float, ptr %307, i64 1
  %313 = icmp eq i32 %308, %213
  br i1 %313, label %314, label %306, !llvm.loop !165

314:                                              ; preds = %306, %303
  %315 = phi ptr [ %304, %303 ], [ %312, %306 ]
  %316 = add i32 %305, 1
  %317 = icmp eq i32 %305, %238
  br i1 %317, label %318, label %303, !llvm.loop !166

318:                                              ; preds = %314, %299
  store float 0.000000e+00, ptr %233, align 4, !tbaa !85
  %319 = getelementptr inbounds float, ptr %233, i64 1
  store float 0.000000e+00, ptr %319, align 4, !tbaa !85
  %320 = getelementptr inbounds float, ptr %233, i64 2
  store float 0.000000e+00, ptr %320, align 4, !tbaa !85
  %321 = icmp sgt i32 %236, %238
  br i1 %321, label %372, label %322

322:                                              ; preds = %318
  %323 = load i32, ptr %11, align 4, !tbaa !126
  %324 = load ptr, ptr %41, align 8, !tbaa !77
  %325 = load i32, ptr %8, align 8, !tbaa !131
  %326 = sext i32 %325 to i64
  %327 = sext i32 %325 to i64
  br label %328

328:                                              ; preds = %322, %368
  %329 = phi ptr [ %40, %322 ], [ %369, %368 ]
  %330 = phi i32 [ %236, %322 ], [ %370, %368 ]
  %331 = icmp slt i32 %330, %323
  %332 = select i1 %331, i32 0, i32 %323
  %333 = sub nsw i32 %330, %332
  %334 = mul nsw i32 %333, %325
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.BPoint, ptr %324, i64 %335
  br i1 %217, label %368, label %337

337:                                              ; preds = %328
  %338 = getelementptr inbounds %struct.BPoint, ptr %336, i64 %216
  %339 = getelementptr inbounds %struct.BPoint, ptr %338, i64 -1
  br label %340

340:                                              ; preds = %337, %363
  %341 = phi i64 [ %212, %337 ], [ %364, %363 ]
  %342 = phi ptr [ %339, %337 ], [ %348, %363 ]
  %343 = phi ptr [ %329, %337 ], [ %365, %363 ]
  %344 = icmp slt i64 %341, %327
  %345 = sub nsw i64 %341, %326
  %346 = getelementptr inbounds %struct.BPoint, ptr %336, i64 %345
  %347 = getelementptr inbounds %struct.BPoint, ptr %342, i64 1
  %348 = select i1 %344, ptr %347, ptr %346
  %349 = load float, ptr %343, align 4, !tbaa !85
  %350 = fcmp une float %349, 0.000000e+00
  br i1 %350, label %351, label %363

351:                                              ; preds = %340
  %352 = load float, ptr %348, align 4, !tbaa !85
  %353 = load float, ptr %233, align 4, !tbaa !85
  %354 = tail call float @llvm.fmuladd.f32(float %352, float %349, float %353)
  store float %354, ptr %233, align 4, !tbaa !85
  %355 = getelementptr inbounds float, ptr %348, i64 1
  %356 = load float, ptr %355, align 4, !tbaa !85
  %357 = load float, ptr %319, align 4, !tbaa !85
  %358 = tail call float @llvm.fmuladd.f32(float %356, float %349, float %357)
  store float %358, ptr %319, align 4, !tbaa !85
  %359 = getelementptr inbounds float, ptr %348, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !85
  %361 = load float, ptr %320, align 4, !tbaa !85
  %362 = tail call float @llvm.fmuladd.f32(float %360, float %349, float %361)
  store float %362, ptr %320, align 4, !tbaa !85
  br label %363

363:                                              ; preds = %340, %351
  %364 = add nsw i64 %341, 1
  %365 = getelementptr inbounds float, ptr %343, i64 1
  %366 = trunc i64 %364 to i32
  %367 = icmp eq i32 %229, %366
  br i1 %367, label %368, label %340, !llvm.loop !167

368:                                              ; preds = %363, %328
  %369 = phi ptr [ %329, %328 ], [ %365, %363 ]
  %370 = add i32 %330, 1
  %371 = icmp eq i32 %330, %238
  br i1 %371, label %372, label %328, !llvm.loop !168

372:                                              ; preds = %368, %318
  %373 = getelementptr inbounds float, ptr %233, i64 3
  %374 = getelementptr inbounds float, ptr %232, i64 %228
  %375 = and i64 %234, 4294967295
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %230, !llvm.loop !169

377:                                              ; preds = %372, %201
  %378 = phi ptr [ %203, %201 ], [ %373, %372 ]
  %379 = fadd float %86, %204
  %380 = getelementptr inbounds i8, ptr %378, i64 %200
  %381 = icmp eq i32 %205, 0
  br i1 %381, label %382, label %201, !llvm.loop !170

382:                                              ; preds = %377, %188
  %383 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %383(ptr noundef %40) #22
  %384 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %384(ptr noundef %95) #22
  %385 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %385(ptr noundef %136) #22
  %386 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %386(ptr noundef %139) #22
  %387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %387(ptr noundef %141) #22
  br label %388

388:                                              ; preds = %33, %26, %21, %5, %17, %382
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @basisNurb(float noundef %0, i16 noundef signext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #12 {
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
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %25 = zext nneg i32 %24 to i64
  br label %26

26:                                               ; preds = %23, %62
  %27 = phi i64 [ 1, %23 ], [ %65, %62 ]
  %28 = phi i64 [ 0, %23 ], [ %31, %62 ]
  %29 = getelementptr inbounds float, ptr %3, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !85
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds float, ptr %3, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !85
  %34 = fcmp oeq float %30, %33
  %35 = fcmp ult float %20, %30
  %36 = or i1 %35, %34
  %37 = fcmp ugt float %20, %33
  %38 = or i1 %37, %36
  br i1 %38, label %62, label %39

39:                                               ; preds = %26
  %40 = trunc i64 %28 to i32
  %41 = trunc i64 %31 to i32
  %42 = getelementptr inbounds float, ptr %4, i64 %28
  store float 1.000000e+00, ptr %42, align 4, !tbaa !85
  %43 = add i32 %40, %21
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  %45 = icmp sgt i32 %10, %41
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = shl nuw nsw i64 %28, 2
  %48 = getelementptr i8, ptr %4, i64 %47
  %49 = getelementptr i8, ptr %48, i64 4
  %50 = add i32 %8, %2
  %51 = add i32 %50, -3
  %52 = trunc i64 %28 to i32
  %53 = sub i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 2
  %56 = add nuw nsw i64 %55, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %49, i8 0, i64 %56, i1 false), !tbaa !85
  br label %57

57:                                               ; preds = %46, %57
  %58 = phi i64 [ %27, %46 ], [ %59, %57 ]
  %59 = add nuw nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = icmp sgt i32 %10, %60
  br i1 %61, label %57, label %66, !llvm.loop !171

62:                                               ; preds = %26
  %63 = getelementptr inbounds float, ptr %4, i64 %28
  store float 0.000000e+00, ptr %63, align 4, !tbaa !85
  %64 = icmp eq i64 %31, %25
  %65 = add nuw nsw i64 %27, 1
  br i1 %64, label %66, label %26, !llvm.loop !172

66:                                               ; preds = %62, %57, %19, %39
  %67 = phi i64 [ %31, %39 ], [ 0, %19 ], [ %59, %57 ], [ %31, %62 ]
  %68 = phi i32 [ %44, %39 ], [ 0, %19 ], [ %44, %57 ], [ 0, %62 ]
  %69 = phi i32 [ %40, %39 ], [ 0, %19 ], [ %40, %57 ], [ 0, %62 ]
  %70 = shl i64 %67, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds float, ptr %4, i64 %71
  store float 0.000000e+00, ptr %72, align 4, !tbaa !85
  %73 = icmp slt i16 %1, 2
  br i1 %73, label %130, label %74

74:                                               ; preds = %66
  %75 = getelementptr float, ptr %3, i64 -1
  %76 = zext nneg i32 %68 to i64
  %77 = add nuw nsw i32 %8, 1
  %78 = zext nneg i32 %77 to i64
  br label %79

79:                                               ; preds = %74, %127
  %80 = phi i64 [ 2, %74 ], [ %128, %127 ]
  %81 = phi i32 [ %69, %74 ], [ %87, %127 ]
  %82 = trunc i64 %80 to i32
  %83 = add nsw i32 %81, %82
  %84 = icmp slt i32 %83, %9
  %85 = trunc i64 %80 to i32
  %86 = sub i32 %10, %85
  %87 = select i1 %84, i32 %81, i32 %86
  %88 = icmp sgt i32 %68, %87
  br i1 %88, label %127, label %89

89:                                               ; preds = %79
  %90 = add i32 %87, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr float, ptr %75, i64 %80
  %93 = getelementptr float, ptr %3, i64 %80
  br label %94

94:                                               ; preds = %89, %123
  %95 = phi i64 [ %76, %89 ], [ %110, %123 ]
  %96 = getelementptr inbounds float, ptr %4, i64 %95
  %97 = load float, ptr %96, align 4, !tbaa !85
  %98 = fcmp une float %97, 0.000000e+00
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = getelementptr inbounds float, ptr %3, i64 %95
  %101 = load float, ptr %100, align 4, !tbaa !85
  %102 = fsub float %20, %101
  %103 = fmul float %97, %102
  %104 = getelementptr float, ptr %92, i64 %95
  %105 = load float, ptr %104, align 4, !tbaa !85
  %106 = fsub float %105, %101
  %107 = fdiv float %103, %106
  br label %108

108:                                              ; preds = %94, %99
  %109 = phi float [ %107, %99 ], [ 0.000000e+00, %94 ]
  %110 = add nuw nsw i64 %95, 1
  %111 = getelementptr inbounds float, ptr %4, i64 %110
  %112 = load float, ptr %111, align 4, !tbaa !85
  %113 = fcmp une float %112, 0.000000e+00
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = getelementptr float, ptr %93, i64 %95
  %116 = load float, ptr %115, align 4, !tbaa !85
  %117 = fsub float %116, %20
  %118 = fmul float %112, %117
  %119 = getelementptr inbounds float, ptr %3, i64 %110
  %120 = load float, ptr %119, align 4, !tbaa !85
  %121 = fsub float %116, %120
  %122 = fdiv float %118, %121
  br label %123

123:                                              ; preds = %108, %114
  %124 = phi float [ %122, %114 ], [ 0.000000e+00, %108 ]
  %125 = fadd float %109, %124
  store float %125, ptr %96, align 4, !tbaa !85
  %126 = icmp eq i64 %110, %91
  br i1 %126, label %127, label %94, !llvm.loop !173

127:                                              ; preds = %123, %79
  %128 = add nuw nsw i64 %80, 1
  %129 = icmp eq i64 %128, %78
  br i1 %129, label %130, label %79, !llvm.loop !174

130:                                              ; preds = %127, %66
  %131 = phi i32 [ %69, %66 ], [ %87, %127 ]
  store i32 1000, ptr %5, align 4, !tbaa !162
  store i32 0, ptr %6, align 4, !tbaa !162
  %132 = icmp sgt i32 %68, %131
  br i1 %132, label %151, label %133

133:                                              ; preds = %130
  %134 = zext nneg i32 %68 to i64
  %135 = add i32 %131, 1
  %136 = zext i32 %135 to i64
  br label %137

137:                                              ; preds = %133, %148
  %138 = phi i64 [ %134, %133 ], [ %149, %148 ]
  %139 = getelementptr inbounds float, ptr %4, i64 %138
  %140 = load float, ptr %139, align 4, !tbaa !85
  %141 = fcmp ogt float %140, 0.000000e+00
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = trunc i64 %138 to i32
  store i32 %143, ptr %6, align 4, !tbaa !162
  %144 = load i32, ptr %5, align 4, !tbaa !162
  %145 = icmp eq i32 %144, 1000
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = trunc i64 %138 to i32
  store i32 %147, ptr %5, align 4, !tbaa !162
  br label %148

148:                                              ; preds = %137, %146, %142
  %149 = add nuw nsw i64 %138, 1
  %150 = icmp eq i64 %149, %136
  br i1 %150, label %151, label %137, !llvm.loop !175

151:                                              ; preds = %148, %130
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_makeCurve(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %225, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %15 = load i16, ptr %14, align 8, !tbaa !146
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !131
  %19 = icmp slt i32 %18, %16
  %20 = icmp eq ptr %1, null
  %21 = or i1 %20, %19
  %22 = icmp eq i32 %18, 0
  %23 = or i1 %22, %21
  br i1 %23, label %225, label %24

24:                                               ; preds = %13
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %26 = sext i32 %18 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.17) #22
  %29 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %30 = load i16, ptr %29, align 4, !tbaa !134
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  %33 = load i32, ptr %17, align 8, !tbaa !131
  %34 = sext i1 %32 to i32
  %35 = add nsw i32 %33, %34
  %36 = mul nsw i32 %35, %5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %222, label %38

38:                                               ; preds = %24
  %39 = load ptr, ptr %10, align 8, !tbaa !78
  %40 = load i16, ptr %14, align 8, !tbaa !146
  %41 = sext i16 %40 to i64
  %42 = getelementptr float, ptr %39, i64 %41
  %43 = getelementptr float, ptr %42, i64 -1
  %44 = load float, ptr %43, align 4, !tbaa !85
  br i1 %32, label %52, label %45

45:                                               ; preds = %38
  %46 = sext i16 %40 to i32
  %47 = load i32, ptr %17, align 8, !tbaa !131
  %48 = add nsw i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = getelementptr float, ptr %39, i64 %49
  %51 = getelementptr float, ptr %50, i64 -1
  br label %56

52:                                               ; preds = %38
  %53 = load i32, ptr %17, align 8, !tbaa !131
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %39, i64 %54
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi ptr [ %51, %45 ], [ %55, %52 ]
  %58 = load float, ptr %57, align 4, !tbaa !85
  %59 = fsub float %58, %44
  %60 = xor i16 %31, 1
  %61 = zext nneg i16 %60 to i32
  %62 = sub nuw nsw i32 %36, %61
  %63 = sitofp i32 %62 to float
  %64 = fdiv float %59, %63
  %65 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %66 = sext i16 %40 to i32
  %67 = load i32, ptr %17, align 8, !tbaa !131
  %68 = add nsw i32 %66, -1
  %69 = select i1 %32, i32 0, i32 %68
  %70 = add nsw i32 %69, %66
  %71 = add i32 %70, %67
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 2
  %74 = tail call ptr %65(i64 noundef %73, ptr noundef nonnull @.str.18) #22
  %75 = load i16, ptr %29, align 4, !tbaa !134
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %56
  %79 = load i16, ptr %14, align 8, !tbaa !146
  %80 = sext i16 %79 to i32
  %81 = add nsw i32 %80, -1
  br label %82

82:                                               ; preds = %56, %78
  %83 = phi i32 [ %81, %78 ], [ 0, %56 ]
  %84 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %85 = sext i32 %6 to i64
  br label %86

86:                                               ; preds = %82, %207
  %87 = phi i32 [ %36, %82 ], [ %93, %207 ]
  %88 = phi ptr [ %4, %82 ], [ %217, %207 ]
  %89 = phi ptr [ %3, %82 ], [ %214, %207 ]
  %90 = phi ptr [ %2, %82 ], [ %211, %207 ]
  %91 = phi ptr [ %1, %82 ], [ %208, %207 ]
  %92 = phi float [ %44, %82 ], [ %218, %207 ]
  %93 = add nsw i32 %87, -1
  %94 = load i16, ptr %14, align 8, !tbaa !146
  %95 = load i32, ptr %17, align 8, !tbaa !131
  %96 = add nsw i32 %95, %83
  %97 = load ptr, ptr %10, align 8, !tbaa !78
  call fastcc void @basisNurb(float noundef %92, i16 noundef signext %94, i32 noundef %96, ptr noundef %97, ptr noundef %74, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %98 = load ptr, ptr %84, align 8, !tbaa !77
  %99 = load i32, ptr %8, align 4, !tbaa !162
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.BPoint, ptr %98, i64 %100
  %102 = getelementptr inbounds %struct.BPoint, ptr %101, i64 -1
  %103 = load i32, ptr %9, align 4, !tbaa !162
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %130, label %105

105:                                              ; preds = %86
  %106 = load i32, ptr %17, align 8, !tbaa !131
  %107 = sext i32 %106 to i64
  %108 = sext i32 %106 to i64
  %109 = add i32 %103, 1
  br label %110

110:                                              ; preds = %105, %110
  %111 = phi i64 [ %100, %105 ], [ %126, %110 ]
  %112 = phi ptr [ %28, %105 ], [ %127, %110 ]
  %113 = phi ptr [ %102, %105 ], [ %119, %110 ]
  %114 = phi float [ 0.000000e+00, %105 ], [ %125, %110 ]
  %115 = icmp slt i64 %111, %108
  %116 = sub nsw i64 %111, %107
  %117 = getelementptr inbounds %struct.BPoint, ptr %98, i64 %116
  %118 = getelementptr inbounds %struct.BPoint, ptr %113, i64 1
  %119 = select i1 %115, ptr %118, ptr %117
  %120 = getelementptr inbounds float, ptr %74, i64 %111
  %121 = load float, ptr %120, align 4, !tbaa !85
  %122 = getelementptr inbounds [4 x float], ptr %119, i64 0, i64 3
  %123 = load float, ptr %122, align 4, !tbaa !85
  %124 = fmul float %121, %123
  store float %124, ptr %112, align 4, !tbaa !85
  %125 = fadd float %114, %124
  %126 = add nsw i64 %111, 1
  %127 = getelementptr inbounds float, ptr %112, i64 1
  %128 = trunc i64 %126 to i32
  %129 = icmp eq i32 %109, %128
  br i1 %129, label %130, label %110, !llvm.loop !176

130:                                              ; preds = %110, %86
  %131 = phi float [ 0.000000e+00, %86 ], [ %125, %110 ]
  %132 = fcmp une float %131, 0.000000e+00
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = fcmp uge float %131, 0x3FEFF7CEE0000000
  %135 = fcmp ule float %131, 0x3FF00418A0000000
  %136 = and i1 %134, %135
  %137 = icmp sgt i32 %99, %103
  %138 = or i1 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %133, %139
  %140 = phi i32 [ %144, %139 ], [ %99, %133 ]
  %141 = phi ptr [ %145, %139 ], [ %28, %133 ]
  %142 = load float, ptr %141, align 4, !tbaa !85
  %143 = fdiv float %142, %131
  store float %143, ptr %141, align 4, !tbaa !85
  %144 = add i32 %140, 1
  %145 = getelementptr inbounds float, ptr %141, i64 1
  %146 = icmp eq i32 %140, %103
  br i1 %146, label %147, label %139, !llvm.loop !177

147:                                              ; preds = %139, %133, %130
  store float 0.000000e+00, ptr %91, align 4, !tbaa !85
  %148 = getelementptr inbounds float, ptr %91, i64 1
  store float 0.000000e+00, ptr %148, align 4, !tbaa !85
  %149 = getelementptr inbounds float, ptr %91, i64 2
  store float 0.000000e+00, ptr %149, align 4, !tbaa !85
  %150 = icmp sgt i32 %99, %103
  br i1 %150, label %207, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %17, align 8, !tbaa !131
  %153 = icmp eq ptr %90, null
  %154 = icmp eq ptr %89, null
  %155 = icmp eq ptr %88, null
  %156 = sext i32 %152 to i64
  %157 = sext i32 %152 to i64
  %158 = add i32 %103, 1
  br label %159

159:                                              ; preds = %151, %202
  %160 = phi i64 [ %100, %151 ], [ %203, %202 ]
  %161 = phi ptr [ %28, %151 ], [ %204, %202 ]
  %162 = phi ptr [ %102, %151 ], [ %167, %202 ]
  %163 = icmp slt i64 %160, %157
  %164 = sub nsw i64 %160, %156
  %165 = getelementptr inbounds %struct.BPoint, ptr %98, i64 %164
  %166 = getelementptr inbounds %struct.BPoint, ptr %162, i64 1
  %167 = select i1 %163, ptr %166, ptr %165
  %168 = load float, ptr %161, align 4, !tbaa !85
  %169 = fcmp une float %168, 0.000000e+00
  br i1 %169, label %170, label %202

170:                                              ; preds = %159
  %171 = load float, ptr %167, align 4, !tbaa !85
  %172 = load float, ptr %91, align 4, !tbaa !85
  %173 = tail call float @llvm.fmuladd.f32(float %171, float %168, float %172)
  store float %173, ptr %91, align 4, !tbaa !85
  %174 = getelementptr inbounds float, ptr %167, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !85
  %176 = load float, ptr %148, align 4, !tbaa !85
  %177 = tail call float @llvm.fmuladd.f32(float %175, float %168, float %176)
  store float %177, ptr %148, align 4, !tbaa !85
  %178 = getelementptr inbounds float, ptr %167, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !85
  %180 = load float, ptr %149, align 4, !tbaa !85
  %181 = tail call float @llvm.fmuladd.f32(float %179, float %168, float %180)
  store float %181, ptr %149, align 4, !tbaa !85
  br i1 %153, label %188, label %182

182:                                              ; preds = %170
  %183 = load float, ptr %161, align 4, !tbaa !85
  %184 = getelementptr inbounds %struct.BPoint, ptr %167, i64 0, i32 1
  %185 = load float, ptr %184, align 4, !tbaa !178
  %186 = load float, ptr %90, align 4, !tbaa !85
  %187 = tail call float @llvm.fmuladd.f32(float %183, float %185, float %186)
  store float %187, ptr %90, align 4, !tbaa !85
  br label %188

188:                                              ; preds = %182, %170
  br i1 %154, label %195, label %189

189:                                              ; preds = %188
  %190 = load float, ptr %161, align 4, !tbaa !85
  %191 = getelementptr inbounds %struct.BPoint, ptr %167, i64 0, i32 5
  %192 = load float, ptr %191, align 4, !tbaa !152
  %193 = load float, ptr %89, align 4, !tbaa !85
  %194 = tail call float @llvm.fmuladd.f32(float %190, float %192, float %193)
  store float %194, ptr %89, align 4, !tbaa !85
  br label %195

195:                                              ; preds = %189, %188
  br i1 %155, label %202, label %196

196:                                              ; preds = %195
  %197 = load float, ptr %161, align 4, !tbaa !85
  %198 = getelementptr inbounds %struct.BPoint, ptr %167, i64 0, i32 2
  %199 = load float, ptr %198, align 4, !tbaa !179
  %200 = load float, ptr %88, align 4, !tbaa !85
  %201 = tail call float @llvm.fmuladd.f32(float %197, float %199, float %200)
  store float %201, ptr %88, align 4, !tbaa !85
  br label %202

202:                                              ; preds = %159, %196, %195
  %203 = add nsw i64 %160, 1
  %204 = getelementptr inbounds float, ptr %161, i64 1
  %205 = trunc i64 %203 to i32
  %206 = icmp eq i32 %158, %205
  br i1 %206, label %207, label %159, !llvm.loop !180

207:                                              ; preds = %202, %147
  %208 = getelementptr inbounds i8, ptr %91, i64 %85
  %209 = icmp eq ptr %90, null
  %210 = getelementptr inbounds i8, ptr %90, i64 %85
  %211 = select i1 %209, ptr null, ptr %210
  %212 = icmp eq ptr %89, null
  %213 = getelementptr inbounds i8, ptr %89, i64 %85
  %214 = select i1 %212, ptr null, ptr %213
  %215 = icmp eq ptr %88, null
  %216 = getelementptr inbounds i8, ptr %88, i64 %85
  %217 = select i1 %215, ptr null, ptr %216
  %218 = fadd float %64, %92
  %219 = icmp eq i32 %93, 0
  br i1 %219, label %220, label %86, !llvm.loop !181

220:                                              ; preds = %207
  %221 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %221(ptr noundef %28) #22
  br label %222

222:                                              ; preds = %24, %220
  %223 = phi ptr [ %74, %220 ], [ %28, %24 ]
  %224 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %224(ptr noundef %223) #22
  br label %225

225:                                              ; preds = %222, %13, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_forward_diff_bezier(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #14 {
  %8 = sitofp i32 %5 to float
  %9 = fmul float %8, %8
  %10 = fmul float %9, %8
  %11 = fsub float %3, %0
  %12 = fsub float %1, %2
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 3.000000e+00, float %11)
  %14 = fdiv float %13, %10
  %15 = fmul float %14, 6.000000e+00
  %16 = icmp slt i32 %5, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %7
  %18 = tail call float @llvm.fmuladd.f32(float %1, float -2.000000e+00, float %0)
  %19 = fadd float %18, %2
  %20 = fmul float %19, 3.000000e+00
  %21 = fdiv float %20, %9
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float %15)
  %23 = fsub float %1, %0
  %24 = fmul float %23, 3.000000e+00
  %25 = fdiv float %24, %8
  %26 = fadd float %25, %21
  %27 = fadd float %26, %14
  %28 = sext i32 %6 to i64
  br label %29

29:                                               ; preds = %17, %29
  %30 = phi i32 [ 0, %17 ], [ %39, %29 ]
  %31 = phi float [ %0, %17 ], [ %36, %29 ]
  %32 = phi float [ %27, %17 ], [ %37, %29 ]
  %33 = phi float [ %22, %17 ], [ %38, %29 ]
  %34 = phi ptr [ %4, %17 ], [ %35, %29 ]
  store float %31, ptr %34, align 4, !tbaa !85
  %35 = getelementptr inbounds i8, ptr %34, i64 %28
  %36 = fadd float %32, %31
  %37 = fadd float %33, %32
  %38 = fadd float %15, %33
  %39 = add nuw i32 %30, 1
  %40 = icmp eq i32 %30, %5
  br i1 %40, label %41, label %29, !llvm.loop !182

41:                                               ; preds = %29, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_surf_make_orco(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 29
  %9 = load i16, ptr %8, align 8, !tbaa !183
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 30
  %12 = load i16, ptr %11, align 2, !tbaa !184
  %13 = icmp eq i16 %12, 0
  br label %14

14:                                               ; preds = %7, %26
  %15 = phi ptr [ %5, %7 ], [ %49, %26 ]
  %16 = phi i32 [ 0, %7 ], [ %48, %26 ]
  br i1 %10, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 9
  %19 = load i16, ptr %18, align 4, !tbaa !185
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi i16 [ %19, %17 ], [ %9, %14 ]
  %22 = sext i16 %21 to i32
  br i1 %13, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 10
  %25 = load i16, ptr %24, align 2, !tbaa !186
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i16 [ %25, %23 ], [ %12, %20 ]
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !131
  %31 = mul nsw i32 %30, %22
  %32 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !126
  %34 = mul nsw i32 %33, %28
  %35 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  %36 = load i16, ptr %35, align 4, !tbaa !134
  %37 = and i16 %36, 1
  %38 = zext nneg i16 %37 to i32
  %39 = add i32 %31, %38
  %40 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 14
  %41 = load i16, ptr %40, align 2, !tbaa !148
  %42 = and i16 %41, 1
  %43 = zext nneg i16 %42 to i32
  %44 = add i32 %34, %43
  %45 = icmp sgt i32 %33, 1
  %46 = mul nsw i32 %44, %39
  %47 = select i1 %45, i32 %46, i32 0
  %48 = add nsw i32 %47, %16
  %49 = load ptr, ptr %15, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %14, !llvm.loop !187

51:                                               ; preds = %26
  %52 = sext i32 %48 to i64
  %53 = mul nsw i64 %52, 12
  br label %54

54:                                               ; preds = %51, %1
  %55 = phi i64 [ 0, %1 ], [ %53, %51 ]
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %57 = tail call ptr %56(i64 noundef %55, ptr noundef nonnull @.str.19) #22
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
  %73 = load i16, ptr %61, align 8, !tbaa !183
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 9
  %77 = load i16, ptr %76, align 4, !tbaa !185
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi i16 [ %77, %75 ], [ %73, %70 ]
  %80 = sext i16 %79 to i32
  %81 = load i16, ptr %62, align 2, !tbaa !184
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 10
  %85 = load i16, ptr %84, align 2, !tbaa !186
  br label %86

86:                                               ; preds = %78, %83
  %87 = phi i16 [ %85, %83 ], [ %81, %78 ]
  %88 = sext i16 %87 to i32
  %89 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 7
  %90 = load i32, ptr %89, align 4, !tbaa !126
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %216

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 6
  %94 = load i32, ptr %93, align 8, !tbaa !131
  %95 = mul i32 %94, %80
  %96 = mul i32 %90, %88
  %97 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 13
  %98 = load i16, ptr %97, align 4, !tbaa !134
  %99 = and i16 %98, 1
  %100 = zext nneg i16 %99 to i32
  %101 = add i32 %95, %100
  %102 = getelementptr inbounds %struct.Nurb, ptr %71, i64 0, i32 14
  %103 = load i16, ptr %102, align 2, !tbaa !148
  %104 = and i16 %103, 1
  %105 = zext nneg i16 %104 to i32
  %106 = add i32 %96, %105
  %107 = load i32, ptr %63, align 4, !tbaa !86
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
  store float %128, ptr %137, align 4, !tbaa !85
  %138 = getelementptr inbounds float, ptr %131, i64 2
  store float 0.000000e+00, ptr %138, align 4, !tbaa !85
  %139 = getelementptr inbounds float, ptr %131, i64 3
  %140 = add nuw nsw i32 %130, 1
  %141 = icmp eq i32 %140, %106
  br i1 %141, label %142, label %129, !llvm.loop !188

142:                                              ; preds = %129, %120
  %143 = phi ptr [ %122, %120 ], [ %139, %129 ]
  %144 = add nuw nsw i32 %121, 1
  %145 = icmp eq i32 %144, %101
  br i1 %145, label %216, label %120, !llvm.loop !189

146:                                              ; preds = %92
  %147 = mul i32 %96, 12
  %148 = mul i32 %147, %95
  %149 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %150 = sext i32 %148 to i64
  %151 = tail call ptr %149(i64 noundef %150, ptr noundef nonnull @.str.20) #22
  tail call void @BKE_nurb_makeFaces(ptr noundef nonnull %71, ptr noundef %151, i32 noundef 0, i32 noundef %80, i32 noundef %88)
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
  %162 = load i16, ptr %97, align 4, !tbaa !134
  %163 = and i16 %162, 1
  %164 = icmp eq i16 %163, 0
  %165 = select i1 %164, i32 %158, i32 0
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i32 [ %158, %157 ], [ %165, %161 ]
  br i1 %155, label %168, label %209

168:                                              ; preds = %166
  %169 = load i32, ptr %89, align 4, !tbaa !126
  %170 = mul i32 %167, %88
  %171 = mul i32 %170, %169
  br label %172

172:                                              ; preds = %168, %181
  %173 = phi i32 [ 0, %168 ], [ %207, %181 ]
  %174 = phi ptr [ %159, %168 ], [ %206, %181 ]
  %175 = icmp eq i32 %173, %156
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load i16, ptr %102, align 2, !tbaa !148
  %178 = and i16 %177, 1
  %179 = icmp eq i16 %178, 0
  %180 = select i1 %179, i32 %173, i32 0
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
  br i1 %208, label %209, label %172, !llvm.loop !190

209:                                              ; preds = %181, %166
  %210 = phi ptr [ %159, %166 ], [ %206, %181 ]
  %211 = add nuw nsw i32 %158, 1
  %212 = icmp eq i32 %211, %101
  br i1 %212, label %213, label %157, !llvm.loop !191

213:                                              ; preds = %209, %146
  %214 = phi ptr [ %72, %146 ], [ %210, %209 ]
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %215(ptr noundef %151) #22
  br label %216

216:                                              ; preds = %142, %110, %213, %86
  %217 = phi ptr [ %214, %213 ], [ %72, %86 ], [ %72, %110 ], [ %143, %142 ]
  %218 = load ptr, ptr %71, align 8, !tbaa !46
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %70, !llvm.loop !192

220:                                              ; preds = %216, %54
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_make_orco(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @BKE_displist_make_curveTypes_forOrco(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #22
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %3, %54
  %10 = phi ptr [ %56, %54 ], [ %7, %3 ]
  %11 = phi i32 [ %55, %54 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !193
  switch i16 %13, label %54 [
    i16 4, label %14
    i16 2, label %18
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !195
  %17 = add nsw i32 %16, %11
  br label %54

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !196
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %21, 2
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !197
  br i1 %23, label %42, label %28

28:                                               ; preds = %18
  br i1 %25, label %36, label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %27, 1
  %31 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !195
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, %30
  %35 = add nsw i32 %34, %11
  br label %54

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !195
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, %27
  %41 = add nsw i32 %40, %11
  br label %54

42:                                               ; preds = %18
  br i1 %25, label %49, label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %27, 1
  %45 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !195
  %47 = mul nsw i32 %44, %46
  %48 = add nsw i32 %47, %11
  br label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.DispList, ptr %10, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !195
  %52 = mul nsw i32 %51, %27
  %53 = add nsw i32 %52, %11
  br label %54

54:                                               ; preds = %9, %14, %36, %29, %49, %43
  %55 = phi i32 [ %17, %14 ], [ %35, %29 ], [ %41, %36 ], [ %48, %43 ], [ %53, %49 ], [ %11, %9 ]
  %56 = load ptr, ptr %10, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %9, !llvm.loop !198

58:                                               ; preds = %54, %3
  %59 = phi i32 [ 0, %3 ], [ %55, %54 ]
  %60 = icmp eq ptr %2, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 %59, ptr %2, align 4, !tbaa !162
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %64 = sext i32 %59 to i64
  %65 = mul nsw i64 %64, 12
  %66 = call ptr %63(i64 noundef %65, ptr noundef nonnull @.str.21) #22
  %67 = load ptr, ptr %4, align 8, !tbaa !46
  %68 = icmp eq ptr %67, null
  br i1 %68, label %221, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %71 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11
  %72 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12
  %73 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11, i64 1
  %74 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12, i64 1
  %75 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11, i64 2
  %76 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12, i64 2
  %77 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %78 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11
  %79 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12
  %80 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11, i64 1
  %81 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12, i64 1
  %82 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 11, i64 2
  %83 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 12, i64 2
  br label %84

84:                                               ; preds = %69, %217
  %85 = phi ptr [ %67, %69 ], [ %219, %217 ]
  %86 = phi ptr [ %66, %69 ], [ %218, %217 ]
  %87 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 2
  %88 = load i16, ptr %87, align 8, !tbaa !193
  switch i16 %88, label %217 [
    i16 4, label %89
    i16 2, label %139
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !195
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %217

93:                                               ; preds = %89
  %94 = load i32, ptr %77, align 4, !tbaa !86
  %95 = and i32 %94, 32
  %96 = icmp eq i32 %95, 0
  %97 = add nsw i32 %91, -1
  %98 = sitofp i32 %97 to float
  %99 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 8
  %100 = zext nneg i32 %91 to i64
  br label %101

101:                                              ; preds = %93, %135
  %102 = phi i64 [ 0, %93 ], [ %136, %135 ]
  %103 = phi ptr [ %86, %93 ], [ %137, %135 ]
  br i1 %96, label %112, label %104

104:                                              ; preds = %101
  %105 = trunc i64 %102 to i32
  %106 = sitofp i32 %105 to float
  %107 = fmul float %106, 2.000000e+00
  %108 = fdiv float %107, %98
  %109 = fadd float %108, -1.000000e+00
  store float %109, ptr %103, align 4, !tbaa !85
  %110 = getelementptr inbounds float, ptr %103, i64 1
  store float 0.000000e+00, ptr %110, align 4, !tbaa !85
  %111 = getelementptr inbounds float, ptr %103, i64 2
  store float 0.000000e+00, ptr %111, align 4, !tbaa !85
  br label %135

112:                                              ; preds = %101
  %113 = load ptr, ptr %99, align 8, !tbaa !199
  %114 = mul nuw nsw i64 %102, 3
  %115 = getelementptr inbounds float, ptr %113, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !85
  store float %116, ptr %103, align 4, !tbaa !85
  %117 = getelementptr inbounds float, ptr %115, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !85
  %119 = getelementptr inbounds float, ptr %103, i64 1
  store float %118, ptr %119, align 4, !tbaa !85
  %120 = getelementptr inbounds float, ptr %115, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !85
  %122 = getelementptr inbounds float, ptr %103, i64 2
  store float %121, ptr %122, align 4, !tbaa !85
  %123 = load float, ptr %78, align 8, !tbaa !85
  %124 = fsub float %116, %123
  %125 = load float, ptr %79, align 4, !tbaa !85
  %126 = fdiv float %124, %125
  store float %126, ptr %103, align 4, !tbaa !85
  %127 = load float, ptr %80, align 4, !tbaa !85
  %128 = fsub float %118, %127
  %129 = load float, ptr %81, align 4, !tbaa !85
  %130 = fdiv float %128, %129
  store float %130, ptr %119, align 4, !tbaa !85
  %131 = load float, ptr %82, align 8, !tbaa !85
  %132 = fsub float %121, %131
  %133 = load float, ptr %83, align 4, !tbaa !85
  %134 = fdiv float %132, %133
  store float %134, ptr %122, align 4, !tbaa !85
  br label %135

135:                                              ; preds = %104, %112
  %136 = add nuw nsw i64 %102, 1
  %137 = getelementptr inbounds float, ptr %103, i64 3
  %138 = icmp eq i64 %136, %100
  br i1 %138, label %217, label %101, !llvm.loop !200

139:                                              ; preds = %84
  %140 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 5
  %141 = load i32, ptr %140, align 8, !tbaa !195
  %142 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 4
  %143 = load i32, ptr %142, align 4, !tbaa !197
  %144 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 3
  %145 = load i16, ptr %144, align 2, !tbaa !196
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 1
  %148 = add i32 %147, %141
  %149 = lshr i32 %146, 1
  %150 = and i32 %149, 1
  %151 = add i32 %150, %143
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %217

153:                                              ; preds = %139
  %154 = icmp sgt i32 %148, 0
  %155 = add nsw i32 %151, -1
  %156 = sitofp i32 %155 to float
  %157 = add nsw i32 %148, -1
  %158 = sitofp i32 %157 to float
  %159 = getelementptr inbounds %struct.DispList, ptr %85, i64 0, i32 8
  br label %160

160:                                              ; preds = %153, %213
  %161 = phi i32 [ 0, %153 ], [ %215, %213 ]
  %162 = phi ptr [ %86, %153 ], [ %214, %213 ]
  br i1 %154, label %163, label %213

163:                                              ; preds = %160
  %164 = load i32, ptr %70, align 4, !tbaa !86
  %165 = and i32 %164, 32
  %166 = icmp eq i32 %165, 0
  %167 = sitofp i32 %161 to float
  %168 = fmul float %167, 2.000000e+00
  %169 = fdiv float %168, %156
  %170 = fadd float %169, -1.000000e+00
  br label %171

171:                                              ; preds = %163, %209
  %172 = phi i32 [ 0, %163 ], [ %210, %209 ]
  %173 = phi ptr [ %162, %163 ], [ %211, %209 ]
  br i1 %166, label %181, label %174

174:                                              ; preds = %171
  store float %170, ptr %173, align 4, !tbaa !85
  %175 = sitofp i32 %172 to float
  %176 = fmul float %175, 2.000000e+00
  %177 = fdiv float %176, %158
  %178 = fadd float %177, -1.000000e+00
  %179 = getelementptr inbounds float, ptr %173, i64 1
  store float %178, ptr %179, align 4, !tbaa !85
  %180 = getelementptr inbounds float, ptr %173, i64 2
  store float 0.000000e+00, ptr %180, align 4, !tbaa !85
  br label %209

181:                                              ; preds = %171
  %182 = srem i32 %172, %141
  %183 = srem i32 %161, %143
  %184 = load ptr, ptr %159, align 8, !tbaa !199
  %185 = mul nsw i32 %183, %141
  %186 = add nsw i32 %185, %182
  %187 = mul nsw i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, ptr %184, i64 %188
  %190 = load float, ptr %189, align 4, !tbaa !85
  store float %190, ptr %173, align 4, !tbaa !85
  %191 = getelementptr inbounds float, ptr %189, i64 1
  %192 = load float, ptr %191, align 4, !tbaa !85
  %193 = getelementptr inbounds float, ptr %173, i64 1
  store float %192, ptr %193, align 4, !tbaa !85
  %194 = getelementptr inbounds float, ptr %189, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !85
  %196 = getelementptr inbounds float, ptr %173, i64 2
  store float %195, ptr %196, align 4, !tbaa !85
  %197 = load float, ptr %71, align 8, !tbaa !85
  %198 = fsub float %190, %197
  %199 = load float, ptr %72, align 4, !tbaa !85
  %200 = fdiv float %198, %199
  store float %200, ptr %173, align 4, !tbaa !85
  %201 = load float, ptr %73, align 4, !tbaa !85
  %202 = fsub float %192, %201
  %203 = load float, ptr %74, align 4, !tbaa !85
  %204 = fdiv float %202, %203
  store float %204, ptr %193, align 4, !tbaa !85
  %205 = load float, ptr %75, align 8, !tbaa !85
  %206 = fsub float %195, %205
  %207 = load float, ptr %76, align 4, !tbaa !85
  %208 = fdiv float %206, %207
  store float %208, ptr %196, align 4, !tbaa !85
  br label %209

209:                                              ; preds = %174, %181
  %210 = add nuw nsw i32 %172, 1
  %211 = getelementptr inbounds float, ptr %173, i64 3
  %212 = icmp eq i32 %210, %148
  br i1 %212, label %213, label %171, !llvm.loop !201

213:                                              ; preds = %209, %160
  %214 = phi ptr [ %162, %160 ], [ %211, %209 ]
  %215 = add nuw nsw i32 %161, 1
  %216 = icmp eq i32 %215, %151
  br i1 %216, label %217, label %160, !llvm.loop !202

217:                                              ; preds = %213, %135, %139, %89, %84
  %218 = phi ptr [ %86, %84 ], [ %86, %89 ], [ %86, %139 ], [ %137, %135 ], [ %214, %213 ]
  %219 = load ptr, ptr %85, align 8, !tbaa !46
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %84, !llvm.loop !203

221:                                              ; preds = %217, %62
  call void @BKE_displist_free(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret ptr %66
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare void @BKE_displist_make_curveTypes_forOrco(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_bevel_make(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  %11 = icmp eq ptr %10, null
  br i1 %11, label %103, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !137
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %16, label %329

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 25
  %20 = load float, ptr %19, align 4, !tbaa !205
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %329

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 26
  %24 = load float, ptr %23, align 8, !tbaa !206
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %329

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 36
  %28 = load float, ptr %27, align 4, !tbaa !85
  %29 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 36, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !85
  %31 = icmp eq i8 %3, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  call void @BKE_displist_make_curveTypes_forRender(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext %4) #22
  %33 = load ptr, ptr %6, align 8, !tbaa !73
  br label %40

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 118
  %36 = load ptr, ptr %35, align 8, !tbaa !207
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !208
  br label %40

40:                                               ; preds = %34, %38, %32
  %41 = phi ptr [ %33, %32 ], [ %39, %38 ], [ null, %34 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %102, label %43

43:                                               ; preds = %40, %99
  %44 = phi ptr [ %100, %99 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 2
  %46 = load i16, ptr %45, align 8, !tbaa !193
  %47 = icmp ult i16 %46, 2
  br i1 %47, label %48, label %99

48:                                               ; preds = %43
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %50 = call ptr %49(i64 noundef 72, ptr noundef nonnull @.str.22) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %50, ptr noundef nonnull align 8 dereferenceable(72) %44, i64 72, i1 false), !tbaa.struct !210
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !197
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, 12
  %56 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !195
  %58 = sext i32 %57 to i64
  %59 = mul i64 %55, %58
  %60 = call ptr %51(i64 noundef %59, ptr noundef nonnull @.str.22) #22
  %61 = getelementptr inbounds %struct.DispList, ptr %50, i64 0, i32 8
  store ptr %60, ptr %61, align 8, !tbaa !199
  %62 = getelementptr inbounds %struct.DispList, ptr %44, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !199
  %64 = load i32, ptr %52, align 4, !tbaa !197
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 12
  %67 = load i32, ptr %56, align 8, !tbaa !195
  %68 = sext i32 %67 to i64
  %69 = mul i64 %66, %68
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %60, ptr align 4 %63, i64 %69, i1 false)
  %70 = getelementptr inbounds %struct.DispList, ptr %50, i64 0, i32 2
  %71 = load i16, ptr %70, align 8, !tbaa !193
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %48
  %74 = getelementptr inbounds %struct.DispList, ptr %50, i64 0, i32 3
  %75 = load i16, ptr %74, align 2, !tbaa !196
  %76 = or i16 %75, 12
  store i16 %76, ptr %74, align 2, !tbaa !196
  br label %77

77:                                               ; preds = %73, %48
  call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %50) #22
  %78 = getelementptr inbounds %struct.DispList, ptr %50, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !197
  %80 = getelementptr inbounds %struct.DispList, ptr %50, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !195
  %82 = mul nsw i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %61, align 8, !tbaa !199
  br label %86

86:                                               ; preds = %84, %86
  %87 = phi i32 [ %89, %86 ], [ %82, %84 ]
  %88 = phi ptr [ %97, %86 ], [ %85, %84 ]
  %89 = add nsw i32 %87, -1
  %90 = getelementptr inbounds float, ptr %88, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !85
  %92 = fmul float %30, %91
  %93 = getelementptr inbounds float, ptr %88, i64 2
  store float %92, ptr %93, align 4, !tbaa !85
  %94 = load float, ptr %88, align 4, !tbaa !85
  %95 = fneg float %94
  %96 = fmul float %28, %95
  store float %96, ptr %90, align 4, !tbaa !85
  store float 0.000000e+00, ptr %88, align 4, !tbaa !85
  %97 = getelementptr inbounds float, ptr %88, i64 3
  %98 = icmp eq i32 %89, 0
  br i1 %98, label %99, label %86, !llvm.loop !212

99:                                               ; preds = %86, %77, %43
  %100 = load ptr, ptr %44, align 8, !tbaa !213
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %43, !llvm.loop !214

102:                                              ; preds = %99, %40
  call void @BKE_displist_free(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %329

103:                                              ; preds = %5
  %104 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 25
  %105 = load float, ptr %104, align 4, !tbaa !205
  %106 = fcmp une float %105, 0.000000e+00
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 26
  %109 = load float, ptr %108, align 8, !tbaa !206
  %110 = fcmp oeq float %109, 0.000000e+00
  br i1 %110, label %329, label %111

111:                                              ; preds = %107, %103
  %112 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 26
  %113 = load float, ptr %112, align 8, !tbaa !206
  %114 = fcmp oeq float %113, 0.000000e+00
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %117 = tail call ptr %116(i64 noundef 72, ptr noundef nonnull @.str.23) #22
  %118 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %119 = tail call ptr %118(i64 noundef 24, ptr noundef nonnull @.str.23) #22
  %120 = getelementptr inbounds %struct.DispList, ptr %117, i64 0, i32 8
  store ptr %119, ptr %120, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %117) #22
  %121 = getelementptr inbounds %struct.DispList, ptr %117, i64 0, i32 2
  store i16 1, ptr %121, align 8, !tbaa !193
  %122 = getelementptr inbounds %struct.DispList, ptr %117, i64 0, i32 4
  store i32 1, ptr %122, align 4, !tbaa !197
  %123 = getelementptr inbounds %struct.DispList, ptr %117, i64 0, i32 3
  store i16 12, ptr %123, align 2, !tbaa !196
  %124 = getelementptr inbounds %struct.DispList, ptr %117, i64 0, i32 5
  store i32 2, ptr %124, align 8, !tbaa !195
  %125 = load ptr, ptr %120, align 8, !tbaa !199
  %126 = getelementptr inbounds float, ptr %125, i64 1
  store float 0.000000e+00, ptr %126, align 4, !tbaa !85
  store float 0.000000e+00, ptr %125, align 4, !tbaa !85
  %127 = load float, ptr %104, align 4, !tbaa !205
  %128 = fneg float %127
  %129 = getelementptr inbounds float, ptr %125, i64 2
  store float %128, ptr %129, align 4, !tbaa !85
  %130 = getelementptr inbounds float, ptr %125, i64 4
  store float 0.000000e+00, ptr %130, align 4, !tbaa !85
  %131 = getelementptr inbounds float, ptr %125, i64 3
  store float 0.000000e+00, ptr %131, align 4, !tbaa !85
  %132 = load float, ptr %104, align 4, !tbaa !205
  %133 = getelementptr inbounds float, ptr %125, i64 5
  store float %132, ptr %133, align 4, !tbaa !85
  br label %329

134:                                              ; preds = %111
  %135 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 23
  %136 = load i32, ptr %135, align 4, !tbaa !86
  %137 = and i32 %136, 6
  %138 = icmp ne i32 %137, 0
  %139 = or i1 %106, %138
  br i1 %139, label %183, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 21
  %142 = load i16, ptr %141, align 8, !tbaa !215
  %143 = sext i16 %142 to i32
  %144 = shl nsw i32 %143, 1
  %145 = add nsw i32 %144, 4
  %146 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %147 = tail call ptr %146(i64 noundef 72, ptr noundef nonnull @.str.24) #22
  %148 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %149 = mul nsw i32 %145, 12
  %150 = sext i32 %149 to i64
  %151 = tail call ptr %148(i64 noundef %150, ptr noundef nonnull @.str.24) #22
  %152 = getelementptr inbounds %struct.DispList, ptr %147, i64 0, i32 8
  store ptr %151, ptr %152, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %147) #22
  %153 = getelementptr inbounds %struct.DispList, ptr %147, i64 0, i32 2
  store i16 0, ptr %153, align 8, !tbaa !193
  %154 = getelementptr inbounds %struct.DispList, ptr %147, i64 0, i32 4
  store i32 1, ptr %154, align 4, !tbaa !197
  %155 = getelementptr inbounds %struct.DispList, ptr %147, i64 0, i32 3
  store i16 8, ptr %155, align 2, !tbaa !196
  %156 = getelementptr inbounds %struct.DispList, ptr %147, i64 0, i32 5
  store i32 %145, ptr %156, align 8, !tbaa !195
  %157 = sitofp i32 %145 to float
  %158 = fdiv float 0x401921FB60000000, %157
  %159 = icmp sgt i16 %142, -2
  br i1 %159, label %160, label %329

160:                                              ; preds = %140
  %161 = sub nsw i32 -3, %144
  %162 = sitofp i32 %161 to float
  %163 = fmul float %158, %162
  %164 = load ptr, ptr %152, align 8, !tbaa !199
  br label %165

165:                                              ; preds = %160, %165
  %166 = phi i32 [ %181, %165 ], [ 0, %160 ]
  %167 = phi float [ %179, %165 ], [ %163, %160 ]
  %168 = phi ptr [ %180, %165 ], [ %164, %160 ]
  store float 0.000000e+00, ptr %168, align 4, !tbaa !85
  %169 = tail call float @cosf(float noundef %167) #22
  %170 = load float, ptr %112, align 8, !tbaa !206
  %171 = fmul float %169, %170
  %172 = getelementptr inbounds float, ptr %168, i64 1
  store float %171, ptr %172, align 4, !tbaa !85
  %173 = tail call float @sinf(float noundef %167) #22
  %174 = load float, ptr %112, align 8, !tbaa !206
  %175 = load float, ptr %104, align 4, !tbaa !205
  %176 = fneg float %175
  %177 = tail call float @llvm.fmuladd.f32(float %173, float %174, float %176)
  %178 = getelementptr inbounds float, ptr %168, i64 2
  store float %177, ptr %178, align 4, !tbaa !85
  %179 = fadd float %158, %167
  %180 = getelementptr inbounds float, ptr %168, i64 3
  %181 = add nuw nsw i32 %166, 1
  %182 = icmp eq i32 %181, %145
  br i1 %182, label %329, label %165, !llvm.loop !216

183:                                              ; preds = %134
  %184 = icmp eq i32 %137, 2
  br i1 %184, label %234, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 21
  %187 = load i16, ptr %186, align 8, !tbaa !215
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %188, 2
  %190 = shl nsw i32 %188, 1
  %191 = add nsw i32 %190, 3
  %192 = select i1 %138, i32 %189, i32 %191
  %193 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %194 = tail call ptr %193(i64 noundef 72, ptr noundef nonnull @.str.24) #22
  %195 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %196 = mul nsw i32 %192, 12
  %197 = sext i32 %196 to i64
  %198 = tail call ptr %195(i64 noundef %197, ptr noundef nonnull @.str.24) #22
  %199 = getelementptr inbounds %struct.DispList, ptr %194, i64 0, i32 8
  store ptr %198, ptr %199, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %194) #22
  %200 = getelementptr inbounds %struct.DispList, ptr %194, i64 0, i32 2
  store i16 1, ptr %200, align 8, !tbaa !193
  %201 = getelementptr inbounds %struct.DispList, ptr %194, i64 0, i32 4
  store i32 1, ptr %201, align 4, !tbaa !197
  %202 = getelementptr inbounds %struct.DispList, ptr %194, i64 0, i32 3
  store i16 8, ptr %202, align 2, !tbaa !196
  %203 = getelementptr inbounds %struct.DispList, ptr %194, i64 0, i32 5
  store i32 %192, ptr %203, align 8, !tbaa !195
  %204 = shl i32 %189, 16
  %205 = ashr exact i32 %204, 16
  %206 = add nsw i32 %205, -1
  %207 = sitofp i32 %206 to double
  %208 = fdiv double 0x3FF921FB54442D18, %207
  %209 = fptrunc double %208 to float
  %210 = icmp sgt i32 %192, 0
  br i1 %210, label %211, label %234

211:                                              ; preds = %185
  %212 = sub nsw i32 1, %192
  %213 = sitofp i32 %212 to float
  %214 = fmul float %213, %209
  %215 = load ptr, ptr %199, align 8, !tbaa !199
  br label %216

216:                                              ; preds = %211, %216
  %217 = phi i32 [ %232, %216 ], [ 0, %211 ]
  %218 = phi float [ %230, %216 ], [ %214, %211 ]
  %219 = phi ptr [ %231, %216 ], [ %215, %211 ]
  store float 0.000000e+00, ptr %219, align 4, !tbaa !85
  %220 = tail call float @cosf(float noundef %218) #22
  %221 = load float, ptr %112, align 8, !tbaa !206
  %222 = fmul float %220, %221
  %223 = getelementptr inbounds float, ptr %219, i64 1
  store float %222, ptr %223, align 4, !tbaa !85
  %224 = tail call float @sinf(float noundef %218) #22
  %225 = load float, ptr %112, align 8, !tbaa !206
  %226 = load float, ptr %104, align 4, !tbaa !205
  %227 = fneg float %226
  %228 = tail call float @llvm.fmuladd.f32(float %224, float %225, float %227)
  %229 = getelementptr inbounds float, ptr %219, i64 2
  store float %228, ptr %229, align 4, !tbaa !85
  %230 = fadd float %218, %209
  %231 = getelementptr inbounds float, ptr %219, i64 3
  %232 = add nuw nsw i32 %217, 1
  %233 = icmp eq i32 %232, %192
  br i1 %233, label %234, label %216, !llvm.loop !217

234:                                              ; preds = %216, %185, %183
  %235 = load float, ptr %104, align 4, !tbaa !205
  %236 = fcmp une float %235, 0.000000e+00
  br i1 %236, label %237, label %279

237:                                              ; preds = %234
  %238 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %239 = tail call ptr %238(i64 noundef 72, ptr noundef nonnull @.str.25) #22
  %240 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %241 = tail call ptr %240(i64 noundef 24, ptr noundef nonnull @.str.25) #22
  %242 = getelementptr inbounds %struct.DispList, ptr %239, i64 0, i32 8
  store ptr %241, ptr %242, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %239) #22
  %243 = getelementptr inbounds %struct.DispList, ptr %239, i64 0, i32 2
  store i16 1, ptr %243, align 8, !tbaa !193
  %244 = getelementptr inbounds %struct.DispList, ptr %239, i64 0, i32 4
  store i32 1, ptr %244, align 4, !tbaa !197
  %245 = getelementptr inbounds %struct.DispList, ptr %239, i64 0, i32 5
  store i32 2, ptr %245, align 8, !tbaa !195
  %246 = load ptr, ptr %242, align 8, !tbaa !199
  %247 = load float, ptr %112, align 8, !tbaa !206
  %248 = getelementptr inbounds float, ptr %246, i64 1
  store float %247, ptr %248, align 4, !tbaa !85
  %249 = load float, ptr %104, align 4, !tbaa !205
  %250 = fneg float %249
  %251 = getelementptr inbounds float, ptr %246, i64 2
  store float %250, ptr %251, align 4, !tbaa !85
  %252 = load float, ptr %112, align 8, !tbaa !206
  %253 = getelementptr inbounds float, ptr %246, i64 4
  store float %252, ptr %253, align 4, !tbaa !85
  %254 = load float, ptr %104, align 4, !tbaa !205
  %255 = getelementptr inbounds float, ptr %246, i64 5
  store float %254, ptr %255, align 4, !tbaa !85
  %256 = load i32, ptr %135, align 4, !tbaa !86
  %257 = and i32 %256, 6
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %237
  %260 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %261 = tail call ptr %260(ptr noundef %239) #22
  %262 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %263 = getelementptr inbounds %struct.DispList, ptr %261, i64 0, i32 8
  %264 = load ptr, ptr %263, align 8, !tbaa !199
  %265 = tail call ptr %262(ptr noundef %264) #22
  store ptr %265, ptr %263, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %261) #22
  %266 = load ptr, ptr %263, align 8, !tbaa !199
  %267 = getelementptr inbounds float, ptr %266, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !85
  %269 = fneg float %268
  store float %269, ptr %267, align 4, !tbaa !85
  %270 = getelementptr inbounds float, ptr %266, i64 2
  %271 = load float, ptr %270, align 4, !tbaa !85
  %272 = fneg float %271
  store float %272, ptr %270, align 4, !tbaa !85
  %273 = getelementptr inbounds float, ptr %266, i64 4
  %274 = load float, ptr %273, align 4, !tbaa !85
  %275 = fneg float %274
  store float %275, ptr %273, align 4, !tbaa !85
  %276 = getelementptr inbounds float, ptr %266, i64 5
  %277 = load float, ptr %276, align 4, !tbaa !85
  %278 = fneg float %277
  store float %278, ptr %276, align 4, !tbaa !85
  br label %279

279:                                              ; preds = %237, %259, %234
  %280 = load i32, ptr %135, align 4, !tbaa !86
  %281 = and i32 %280, 6
  %282 = icmp eq i32 %281, 4
  br i1 %282, label %329, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 21
  %285 = load i16, ptr %284, align 8, !tbaa !215
  %286 = sext i16 %285 to i32
  %287 = add nsw i32 %286, 2
  %288 = icmp eq i32 %281, 0
  %289 = shl nsw i32 %286, 1
  %290 = add nsw i32 %289, 3
  %291 = select i1 %288, i32 %290, i32 %287
  %292 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %293 = tail call ptr %292(i64 noundef 72, ptr noundef nonnull @.str.26) #22
  %294 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %295 = mul nsw i32 %291, 12
  %296 = sext i32 %295 to i64
  %297 = tail call ptr %294(i64 noundef %296, ptr noundef nonnull @.str.26) #22
  %298 = getelementptr inbounds %struct.DispList, ptr %293, i64 0, i32 8
  store ptr %297, ptr %298, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %293) #22
  %299 = getelementptr inbounds %struct.DispList, ptr %293, i64 0, i32 2
  store i16 1, ptr %299, align 8, !tbaa !193
  %300 = getelementptr inbounds %struct.DispList, ptr %293, i64 0, i32 3
  store i16 4, ptr %300, align 2, !tbaa !196
  %301 = getelementptr inbounds %struct.DispList, ptr %293, i64 0, i32 4
  store i32 1, ptr %301, align 4, !tbaa !197
  %302 = getelementptr inbounds %struct.DispList, ptr %293, i64 0, i32 5
  store i32 %291, ptr %302, align 8, !tbaa !195
  %303 = shl i32 %287, 16
  %304 = ashr exact i32 %303, 16
  %305 = add nsw i32 %304, -1
  %306 = sitofp i32 %305 to double
  %307 = fdiv double 0x3FF921FB54442D18, %306
  %308 = fptrunc double %307 to float
  %309 = icmp sgt i32 %291, 0
  br i1 %309, label %310, label %329

310:                                              ; preds = %283
  %311 = load ptr, ptr %298, align 8, !tbaa !199
  br label %312

312:                                              ; preds = %310, %312
  %313 = phi i32 [ %327, %312 ], [ 0, %310 ]
  %314 = phi float [ %325, %312 ], [ 0.000000e+00, %310 ]
  %315 = phi ptr [ %326, %312 ], [ %311, %310 ]
  store float 0.000000e+00, ptr %315, align 4, !tbaa !85
  %316 = tail call float @cosf(float noundef %314) #22
  %317 = load float, ptr %112, align 8, !tbaa !206
  %318 = fmul float %316, %317
  %319 = getelementptr inbounds float, ptr %315, i64 1
  store float %318, ptr %319, align 4, !tbaa !85
  %320 = tail call float @sinf(float noundef %314) #22
  %321 = load float, ptr %112, align 8, !tbaa !206
  %322 = load float, ptr %104, align 4, !tbaa !205
  %323 = tail call float @llvm.fmuladd.f32(float %320, float %321, float %322)
  %324 = getelementptr inbounds float, ptr %315, i64 2
  store float %323, ptr %324, align 4, !tbaa !85
  %325 = fadd float %314, %308
  %326 = getelementptr inbounds float, ptr %315, i64 3
  %327 = add nuw nsw i32 %313, 1
  %328 = icmp eq i32 %327, %291
  br i1 %328, label %329, label %312, !llvm.loop !218

329:                                              ; preds = %165, %312, %140, %283, %102, %22, %16, %115, %107, %279, %12
  ret void
}

declare void @BKE_displist_make_curveTypes_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_bevelList_free(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
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
  tail call void %11(ptr noundef nonnull %8) #22
  br label %12

12:                                               ; preds = %10, %4
  %13 = getelementptr inbounds %struct.BevList, ptr %5, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #22
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %19(ptr noundef nonnull %5) #22
  %20 = icmp eq ptr %6, null
  br i1 %20, label %21, label %4, !llvm.loop !219

21:                                               ; preds = %18, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_bevelList_make(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca %struct.BevPoint, align 4
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 67
  %21 = load i8, ptr %20, align 4, !tbaa !102
  %22 = add i8 %21, -1
  %23 = icmp ult i8 %22, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 68
  %26 = load i8, ptr %25, align 1, !tbaa !103
  %27 = add i8 %26, -1
  %28 = icmp ult i8 %27, 2
  br label %29

29:                                               ; preds = %24, %3
  %30 = phi i1 [ true, %3 ], [ %28, %24 ]
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %32 = load ptr, ptr %31, align 8, !tbaa !207
  %33 = getelementptr inbounds %struct.CurveCache, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %29, %50
  %37 = phi ptr [ %38, %50 ], [ %34, %29 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.BevList, ptr %37, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %43(ptr noundef nonnull %40) #22
  br label %44

44:                                               ; preds = %42, %36
  %45 = getelementptr inbounds %struct.BevList, ptr %37, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %49(ptr noundef nonnull %46) #22
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %51(ptr noundef nonnull %37) #22
  %52 = icmp eq ptr %38, null
  br i1 %52, label %53, label %36, !llvm.loop !219

53:                                               ; preds = %50, %29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr %1, align 8, !tbaa !73
  %55 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %60 = load i16, ptr %59, align 8, !tbaa !137
  %61 = icmp ne i16 %60, 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i1 [ false, %53 ], [ %61, %58 ]
  %64 = icmp eq ptr %54, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 23
  %67 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 23
  %68 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 5
  %69 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 25
  %70 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 26
  %71 = icmp eq i8 %2, 0
  %72 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 29
  %73 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %74 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %75 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %76 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %77 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %78 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %79 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 17
  br label %87

80:                                               ; preds = %902, %62
  %81 = phi ptr [ undef, %62 ], [ %903, %902 ]
  %82 = phi i32 [ 0, %62 ], [ %904, %902 ]
  %83 = load ptr, ptr %33, align 8, !tbaa !46
  %84 = icmp eq ptr %83, null
  br i1 %84, label %975, label %85

85:                                               ; preds = %80
  %86 = icmp eq ptr %81, null
  br label %907

87:                                               ; preds = %65, %902
  %88 = phi ptr [ %54, %65 ], [ %905, %902 ]
  %89 = phi i32 [ 0, %65 ], [ %904, %902 ]
  %90 = phi ptr [ undef, %65 ], [ %903, %902 ]
  %91 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 4
  %92 = load i16, ptr %91, align 4, !tbaa !220
  %93 = icmp ne i16 %92, 0
  %94 = and i1 %63, %93
  br i1 %94, label %902, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 5
  %97 = load i16, ptr %96, align 2, !tbaa !128
  %98 = and i16 %97, 8
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %66, align 4, !tbaa !86
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi i1 [ false, %95 ], [ %103, %100 ]
  br i1 %99, label %119, label %106

106:                                              ; preds = %104
  %107 = load i32, ptr %67, align 4, !tbaa !86
  %108 = and i32 %107, 4097
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load ptr, ptr %68, align 8, !tbaa !204
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load float, ptr %69, align 4, !tbaa !205
  %115 = fcmp une float %114, 0.000000e+00
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load float, ptr %70, align 8, !tbaa !206
  %118 = fcmp une float %117, 0.000000e+00
  br label %119

119:                                              ; preds = %104, %106, %116, %113, %110
  %120 = phi i1 [ true, %113 ], [ true, %110 ], [ %118, %116 ], [ true, %106 ], [ true, %104 ]
  %121 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 6
  %122 = load i32, ptr %121, align 8, !tbaa !131
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %144, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 2
  %126 = load i16, ptr %125, align 8, !tbaa !130
  %127 = icmp eq i16 %126, 4
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 11
  %130 = load i16, ptr %129, align 8, !tbaa !146
  %131 = sext i16 %130 to i32
  %132 = icmp slt i32 %122, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = and i16 %97, 1
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 13
  %138 = load i16, ptr %137, align 4, !tbaa !134
  %139 = and i16 %138, 4
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  switch i16 %130, label %144 [
    i16 4, label %142
    i16 3, label %151
  ]

142:                                              ; preds = %141
  %143 = icmp slt i32 %122, 5
  br i1 %143, label %144, label %151

144:                                              ; preds = %142, %141, %128, %119
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %146 = call ptr %145(i64 noundef 136, ptr noundef nonnull @.str.27) #22
  call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %146) #22
  %147 = getelementptr inbounds %struct.BevList, ptr %146, i64 0, i32 2
  store i32 0, ptr %147, align 8, !tbaa !162
  %148 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 21
  %149 = load i32, ptr %148, align 4, !tbaa !221
  %150 = getelementptr inbounds %struct.BevList, ptr %146, i64 0, i32 6
  store i32 %149, ptr %150, align 8, !tbaa !162
  br label %902

151:                                              ; preds = %133, %136, %141, %142, %124
  br i1 %71, label %155, label %152

152:                                              ; preds = %151
  %153 = load i16, ptr %72, align 8, !tbaa !183
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %151
  %156 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 9
  %157 = load i16, ptr %156, align 4, !tbaa !185
  br label %158

158:                                              ; preds = %152, %155
  %159 = phi i16 [ %157, %155 ], [ %153, %152 ]
  %160 = sext i16 %159 to i32
  %161 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 13
  %162 = load i16, ptr %161, align 4, !tbaa !134
  %163 = and i16 %162, 1
  %164 = add nsw i16 %163, -1
  %165 = sext i16 %164 to i32
  %166 = add nsw i32 %122, %165
  %167 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 2
  %168 = load i16, ptr %167, align 8, !tbaa !130
  switch i16 %168, label %902 [
    i16 0, label %169
    i16 1, label %264
    i16 4, label %797
  ]

169:                                              ; preds = %158
  %170 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %171 = zext nneg i32 %122 to i64
  %172 = mul nuw nsw i64 %171, 80
  %173 = add nuw nsw i64 %172, 56
  %174 = call ptr %170(i64 noundef %173, ptr noundef nonnull @.str.28) #22
  br i1 %30, label %175, label %188

175:                                              ; preds = %169
  %176 = load i16, ptr %161, align 4, !tbaa !134
  %177 = and i16 %176, 1
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %181 = sext i32 %166 to i64
  %182 = shl nsw i64 %181, 2
  %183 = call ptr %180(i64 noundef %182, ptr noundef nonnull @.str.29) #22
  %184 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 8
  store ptr %183, ptr %184, align 8, !tbaa !46
  %185 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %186 = call ptr %185(i64 noundef %182, ptr noundef nonnull @.str.30) #22
  %187 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 7
  store ptr %186, ptr %187, align 8, !tbaa !46
  br label %188

188:                                              ; preds = %179, %175, %169
  call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %174) #22
  %189 = load i16, ptr %161, align 4, !tbaa !134
  %190 = and i16 %189, 1
  %191 = add nsw i16 %190, -1
  %192 = sext i16 %191 to i32
  %193 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 4
  store i32 %192, ptr %193, align 8, !tbaa !162
  %194 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 2
  store i32 %122, ptr %194, align 8, !tbaa !162
  %195 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 3
  store i32 0, ptr %195, align 4, !tbaa !162
  %196 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 21
  %197 = load i32, ptr %196, align 4, !tbaa !221
  %198 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 6
  store i32 %197, ptr %198, align 8, !tbaa !162
  %199 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 9
  %200 = getelementptr inbounds %struct.BevList, ptr %174, i64 1, i32 4
  store float 0.000000e+00, ptr %200, align 4, !tbaa !222
  %201 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 17
  %202 = load ptr, ptr %201, align 8, !tbaa !77
  %203 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 8
  %204 = load ptr, ptr %203, align 8, !tbaa !46
  %205 = getelementptr inbounds %struct.BevList, ptr %174, i64 0, i32 7
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  br label %207

207:                                              ; preds = %188, %254
  %208 = phi i32 [ %122, %188 ], [ %213, %254 ]
  %209 = phi ptr [ %202, %188 ], [ %231, %254 ]
  %210 = phi ptr [ %199, %188 ], [ %257, %254 ]
  %211 = phi ptr [ %206, %188 ], [ %256, %254 ]
  %212 = phi ptr [ %204, %188 ], [ %255, %254 ]
  %213 = add nsw i32 %208, -1
  %214 = load float, ptr %209, align 4, !tbaa !85
  store float %214, ptr %210, align 4, !tbaa !85
  %215 = getelementptr inbounds float, ptr %209, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !85
  %217 = getelementptr inbounds float, ptr %210, i64 1
  store float %216, ptr %217, align 4, !tbaa !85
  %218 = getelementptr inbounds float, ptr %209, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !85
  %220 = getelementptr inbounds float, ptr %210, i64 2
  store float %219, ptr %220, align 4, !tbaa !85
  %221 = getelementptr inbounds %struct.BPoint, ptr %209, i64 0, i32 1
  %222 = load float, ptr %221, align 4, !tbaa !178
  %223 = getelementptr inbounds %struct.BevPoint, ptr %210, i64 0, i32 1
  store float %222, ptr %223, align 4, !tbaa !224
  %224 = getelementptr inbounds %struct.BPoint, ptr %209, i64 0, i32 5
  %225 = load float, ptr %224, align 4, !tbaa !152
  %226 = getelementptr inbounds %struct.BevPoint, ptr %210, i64 0, i32 2
  store float %225, ptr %226, align 4, !tbaa !225
  %227 = getelementptr inbounds %struct.BPoint, ptr %209, i64 0, i32 2
  %228 = load float, ptr %227, align 4, !tbaa !179
  %229 = getelementptr inbounds %struct.BevPoint, ptr %210, i64 0, i32 3
  store float %228, ptr %229, align 4, !tbaa !226
  %230 = getelementptr inbounds %struct.BevPoint, ptr %210, i64 0, i32 10
  store i16 1, ptr %230, align 4, !tbaa !227
  %231 = getelementptr inbounds %struct.BPoint, ptr %209, i64 1
  %232 = icmp ne ptr %212, null
  %233 = icmp ne i32 %213, 0
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %235, label %254

235:                                              ; preds = %207
  %236 = load float, ptr %231, align 4, !tbaa !85
  %237 = fsub float %236, %214
  %238 = getelementptr inbounds %struct.BPoint, ptr %209, i64 1, i32 0, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !85
  %240 = fsub float %239, %216
  %241 = getelementptr inbounds %struct.BPoint, ptr %209, i64 1, i32 0, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !85
  %243 = fsub float %242, %219
  %244 = fmul float %240, %240
  %245 = call float @llvm.fmuladd.f32(float %237, float %237, float %244)
  %246 = call float @llvm.fmuladd.f32(float %243, float %243, float %245)
  %247 = call float @sqrtf(float noundef %246) #22
  store float %247, ptr %212, align 4, !tbaa !85
  %248 = getelementptr inbounds %struct.BevPoint, ptr %210, i64 1, i32 4
  store float %247, ptr %248, align 4, !tbaa !222
  %249 = load float, ptr %212, align 4, !tbaa !85
  %250 = fcmp ogt float %249, 0x3EE4F8B580000000
  %251 = zext i1 %250 to i32
  store i32 %251, ptr %211, align 4, !tbaa !162
  %252 = getelementptr inbounds float, ptr %212, i64 1
  %253 = getelementptr inbounds i32, ptr %211, i64 1
  br label %254

254:                                              ; preds = %207, %235
  %255 = phi ptr [ %252, %235 ], [ %212, %207 ]
  %256 = phi ptr [ %253, %235 ], [ %211, %207 ]
  %257 = getelementptr inbounds %struct.BevPoint, ptr %210, i64 1
  %258 = icmp eq i32 %213, 0
  br i1 %258, label %259, label %207, !llvm.loop !228

259:                                              ; preds = %254
  %260 = load i16, ptr %161, align 4, !tbaa !134
  %261 = and i16 %260, 1
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %263, label %902

263:                                              ; preds = %259
  call fastcc void @bevlist_firstlast_direction_calc_from_bpoint(ptr noundef nonnull %88, ptr noundef %174)
  br label %902

264:                                              ; preds = %158
  %265 = mul nsw i32 %166, %160
  %266 = add nsw i32 %265, 1
  %267 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %268 = sext i32 %266 to i64
  %269 = mul nsw i64 %268, 80
  %270 = add nsw i64 %269, 56
  %271 = call ptr %267(i64 noundef %270, ptr noundef nonnull @.str.31) #22
  br i1 %30, label %272, label %285

272:                                              ; preds = %264
  %273 = load i16, ptr %161, align 4, !tbaa !134
  %274 = and i16 %273, 1
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %278 = sext i32 %166 to i64
  %279 = shl nsw i64 %278, 2
  %280 = call ptr %277(i64 noundef %279, ptr noundef nonnull @.str.32) #22
  %281 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 8
  store ptr %280, ptr %281, align 8, !tbaa !46
  %282 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %283 = call ptr %282(i64 noundef %279, ptr noundef nonnull @.str.33) #22
  %284 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 7
  store ptr %283, ptr %284, align 8, !tbaa !46
  br label %285

285:                                              ; preds = %276, %272, %264
  call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %271) #22
  %286 = load i16, ptr %161, align 4, !tbaa !134
  %287 = and i16 %286, 1
  %288 = add nsw i16 %287, -1
  %289 = sext i16 %288 to i32
  %290 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 4
  store i32 %289, ptr %290, align 8, !tbaa !162
  %291 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 21
  %292 = load i32, ptr %291, align 4, !tbaa !221
  %293 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 6
  store i32 %292, ptr %293, align 8, !tbaa !162
  %294 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 9
  %295 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 8
  %296 = load ptr, ptr %295, align 8, !tbaa !46
  %297 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !46
  %299 = getelementptr inbounds %struct.BevList, ptr %271, i64 1, i32 4
  store float 0.000000e+00, ptr %299, align 4, !tbaa !222
  %300 = icmp eq ptr %296, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %285
  store float 0.000000e+00, ptr %296, align 4, !tbaa !85
  store i32 0, ptr %298, align 4, !tbaa !162
  br label %302

302:                                              ; preds = %301, %285
  %303 = load i32, ptr %121, align 8, !tbaa !131
  %304 = add nsw i32 %303, -1
  %305 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 18
  %306 = load ptr, ptr %305, align 8, !tbaa !76
  %307 = icmp eq i16 %287, 0
  %308 = sext i32 %304 to i64
  %309 = select i1 %307, i32 %304, i32 %303
  %310 = select i1 %307, i64 0, i64 %308
  %311 = getelementptr inbounds %struct.BezTriple, ptr %306, i64 %310
  %312 = xor i16 %287, 1
  %313 = zext nneg i16 %312 to i64
  %314 = getelementptr inbounds %struct.BezTriple, ptr %306, i64 %313
  %315 = getelementptr inbounds i8, ptr %271, i64 92
  %316 = getelementptr inbounds [3 x [3 x float]], ptr %311, i64 0, i64 2
  %317 = getelementptr inbounds [3 x [3 x float]], ptr %311, i64 0, i64 1
  %318 = load float, ptr %316, align 4, !tbaa !85
  %319 = load float, ptr %317, align 4, !tbaa !85
  %320 = fsub float %318, %319
  store float %320, ptr %315, align 4, !tbaa !85
  %321 = getelementptr inbounds [3 x [3 x float]], ptr %311, i64 0, i64 2, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !85
  %323 = getelementptr inbounds [3 x [3 x float]], ptr %311, i64 0, i64 1, i64 1
  %324 = load float, ptr %323, align 4, !tbaa !85
  %325 = fsub float %322, %324
  %326 = getelementptr inbounds i8, ptr %271, i64 96
  store float %325, ptr %326, align 4, !tbaa !85
  %327 = getelementptr inbounds [3 x [3 x float]], ptr %311, i64 0, i64 2, i64 2
  %328 = load float, ptr %327, align 4, !tbaa !85
  %329 = getelementptr inbounds [3 x [3 x float]], ptr %311, i64 0, i64 1, i64 2
  %330 = load float, ptr %329, align 4, !tbaa !85
  %331 = fsub float %328, %330
  %332 = getelementptr inbounds i8, ptr %271, i64 100
  store float %331, ptr %332, align 4, !tbaa !85
  %333 = fmul float %325, %325
  %334 = call float @llvm.fmuladd.f32(float %320, float %320, float %333)
  %335 = call float @llvm.fmuladd.f32(float %331, float %331, float %334)
  %336 = fcmp ogt float %335, 0x38AA95A5C0000000
  br i1 %336, label %337, label %346

337:                                              ; preds = %302
  %338 = call float @sqrtf(float noundef %335) #22
  %339 = fdiv float 1.000000e+00, %338
  %340 = load float, ptr %315, align 4, !tbaa !85
  %341 = fmul float %340, %339
  store float %341, ptr %315, align 4, !tbaa !85
  %342 = load float, ptr %326, align 4, !tbaa !85
  %343 = fmul float %339, %342
  store float %343, ptr %326, align 4, !tbaa !85
  %344 = load float, ptr %332, align 4, !tbaa !85
  %345 = fmul float %339, %344
  br label %347

346:                                              ; preds = %302
  store float 0.000000e+00, ptr %315, align 4, !tbaa !85
  store float 0.000000e+00, ptr %326, align 4, !tbaa !85
  br label %347

347:                                              ; preds = %337, %346
  %348 = phi float [ 0.000000e+00, %346 ], [ %345, %337 ]
  store float %348, ptr %332, align 4, !tbaa !85
  %349 = icmp eq i32 %309, 0
  br i1 %349, label %739, label %350

350:                                              ; preds = %347
  %351 = sitofp i16 %159 to float
  %352 = fmul float %351, %351
  %353 = fmul float %352, %351
  %354 = icmp slt i16 %159, 0
  %355 = xor i1 %120, true
  %356 = and i1 %105, %355
  %357 = sitofp i16 %159 to float
  %358 = fdiv float 1.000000e+00, %357
  %359 = icmp sgt i16 %159, 0
  %360 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 19
  %361 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 20
  %362 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 19
  %363 = icmp slt i16 %159, 0
  %364 = sitofp i16 %159 to float
  %365 = icmp sgt i16 %159, 0
  %366 = sext i16 %159 to i64
  %367 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 2
  %368 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 2
  %369 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 3
  br label %370

370:                                              ; preds = %350, %733
  %371 = phi i32 [ %309, %350 ], [ %377, %733 ]
  %372 = phi ptr [ %314, %350 ], [ %737, %733 ]
  %373 = phi ptr [ %311, %350 ], [ %372, %733 ]
  %374 = phi ptr [ %294, %350 ], [ %736, %733 ]
  %375 = phi ptr [ %298, %350 ], [ %735, %733 ]
  %376 = phi ptr [ %296, %350 ], [ %734, %733 ]
  %377 = add nsw i32 %371, -1
  %378 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 6
  %379 = load i8, ptr %378, align 2, !tbaa !229
  %380 = icmp eq i8 %379, 2
  br i1 %380, label %382, label %381

381:                                              ; preds = %382, %370
  br label %433

382:                                              ; preds = %370
  %383 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 0, i32 5
  %384 = load i8, ptr %383, align 1, !tbaa !230
  %385 = icmp eq i8 %384, 2
  br i1 %385, label %386, label %381

386:                                              ; preds = %382
  %387 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 1
  %388 = load float, ptr %387, align 4, !tbaa !85
  store float %388, ptr %374, align 4, !tbaa !85
  %389 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 1, i64 1
  %390 = load float, ptr %389, align 4, !tbaa !85
  %391 = getelementptr inbounds float, ptr %374, i64 1
  store float %390, ptr %391, align 4, !tbaa !85
  %392 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 1, i64 2
  %393 = load float, ptr %392, align 4, !tbaa !85
  %394 = getelementptr inbounds float, ptr %374, i64 2
  store float %393, ptr %394, align 4, !tbaa !85
  %395 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 1
  %396 = load float, ptr %395, align 4, !tbaa !231
  %397 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 1
  store float %396, ptr %397, align 4, !tbaa !224
  %398 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 3
  %399 = load float, ptr %398, align 4, !tbaa !149
  %400 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 2
  store float %399, ptr %400, align 4, !tbaa !225
  %401 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 2
  %402 = load float, ptr %401, align 4, !tbaa !232
  %403 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 3
  store float %402, ptr %403, align 4, !tbaa !226
  %404 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 10
  store i16 1, ptr %404, align 4, !tbaa !227
  %405 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 11
  store i16 0, ptr %405, align 2, !tbaa !233
  %406 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 1
  %407 = load i32, ptr %368, align 8, !tbaa !162
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %368, align 8, !tbaa !162
  store i32 1, ptr %369, align 4, !tbaa !162
  %409 = icmp eq ptr %376, null
  br i1 %409, label %733, label %410

410:                                              ; preds = %386
  %411 = getelementptr inbounds [3 x [3 x float]], ptr %372, i64 0, i64 1
  %412 = load float, ptr %411, align 4, !tbaa !85
  %413 = load float, ptr %387, align 4, !tbaa !85
  %414 = fsub float %412, %413
  %415 = getelementptr inbounds [3 x [3 x float]], ptr %372, i64 0, i64 1, i64 1
  %416 = load float, ptr %415, align 4, !tbaa !85
  %417 = load float, ptr %389, align 4, !tbaa !85
  %418 = fsub float %416, %417
  %419 = getelementptr inbounds [3 x [3 x float]], ptr %372, i64 0, i64 1, i64 2
  %420 = load float, ptr %419, align 4, !tbaa !85
  %421 = load float, ptr %392, align 4, !tbaa !85
  %422 = fsub float %420, %421
  %423 = fmul float %418, %418
  %424 = call float @llvm.fmuladd.f32(float %414, float %414, float %423)
  %425 = call float @llvm.fmuladd.f32(float %422, float %422, float %424)
  %426 = call float @sqrtf(float noundef %425) #22
  store float %426, ptr %376, align 4, !tbaa !85
  %427 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 1, i32 4
  store float %426, ptr %427, align 4, !tbaa !222
  %428 = getelementptr inbounds float, ptr %376, i64 1
  %429 = fcmp ogt float %426, 0x3EE4F8B580000000
  br i1 %429, label %430, label %431

430:                                              ; preds = %410
  store i32 1, ptr %375, align 4, !tbaa !162
  br label %431

431:                                              ; preds = %430, %410
  %432 = getelementptr inbounds i32, ptr %375, i64 1
  br label %733

433:                                              ; preds = %381, %472
  %434 = phi i64 [ %473, %472 ], [ 0, %381 ]
  %435 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 1, i64 %434
  %436 = load float, ptr %435, align 4, !tbaa !85
  %437 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 2, i64 %434
  %438 = load float, ptr %437, align 4, !tbaa !85
  %439 = getelementptr inbounds [3 x float], ptr %372, i64 0, i64 %434
  %440 = load float, ptr %439, align 4, !tbaa !85
  %441 = getelementptr inbounds [3 x [3 x float]], ptr %372, i64 0, i64 1, i64 %434
  %442 = load float, ptr %441, align 4, !tbaa !85
  %443 = fsub float %442, %436
  %444 = fsub float %438, %440
  %445 = call float @llvm.fmuladd.f32(float %444, float 3.000000e+00, float %443)
  %446 = fdiv float %445, %353
  %447 = fmul float %446, 6.000000e+00
  br i1 %354, label %472, label %448

448:                                              ; preds = %433
  %449 = call float @llvm.fmuladd.f32(float %438, float -2.000000e+00, float %436)
  %450 = fadd float %449, %440
  %451 = fmul float %450, 3.000000e+00
  %452 = fdiv float %451, %352
  %453 = call float @llvm.fmuladd.f32(float %452, float 2.000000e+00, float %447)
  %454 = fsub float %438, %436
  %455 = fmul float %454, 3.000000e+00
  %456 = fdiv float %455, %351
  %457 = fadd float %456, %452
  %458 = fadd float %457, %446
  %459 = getelementptr inbounds [3 x float], ptr %374, i64 0, i64 %434
  br label %460

460:                                              ; preds = %448, %460
  %461 = phi i32 [ %470, %460 ], [ 0, %448 ]
  %462 = phi float [ %467, %460 ], [ %436, %448 ]
  %463 = phi float [ %468, %460 ], [ %458, %448 ]
  %464 = phi float [ %469, %460 ], [ %453, %448 ]
  %465 = phi ptr [ %466, %460 ], [ %459, %448 ]
  store float %462, ptr %465, align 4, !tbaa !85
  %466 = getelementptr inbounds i8, ptr %465, i64 80
  %467 = fadd float %463, %462
  %468 = fadd float %464, %463
  %469 = fadd float %447, %464
  %470 = add nuw nsw i32 %461, 1
  %471 = icmp eq i32 %461, %160
  br i1 %471, label %472, label %460, !llvm.loop !182

472:                                              ; preds = %460, %433
  %473 = add nuw nsw i64 %434, 1
  %474 = icmp eq i64 %473, 3
  br i1 %474, label %475, label %433, !llvm.loop !234

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 1
  %477 = select i1 %105, ptr null, ptr %476
  %478 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 2
  %479 = select i1 %120, ptr %478, ptr null
  %480 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #22
  br i1 %356, label %617, label %481

481:                                              ; preds = %475
  %482 = load ptr, ptr %305, align 8, !tbaa !76
  %483 = load i32, ptr %121, align 8, !tbaa !131
  %484 = sext i32 %483 to i64
  %485 = getelementptr %struct.BezTriple, ptr %482, i64 %484
  %486 = getelementptr %struct.BezTriple, ptr %485, i64 -1
  %487 = icmp eq ptr %482, %373
  br i1 %487, label %488, label %493

488:                                              ; preds = %481
  %489 = load i16, ptr %161, align 4, !tbaa !134
  %490 = and i16 %489, 1
  %491 = icmp eq i16 %490, 0
  %492 = select i1 %491, ptr %373, ptr %486
  br label %495

493:                                              ; preds = %481
  %494 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 -1
  br label %495

495:                                              ; preds = %493, %488
  %496 = phi ptr [ %494, %493 ], [ %492, %488 ]
  %497 = icmp eq ptr %486, %372
  br i1 %497, label %498, label %503

498:                                              ; preds = %495
  %499 = load i16, ptr %161, align 4, !tbaa !134
  %500 = and i16 %499, 1
  %501 = icmp eq i16 %500, 0
  %502 = select i1 %501, ptr %372, ptr %482
  br label %505

503:                                              ; preds = %495
  %504 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 1
  br label %505

505:                                              ; preds = %498, %503
  %506 = phi ptr [ %504, %503 ], [ %502, %498 ]
  br i1 %359, label %507, label %617

507:                                              ; preds = %505
  %508 = getelementptr inbounds %struct.BezTriple, ptr %496, i64 0, i32 1
  %509 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 1
  %510 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 0, i32 1
  %511 = getelementptr inbounds %struct.BezTriple, ptr %506, i64 0, i32 1
  %512 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 1
  %513 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 0, i32 1
  %514 = getelementptr inbounds %struct.BezTriple, ptr %496, i64 0, i32 3
  %515 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 3
  %516 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 0, i32 3
  %517 = getelementptr inbounds %struct.BezTriple, ptr %506, i64 0, i32 3
  %518 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 3
  %519 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 0, i32 3
  %520 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 2
  %521 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 0, i32 2
  br label %522

522:                                              ; preds = %507, %612
  %523 = phi i32 [ 0, %507 ], [ %614, %612 ]
  %524 = phi ptr [ %477, %507 ], [ %560, %612 ]
  %525 = phi float [ 0.000000e+00, %507 ], [ %615, %612 ]
  %526 = phi ptr [ %479, %507 ], [ %599, %612 ]
  %527 = phi ptr [ %480, %507 ], [ %613, %612 ]
  %528 = icmp eq ptr %524, null
  br i1 %528, label %559, label %529

529:                                              ; preds = %522
  %530 = load i16, ptr %360, align 8, !tbaa !235
  %531 = icmp eq i16 %530, 3
  br i1 %531, label %532, label %542

532:                                              ; preds = %529
  %533 = load float, ptr %512, align 4, !tbaa !231
  %534 = load float, ptr %513, align 4, !tbaa !231
  %535 = fsub float %534, %533
  %536 = fmul float %525, 3.000000e+00
  %537 = fmul float %525, -2.000000e+00
  %538 = fmul float %525, %537
  %539 = fmul float %525, %538
  %540 = call float @llvm.fmuladd.f32(float %536, float %525, float %539)
  %541 = call float @llvm.fmuladd.f32(float %535, float %540, float %533)
  br label %556

542:                                              ; preds = %529
  %543 = sext i16 %530 to i32
  call void @key_curve_position_weights(float noundef %525, ptr noundef nonnull %16, i32 noundef %543) #22
  %544 = load float, ptr %16, align 16, !tbaa !85
  %545 = load float, ptr %508, align 4, !tbaa !231
  %546 = load float, ptr %73, align 4, !tbaa !85
  %547 = load float, ptr %509, align 4, !tbaa !231
  %548 = fmul float %546, %547
  %549 = call float @llvm.fmuladd.f32(float %544, float %545, float %548)
  %550 = load float, ptr %74, align 8, !tbaa !85
  %551 = load float, ptr %510, align 4, !tbaa !231
  %552 = call float @llvm.fmuladd.f32(float %550, float %551, float %549)
  %553 = load float, ptr %75, align 4, !tbaa !85
  %554 = load float, ptr %511, align 4, !tbaa !231
  %555 = call float @llvm.fmuladd.f32(float %553, float %554, float %552)
  br label %556

556:                                              ; preds = %542, %532
  %557 = phi float [ %555, %542 ], [ %541, %532 ]
  store float %557, ptr %524, align 4, !tbaa !85
  %558 = getelementptr inbounds i8, ptr %524, i64 80
  br label %559

559:                                              ; preds = %556, %522
  %560 = phi ptr [ %558, %556 ], [ null, %522 ]
  %561 = icmp eq ptr %526, null
  br i1 %561, label %598, label %562

562:                                              ; preds = %559
  %563 = load i16, ptr %361, align 2, !tbaa !236
  %564 = icmp eq i16 %563, 3
  br i1 %564, label %565, label %575

565:                                              ; preds = %562
  %566 = load float, ptr %518, align 4, !tbaa !149
  %567 = load float, ptr %519, align 4, !tbaa !149
  %568 = fsub float %567, %566
  %569 = fmul float %525, 3.000000e+00
  %570 = fmul float %525, -2.000000e+00
  %571 = fmul float %525, %570
  %572 = fmul float %525, %571
  %573 = call float @llvm.fmuladd.f32(float %569, float %525, float %572)
  %574 = call float @llvm.fmuladd.f32(float %568, float %573, float %566)
  br label %595

575:                                              ; preds = %562
  %576 = icmp eq ptr %560, null
  br i1 %576, label %580, label %577

577:                                              ; preds = %575
  %578 = load i16, ptr %362, align 8, !tbaa !235
  %579 = icmp eq i16 %578, %563
  br i1 %579, label %582, label %580

580:                                              ; preds = %577, %575
  %581 = sext i16 %563 to i32
  call void @key_curve_position_weights(float noundef %525, ptr noundef nonnull %16, i32 noundef %581) #22
  br label %582

582:                                              ; preds = %580, %577
  %583 = load float, ptr %16, align 16, !tbaa !85
  %584 = load float, ptr %514, align 4, !tbaa !149
  %585 = load float, ptr %76, align 4, !tbaa !85
  %586 = load float, ptr %515, align 4, !tbaa !149
  %587 = fmul float %585, %586
  %588 = call float @llvm.fmuladd.f32(float %583, float %584, float %587)
  %589 = load float, ptr %77, align 8, !tbaa !85
  %590 = load float, ptr %516, align 4, !tbaa !149
  %591 = call float @llvm.fmuladd.f32(float %589, float %590, float %588)
  %592 = load float, ptr %78, align 4, !tbaa !85
  %593 = load float, ptr %517, align 4, !tbaa !149
  %594 = call float @llvm.fmuladd.f32(float %592, float %593, float %591)
  br label %595

595:                                              ; preds = %582, %565
  %596 = phi float [ %594, %582 ], [ %574, %565 ]
  store float %596, ptr %526, align 4, !tbaa !85
  %597 = getelementptr inbounds i8, ptr %526, i64 80
  br label %598

598:                                              ; preds = %595, %559
  %599 = phi ptr [ %597, %595 ], [ null, %559 ]
  %600 = icmp eq ptr %527, null
  br i1 %600, label %612, label %601

601:                                              ; preds = %598
  %602 = load float, ptr %520, align 4, !tbaa !232
  %603 = load float, ptr %521, align 4, !tbaa !232
  %604 = fsub float %603, %602
  %605 = fmul float %525, 3.000000e+00
  %606 = fmul float %525, -2.000000e+00
  %607 = fmul float %525, %606
  %608 = fmul float %525, %607
  %609 = call float @llvm.fmuladd.f32(float %605, float %525, float %608)
  %610 = call float @llvm.fmuladd.f32(float %604, float %609, float %602)
  store float %610, ptr %527, align 4, !tbaa !85
  %611 = getelementptr inbounds i8, ptr %527, i64 80
  br label %612

612:                                              ; preds = %601, %598
  %613 = phi ptr [ %611, %601 ], [ null, %598 ]
  %614 = add nuw nsw i32 %523, 1
  %615 = fadd float %358, %525
  %616 = icmp eq i32 %614, %160
  br i1 %616, label %617, label %522, !llvm.loop !237

617:                                              ; preds = %612, %505, %475
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #22
  %618 = load i16, ptr %79, align 2, !tbaa !98
  %619 = icmp eq i16 %618, 4
  br i1 %619, label %620, label %677

620:                                              ; preds = %617
  %621 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 1
  %622 = getelementptr inbounds [3 x [3 x float]], ptr %373, i64 0, i64 2
  %623 = getelementptr inbounds [3 x [3 x float]], ptr %372, i64 0, i64 1
  br i1 %363, label %677, label %624

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 8
  br label %626

626:                                              ; preds = %624, %672
  %627 = phi ptr [ %674, %672 ], [ %625, %624 ]
  %628 = phi i32 [ %675, %672 ], [ 0, %624 ]
  %629 = sitofp i32 %628 to float
  %630 = fdiv float %629, %364
  %631 = call float @llvm.fmuladd.f32(float %630, float -6.000000e+00, float 6.000000e+00)
  %632 = call float @llvm.fmuladd.f32(float %630, float 1.800000e+01, float -1.200000e+01)
  %633 = call float @llvm.fmuladd.f32(float %630, float -1.800000e+01, float 6.000000e+00)
  %634 = fmul float %630, 6.000000e+00
  br label %635

635:                                              ; preds = %626, %635
  %636 = phi i64 [ 0, %626 ], [ %650, %635 ]
  %637 = getelementptr inbounds float, ptr %621, i64 %636
  %638 = load float, ptr %637, align 4, !tbaa !85
  %639 = getelementptr inbounds float, ptr %622, i64 %636
  %640 = load float, ptr %639, align 4, !tbaa !85
  %641 = fmul float %632, %640
  %642 = call float @llvm.fmuladd.f32(float %631, float %638, float %641)
  %643 = getelementptr inbounds float, ptr %372, i64 %636
  %644 = load float, ptr %643, align 4, !tbaa !85
  %645 = call float @llvm.fmuladd.f32(float %633, float %644, float %642)
  %646 = getelementptr inbounds float, ptr %623, i64 %636
  %647 = load float, ptr %646, align 4, !tbaa !85
  %648 = call float @llvm.fmuladd.f32(float %634, float %647, float %645)
  %649 = getelementptr inbounds float, ptr %627, i64 %636
  store float %648, ptr %649, align 4, !tbaa !85
  %650 = add nuw nsw i64 %636, 1
  %651 = icmp eq i64 %650, 3
  br i1 %651, label %652, label %635, !llvm.loop !238

652:                                              ; preds = %635
  %653 = load float, ptr %627, align 4, !tbaa !85
  %654 = getelementptr inbounds float, ptr %627, i64 1
  %655 = load float, ptr %654, align 4, !tbaa !85
  %656 = fmul float %655, %655
  %657 = call float @llvm.fmuladd.f32(float %653, float %653, float %656)
  %658 = getelementptr inbounds float, ptr %627, i64 2
  %659 = load float, ptr %658, align 4, !tbaa !85
  %660 = call float @llvm.fmuladd.f32(float %659, float %659, float %657)
  %661 = fcmp ogt float %660, 0x38AA95A5C0000000
  br i1 %661, label %662, label %671

662:                                              ; preds = %652
  %663 = call float @sqrtf(float noundef %660) #22
  %664 = fdiv float 1.000000e+00, %663
  %665 = load float, ptr %627, align 4, !tbaa !85
  %666 = fmul float %665, %664
  store float %666, ptr %627, align 4, !tbaa !85
  %667 = load float, ptr %654, align 4, !tbaa !85
  %668 = fmul float %664, %667
  store float %668, ptr %654, align 4, !tbaa !85
  %669 = load float, ptr %658, align 4, !tbaa !85
  %670 = fmul float %664, %669
  br label %672

671:                                              ; preds = %652
  store float 0.000000e+00, ptr %627, align 4, !tbaa !85
  store float 0.000000e+00, ptr %654, align 4, !tbaa !85
  br label %672

672:                                              ; preds = %671, %662
  %673 = phi float [ 0.000000e+00, %671 ], [ %670, %662 ]
  store float %673, ptr %658, align 4, !tbaa !85
  %674 = getelementptr inbounds i8, ptr %627, i64 80
  %675 = add nuw nsw i32 %628, 1
  %676 = icmp eq i32 %628, %160
  br i1 %676, label %677, label %626, !llvm.loop !239

677:                                              ; preds = %672, %620, %617
  %678 = getelementptr inbounds %struct.BezTriple, ptr %373, i64 0, i32 5
  %679 = load i8, ptr %678, align 1, !tbaa !230
  %680 = load i8, ptr %378, align 2, !tbaa !229
  %681 = icmp eq i8 %679, %680
  br i1 %681, label %682, label %683

682:                                              ; preds = %677
  switch i8 %679, label %687 [
    i8 0, label %685
    i8 2, label %685
  ]

683:                                              ; preds = %677
  switch i8 %679, label %684 [
    i8 0, label %685
    i8 2, label %685
  ]

684:                                              ; preds = %683
  switch i8 %680, label %687 [
    i8 0, label %685
    i8 2, label %685
  ]

685:                                              ; preds = %684, %684, %683, %683, %682, %682
  %686 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 0, i32 10
  store i16 1, ptr %686, align 4, !tbaa !227
  br label %687

687:                                              ; preds = %685, %684, %682
  %688 = icmp eq ptr %376, null
  br i1 %688, label %725, label %689

689:                                              ; preds = %687
  store float 0.000000e+00, ptr %376, align 4, !tbaa !85
  store i32 0, ptr %375, align 4, !tbaa !162
  br i1 %365, label %690, label %721

690:                                              ; preds = %689, %718
  %691 = phi i32 [ %719, %718 ], [ 0, %689 ]
  %692 = phi ptr [ %693, %718 ], [ %374, %689 ]
  %693 = getelementptr inbounds %struct.BevPoint, ptr %692, i64 1
  %694 = load float, ptr %693, align 4, !tbaa !85
  %695 = load float, ptr %692, align 4, !tbaa !85
  %696 = fsub float %694, %695
  %697 = getelementptr inbounds %struct.BevPoint, ptr %692, i64 1, i32 0, i64 1
  %698 = load float, ptr %697, align 4, !tbaa !85
  %699 = getelementptr inbounds float, ptr %692, i64 1
  %700 = load float, ptr %699, align 4, !tbaa !85
  %701 = fsub float %698, %700
  %702 = getelementptr inbounds %struct.BevPoint, ptr %692, i64 1, i32 0, i64 2
  %703 = load float, ptr %702, align 4, !tbaa !85
  %704 = getelementptr inbounds float, ptr %692, i64 2
  %705 = load float, ptr %704, align 4, !tbaa !85
  %706 = fsub float %703, %705
  %707 = fmul float %701, %701
  %708 = call float @llvm.fmuladd.f32(float %696, float %696, float %707)
  %709 = call float @llvm.fmuladd.f32(float %706, float %706, float %708)
  %710 = call float @sqrtf(float noundef %709) #22
  %711 = getelementptr inbounds %struct.BevPoint, ptr %692, i64 1, i32 4
  store float %710, ptr %711, align 4, !tbaa !222
  %712 = fcmp ogt float %710, 0x3EE4F8B580000000
  br i1 %712, label %713, label %718

713:                                              ; preds = %690
  %714 = load float, ptr %376, align 4, !tbaa !85
  %715 = fadd float %710, %714
  store float %715, ptr %376, align 4, !tbaa !85
  %716 = load i32, ptr %375, align 4, !tbaa !162
  %717 = add nsw i32 %716, 1
  store i32 %717, ptr %375, align 4, !tbaa !162
  br label %718

718:                                              ; preds = %690, %713
  %719 = add nuw nsw i32 %691, 1
  %720 = icmp eq i32 %719, %160
  br i1 %720, label %721, label %690, !llvm.loop !240

721:                                              ; preds = %718, %689
  %722 = phi ptr [ %374, %689 ], [ %693, %718 ]
  %723 = getelementptr inbounds float, ptr %376, i64 1
  %724 = getelementptr inbounds i32, ptr %375, i64 1
  br label %727

725:                                              ; preds = %687
  %726 = getelementptr inbounds %struct.BevPoint, ptr %374, i64 %366
  br label %727

727:                                              ; preds = %725, %721
  %728 = phi ptr [ %723, %721 ], [ null, %725 ]
  %729 = phi ptr [ %724, %721 ], [ %375, %725 ]
  %730 = phi ptr [ %722, %721 ], [ %726, %725 ]
  %731 = load i32, ptr %367, align 8, !tbaa !162
  %732 = add nsw i32 %731, %160
  store i32 %732, ptr %367, align 8, !tbaa !162
  br label %733

733:                                              ; preds = %386, %431, %727
  %734 = phi ptr [ %428, %431 ], [ null, %386 ], [ %728, %727 ]
  %735 = phi ptr [ %432, %431 ], [ %375, %386 ], [ %729, %727 ]
  %736 = phi ptr [ %406, %431 ], [ %406, %386 ], [ %730, %727 ]
  %737 = getelementptr inbounds %struct.BezTriple, ptr %372, i64 1
  %738 = icmp eq i32 %377, 0
  br i1 %738, label %739, label %370, !llvm.loop !241

739:                                              ; preds = %733, %347
  %740 = phi ptr [ %296, %347 ], [ %734, %733 ]
  %741 = phi ptr [ %294, %347 ], [ %736, %733 ]
  %742 = phi ptr [ %311, %347 ], [ %372, %733 ]
  %743 = load i16, ptr %161, align 4, !tbaa !134
  %744 = and i16 %743, 1
  %745 = icmp eq i16 %744, 0
  br i1 %745, label %746, label %902

746:                                              ; preds = %739
  %747 = getelementptr inbounds [3 x [3 x float]], ptr %742, i64 0, i64 1
  %748 = load float, ptr %747, align 4, !tbaa !85
  store float %748, ptr %741, align 4, !tbaa !85
  %749 = getelementptr inbounds [3 x [3 x float]], ptr %742, i64 0, i64 1, i64 1
  %750 = load float, ptr %749, align 4, !tbaa !85
  %751 = getelementptr inbounds float, ptr %741, i64 1
  store float %750, ptr %751, align 4, !tbaa !85
  %752 = getelementptr inbounds [3 x [3 x float]], ptr %742, i64 0, i64 1, i64 2
  %753 = load float, ptr %752, align 4, !tbaa !85
  %754 = getelementptr inbounds float, ptr %741, i64 2
  store float %753, ptr %754, align 4, !tbaa !85
  %755 = getelementptr inbounds %struct.BezTriple, ptr %742, i64 0, i32 1
  %756 = load float, ptr %755, align 4, !tbaa !231
  %757 = getelementptr inbounds %struct.BevPoint, ptr %741, i64 0, i32 1
  store float %756, ptr %757, align 4, !tbaa !224
  %758 = getelementptr inbounds %struct.BezTriple, ptr %742, i64 0, i32 3
  %759 = load float, ptr %758, align 4, !tbaa !149
  %760 = getelementptr inbounds %struct.BevPoint, ptr %741, i64 0, i32 2
  store float %759, ptr %760, align 4, !tbaa !225
  %761 = getelementptr inbounds %struct.BezTriple, ptr %742, i64 0, i32 2
  %762 = load float, ptr %761, align 4, !tbaa !232
  %763 = getelementptr inbounds %struct.BevPoint, ptr %741, i64 0, i32 3
  store float %762, ptr %763, align 4, !tbaa !226
  %764 = getelementptr inbounds %struct.BevPoint, ptr %741, i64 0, i32 7
  %765 = load float, ptr %747, align 4, !tbaa !85
  %766 = load float, ptr %742, align 4, !tbaa !85
  %767 = fsub float %765, %766
  store float %767, ptr %764, align 4, !tbaa !85
  %768 = load float, ptr %749, align 4, !tbaa !85
  %769 = getelementptr inbounds float, ptr %742, i64 1
  %770 = load float, ptr %769, align 4, !tbaa !85
  %771 = fsub float %768, %770
  %772 = getelementptr inbounds %struct.BevPoint, ptr %741, i64 0, i32 7, i64 1
  store float %771, ptr %772, align 4, !tbaa !85
  %773 = load float, ptr %752, align 4, !tbaa !85
  %774 = getelementptr inbounds float, ptr %742, i64 2
  %775 = load float, ptr %774, align 4, !tbaa !85
  %776 = fsub float %773, %775
  %777 = getelementptr inbounds %struct.BevPoint, ptr %741, i64 0, i32 7, i64 2
  store float %776, ptr %777, align 4, !tbaa !85
  %778 = fmul float %771, %771
  %779 = call float @llvm.fmuladd.f32(float %767, float %767, float %778)
  %780 = call float @llvm.fmuladd.f32(float %776, float %776, float %779)
  %781 = fcmp ogt float %780, 0x38AA95A5C0000000
  br i1 %781, label %782, label %791

782:                                              ; preds = %746
  %783 = call float @sqrtf(float noundef %780) #22
  %784 = fdiv float 1.000000e+00, %783
  %785 = load float, ptr %764, align 4, !tbaa !85
  %786 = fmul float %785, %784
  store float %786, ptr %764, align 4, !tbaa !85
  %787 = load float, ptr %772, align 4, !tbaa !85
  %788 = fmul float %784, %787
  store float %788, ptr %772, align 4, !tbaa !85
  %789 = load float, ptr %777, align 4, !tbaa !85
  %790 = fmul float %784, %789
  br label %792

791:                                              ; preds = %746
  store float 0.000000e+00, ptr %764, align 4, !tbaa !85
  store float 0.000000e+00, ptr %772, align 4, !tbaa !85
  br label %792

792:                                              ; preds = %782, %791
  %793 = phi float [ 0.000000e+00, %791 ], [ %790, %782 ]
  store float %793, ptr %777, align 4, !tbaa !85
  %794 = getelementptr inbounds %struct.BevList, ptr %271, i64 0, i32 2
  %795 = load i32, ptr %794, align 8, !tbaa !162
  %796 = add nsw i32 %795, 1
  store i32 %796, ptr %794, align 8, !tbaa !162
  br label %902

797:                                              ; preds = %158
  %798 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 7
  %799 = load i32, ptr %798, align 4, !tbaa !126
  %800 = icmp eq i32 %799, 1
  br i1 %800, label %801, label %902

801:                                              ; preds = %797
  %802 = mul nsw i32 %166, %160
  %803 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %804 = sext i32 %802 to i64
  %805 = mul nsw i64 %804, 80
  %806 = add nsw i64 %805, 56
  %807 = call ptr %803(i64 noundef %806, ptr noundef nonnull @.str.34) #22
  br i1 %30, label %808, label %821

808:                                              ; preds = %801
  %809 = load i16, ptr %161, align 4, !tbaa !134
  %810 = and i16 %809, 1
  %811 = icmp eq i16 %810, 0
  br i1 %811, label %812, label %821

812:                                              ; preds = %808
  %813 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %814 = sext i32 %166 to i64
  %815 = shl nsw i64 %814, 2
  %816 = call ptr %813(i64 noundef %815, ptr noundef nonnull @.str.35) #22
  %817 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 8
  store ptr %816, ptr %817, align 8, !tbaa !46
  %818 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %819 = call ptr %818(i64 noundef %815, ptr noundef nonnull @.str.36) #22
  %820 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 7
  store ptr %819, ptr %820, align 8, !tbaa !46
  br label %821

821:                                              ; preds = %812, %808, %801
  call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %807) #22
  %822 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 2
  store i32 %802, ptr %822, align 8, !tbaa !162
  %823 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 3
  store i32 0, ptr %823, align 4, !tbaa !162
  %824 = load i16, ptr %161, align 4, !tbaa !134
  %825 = and i16 %824, 1
  %826 = add nsw i16 %825, -1
  %827 = sext i16 %826 to i32
  %828 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 4
  store i32 %827, ptr %828, align 8, !tbaa !162
  %829 = getelementptr inbounds %struct.Nurb, ptr %88, i64 0, i32 21
  %830 = load i32, ptr %829, align 4, !tbaa !221
  %831 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 6
  store i32 %830, ptr %831, align 8, !tbaa !162
  %832 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 9
  %833 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 8
  %834 = load ptr, ptr %833, align 8, !tbaa !46
  %835 = getelementptr inbounds %struct.BevList, ptr %807, i64 0, i32 7
  %836 = load ptr, ptr %835, align 8, !tbaa !46
  %837 = getelementptr inbounds i8, ptr %807, i64 68
  %838 = select i1 %105, ptr null, ptr %837
  %839 = getelementptr inbounds %struct.BevList, ptr %807, i64 1, i32 2
  %840 = select i1 %120, ptr %839, ptr null
  %841 = getelementptr inbounds %struct.BevList, ptr %807, i64 1, i32 3
  call void @BKE_nurb_makeCurve(ptr noundef nonnull %88, ptr noundef nonnull %832, ptr noundef %838, ptr noundef %840, ptr noundef nonnull %841, i32 noundef %160, i32 noundef 80)
  %842 = icmp eq ptr %834, null
  br i1 %842, label %896, label %843

843:                                              ; preds = %821
  %844 = icmp eq i32 %166, 0
  br i1 %844, label %896, label %845

845:                                              ; preds = %843
  %846 = getelementptr inbounds %struct.BevList, ptr %807, i64 2, i32 4
  br label %847

847:                                              ; preds = %845, %889
  %848 = phi ptr [ %891, %889 ], [ %846, %845 ]
  %849 = phi ptr [ %893, %889 ], [ %836, %845 ]
  %850 = phi ptr [ %890, %889 ], [ %832, %845 ]
  %851 = phi i32 [ %894, %889 ], [ %166, %845 ]
  %852 = phi ptr [ %892, %889 ], [ %834, %845 ]
  store float 0.000000e+00, ptr %852, align 4, !tbaa !85
  store i32 0, ptr %849, align 4, !tbaa !162
  %853 = icmp eq i32 %851, 1
  %854 = sext i1 %853 to i32
  %855 = add nsw i32 %854, %160
  %856 = icmp sgt i32 %855, 0
  br i1 %856, label %857, label %889

857:                                              ; preds = %847, %885
  %858 = phi i32 [ %887, %885 ], [ 0, %847 ]
  %859 = phi ptr [ %886, %885 ], [ %848, %847 ]
  %860 = phi ptr [ %859, %885 ], [ %850, %847 ]
  %861 = load float, ptr %859, align 4, !tbaa !85
  %862 = load float, ptr %860, align 4, !tbaa !85
  %863 = fsub float %861, %862
  %864 = getelementptr inbounds float, ptr %859, i64 1
  %865 = load float, ptr %864, align 4, !tbaa !85
  %866 = getelementptr inbounds float, ptr %860, i64 1
  %867 = load float, ptr %866, align 4, !tbaa !85
  %868 = fsub float %865, %867
  %869 = getelementptr inbounds float, ptr %859, i64 2
  %870 = load float, ptr %869, align 4, !tbaa !85
  %871 = getelementptr inbounds float, ptr %860, i64 2
  %872 = load float, ptr %871, align 4, !tbaa !85
  %873 = fsub float %870, %872
  %874 = fmul float %868, %868
  %875 = call float @llvm.fmuladd.f32(float %863, float %863, float %874)
  %876 = call float @llvm.fmuladd.f32(float %873, float %873, float %875)
  %877 = call float @sqrtf(float noundef %876) #22
  %878 = getelementptr inbounds %struct.BevPoint, ptr %859, i64 0, i32 4
  store float %877, ptr %878, align 4, !tbaa !222
  %879 = fcmp ogt float %877, 0x3EE4F8B580000000
  br i1 %879, label %880, label %885

880:                                              ; preds = %857
  %881 = load float, ptr %852, align 4, !tbaa !85
  %882 = fadd float %877, %881
  store float %882, ptr %852, align 4, !tbaa !85
  %883 = load i32, ptr %849, align 4, !tbaa !162
  %884 = add nsw i32 %883, 1
  store i32 %884, ptr %849, align 4, !tbaa !162
  br label %885

885:                                              ; preds = %880, %857
  %886 = getelementptr inbounds %struct.BevPoint, ptr %859, i64 1
  %887 = add nuw nsw i32 %858, 1
  %888 = icmp eq i32 %887, %855
  br i1 %888, label %889, label %857, !llvm.loop !242

889:                                              ; preds = %885, %847
  %890 = phi ptr [ %850, %847 ], [ %859, %885 ]
  %891 = phi ptr [ %848, %847 ], [ %886, %885 ]
  %892 = getelementptr inbounds float, ptr %852, i64 1
  %893 = getelementptr inbounds i32, ptr %849, i64 1
  %894 = add nsw i32 %851, -1
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %847, !llvm.loop !243

896:                                              ; preds = %889, %843, %821
  %897 = phi ptr [ null, %821 ], [ %834, %843 ], [ %892, %889 ]
  %898 = load i16, ptr %161, align 4, !tbaa !134
  %899 = and i16 %898, 1
  %900 = icmp eq i16 %899, 0
  br i1 %900, label %901, label %902

901:                                              ; preds = %896
  call fastcc void @bevlist_firstlast_direction_calc_from_bpoint(ptr noundef nonnull %88, ptr noundef %807)
  br label %902

902:                                              ; preds = %158, %144, %792, %739, %797, %901, %896, %259, %263, %87
  %903 = phi ptr [ %90, %87 ], [ %255, %263 ], [ %255, %259 ], [ %740, %792 ], [ %740, %739 ], [ %897, %901 ], [ %897, %896 ], [ %90, %797 ], [ %90, %144 ], [ %90, %158 ]
  %904 = phi i32 [ %89, %87 ], [ %160, %263 ], [ %160, %259 ], [ %160, %792 ], [ %160, %739 ], [ %160, %901 ], [ %160, %896 ], [ %160, %797 ], [ %89, %144 ], [ %160, %158 ]
  %905 = load ptr, ptr %88, align 8, !tbaa !74
  %906 = icmp eq ptr %905, null
  br i1 %906, label %80, label %87, !llvm.loop !244

907:                                              ; preds = %85, %971
  %908 = phi ptr [ %83, %85 ], [ %973, %971 ]
  %909 = phi ptr [ null, %85 ], [ %972, %971 ]
  %910 = getelementptr inbounds %struct.BevList, ptr %908, i64 0, i32 2
  %911 = load i32, ptr %910, align 8, !tbaa !162
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %971, label %913

913:                                              ; preds = %907
  %914 = getelementptr inbounds %struct.BevList, ptr %908, i64 0, i32 4
  %915 = load i32, ptr %914, align 8, !tbaa !162
  %916 = icmp eq i32 %915, -1
  %917 = getelementptr inbounds %struct.BevList, ptr %908, i64 0, i32 9
  br i1 %916, label %922, label %918

918:                                              ; preds = %913
  %919 = sext i32 %911 to i64
  %920 = getelementptr %struct.BevPoint, ptr %917, i64 %919
  %921 = getelementptr %struct.BevPoint, ptr %920, i64 -1
  br label %925

922:                                              ; preds = %913
  %923 = getelementptr inbounds %struct.BevList, ptr %908, i64 1, i32 4
  store float 0.000000e+00, ptr %923, align 4, !tbaa !222
  %924 = getelementptr inbounds %struct.BevList, ptr %908, i64 2, i32 4
  br label %925

925:                                              ; preds = %922, %918
  %926 = phi ptr [ %921, %918 ], [ %917, %922 ]
  %927 = phi ptr [ %917, %918 ], [ %924, %922 ]
  %928 = add nsw i32 %911, -1
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %971, label %930

930:                                              ; preds = %925
  %931 = getelementptr inbounds %struct.BevList, ptr %908, i64 0, i32 3
  br label %932

932:                                              ; preds = %930, %967
  %933 = phi i32 [ %928, %930 ], [ %969, %967 ]
  %934 = phi ptr [ %927, %930 ], [ %968, %967 ]
  %935 = phi ptr [ %926, %930 ], [ %934, %967 ]
  br i1 %86, label %941, label %936

936:                                              ; preds = %932
  %937 = getelementptr inbounds %struct.BevPoint, ptr %934, i64 0, i32 4
  %938 = load float, ptr %937, align 4, !tbaa !222
  %939 = call float @llvm.fabs.f32(float %938)
  %940 = fcmp olt float %939, 0x3EE4F8B580000000
  br i1 %940, label %963, label %967

941:                                              ; preds = %932
  %942 = load float, ptr %935, align 4, !tbaa !85
  %943 = load float, ptr %934, align 4, !tbaa !85
  %944 = fsub float %942, %943
  %945 = call float @llvm.fabs.f32(float %944)
  %946 = fcmp olt float %945, 0x3EE4F8B580000000
  br i1 %946, label %947, label %967

947:                                              ; preds = %941
  %948 = getelementptr inbounds [3 x float], ptr %935, i64 0, i64 1
  %949 = load float, ptr %948, align 4, !tbaa !85
  %950 = getelementptr inbounds [3 x float], ptr %934, i64 0, i64 1
  %951 = load float, ptr %950, align 4, !tbaa !85
  %952 = fsub float %949, %951
  %953 = call float @llvm.fabs.f32(float %952)
  %954 = fcmp olt float %953, 0x3EE4F8B580000000
  br i1 %954, label %955, label %967

955:                                              ; preds = %947
  %956 = getelementptr inbounds [3 x float], ptr %935, i64 0, i64 2
  %957 = load float, ptr %956, align 4, !tbaa !85
  %958 = getelementptr inbounds [3 x float], ptr %934, i64 0, i64 2
  %959 = load float, ptr %958, align 4, !tbaa !85
  %960 = fsub float %957, %959
  %961 = call float @llvm.fabs.f32(float %960)
  %962 = fcmp olt float %961, 0x3EE4F8B580000000
  br i1 %962, label %963, label %967

963:                                              ; preds = %955, %936
  %964 = getelementptr inbounds %struct.BevPoint, ptr %935, i64 0, i32 11
  store i16 1, ptr %964, align 2, !tbaa !233
  %965 = load i32, ptr %931, align 4, !tbaa !162
  %966 = add nsw i32 %965, 1
  store i32 %966, ptr %931, align 4, !tbaa !162
  br label %967

967:                                              ; preds = %963, %941, %955, %947, %936
  %968 = getelementptr inbounds %struct.BevPoint, ptr %934, i64 1
  %969 = add nsw i32 %933, -1
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %971, label %932, !llvm.loop !245

971:                                              ; preds = %967, %925, %907
  %972 = phi ptr [ %909, %907 ], [ %927, %925 ], [ %968, %967 ]
  %973 = load ptr, ptr %908, align 8, !tbaa !46
  %974 = icmp eq ptr %973, null
  br i1 %974, label %975, label %907, !llvm.loop !246

975:                                              ; preds = %971, %80
  %976 = phi ptr [ null, %80 ], [ %972, %971 ]
  %977 = load ptr, ptr %33, align 8, !tbaa !73
  %978 = icmp eq ptr %977, null
  br i1 %978, label %979, label %983

979:                                              ; preds = %1034, %975
  %980 = phi ptr [ %976, %975 ], [ %1035, %1034 ]
  %981 = load ptr, ptr %33, align 8, !tbaa !46
  %982 = icmp eq ptr %981, null
  br i1 %982, label %1054, label %1037

983:                                              ; preds = %975, %1034
  %984 = phi ptr [ %986, %1034 ], [ %977, %975 ]
  %985 = phi ptr [ %1035, %1034 ], [ %976, %975 ]
  %986 = load ptr, ptr %984, align 8, !tbaa !46
  %987 = getelementptr inbounds %struct.BevList, ptr %984, i64 0, i32 2
  %988 = load i32, ptr %987, align 8, !tbaa !162
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1034, label %990

990:                                              ; preds = %983
  %991 = getelementptr inbounds %struct.BevList, ptr %984, i64 0, i32 3
  %992 = load i32, ptr %991, align 4, !tbaa !162
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1034, label %994

994:                                              ; preds = %990
  %995 = add i32 %988, 1
  %996 = sub i32 %995, %992
  %997 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %998 = sext i32 %996 to i64
  %999 = mul nsw i64 %998, 80
  %1000 = add nsw i64 %999, 56
  %1001 = call ptr %997(i64 noundef %1000, ptr noundef nonnull @.str.37) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1001, ptr noundef nonnull align 8 dereferenceable(56) %984, i64 56, i1 false)
  %1002 = getelementptr inbounds %struct.BevList, ptr %984, i64 0, i32 7
  %1003 = load ptr, ptr %1002, align 8, !tbaa !46
  %1004 = getelementptr inbounds %struct.BevList, ptr %1001, i64 0, i32 7
  store ptr %1003, ptr %1004, align 8, !tbaa !46
  %1005 = getelementptr inbounds %struct.BevList, ptr %984, i64 0, i32 8
  %1006 = load ptr, ptr %1005, align 8, !tbaa !46
  %1007 = getelementptr inbounds %struct.BevList, ptr %1001, i64 0, i32 8
  store ptr %1006, ptr %1007, align 8, !tbaa !46
  %1008 = getelementptr inbounds %struct.BevList, ptr %1001, i64 0, i32 2
  store i32 0, ptr %1008, align 8, !tbaa !162
  call void @BLI_remlink(ptr noundef nonnull %33, ptr noundef nonnull %984) #22
  call void @BLI_insertlinkbefore(ptr noundef nonnull %33, ptr noundef %986, ptr noundef %1001) #22
  %1009 = getelementptr inbounds %struct.BevList, ptr %1001, i64 0, i32 9
  %1010 = load i32, ptr %987, align 8, !tbaa !162
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1030, label %1012

1012:                                             ; preds = %994
  %1013 = getelementptr inbounds %struct.BevList, ptr %984, i64 0, i32 9
  br label %1014

1014:                                             ; preds = %1012, %1026
  %1015 = phi i32 [ %1018, %1026 ], [ %1010, %1012 ]
  %1016 = phi ptr [ %1027, %1026 ], [ %1009, %1012 ]
  %1017 = phi ptr [ %1028, %1026 ], [ %1013, %1012 ]
  %1018 = add nsw i32 %1015, -1
  %1019 = getelementptr inbounds %struct.BevPoint, ptr %1017, i64 0, i32 11
  %1020 = load i16, ptr %1019, align 2, !tbaa !233
  %1021 = icmp eq i16 %1020, 0
  br i1 %1021, label %1022, label %1026

1022:                                             ; preds = %1014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %1016, ptr noundef nonnull align 4 dereferenceable(80) %1017, i64 80, i1 false)
  %1023 = getelementptr inbounds %struct.BevPoint, ptr %1016, i64 1
  %1024 = load i32, ptr %1008, align 8, !tbaa !162
  %1025 = add nsw i32 %1024, 1
  store i32 %1025, ptr %1008, align 8, !tbaa !162
  br label %1026

1026:                                             ; preds = %1022, %1014
  %1027 = phi ptr [ %1023, %1022 ], [ %1016, %1014 ]
  %1028 = getelementptr inbounds %struct.BevPoint, ptr %1017, i64 1
  %1029 = icmp eq i32 %1018, 0
  br i1 %1029, label %1030, label %1014, !llvm.loop !247

1030:                                             ; preds = %1026, %994
  %1031 = phi ptr [ %1009, %994 ], [ %1027, %1026 ]
  %1032 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %1032(ptr noundef nonnull %984) #22
  %1033 = getelementptr inbounds %struct.BevList, ptr %1001, i64 0, i32 3
  store i32 0, ptr %1033, align 4, !tbaa !162
  br label %1034

1034:                                             ; preds = %1030, %990, %983
  %1035 = phi ptr [ %1031, %1030 ], [ %985, %990 ], [ %985, %983 ]
  %1036 = icmp eq ptr %986, null
  br i1 %1036, label %979, label %983, !llvm.loop !248

1037:                                             ; preds = %979, %1050
  %1038 = phi ptr [ %1052, %1050 ], [ %981, %979 ]
  %1039 = phi i32 [ %1051, %1050 ], [ 0, %979 ]
  %1040 = getelementptr inbounds %struct.BevList, ptr %1038, i64 0, i32 2
  %1041 = load i32, ptr %1040, align 8, !tbaa !162
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1050, label %1043

1043:                                             ; preds = %1037
  %1044 = getelementptr inbounds %struct.BevList, ptr %1038, i64 0, i32 4
  %1045 = load i32, ptr %1044, align 8, !tbaa !162
  %1046 = icmp sgt i32 %1045, -1
  br i1 %1046, label %1047, label %1050

1047:                                             ; preds = %1043
  %1048 = add nsw i32 %1039, 1
  store i32 %1048, ptr %1044, align 8, !tbaa !162
  %1049 = getelementptr inbounds %struct.BevList, ptr %1038, i64 0, i32 5
  store i32 0, ptr %1049, align 4, !tbaa !162
  br label %1050

1050:                                             ; preds = %1047, %1043, %1037
  %1051 = phi i32 [ %1048, %1047 ], [ %1039, %1043 ], [ %1039, %1037 ]
  %1052 = load ptr, ptr %1038, align 8, !tbaa !46
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1054, label %1037, !llvm.loop !249

1054:                                             ; preds = %1050, %979
  %1055 = phi i32 [ 0, %979 ], [ %1051, %1050 ]
  %1056 = icmp sgt i32 %1055, 0
  br i1 %1056, label %1057, label %1283

1057:                                             ; preds = %1054
  %1058 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %1059 = zext nneg i32 %1055 to i64
  %1060 = shl nuw nsw i64 %1059, 4
  %1061 = call ptr %1058(i64 noundef %1060, ptr noundef nonnull @.str.38) #22
  %1062 = load ptr, ptr %33, align 8, !tbaa !46
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1127, label %1064

1064:                                             ; preds = %1057, %1122
  %1065 = phi ptr [ %1125, %1122 ], [ %1062, %1057 ]
  %1066 = phi ptr [ %1124, %1122 ], [ %980, %1057 ]
  %1067 = phi ptr [ %1123, %1122 ], [ %1061, %1057 ]
  %1068 = getelementptr inbounds %struct.BevList, ptr %1065, i64 0, i32 4
  %1069 = load i32, ptr %1068, align 8, !tbaa !162
  %1070 = icmp sgt i32 %1069, 0
  br i1 %1070, label %1071, label %1122

1071:                                             ; preds = %1064
  %1072 = getelementptr inbounds %struct.BevList, ptr %1065, i64 0, i32 9
  %1073 = getelementptr inbounds %struct.BevList, ptr %1065, i64 0, i32 2
  %1074 = load i32, ptr %1073, align 8, !tbaa !162
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1088, label %1076

1076:                                             ; preds = %1071, %1076
  %1077 = phi ptr [ %1086, %1076 ], [ %1072, %1071 ]
  %1078 = phi ptr [ %1085, %1076 ], [ %1066, %1071 ]
  %1079 = phi i32 [ %1081, %1076 ], [ %1074, %1071 ]
  %1080 = phi float [ %1084, %1076 ], [ 3.000000e+05, %1071 ]
  %1081 = add nsw i32 %1079, -1
  %1082 = load float, ptr %1077, align 4, !tbaa !85
  %1083 = fcmp ogt float %1080, %1082
  %1084 = select i1 %1083, float %1082, float %1080
  %1085 = select i1 %1083, ptr %1077, ptr %1078
  %1086 = getelementptr inbounds %struct.BevPoint, ptr %1077, i64 1
  %1087 = icmp eq i32 %1081, 0
  br i1 %1087, label %1088, label %1076, !llvm.loop !250

1088:                                             ; preds = %1076, %1071
  %1089 = phi float [ 3.000000e+05, %1071 ], [ %1084, %1076 ]
  %1090 = phi ptr [ %1066, %1071 ], [ %1085, %1076 ]
  store ptr %1065, ptr %1067, align 8, !tbaa !251
  %1091 = getelementptr inbounds %struct.BevelSort, ptr %1067, i64 0, i32 1
  store float %1089, ptr %1091, align 8, !tbaa !253
  %1092 = icmp eq ptr %1090, %1072
  %1093 = sext i32 %1074 to i64
  %1094 = getelementptr %struct.BevPoint, ptr %1072, i64 %1093
  %1095 = select i1 %1092, ptr %1094, ptr %1090
  %1096 = getelementptr inbounds %struct.BevPoint, ptr %1095, i64 -1
  %1097 = sext i32 %1074 to i64
  %1098 = getelementptr %struct.BevPoint, ptr %1072, i64 %1097
  %1099 = getelementptr %struct.BevPoint, ptr %1098, i64 -1
  %1100 = icmp eq ptr %1090, %1099
  %1101 = getelementptr inbounds %struct.BevPoint, ptr %1090, i64 1
  %1102 = select i1 %1100, ptr %1072, ptr %1101
  %1103 = load float, ptr %1090, align 4, !tbaa !85
  %1104 = load float, ptr %1096, align 4, !tbaa !85
  %1105 = fsub float %1103, %1104
  %1106 = getelementptr %struct.BevPoint, ptr %1095, i64 -1, i32 0, i64 1
  %1107 = load float, ptr %1106, align 4, !tbaa !85
  %1108 = getelementptr inbounds [3 x float], ptr %1102, i64 0, i64 1
  %1109 = load float, ptr %1108, align 4, !tbaa !85
  %1110 = fsub float %1107, %1109
  %1111 = getelementptr inbounds [3 x float], ptr %1090, i64 0, i64 1
  %1112 = load float, ptr %1111, align 4, !tbaa !85
  %1113 = fsub float %1107, %1112
  %1114 = load float, ptr %1102, align 4, !tbaa !85
  %1115 = fsub float %1104, %1114
  %1116 = fmul float %1113, %1115
  %1117 = call float @llvm.fmuladd.f32(float %1105, float %1110, float %1116)
  %1118 = fcmp ogt float %1117, 0.000000e+00
  %1119 = getelementptr inbounds %struct.BevelSort, ptr %1067, i64 0, i32 2
  %1120 = zext i1 %1118 to i32
  store i32 %1120, ptr %1119, align 4, !tbaa !254
  %1121 = getelementptr inbounds %struct.BevelSort, ptr %1067, i64 1
  br label %1122

1122:                                             ; preds = %1088, %1064
  %1123 = phi ptr [ %1121, %1088 ], [ %1067, %1064 ]
  %1124 = phi ptr [ %1090, %1088 ], [ %1066, %1064 ]
  %1125 = load ptr, ptr %1065, align 8, !tbaa !46
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1127, label %1064, !llvm.loop !255

1127:                                             ; preds = %1122, %1057
  call void @qsort(ptr noundef %1061, i64 noundef %1059, i64 noundef 16, ptr noundef nonnull @vergxcobev) #22
  %1128 = icmp eq i32 %1055, 1
  br i1 %1128, label %1243, label %1129

1129:                                             ; preds = %1127
  %1130 = call i32 @llvm.smax.i32(i32 %1055, i32 2)
  %1131 = zext nneg i32 %1130 to i64
  br label %1132

1132:                                             ; preds = %1129, %1240
  %1133 = phi i64 [ 1, %1129 ], [ %1241, %1240 ]
  %1134 = phi ptr [ %1061, %1129 ], [ %1135, %1240 ]
  %1135 = getelementptr inbounds %struct.BevelSort, ptr %1134, i64 1
  %1136 = load ptr, ptr %1135, align 8, !tbaa !251
  %1137 = add nsw i64 %1133, -1
  %1138 = getelementptr inbounds %struct.BevelSort, ptr %1061, i64 %1137
  %1139 = getelementptr inbounds %struct.BevList, ptr %1136, i64 0, i32 6
  %1140 = load i32, ptr %1139, align 8, !tbaa !162
  %1141 = getelementptr inbounds %struct.BevList, ptr %1136, i64 0, i32 9
  %1142 = getelementptr inbounds i8, ptr %1136, i64 60
  %1143 = trunc i64 %1137 to i32
  br label %1144

1144:                                             ; preds = %1132, %1236
  %1145 = phi i32 [ %1143, %1132 ], [ %1237, %1236 ]
  %1146 = phi ptr [ %1138, %1132 ], [ %1238, %1236 ]
  %1147 = load ptr, ptr %1146, align 8, !tbaa !251
  %1148 = getelementptr inbounds %struct.BevList, ptr %1147, i64 0, i32 6
  %1149 = load i32, ptr %1148, align 8, !tbaa !162
  %1150 = icmp eq i32 %1149, %1140
  br i1 %1150, label %1151, label %1236

1151:                                             ; preds = %1144
  %1152 = load float, ptr %1141, align 4, !tbaa !85
  %1153 = load float, ptr %1142, align 4, !tbaa !85
  %1154 = getelementptr inbounds %struct.BevList, ptr %1147, i64 0, i32 2
  %1155 = load i32, ptr %1154, align 8, !tbaa !162
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1223, label %1157

1157:                                             ; preds = %1151
  %1158 = getelementptr inbounds %struct.BevList, ptr %1147, i64 0, i32 9
  %1159 = sext i32 %1155 to i64
  %1160 = getelementptr %struct.BevPoint, ptr %1158, i64 %1159
  %1161 = getelementptr %struct.BevPoint, ptr %1160, i64 -1
  %1162 = fadd float %1152, 1.000000e+03
  %1163 = fsub float %1153, %1153
  %1164 = fsub float %1152, %1162
  %1165 = fneg float %1164
  br label %1166

1166:                                             ; preds = %1157, %1216
  %1167 = phi i32 [ %1155, %1157 ], [ %1174, %1216 ]
  %1168 = phi ptr [ %1158, %1157 ], [ %1221, %1216 ]
  %1169 = phi i32 [ 0, %1157 ], [ %1220, %1216 ]
  %1170 = phi i32 [ 0, %1157 ], [ %1219, %1216 ]
  %1171 = phi ptr [ %1161, %1157 ], [ %1168, %1216 ]
  %1172 = phi float [ undef, %1157 ], [ %1218, %1216 ]
  %1173 = phi float [ undef, %1157 ], [ %1217, %1216 ]
  %1174 = add nsw i32 %1167, -1
  %1175 = getelementptr inbounds [3 x float], ptr %1171, i64 0, i64 1
  %1176 = load float, ptr %1175, align 4, !tbaa !85
  %1177 = getelementptr inbounds [3 x float], ptr %1168, i64 0, i64 1
  %1178 = load float, ptr %1177, align 4, !tbaa !85
  %1179 = fcmp olt float %1178, %1176
  %1180 = select i1 %1179, float %1178, float %1176
  %1181 = select i1 %1179, float %1176, float %1178
  %1182 = fcmp une float %1180, %1181
  br i1 %1182, label %1183, label %1216

1183:                                             ; preds = %1166
  %1184 = fcmp ugt float %1180, %1153
  %1185 = fcmp ult float %1181, %1153
  %1186 = or i1 %1184, %1185
  br i1 %1186, label %1216, label %1187

1187:                                             ; preds = %1183
  %1188 = load float, ptr %1171, align 4, !tbaa !85
  %1189 = load float, ptr %1168, align 4, !tbaa !85
  %1190 = fsub float %1188, %1189
  %1191 = fsub float %1176, %1178
  %1192 = fmul float %1191, %1165
  %1193 = call float @llvm.fmuladd.f32(float %1190, float %1163, float %1192)
  %1194 = fcmp une float %1193, 0.000000e+00
  br i1 %1194, label %1195, label %1205

1195:                                             ; preds = %1187
  %1196 = fsub float %1176, %1153
  %1197 = fsub float %1188, %1152
  %1198 = fneg float %1197
  %1199 = fmul float %1163, %1198
  %1200 = call float @llvm.fmuladd.f32(float %1196, float %1164, float %1199)
  %1201 = fneg float %1200
  %1202 = fdiv float %1201, %1193
  %1203 = fsub float %1189, %1188
  %1204 = call float @llvm.fmuladd.f32(float %1202, float %1203, float %1188)
  br label %1205

1205:                                             ; preds = %1195, %1187
  %1206 = phi float [ %1173, %1187 ], [ %1202, %1195 ]
  %1207 = phi float [ %1172, %1187 ], [ %1204, %1195 ]
  %1208 = fcmp une float %1206, 0.000000e+00
  %1209 = select i1 %1194, i1 %1208, i1 false
  br i1 %1209, label %1210, label %1216

1210:                                             ; preds = %1205
  %1211 = fcmp olt float %1207, %1152
  br i1 %1211, label %1212, label %1214

1212:                                             ; preds = %1210
  %1213 = add nsw i32 %1170, 1
  br label %1216

1214:                                             ; preds = %1210
  %1215 = add nsw i32 %1169, 1
  br label %1216

1216:                                             ; preds = %1214, %1212, %1205, %1183, %1166
  %1217 = phi float [ %1173, %1183 ], [ %1206, %1212 ], [ %1206, %1214 ], [ %1206, %1205 ], [ %1173, %1166 ]
  %1218 = phi float [ %1172, %1183 ], [ %1207, %1212 ], [ %1207, %1214 ], [ %1207, %1205 ], [ %1172, %1166 ]
  %1219 = phi i32 [ %1170, %1183 ], [ %1213, %1212 ], [ %1170, %1214 ], [ %1170, %1205 ], [ %1170, %1166 ]
  %1220 = phi i32 [ %1169, %1183 ], [ %1169, %1212 ], [ %1215, %1214 ], [ %1169, %1205 ], [ %1169, %1166 ]
  %1221 = getelementptr inbounds %struct.BevPoint, ptr %1168, i64 1
  %1222 = icmp eq i32 %1174, 0
  br i1 %1222, label %1223, label %1166, !llvm.loop !256

1223:                                             ; preds = %1216, %1151
  %1224 = phi i32 [ 0, %1151 ], [ %1219, %1216 ]
  %1225 = phi i32 [ 0, %1151 ], [ %1220, %1216 ]
  %1226 = and i32 %1224, 1
  %1227 = icmp eq i32 %1226, 0
  %1228 = and i32 %1225, 1
  %1229 = icmp eq i32 %1228, 0
  %1230 = select i1 %1227, i1 true, i1 %1229
  br i1 %1230, label %1236, label %1231

1231:                                             ; preds = %1223
  %1232 = getelementptr inbounds %struct.BevList, ptr %1147, i64 0, i32 5
  %1233 = load i32, ptr %1232, align 4, !tbaa !162
  %1234 = sub nsw i32 1, %1233
  %1235 = getelementptr inbounds %struct.BevList, ptr %1136, i64 0, i32 5
  store i32 %1234, ptr %1235, align 4, !tbaa !162
  br label %1240

1236:                                             ; preds = %1144, %1223
  %1237 = add nsw i32 %1145, -1
  %1238 = getelementptr inbounds %struct.BevelSort, ptr %1146, i64 -1
  %1239 = icmp sgt i32 %1145, 0
  br i1 %1239, label %1144, label %1240, !llvm.loop !257

1240:                                             ; preds = %1236, %1231
  %1241 = add nuw nsw i64 %1133, 1
  %1242 = icmp eq i64 %1241, %1131
  br i1 %1242, label %1243, label %1132, !llvm.loop !258

1243:                                             ; preds = %1240, %1127
  %1244 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 23
  %1245 = load i32, ptr %1244, align 4, !tbaa !86
  %1246 = and i32 %1245, 1
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1248, label %1281

1248:                                             ; preds = %1243
  %1249 = call i32 @llvm.smax.i32(i32 %1055, i32 1)
  br label %1250

1250:                                             ; preds = %1248, %1277
  %1251 = phi i32 [ %1278, %1277 ], [ 0, %1248 ]
  %1252 = phi ptr [ %1279, %1277 ], [ %1061, %1248 ]
  %1253 = load ptr, ptr %1252, align 8, !tbaa !251
  %1254 = getelementptr inbounds %struct.BevList, ptr %1253, i64 0, i32 5
  %1255 = load i32, ptr %1254, align 4, !tbaa !162
  %1256 = getelementptr inbounds %struct.BevelSort, ptr %1252, i64 0, i32 2
  %1257 = load i32, ptr %1256, align 4, !tbaa !254
  %1258 = icmp eq i32 %1255, %1257
  br i1 %1258, label %1259, label %1277

1259:                                             ; preds = %1250
  %1260 = getelementptr inbounds %struct.BevList, ptr %1253, i64 0, i32 2
  %1261 = load i32, ptr %1260, align 8, !tbaa !162
  %1262 = add i32 %1261, 1
  %1263 = icmp ult i32 %1262, 3
  br i1 %1263, label %1277, label %1264

1264:                                             ; preds = %1259
  %1265 = sdiv i32 %1261, 2
  %1266 = getelementptr inbounds %struct.BevList, ptr %1253, i64 0, i32 9
  %1267 = sext i32 %1261 to i64
  %1268 = getelementptr %struct.BevPoint, ptr %1266, i64 %1267
  br label %1269

1269:                                             ; preds = %1264, %1269
  %1270 = phi ptr [ %1273, %1269 ], [ %1268, %1264 ]
  %1271 = phi ptr [ %1275, %1269 ], [ %1266, %1264 ]
  %1272 = phi i32 [ %1274, %1269 ], [ %1265, %1264 ]
  %1273 = getelementptr inbounds %struct.BevPoint, ptr %1270, i64 -1
  %1274 = add nsw i32 %1272, -1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %17, ptr noundef nonnull align 4 dereferenceable(80) %1271, i64 80, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %1271, ptr noundef nonnull align 4 dereferenceable(80) %1273, i64 80, i1 false), !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %1273, ptr noundef nonnull align 4 dereferenceable(80) %17, i64 80, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %17)
  %1275 = getelementptr inbounds %struct.BevPoint, ptr %1271, i64 1
  %1276 = icmp eq i32 %1274, 0
  br i1 %1276, label %1277, label %1269, !llvm.loop !261

1277:                                             ; preds = %1269, %1259, %1250
  %1278 = add nuw nsw i32 %1251, 1
  %1279 = getelementptr inbounds %struct.BevelSort, ptr %1252, i64 1
  %1280 = icmp eq i32 %1278, %1249
  br i1 %1280, label %1281, label %1250, !llvm.loop !262

1281:                                             ; preds = %1277, %1243
  %1282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %1282(ptr noundef %1061) #22
  br label %1283

1283:                                             ; preds = %1281, %1054
  %1284 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 23
  %1285 = load i32, ptr %1284, align 4, !tbaa !86
  %1286 = and i32 %1285, 1
  %1287 = icmp eq i32 %1286, 0
  %1288 = load ptr, ptr %33, align 8, !tbaa !46
  %1289 = icmp eq ptr %1288, null
  br i1 %1287, label %1307, label %1290

1290:                                             ; preds = %1283
  br i1 %1289, label %2017, label %1291

1291:                                             ; preds = %1290
  %1292 = sitofp i32 %82 to float
  %1293 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 18
  %1294 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 17
  %1295 = getelementptr inbounds float, ptr %11, i64 1
  %1296 = getelementptr inbounds float, ptr %11, i64 2
  %1297 = getelementptr inbounds float, ptr %12, i64 1
  %1298 = getelementptr inbounds float, ptr %12, i64 2
  %1299 = getelementptr inbounds float, ptr %13, i64 1
  %1300 = getelementptr inbounds float, ptr %13, i64 2
  %1301 = getelementptr inbounds float, ptr %14, i64 1
  %1302 = getelementptr inbounds float, ptr %14, i64 2
  %1303 = getelementptr inbounds float, ptr %7, i64 1
  %1304 = getelementptr inbounds float, ptr %7, i64 2
  %1305 = getelementptr inbounds float, ptr %8, i64 1
  %1306 = getelementptr inbounds float, ptr %8, i64 2
  br label %1510

1307:                                             ; preds = %1283
  br i1 %1289, label %2017, label %1308

1308:                                             ; preds = %1307, %1507
  %1309 = phi ptr [ %1508, %1507 ], [ %1288, %1307 ]
  %1310 = getelementptr inbounds %struct.BevList, ptr %1309, i64 0, i32 2
  %1311 = load i32, ptr %1310, align 8, !tbaa !162
  %1312 = icmp slt i32 %1311, 2
  br i1 %1312, label %1313, label %1315

1313:                                             ; preds = %1308
  %1314 = getelementptr inbounds i8, ptr %1309, i64 116
  call void @unit_qt(ptr noundef nonnull %1314) #22
  br label %1507

1315:                                             ; preds = %1308
  %1316 = icmp eq i32 %1311, 2
  br i1 %1316, label %1317, label %1383

1317:                                             ; preds = %1315
  %1318 = getelementptr inbounds %struct.BevList, ptr %1309, i64 0, i32 9
  %1319 = getelementptr inbounds %struct.BevList, ptr %1309, i64 2, i32 4
  %1320 = load float, ptr %1319, align 4, !tbaa !85
  %1321 = load float, ptr %1318, align 4, !tbaa !85
  %1322 = fsub float %1320, %1321
  %1323 = getelementptr inbounds %struct.BevList, ptr %1309, i64 2, i32 5
  %1324 = load float, ptr %1323, align 4, !tbaa !85
  %1325 = getelementptr inbounds i8, ptr %1309, i64 60
  %1326 = load float, ptr %1325, align 4, !tbaa !85
  %1327 = fsub float %1324, %1326
  %1328 = fneg float %1322
  %1329 = fneg float %1327
  %1330 = getelementptr inbounds i8, ptr %1309, i64 164
  %1331 = getelementptr inbounds %struct.BevList, ptr %1309, i64 3
  %1332 = fmul float %1327, %1327
  %1333 = call float @llvm.fmuladd.f32(float %1322, float %1322, float %1332)
  %1334 = call float @sqrtf(float noundef %1333) #22
  %1335 = fmul float %1327, %1327
  %1336 = call float @llvm.fmuladd.f32(float %1322, float %1322, float %1335)
  %1337 = call float @sqrtf(float noundef %1336) #22
  %1338 = fcmp oeq float %1334, 0.000000e+00
  %1339 = select i1 %1338, float 1.000000e+00, float %1334
  %1340 = fcmp oeq float %1337, 0.000000e+00
  %1341 = select i1 %1340, float 1.000000e+00, float %1337
  %1342 = fdiv float %1322, %1339
  %1343 = fdiv float %1327, %1339
  %1344 = fdiv float %1328, %1341
  %1345 = fdiv float %1329, %1341
  %1346 = fmul float %1343, %1345
  %1347 = call float @llvm.fmuladd.f32(float %1342, float %1344, float %1346)
  %1348 = call float @llvm.fabs.f32(float %1347)
  %1349 = fcmp ult float %1348, 1.000000e+00
  %1350 = fcmp ugt float %1347, -1.000000e+00
  %1351 = select i1 %1349, i1 %1350, i1 false
  br i1 %1351, label %1352, label %1357

1352:                                             ; preds = %1317
  %1353 = fcmp ult float %1347, 1.000000e+00
  br i1 %1353, label %1354, label %1357

1354:                                             ; preds = %1352
  %1355 = call float @acosf(float noundef %1347) #22
  %1356 = fmul float %1355, 5.000000e-01
  br label %1357

1357:                                             ; preds = %1354, %1352, %1317
  %1358 = phi float [ 0x3FF921FB60000000, %1317 ], [ %1356, %1354 ], [ 0.000000e+00, %1352 ]
  %1359 = call float @sinf(float noundef %1358) #22
  %1360 = fsub float %1342, %1344
  %1361 = fsub float %1343, %1345
  %1362 = fcmp oeq float %1360, 0.000000e+00
  %1363 = fcmp oeq float %1361, 0.000000e+00
  %1364 = select i1 %1362, i1 %1363, i1 false
  br i1 %1364, label %1365, label %1367

1365:                                             ; preds = %1357
  %1366 = fneg float %1342
  br label %1373

1367:                                             ; preds = %1357
  %1368 = fmul float %1361, %1361
  %1369 = call float @llvm.fmuladd.f32(float %1360, float %1360, float %1368)
  %1370 = call float @sqrtf(float noundef %1369) #22
  %1371 = fdiv float %1360, %1370
  %1372 = fdiv float %1361, %1370
  br label %1373

1373:                                             ; preds = %1365, %1367
  %1374 = phi float [ %1343, %1365 ], [ %1371, %1367 ]
  %1375 = phi float [ %1366, %1365 ], [ %1372, %1367 ]
  %1376 = fcmp oeq float %1359, 0.000000e+00
  %1377 = select i1 %1376, float 1.000000e+00, float %1359
  %1378 = fneg float %1375
  %1379 = fdiv float %1378, %1377
  store float %1379, ptr %1330, align 4, !tbaa !85
  %1380 = fdiv float %1374, %1377
  store float %1380, ptr %1331, align 4, !tbaa !85
  %1381 = getelementptr inbounds %struct.BevList, ptr %1309, i64 1, i32 5
  store float %1379, ptr %1381, align 4, !tbaa !263
  %1382 = getelementptr inbounds %struct.BevList, ptr %1309, i64 1, i32 6
  store float %1380, ptr %1382, align 4, !tbaa !264
  call fastcc void @make_bevel_list_segment_3D(ptr noundef nonnull %1309)
  br label %1507

1383:                                             ; preds = %1315
  %1384 = getelementptr inbounds %struct.BevList, ptr %1309, i64 0, i32 4
  %1385 = load i32, ptr %1384, align 8, !tbaa !162
  %1386 = icmp eq i32 %1385, -1
  %1387 = getelementptr inbounds %struct.BevList, ptr %1309, i64 0, i32 9
  br i1 %1386, label %1393, label %1388

1388:                                             ; preds = %1383
  %1389 = zext nneg i32 %1311 to i64
  %1390 = getelementptr %struct.BevPoint, ptr %1387, i64 %1389
  %1391 = getelementptr %struct.BevPoint, ptr %1390, i64 -1
  %1392 = getelementptr %struct.BevPoint, ptr %1390, i64 -2
  br label %1397

1393:                                             ; preds = %1383
  %1394 = getelementptr inbounds %struct.BevList, ptr %1309, i64 2, i32 4
  %1395 = getelementptr inbounds %struct.BevList, ptr %1309, i64 3, i32 8
  %1396 = add nsw i32 %1311, -2
  br label %1397

1397:                                             ; preds = %1393, %1388
  %1398 = phi i32 [ %1311, %1388 ], [ %1396, %1393 ]
  %1399 = phi ptr [ %1387, %1388 ], [ %1395, %1393 ]
  %1400 = phi ptr [ %1391, %1388 ], [ %1394, %1393 ]
  %1401 = phi ptr [ %1392, %1388 ], [ %1387, %1393 ]
  %1402 = icmp eq i32 %1398, 0
  br i1 %1402, label %1477, label %1403

1403:                                             ; preds = %1397, %1465
  %1404 = phi ptr [ %1405, %1465 ], [ %1401, %1397 ]
  %1405 = phi ptr [ %1406, %1465 ], [ %1400, %1397 ]
  %1406 = phi ptr [ %1475, %1465 ], [ %1399, %1397 ]
  %1407 = phi i32 [ %1408, %1465 ], [ %1398, %1397 ]
  %1408 = add nsw i32 %1407, -1
  %1409 = load float, ptr %1405, align 4, !tbaa !85
  %1410 = load float, ptr %1404, align 4, !tbaa !85
  %1411 = fsub float %1409, %1410
  %1412 = load float, ptr %1406, align 4, !tbaa !85
  %1413 = fsub float %1409, %1412
  %1414 = getelementptr inbounds [3 x float], ptr %1405, i64 0, i64 1
  %1415 = load float, ptr %1414, align 4, !tbaa !85
  %1416 = getelementptr inbounds [3 x float], ptr %1404, i64 0, i64 1
  %1417 = load float, ptr %1416, align 4, !tbaa !85
  %1418 = fsub float %1415, %1417
  %1419 = getelementptr inbounds [3 x float], ptr %1406, i64 0, i64 1
  %1420 = load float, ptr %1419, align 4, !tbaa !85
  %1421 = fsub float %1415, %1420
  %1422 = getelementptr inbounds %struct.BevPoint, ptr %1405, i64 0, i32 5
  %1423 = getelementptr inbounds %struct.BevPoint, ptr %1405, i64 0, i32 6
  %1424 = fmul float %1418, %1418
  %1425 = call float @llvm.fmuladd.f32(float %1411, float %1411, float %1424)
  %1426 = call float @sqrtf(float noundef %1425) #22
  %1427 = fmul float %1421, %1421
  %1428 = call float @llvm.fmuladd.f32(float %1413, float %1413, float %1427)
  %1429 = call float @sqrtf(float noundef %1428) #22
  %1430 = fcmp oeq float %1426, 0.000000e+00
  %1431 = select i1 %1430, float 1.000000e+00, float %1426
  %1432 = fcmp oeq float %1429, 0.000000e+00
  %1433 = select i1 %1432, float 1.000000e+00, float %1429
  %1434 = fdiv float %1411, %1431
  %1435 = fdiv float %1418, %1431
  %1436 = fdiv float %1413, %1433
  %1437 = fdiv float %1421, %1433
  %1438 = fmul float %1435, %1437
  %1439 = call float @llvm.fmuladd.f32(float %1434, float %1436, float %1438)
  %1440 = call float @llvm.fabs.f32(float %1439)
  %1441 = fcmp ult float %1440, 1.000000e+00
  %1442 = fcmp ugt float %1439, -1.000000e+00
  %1443 = select i1 %1441, i1 %1442, i1 false
  br i1 %1443, label %1444, label %1449

1444:                                             ; preds = %1403
  %1445 = fcmp ult float %1439, 1.000000e+00
  br i1 %1445, label %1446, label %1449

1446:                                             ; preds = %1444
  %1447 = call float @acosf(float noundef %1439) #22
  %1448 = fmul float %1447, 5.000000e-01
  br label %1449

1449:                                             ; preds = %1446, %1444, %1403
  %1450 = phi float [ 0x3FF921FB60000000, %1403 ], [ %1448, %1446 ], [ 0.000000e+00, %1444 ]
  %1451 = call float @sinf(float noundef %1450) #22
  %1452 = fsub float %1434, %1436
  %1453 = fsub float %1435, %1437
  %1454 = fcmp oeq float %1452, 0.000000e+00
  %1455 = fcmp oeq float %1453, 0.000000e+00
  %1456 = select i1 %1454, i1 %1455, i1 false
  br i1 %1456, label %1457, label %1459

1457:                                             ; preds = %1449
  %1458 = fneg float %1434
  br label %1465

1459:                                             ; preds = %1449
  %1460 = fmul float %1453, %1453
  %1461 = call float @llvm.fmuladd.f32(float %1452, float %1452, float %1460)
  %1462 = call float @sqrtf(float noundef %1461) #22
  %1463 = fdiv float %1452, %1462
  %1464 = fdiv float %1453, %1462
  br label %1465

1465:                                             ; preds = %1457, %1459
  %1466 = phi float [ %1435, %1457 ], [ %1463, %1459 ]
  %1467 = phi float [ %1458, %1457 ], [ %1464, %1459 ]
  %1468 = fcmp oeq float %1451, 0.000000e+00
  %1469 = select i1 %1468, float 1.000000e+00, float %1451
  %1470 = fneg float %1467
  %1471 = fdiv float %1470, %1469
  store float %1471, ptr %1422, align 4, !tbaa !85
  %1472 = fdiv float %1466, %1469
  store float %1472, ptr %1423, align 4, !tbaa !85
  %1473 = getelementptr inbounds %struct.BevPoint, ptr %1405, i64 0, i32 7
  call void @bisect_v3_v3v3v3(ptr noundef nonnull %1473, ptr noundef nonnull %1404, ptr noundef nonnull %1405, ptr noundef nonnull %1406) #22
  %1474 = getelementptr inbounds %struct.BevPoint, ptr %1405, i64 0, i32 9
  call void @vec_to_quat(ptr noundef nonnull %1474, ptr noundef nonnull %1473, i16 noundef signext 5, i16 noundef signext 1) #22
  %1475 = getelementptr inbounds %struct.BevPoint, ptr %1406, i64 1
  %1476 = icmp eq i32 %1408, 0
  br i1 %1476, label %1477, label %1403, !llvm.loop !265

1477:                                             ; preds = %1465, %1397
  %1478 = load i32, ptr %1384, align 8, !tbaa !162
  %1479 = icmp eq i32 %1478, -1
  br i1 %1479, label %1480, label %1507

1480:                                             ; preds = %1477
  %1481 = getelementptr inbounds %struct.BevList, ptr %1309, i64 0, i32 9
  %1482 = getelementptr inbounds i8, ptr %1309, i64 92
  %1483 = load float, ptr %1482, align 4, !tbaa !85
  %1484 = getelementptr inbounds i8, ptr %1309, i64 96
  %1485 = load float, ptr %1484, align 4, !tbaa !85
  %1486 = call float @atan2f(float noundef %1483, float noundef %1485) #22
  %1487 = fadd float %1486, 0xBFF921FB60000000
  %1488 = call float @sinf(float noundef %1487) #22
  %1489 = getelementptr inbounds %struct.BevList, ptr %1309, i64 1, i32 5
  store float %1488, ptr %1489, align 4, !tbaa !263
  %1490 = call float @cosf(float noundef %1487) #22
  %1491 = getelementptr inbounds %struct.BevList, ptr %1309, i64 1, i32 6
  store float %1490, ptr %1491, align 4, !tbaa !264
  %1492 = getelementptr inbounds i8, ptr %1309, i64 116
  call void @vec_to_quat(ptr noundef nonnull %1492, ptr noundef nonnull %1482, i16 noundef signext 5, i16 noundef signext 1) #22
  %1493 = load i32, ptr %1310, align 8, !tbaa !162
  %1494 = sext i32 %1493 to i64
  %1495 = getelementptr %struct.BevPoint, ptr %1481, i64 %1494
  %1496 = getelementptr %struct.BevPoint, ptr %1495, i64 -1, i32 7
  %1497 = load float, ptr %1496, align 4, !tbaa !85
  %1498 = getelementptr %struct.BevPoint, ptr %1495, i64 -1, i32 7, i64 1
  %1499 = load float, ptr %1498, align 4, !tbaa !85
  %1500 = call float @atan2f(float noundef %1497, float noundef %1499) #22
  %1501 = fadd float %1500, 0xBFF921FB60000000
  %1502 = call float @sinf(float noundef %1501) #22
  %1503 = getelementptr %struct.BevPoint, ptr %1495, i64 -1, i32 5
  store float %1502, ptr %1503, align 4, !tbaa !263
  %1504 = call float @cosf(float noundef %1501) #22
  %1505 = getelementptr %struct.BevPoint, ptr %1495, i64 -1, i32 6
  store float %1504, ptr %1505, align 4, !tbaa !264
  %1506 = getelementptr %struct.BevPoint, ptr %1495, i64 -1, i32 9
  call void @vec_to_quat(ptr noundef %1506, ptr noundef nonnull %1496, i16 noundef signext 5, i16 noundef signext 1) #22
  br label %1507

1507:                                             ; preds = %1480, %1477, %1313, %1373
  %1508 = load ptr, ptr %1309, align 8, !tbaa !46
  %1509 = icmp eq ptr %1508, null
  br i1 %1509, label %2017, label %1308, !llvm.loop !266

1510:                                             ; preds = %1291, %2014
  %1511 = phi ptr [ %1288, %1291 ], [ %2015, %2014 ]
  %1512 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 2
  %1513 = load i32, ptr %1512, align 8, !tbaa !162
  %1514 = icmp slt i32 %1513, 2
  br i1 %1514, label %1515, label %1517

1515:                                             ; preds = %1510
  %1516 = getelementptr inbounds i8, ptr %1511, i64 116
  call void @unit_qt(ptr noundef nonnull %1516) #22
  br label %2014

1517:                                             ; preds = %1510
  %1518 = icmp eq i32 %1513, 2
  br i1 %1518, label %1519, label %1520

1519:                                             ; preds = %1517
  call fastcc void @make_bevel_list_segment_3D(ptr noundef nonnull %1511)
  br label %2014

1520:                                             ; preds = %1517
  %1521 = load float, ptr %1293, align 4, !tbaa !267
  %1522 = fmul float %1521, %1292
  %1523 = fptosi float %1522 to i32
  %1524 = load i16, ptr %1294, align 2, !tbaa !98
  switch i16 %1524, label %1893 [
    i16 4, label %1525
    i16 3, label %1698
  ]

1525:                                             ; preds = %1520
  %1526 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 4
  %1527 = load i32, ptr %1526, align 8, !tbaa !162
  %1528 = icmp eq i32 %1527, -1
  %1529 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  br i1 %1528, label %1535, label %1530

1530:                                             ; preds = %1525
  %1531 = zext nneg i32 %1513 to i64
  %1532 = getelementptr %struct.BevPoint, ptr %1529, i64 %1531
  %1533 = getelementptr %struct.BevPoint, ptr %1532, i64 -1
  %1534 = getelementptr %struct.BevPoint, ptr %1532, i64 -2
  br label %1539

1535:                                             ; preds = %1525
  %1536 = getelementptr inbounds %struct.BevList, ptr %1511, i64 2, i32 4
  %1537 = getelementptr inbounds %struct.BevList, ptr %1511, i64 3, i32 8
  %1538 = add nsw i32 %1513, -2
  br label %1539

1539:                                             ; preds = %1535, %1530
  %1540 = phi ptr [ %1533, %1530 ], [ %1536, %1535 ]
  %1541 = phi ptr [ %1534, %1530 ], [ %1529, %1535 ]
  %1542 = phi i32 [ %1513, %1530 ], [ %1538, %1535 ]
  %1543 = phi ptr [ %1529, %1530 ], [ %1537, %1535 ]
  %1544 = icmp eq i32 %1542, 0
  br i1 %1544, label %1554, label %1545

1545:                                             ; preds = %1539, %1545
  %1546 = phi ptr [ %1552, %1545 ], [ %1543, %1539 ]
  %1547 = phi i32 [ %1550, %1545 ], [ %1542, %1539 ]
  %1548 = phi ptr [ %1549, %1545 ], [ %1541, %1539 ]
  %1549 = phi ptr [ %1546, %1545 ], [ %1540, %1539 ]
  %1550 = add nsw i32 %1547, -1
  %1551 = getelementptr inbounds %struct.BevPoint, ptr %1549, i64 0, i32 7
  call void @bisect_v3_v3v3v3(ptr noundef nonnull %1551, ptr noundef %1548, ptr noundef %1549, ptr noundef %1546) #22
  %1552 = getelementptr inbounds %struct.BevPoint, ptr %1546, i64 1
  %1553 = icmp eq i32 %1550, 0
  br i1 %1553, label %1554, label %1545, !llvm.loop !268

1554:                                             ; preds = %1545, %1539
  %1555 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  %1556 = load i32, ptr %1512, align 8, !tbaa !162
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1585, label %1558

1558:                                             ; preds = %1554
  %1559 = sext i32 %1556 to i64
  %1560 = getelementptr %struct.BevPoint, ptr %1555, i64 %1559
  %1561 = getelementptr %struct.BevPoint, ptr %1560, i64 -2
  %1562 = getelementptr %struct.BevPoint, ptr %1560, i64 -1
  br label %1563

1563:                                             ; preds = %1558, %1582
  %1564 = phi i32 [ %1568, %1582 ], [ %1556, %1558 ]
  %1565 = phi ptr [ %1566, %1582 ], [ %1561, %1558 ]
  %1566 = phi ptr [ %1567, %1582 ], [ %1562, %1558 ]
  %1567 = phi ptr [ %1583, %1582 ], [ %1555, %1558 ]
  %1568 = add nsw i32 %1564, -1
  %1569 = getelementptr inbounds %struct.BevPoint, ptr %1565, i64 0, i32 8
  %1570 = getelementptr inbounds %struct.BevPoint, ptr %1566, i64 0, i32 8
  %1571 = call float @angle_normalized_v3v3(ptr noundef nonnull %1569, ptr noundef nonnull %1570) #22
  %1572 = fcmp ogt float %1571, 0x3FF921FB60000000
  br i1 %1572, label %1573, label %1582

1573:                                             ; preds = %1563
  %1574 = load float, ptr %1570, align 4, !tbaa !85
  %1575 = fneg float %1574
  store float %1575, ptr %1570, align 4, !tbaa !85
  %1576 = getelementptr inbounds %struct.BevPoint, ptr %1566, i64 0, i32 8, i64 1
  %1577 = load float, ptr %1576, align 4, !tbaa !85
  %1578 = fneg float %1577
  store float %1578, ptr %1576, align 4, !tbaa !85
  %1579 = getelementptr inbounds %struct.BevPoint, ptr %1566, i64 0, i32 8, i64 2
  %1580 = load float, ptr %1579, align 4, !tbaa !85
  %1581 = fneg float %1580
  store float %1581, ptr %1579, align 4, !tbaa !85
  br label %1582

1582:                                             ; preds = %1573, %1563
  %1583 = getelementptr inbounds %struct.BevPoint, ptr %1567, i64 1
  %1584 = icmp eq i32 %1568, 0
  br i1 %1584, label %1585, label %1563, !llvm.loop !269

1585:                                             ; preds = %1582, %1554
  %1586 = load i32, ptr %1512, align 8, !tbaa !162
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1645, label %1588

1588:                                             ; preds = %1585
  %1589 = sext i32 %1586 to i64
  %1590 = getelementptr %struct.BevPoint, ptr %1555, i64 %1589
  %1591 = getelementptr %struct.BevPoint, ptr %1590, i64 -1
  br label %1592

1592:                                             ; preds = %1588, %1641
  %1593 = phi i32 [ %1596, %1641 ], [ %1586, %1588 ]
  %1594 = phi ptr [ %1595, %1641 ], [ %1591, %1588 ]
  %1595 = phi ptr [ %1643, %1641 ], [ %1555, %1588 ]
  %1596 = add nsw i32 %1593, -1
  %1597 = getelementptr inbounds %struct.BevPoint, ptr %1594, i64 0, i32 8
  %1598 = getelementptr inbounds %struct.BevPoint, ptr %1594, i64 0, i32 7
  %1599 = getelementptr inbounds %struct.BevPoint, ptr %1594, i64 0, i32 8, i64 1
  %1600 = load float, ptr %1599, align 4, !tbaa !85
  %1601 = getelementptr inbounds %struct.BevPoint, ptr %1594, i64 0, i32 7, i64 2
  %1602 = load float, ptr %1601, align 4, !tbaa !85
  %1603 = getelementptr inbounds %struct.BevPoint, ptr %1594, i64 0, i32 8, i64 2
  %1604 = load float, ptr %1603, align 4, !tbaa !85
  %1605 = getelementptr inbounds %struct.BevPoint, ptr %1594, i64 0, i32 7, i64 1
  %1606 = load float, ptr %1605, align 4, !tbaa !85
  %1607 = fneg float %1604
  %1608 = fmul float %1606, %1607
  %1609 = call float @llvm.fmuladd.f32(float %1600, float %1602, float %1608)
  %1610 = load float, ptr %1598, align 4, !tbaa !85
  %1611 = load float, ptr %1597, align 4, !tbaa !85
  %1612 = fneg float %1611
  %1613 = fmul float %1602, %1612
  %1614 = call float @llvm.fmuladd.f32(float %1604, float %1610, float %1613)
  %1615 = fneg float %1600
  %1616 = fmul float %1610, %1615
  %1617 = call float @llvm.fmuladd.f32(float %1611, float %1606, float %1616)
  %1618 = fneg float %1617
  %1619 = fmul float %1606, %1618
  %1620 = call float @llvm.fmuladd.f32(float %1614, float %1602, float %1619)
  store float %1620, ptr %1597, align 4, !tbaa !85
  %1621 = fneg float %1609
  %1622 = fmul float %1602, %1621
  %1623 = call float @llvm.fmuladd.f32(float %1617, float %1610, float %1622)
  store float %1623, ptr %1599, align 4, !tbaa !85
  %1624 = fneg float %1614
  %1625 = fmul float %1610, %1624
  %1626 = call float @llvm.fmuladd.f32(float %1609, float %1606, float %1625)
  store float %1626, ptr %1603, align 4, !tbaa !85
  %1627 = fmul float %1623, %1623
  %1628 = call float @llvm.fmuladd.f32(float %1620, float %1620, float %1627)
  %1629 = call float @llvm.fmuladd.f32(float %1626, float %1626, float %1628)
  %1630 = fcmp ogt float %1629, 0x38AA95A5C0000000
  br i1 %1630, label %1631, label %1640

1631:                                             ; preds = %1592
  %1632 = call float @sqrtf(float noundef %1629) #22
  %1633 = fdiv float 1.000000e+00, %1632
  %1634 = load float, ptr %1597, align 4, !tbaa !85
  %1635 = fmul float %1634, %1633
  store float %1635, ptr %1597, align 4, !tbaa !85
  %1636 = load float, ptr %1599, align 4, !tbaa !85
  %1637 = fmul float %1633, %1636
  store float %1637, ptr %1599, align 4, !tbaa !85
  %1638 = load float, ptr %1603, align 4, !tbaa !85
  %1639 = fmul float %1633, %1638
  br label %1641

1640:                                             ; preds = %1592
  store float 0.000000e+00, ptr %1597, align 4, !tbaa !85
  store float 0.000000e+00, ptr %1599, align 4, !tbaa !85
  br label %1641

1641:                                             ; preds = %1640, %1631
  %1642 = phi float [ 0.000000e+00, %1640 ], [ %1639, %1631 ]
  store float %1642, ptr %1603, align 4, !tbaa !85
  %1643 = getelementptr inbounds %struct.BevPoint, ptr %1595, i64 1
  %1644 = icmp eq i32 %1596, 0
  br i1 %1644, label %1645, label %1592, !llvm.loop !270

1645:                                             ; preds = %1641, %1585
  %1646 = load i32, ptr %1512, align 8, !tbaa !162
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1931, label %1648

1648:                                             ; preds = %1645
  %1649 = sext i32 %1646 to i64
  %1650 = getelementptr %struct.BevPoint, ptr %1555, i64 %1649
  %1651 = getelementptr %struct.BevPoint, ptr %1650, i64 -1
  br label %1652

1652:                                             ; preds = %1648, %1692
  %1653 = phi i32 [ %1656, %1692 ], [ %1646, %1648 ]
  %1654 = phi ptr [ %1655, %1692 ], [ %1651, %1648 ]
  %1655 = phi ptr [ %1696, %1692 ], [ %1555, %1648 ]
  %1656 = add nsw i32 %1653, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  %1657 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 8
  %1658 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 7
  %1659 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 8, i64 1
  %1660 = load float, ptr %1659, align 4, !tbaa !85
  %1661 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 7, i64 2
  %1662 = load float, ptr %1661, align 4, !tbaa !85
  %1663 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 8, i64 2
  %1664 = load float, ptr %1663, align 4, !tbaa !85
  %1665 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 7, i64 1
  %1666 = load float, ptr %1665, align 4, !tbaa !85
  %1667 = fneg float %1664
  %1668 = fmul float %1666, %1667
  %1669 = call float @llvm.fmuladd.f32(float %1660, float %1662, float %1668)
  store float %1669, ptr %14, align 4, !tbaa !85
  %1670 = load float, ptr %1658, align 4, !tbaa !85
  %1671 = load float, ptr %1657, align 4, !tbaa !85
  %1672 = fneg float %1671
  %1673 = fmul float %1662, %1672
  %1674 = call float @llvm.fmuladd.f32(float %1664, float %1670, float %1673)
  store float %1674, ptr %1301, align 4, !tbaa !85
  %1675 = fneg float %1660
  %1676 = fmul float %1670, %1675
  %1677 = call float @llvm.fmuladd.f32(float %1671, float %1666, float %1676)
  store float %1677, ptr %1302, align 4, !tbaa !85
  %1678 = fmul float %1674, %1674
  %1679 = call float @llvm.fmuladd.f32(float %1669, float %1669, float %1678)
  %1680 = call float @llvm.fmuladd.f32(float %1677, float %1677, float %1679)
  %1681 = fcmp ogt float %1680, 0x38AA95A5C0000000
  br i1 %1681, label %1682, label %1691

1682:                                             ; preds = %1652
  %1683 = call float @sqrtf(float noundef %1680) #22
  %1684 = fdiv float 1.000000e+00, %1683
  %1685 = load float, ptr %14, align 4, !tbaa !85
  %1686 = fmul float %1685, %1684
  store float %1686, ptr %14, align 4, !tbaa !85
  %1687 = load float, ptr %1301, align 4, !tbaa !85
  %1688 = fmul float %1684, %1687
  store float %1688, ptr %1301, align 4, !tbaa !85
  %1689 = load float, ptr %1302, align 4, !tbaa !85
  %1690 = fmul float %1684, %1689
  br label %1692

1691:                                             ; preds = %1652
  store float 0.000000e+00, ptr %14, align 4, !tbaa !85
  store float 0.000000e+00, ptr %1301, align 4, !tbaa !85
  br label %1692

1692:                                             ; preds = %1691, %1682
  %1693 = phi float [ 0.000000e+00, %1691 ], [ %1690, %1682 ]
  store float %1693, ptr %1302, align 4, !tbaa !85
  %1694 = getelementptr inbounds %struct.BevPoint, ptr %1654, i64 0, i32 9
  %1695 = call float @tri_to_quat(ptr noundef nonnull %1694, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %1657) #22
  %1696 = getelementptr inbounds %struct.BevPoint, ptr %1655, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  %1697 = icmp eq i32 %1656, 0
  br i1 %1697, label %1931, label %1652, !llvm.loop !271

1698:                                             ; preds = %1520
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  %1699 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 4
  %1700 = load i32, ptr %1699, align 8, !tbaa !162
  %1701 = icmp eq i32 %1700, -1
  %1702 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  br i1 %1701, label %1708, label %1703

1703:                                             ; preds = %1698
  %1704 = zext nneg i32 %1513 to i64
  %1705 = getelementptr %struct.BevPoint, ptr %1702, i64 %1704
  %1706 = getelementptr %struct.BevPoint, ptr %1705, i64 -1
  %1707 = getelementptr %struct.BevPoint, ptr %1705, i64 -2
  br label %1712

1708:                                             ; preds = %1698
  %1709 = getelementptr inbounds %struct.BevList, ptr %1511, i64 2, i32 4
  %1710 = getelementptr inbounds %struct.BevList, ptr %1511, i64 3, i32 8
  %1711 = add nsw i32 %1513, -2
  br label %1712

1712:                                             ; preds = %1708, %1703
  %1713 = phi ptr [ %1706, %1703 ], [ %1709, %1708 ]
  %1714 = phi ptr [ %1707, %1703 ], [ %1702, %1708 ]
  %1715 = phi i32 [ %1513, %1703 ], [ %1711, %1708 ]
  %1716 = phi ptr [ %1702, %1703 ], [ %1710, %1708 ]
  %1717 = icmp eq i32 %1715, 0
  br i1 %1717, label %1727, label %1718

1718:                                             ; preds = %1712, %1718
  %1719 = phi ptr [ %1725, %1718 ], [ %1716, %1712 ]
  %1720 = phi i32 [ %1723, %1718 ], [ %1715, %1712 ]
  %1721 = phi ptr [ %1722, %1718 ], [ %1714, %1712 ]
  %1722 = phi ptr [ %1719, %1718 ], [ %1713, %1712 ]
  %1723 = add nsw i32 %1720, -1
  %1724 = getelementptr inbounds %struct.BevPoint, ptr %1722, i64 0, i32 7
  call void @bisect_v3_v3v3v3(ptr noundef nonnull %1724, ptr noundef %1721, ptr noundef %1722, ptr noundef %1719) #22
  %1725 = getelementptr inbounds %struct.BevPoint, ptr %1719, i64 1
  %1726 = icmp eq i32 %1723, 0
  br i1 %1726, label %1727, label %1718, !llvm.loop !268

1727:                                             ; preds = %1718, %1712
  %1728 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  %1729 = load i32, ptr %1512, align 8, !tbaa !162
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1752, label %1731

1731:                                             ; preds = %1727
  %1732 = sext i32 %1729 to i64
  %1733 = getelementptr %struct.BevPoint, ptr %1728, i64 %1732
  %1734 = getelementptr %struct.BevPoint, ptr %1733, i64 -2
  %1735 = getelementptr %struct.BevPoint, ptr %1733, i64 -1
  br label %1736

1736:                                             ; preds = %1731, %1749
  %1737 = phi ptr [ %1750, %1749 ], [ %1728, %1731 ]
  %1738 = phi ptr [ %1737, %1749 ], [ %1735, %1731 ]
  %1739 = phi ptr [ %1738, %1749 ], [ %1734, %1731 ]
  %1740 = phi i32 [ %1741, %1749 ], [ %1729, %1731 ]
  %1741 = add nsw i32 %1740, -1
  %1742 = add nsw i32 %1740, 3
  %1743 = load i32, ptr %1512, align 8, !tbaa !162
  %1744 = icmp sgt i32 %1742, %1743
  br i1 %1744, label %1745, label %1748

1745:                                             ; preds = %1736
  %1746 = getelementptr inbounds %struct.BevPoint, ptr %1738, i64 0, i32 9
  %1747 = getelementptr inbounds %struct.BevPoint, ptr %1738, i64 0, i32 7
  call void @vec_to_quat(ptr noundef nonnull %1746, ptr noundef nonnull %1747, i16 noundef signext 5, i16 noundef signext 1) #22
  br label %1749

1748:                                             ; preds = %1736
  call fastcc void @minimum_twist_between_two_points(ptr noundef %1738, ptr noundef %1739)
  br label %1749

1749:                                             ; preds = %1748, %1745
  %1750 = getelementptr inbounds %struct.BevPoint, ptr %1737, i64 1
  %1751 = icmp eq i32 %1741, 0
  br i1 %1751, label %1752, label %1736, !llvm.loop !272

1752:                                             ; preds = %1749, %1727
  %1753 = load i32, ptr %1699, align 8, !tbaa !162
  %1754 = icmp eq i32 %1753, -1
  br i1 %1754, label %1885, label %1755

1755:                                             ; preds = %1752
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) @__const.make_bevel_list_3D_minimum_twist.vec_2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) @__const.make_bevel_list_3D_minimum_twist.vec_2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  %1756 = load i32, ptr %1512, align 8, !tbaa !162
  %1757 = sext i32 %1756 to i64
  %1758 = getelementptr %struct.BevPoint, ptr %1728, i64 %1757
  %1759 = getelementptr %struct.BevPoint, ptr %1758, i64 -1, i32 9
  call void @mul_qt_v3(ptr noundef %1759, ptr noundef nonnull %11) #22
  %1760 = getelementptr %struct.BevPoint, ptr %1758, i64 -2, i32 9
  call void @mul_qt_v3(ptr noundef %1760, ptr noundef nonnull %12) #22
  %1761 = load float, ptr %11, align 4, !tbaa !85
  %1762 = load float, ptr %1295, align 4, !tbaa !85
  %1763 = fmul float %1762, %1762
  %1764 = call float @llvm.fmuladd.f32(float %1761, float %1761, float %1763)
  %1765 = load float, ptr %1296, align 4, !tbaa !85
  %1766 = call float @llvm.fmuladd.f32(float %1765, float %1765, float %1764)
  %1767 = fcmp ogt float %1766, 0x38AA95A5C0000000
  br i1 %1767, label %1768, label %1777

1768:                                             ; preds = %1755
  %1769 = call float @sqrtf(float noundef %1766) #22
  %1770 = fdiv float 1.000000e+00, %1769
  %1771 = load float, ptr %11, align 4, !tbaa !85
  %1772 = fmul float %1771, %1770
  store float %1772, ptr %11, align 4, !tbaa !85
  %1773 = load float, ptr %1295, align 4, !tbaa !85
  %1774 = fmul float %1770, %1773
  store float %1774, ptr %1295, align 4, !tbaa !85
  %1775 = load float, ptr %1296, align 4, !tbaa !85
  %1776 = fmul float %1770, %1775
  br label %1778

1777:                                             ; preds = %1755
  store float 0.000000e+00, ptr %11, align 4, !tbaa !85
  store float 0.000000e+00, ptr %1295, align 4, !tbaa !85
  br label %1778

1778:                                             ; preds = %1777, %1768
  %1779 = phi float [ 0.000000e+00, %1777 ], [ %1776, %1768 ]
  store float %1779, ptr %1296, align 4, !tbaa !85
  %1780 = load float, ptr %12, align 4, !tbaa !85
  %1781 = load float, ptr %1297, align 4, !tbaa !85
  %1782 = fmul float %1781, %1781
  %1783 = call float @llvm.fmuladd.f32(float %1780, float %1780, float %1782)
  %1784 = load float, ptr %1298, align 4, !tbaa !85
  %1785 = call float @llvm.fmuladd.f32(float %1784, float %1784, float %1783)
  %1786 = fcmp ogt float %1785, 0x38AA95A5C0000000
  br i1 %1786, label %1787, label %1796

1787:                                             ; preds = %1778
  %1788 = call float @sqrtf(float noundef %1785) #22
  %1789 = fdiv float 1.000000e+00, %1788
  %1790 = load float, ptr %12, align 4, !tbaa !85
  %1791 = fmul float %1790, %1789
  store float %1791, ptr %12, align 4, !tbaa !85
  %1792 = load float, ptr %1297, align 4, !tbaa !85
  %1793 = fmul float %1789, %1792
  store float %1793, ptr %1297, align 4, !tbaa !85
  %1794 = load float, ptr %1298, align 4, !tbaa !85
  %1795 = fmul float %1789, %1794
  br label %1797

1796:                                             ; preds = %1778
  store float 0.000000e+00, ptr %12, align 4, !tbaa !85
  store float 0.000000e+00, ptr %1297, align 4, !tbaa !85
  br label %1797

1797:                                             ; preds = %1796, %1787
  %1798 = phi float [ 0.000000e+00, %1796 ], [ %1795, %1787 ]
  store float %1798, ptr %1298, align 4, !tbaa !85
  %1799 = getelementptr %struct.BevPoint, ptr %1758, i64 -2, i32 7
  %1800 = getelementptr %struct.BevPoint, ptr %1758, i64 -1, i32 7
  %1801 = getelementptr %struct.BevPoint, ptr %1758, i64 -2, i32 7, i64 1
  %1802 = load float, ptr %1801, align 4, !tbaa !85
  %1803 = getelementptr %struct.BevPoint, ptr %1758, i64 -1, i32 7, i64 2
  %1804 = load float, ptr %1803, align 4, !tbaa !85
  %1805 = getelementptr %struct.BevPoint, ptr %1758, i64 -2, i32 7, i64 2
  %1806 = load float, ptr %1805, align 4, !tbaa !85
  %1807 = getelementptr %struct.BevPoint, ptr %1758, i64 -1, i32 7, i64 1
  %1808 = load float, ptr %1807, align 4, !tbaa !85
  %1809 = fneg float %1806
  %1810 = fmul float %1808, %1809
  %1811 = call float @llvm.fmuladd.f32(float %1802, float %1804, float %1810)
  store float %1811, ptr %13, align 4, !tbaa !85
  %1812 = load float, ptr %1805, align 4, !tbaa !85
  %1813 = load float, ptr %1800, align 4, !tbaa !85
  %1814 = load float, ptr %1799, align 4, !tbaa !85
  %1815 = load float, ptr %1803, align 4, !tbaa !85
  %1816 = fneg float %1814
  %1817 = fmul float %1815, %1816
  %1818 = call float @llvm.fmuladd.f32(float %1812, float %1813, float %1817)
  store float %1818, ptr %1299, align 4, !tbaa !85
  %1819 = load float, ptr %1799, align 4, !tbaa !85
  %1820 = load float, ptr %1807, align 4, !tbaa !85
  %1821 = load float, ptr %1801, align 4, !tbaa !85
  %1822 = load float, ptr %1800, align 4, !tbaa !85
  %1823 = fneg float %1821
  %1824 = fmul float %1822, %1823
  %1825 = call float @llvm.fmuladd.f32(float %1819, float %1820, float %1824)
  store float %1825, ptr %1300, align 4, !tbaa !85
  %1826 = call float @angle_normalized_v3v3(ptr noundef nonnull %1800, ptr noundef nonnull %1799) #22
  call void @axis_angle_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %13, float noundef %1826) #22
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %12) #22
  %1827 = call float @angle_normalized_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #22
  %1828 = load float, ptr %1295, align 4, !tbaa !85
  %1829 = load float, ptr %1298, align 4, !tbaa !85
  %1830 = load float, ptr %1296, align 4, !tbaa !85
  %1831 = load float, ptr %1297, align 4, !tbaa !85
  %1832 = fneg float %1830
  %1833 = fmul float %1831, %1832
  %1834 = call float @llvm.fmuladd.f32(float %1828, float %1829, float %1833)
  store float %1834, ptr %13, align 4, !tbaa !85
  %1835 = load float, ptr %12, align 4, !tbaa !85
  %1836 = load float, ptr %11, align 4, !tbaa !85
  %1837 = fneg float %1836
  %1838 = fmul float %1829, %1837
  %1839 = call float @llvm.fmuladd.f32(float %1830, float %1835, float %1838)
  store float %1839, ptr %1299, align 4, !tbaa !85
  %1840 = fneg float %1828
  %1841 = fmul float %1835, %1840
  %1842 = call float @llvm.fmuladd.f32(float %1836, float %1831, float %1841)
  store float %1842, ptr %1300, align 4, !tbaa !85
  %1843 = fmul float %1839, %1839
  %1844 = call float @llvm.fmuladd.f32(float %1834, float %1834, float %1843)
  %1845 = call float @llvm.fmuladd.f32(float %1842, float %1842, float %1844)
  %1846 = fcmp ogt float %1845, 0x38AA95A5C0000000
  br i1 %1846, label %1847, label %1856

1847:                                             ; preds = %1797
  %1848 = call float @sqrtf(float noundef %1845) #22
  %1849 = fdiv float 1.000000e+00, %1848
  %1850 = load float, ptr %13, align 4, !tbaa !85
  %1851 = fmul float %1850, %1849
  store float %1851, ptr %13, align 4, !tbaa !85
  %1852 = load float, ptr %1299, align 4, !tbaa !85
  %1853 = fmul float %1849, %1852
  store float %1853, ptr %1299, align 4, !tbaa !85
  %1854 = load float, ptr %1300, align 4, !tbaa !85
  %1855 = fmul float %1849, %1854
  br label %1857

1856:                                             ; preds = %1797
  store float 0.000000e+00, ptr %13, align 4, !tbaa !85
  store float 0.000000e+00, ptr %1299, align 4, !tbaa !85
  br label %1857

1857:                                             ; preds = %1856, %1847
  %1858 = phi float [ 0.000000e+00, %1856 ], [ %1855, %1847 ]
  store float %1858, ptr %1300, align 4, !tbaa !85
  %1859 = call float @angle_normalized_v3v3(ptr noundef nonnull %1800, ptr noundef nonnull %13) #22
  %1860 = fcmp olt float %1859, 0x3FF921FB60000000
  %1861 = fneg float %1827
  %1862 = select i1 %1860, float %1861, float %1827
  %1863 = load i32, ptr %1512, align 8, !tbaa !162
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1884, label %1865

1865:                                             ; preds = %1857
  %1866 = sext i32 %1863 to i64
  %1867 = getelementptr %struct.BevPoint, ptr %1728, i64 %1866
  %1868 = getelementptr %struct.BevPoint, ptr %1867, i64 -1
  br label %1869

1869:                                             ; preds = %1865, %1869
  %1870 = phi ptr [ %1882, %1869 ], [ %1728, %1865 ]
  %1871 = phi ptr [ %1870, %1869 ], [ %1868, %1865 ]
  %1872 = phi i32 [ %1873, %1869 ], [ %1863, %1865 ]
  %1873 = add nsw i32 %1872, -1
  %1874 = sitofp i32 %1873 to float
  %1875 = load i32, ptr %1512, align 8, !tbaa !162
  %1876 = sitofp i32 %1875 to float
  %1877 = fdiv float %1874, %1876
  %1878 = fsub float 1.000000e+00, %1877
  %1879 = fmul float %1862, %1878
  %1880 = getelementptr inbounds %struct.BevPoint, ptr %1871, i64 0, i32 7
  call void @axis_angle_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %1880, float noundef %1879) #22
  %1881 = getelementptr inbounds %struct.BevPoint, ptr %1871, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %1881, ptr noundef nonnull %10, ptr noundef nonnull %1881) #22
  %1882 = getelementptr inbounds %struct.BevPoint, ptr %1870, i64 1
  %1883 = icmp eq i32 %1873, 0
  br i1 %1883, label %1884, label %1869, !llvm.loop !273

1884:                                             ; preds = %1869, %1857
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  br label %1892

1885:                                             ; preds = %1752
  %1886 = getelementptr inbounds %struct.BevList, ptr %1511, i64 2, i32 4
  call fastcc void @minimum_twist_between_two_points(ptr noundef nonnull %1728, ptr noundef nonnull %1886)
  %1887 = load i32, ptr %1512, align 8, !tbaa !162
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr %struct.BevPoint, ptr %1728, i64 %1888
  %1890 = getelementptr %struct.BevPoint, ptr %1889, i64 -1
  %1891 = getelementptr %struct.BevPoint, ptr %1889, i64 -2
  call fastcc void @minimum_twist_between_two_points(ptr noundef %1890, ptr noundef %1891)
  br label %1892

1892:                                             ; preds = %1885, %1884
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  br label %1931

1893:                                             ; preds = %1520
  %1894 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  %1895 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 4
  %1896 = load i32, ptr %1895, align 8, !tbaa !162
  %1897 = icmp eq i32 %1896, -1
  br i1 %1897, label %1903, label %1898

1898:                                             ; preds = %1893
  %1899 = zext nneg i32 %1513 to i64
  %1900 = getelementptr %struct.BevPoint, ptr %1894, i64 %1899
  %1901 = getelementptr %struct.BevPoint, ptr %1900, i64 -1
  %1902 = getelementptr %struct.BevPoint, ptr %1900, i64 -2
  br label %1907

1903:                                             ; preds = %1893
  %1904 = getelementptr inbounds %struct.BevList, ptr %1511, i64 2, i32 4
  %1905 = getelementptr inbounds %struct.BevList, ptr %1511, i64 3, i32 8
  %1906 = add nsw i32 %1513, -2
  br label %1907

1907:                                             ; preds = %1903, %1898
  %1908 = phi ptr [ %1901, %1898 ], [ %1904, %1903 ]
  %1909 = phi ptr [ %1902, %1898 ], [ %1894, %1903 ]
  %1910 = phi i32 [ %1513, %1898 ], [ %1906, %1903 ]
  %1911 = phi ptr [ %1894, %1898 ], [ %1905, %1903 ]
  %1912 = icmp eq i32 %1910, 0
  br i1 %1912, label %1922, label %1913

1913:                                             ; preds = %1907, %1913
  %1914 = phi ptr [ %1920, %1913 ], [ %1911, %1907 ]
  %1915 = phi i32 [ %1918, %1913 ], [ %1910, %1907 ]
  %1916 = phi ptr [ %1917, %1913 ], [ %1909, %1907 ]
  %1917 = phi ptr [ %1914, %1913 ], [ %1908, %1907 ]
  %1918 = add nsw i32 %1915, -1
  %1919 = getelementptr inbounds %struct.BevPoint, ptr %1917, i64 0, i32 7
  call void @bisect_v3_v3v3v3(ptr noundef nonnull %1919, ptr noundef %1916, ptr noundef %1917, ptr noundef %1914) #22
  %1920 = getelementptr inbounds %struct.BevPoint, ptr %1914, i64 1
  %1921 = icmp eq i32 %1918, 0
  br i1 %1921, label %1922, label %1913, !llvm.loop !268

1922:                                             ; preds = %1913, %1907
  br label %1923

1923:                                             ; preds = %1922, %1923
  %1924 = phi i32 [ %1926, %1923 ], [ %1513, %1922 ]
  %1925 = phi ptr [ %1929, %1923 ], [ %1894, %1922 ]
  %1926 = add nsw i32 %1924, -1
  %1927 = getelementptr inbounds %struct.BevPoint, ptr %1925, i64 0, i32 9
  %1928 = getelementptr inbounds %struct.BevPoint, ptr %1925, i64 0, i32 7
  call void @vec_to_quat(ptr noundef nonnull %1927, ptr noundef nonnull %1928, i16 noundef signext 5, i16 noundef signext 1) #22
  %1929 = getelementptr inbounds %struct.BevPoint, ptr %1925, i64 1
  %1930 = icmp eq i32 %1926, 0
  br i1 %1930, label %1931, label %1923, !llvm.loop !274

1931:                                             ; preds = %1692, %1923, %1645, %1892
  %1932 = icmp eq i32 %1523, 0
  br i1 %1932, label %1993, label %1933

1933:                                             ; preds = %1931
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %1934 = icmp sgt i32 %1523, 0
  br i1 %1934, label %1935, label %1992

1935:                                             ; preds = %1933
  %1936 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  %1937 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 4
  %1938 = getelementptr inbounds %struct.BevList, ptr %1511, i64 2, i32 4
  %1939 = getelementptr inbounds %struct.BevList, ptr %1511, i64 3, i32 8
  br label %1940

1940:                                             ; preds = %1935, %1989
  %1941 = phi i32 [ 0, %1935 ], [ %1990, %1989 ]
  %1942 = load i32, ptr %1512, align 8, !tbaa !162
  %1943 = sext i32 %1942 to i64
  %1944 = getelementptr %struct.BevPoint, ptr %1936, i64 %1943
  %1945 = getelementptr %struct.BevPoint, ptr %1944, i64 -1
  %1946 = getelementptr %struct.BevPoint, ptr %1944, i64 -2
  %1947 = load i32, ptr %1937, align 8, !tbaa !162
  %1948 = icmp eq i32 %1947, -1
  br i1 %1948, label %1949, label %1951

1949:                                             ; preds = %1940
  %1950 = add nsw i32 %1942, -2
  br label %1951

1951:                                             ; preds = %1949, %1940
  %1952 = phi ptr [ %1939, %1949 ], [ %1936, %1940 ]
  %1953 = phi ptr [ %1938, %1949 ], [ %1945, %1940 ]
  %1954 = phi ptr [ %1936, %1949 ], [ %1946, %1940 ]
  %1955 = phi i32 [ %1950, %1949 ], [ %1942, %1940 ]
  %1956 = getelementptr inbounds %struct.BevPoint, ptr %1954, i64 0, i32 9
  call void @copy_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %1956) #22
  %1957 = icmp eq i32 %1955, 0
  br i1 %1957, label %1989, label %1958

1958:                                             ; preds = %1951, %1958
  %1959 = phi i32 [ %1962, %1958 ], [ %1955, %1951 ]
  %1960 = phi ptr [ %1961, %1958 ], [ %1953, %1951 ]
  %1961 = phi ptr [ %1987, %1958 ], [ %1952, %1951 ]
  %1962 = add nsw i32 %1959, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.bevel_list_smooth.zaxis, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  %1963 = getelementptr inbounds %struct.BevPoint, ptr %1961, i64 0, i32 9
  call void @interp_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %1963, float noundef 5.000000e-01) #22
  %1964 = call float @normalize_qt(ptr noundef nonnull %5) #22
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #22
  %1965 = getelementptr inbounds %struct.BevPoint, ptr %1960, i64 0, i32 7
  %1966 = load float, ptr %1303, align 4, !tbaa !85
  %1967 = getelementptr inbounds %struct.BevPoint, ptr %1960, i64 0, i32 7, i64 2
  %1968 = load float, ptr %1967, align 4, !tbaa !85
  %1969 = load float, ptr %1304, align 4, !tbaa !85
  %1970 = getelementptr inbounds %struct.BevPoint, ptr %1960, i64 0, i32 7, i64 1
  %1971 = load float, ptr %1970, align 4, !tbaa !85
  %1972 = fneg float %1969
  %1973 = fmul float %1971, %1972
  %1974 = call float @llvm.fmuladd.f32(float %1966, float %1968, float %1973)
  store float %1974, ptr %8, align 4, !tbaa !85
  %1975 = load float, ptr %1965, align 4, !tbaa !85
  %1976 = load float, ptr %7, align 4, !tbaa !85
  %1977 = fneg float %1976
  %1978 = fmul float %1968, %1977
  %1979 = call float @llvm.fmuladd.f32(float %1969, float %1975, float %1978)
  store float %1979, ptr %1305, align 4, !tbaa !85
  %1980 = fneg float %1966
  %1981 = fmul float %1975, %1980
  %1982 = call float @llvm.fmuladd.f32(float %1976, float %1971, float %1981)
  store float %1982, ptr %1306, align 4, !tbaa !85
  %1983 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %1965) #22
  call void @axis_angle_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %8, float noundef %1983) #22
  %1984 = call float @normalize_qt(ptr noundef nonnull %9) #22
  %1985 = getelementptr inbounds %struct.BevPoint, ptr %1960, i64 0, i32 9
  call void @copy_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %1985) #22
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %5) #22
  call void @interp_qt_qtqt(ptr noundef nonnull %1985, ptr noundef nonnull %1985, ptr noundef nonnull %5, float noundef 5.000000e-01) #22
  %1986 = call float @normalize_qt(ptr noundef nonnull %1985) #22
  %1987 = getelementptr inbounds %struct.BevPoint, ptr %1961, i64 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  %1988 = icmp eq i32 %1962, 0
  br i1 %1988, label %1989, label %1958, !llvm.loop !275

1989:                                             ; preds = %1958, %1951
  %1990 = add nuw nsw i32 %1941, 1
  %1991 = icmp eq i32 %1990, %1523
  br i1 %1991, label %1992, label %1940, !llvm.loop !276

1992:                                             ; preds = %1989, %1933
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  br label %1993

1993:                                             ; preds = %1992, %1931
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %1994 = load i32, ptr %1512, align 8, !tbaa !162
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2013, label %1996

1996:                                             ; preds = %1993
  %1997 = getelementptr inbounds %struct.BevList, ptr %1511, i64 0, i32 9
  %1998 = sext i32 %1994 to i64
  %1999 = getelementptr %struct.BevPoint, ptr %1997, i64 %1998
  %2000 = getelementptr %struct.BevPoint, ptr %1999, i64 -1
  br label %2001

2001:                                             ; preds = %1996, %2001
  %2002 = phi i32 [ %2005, %2001 ], [ %1994, %1996 ]
  %2003 = phi ptr [ %2004, %2001 ], [ %2000, %1996 ]
  %2004 = phi ptr [ %2011, %2001 ], [ %1997, %1996 ]
  %2005 = add nsw i32 %2002, -1
  %2006 = getelementptr inbounds %struct.BevPoint, ptr %2003, i64 0, i32 7
  %2007 = getelementptr inbounds %struct.BevPoint, ptr %2003, i64 0, i32 1
  %2008 = load float, ptr %2007, align 4, !tbaa !224
  call void @axis_angle_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %2006, float noundef %2008) #22
  %2009 = getelementptr inbounds %struct.BevPoint, ptr %2003, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %2009, ptr noundef nonnull %4, ptr noundef nonnull %2009) #22
  %2010 = call float @normalize_qt(ptr noundef nonnull %2009) #22
  %2011 = getelementptr inbounds %struct.BevPoint, ptr %2004, i64 1
  %2012 = icmp eq i32 %2005, 0
  br i1 %2012, label %2013, label %2001, !llvm.loop !277

2013:                                             ; preds = %2001, %1993
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %2014

2014:                                             ; preds = %1515, %2013, %1519
  %2015 = load ptr, ptr %1511, align 8, !tbaa !46
  %2016 = icmp eq ptr %2015, null
  br i1 %2016, label %2017, label %1510, !llvm.loop !278

2017:                                             ; preds = %2014, %1507, %1290, %1307
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_check_valid_u(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !131
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !130
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !146
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %3, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !128
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %21 = load i16, ptr %20, align 4, !tbaa !134
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  switch i16 %11, label %28 [
    i16 4, label %25
    i16 3, label %27
  ]

25:                                               ; preds = %24
  %26 = icmp slt i32 %3, 5
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %25, %19, %14
  br label %28

28:                                               ; preds = %24, %25, %9, %5, %1, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %1 ], [ 1, %5 ], [ 0, %9 ], [ 0, %25 ], [ 0, %24 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @bevlist_firstlast_direction_calc_from_bpoint(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %83

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr %struct.BPoint, ptr %8, i64 %9
  %11 = getelementptr %struct.BPoint, ptr %10, i64 -1
  %12 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 9
  %13 = getelementptr inbounds %struct.BevList, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !162
  %15 = sext i32 %14 to i64
  %16 = getelementptr %struct.BevPoint, ptr %12, i64 %15
  %17 = getelementptr inbounds i8, ptr %1, i64 92
  %18 = getelementptr inbounds %struct.BPoint, ptr %8, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !85
  %20 = load float, ptr %8, align 4, !tbaa !85
  %21 = fsub float %19, %20
  store float %21, ptr %17, align 4, !tbaa !85
  %22 = getelementptr inbounds %struct.BPoint, ptr %8, i64 1, i32 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = getelementptr inbounds float, ptr %8, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !85
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds i8, ptr %1, i64 96
  store float %26, ptr %27, align 4, !tbaa !85
  %28 = getelementptr inbounds %struct.BPoint, ptr %8, i64 1, i32 0, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !85
  %30 = getelementptr inbounds float, ptr %8, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !85
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds i8, ptr %1, i64 100
  store float %32, ptr %33, align 4, !tbaa !85
  %34 = fmul float %26, %26
  %35 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %35)
  %37 = fcmp ogt float %36, 0x38AA95A5C0000000
  br i1 %37, label %38, label %47

38:                                               ; preds = %6
  %39 = tail call float @sqrtf(float noundef %36) #22
  %40 = fdiv float 1.000000e+00, %39
  %41 = load float, ptr %17, align 4, !tbaa !85
  %42 = fmul float %41, %40
  store float %42, ptr %17, align 4, !tbaa !85
  %43 = load float, ptr %27, align 4, !tbaa !85
  %44 = fmul float %40, %43
  store float %44, ptr %27, align 4, !tbaa !85
  %45 = load float, ptr %33, align 4, !tbaa !85
  %46 = fmul float %40, %45
  br label %48

47:                                               ; preds = %6
  store float 0.000000e+00, ptr %17, align 4, !tbaa !85
  store float 0.000000e+00, ptr %27, align 4, !tbaa !85
  br label %48

48:                                               ; preds = %38, %47
  %49 = phi float [ 0.000000e+00, %47 ], [ %46, %38 ]
  store float %49, ptr %33, align 4, !tbaa !85
  %50 = getelementptr %struct.BevPoint, ptr %16, i64 -1, i32 7
  %51 = getelementptr %struct.BPoint, ptr %10, i64 -2
  %52 = load float, ptr %11, align 4, !tbaa !85
  %53 = load float, ptr %51, align 4, !tbaa !85
  %54 = fsub float %52, %53
  store float %54, ptr %50, align 4, !tbaa !85
  %55 = getelementptr %struct.BPoint, ptr %10, i64 -1, i32 0, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !85
  %57 = getelementptr %struct.BPoint, ptr %10, i64 -2, i32 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !85
  %59 = fsub float %56, %58
  %60 = getelementptr %struct.BevPoint, ptr %16, i64 -1, i32 7, i64 1
  store float %59, ptr %60, align 4, !tbaa !85
  %61 = getelementptr %struct.BPoint, ptr %10, i64 -1, i32 0, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !85
  %63 = getelementptr %struct.BPoint, ptr %10, i64 -2, i32 0, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !85
  %65 = fsub float %62, %64
  %66 = getelementptr %struct.BevPoint, ptr %16, i64 -1, i32 7, i64 2
  store float %65, ptr %66, align 4, !tbaa !85
  %67 = fmul float %59, %59
  %68 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %68)
  %70 = fcmp ogt float %69, 0x38AA95A5C0000000
  br i1 %70, label %71, label %80

71:                                               ; preds = %48
  %72 = tail call float @sqrtf(float noundef %69) #22
  %73 = fdiv float 1.000000e+00, %72
  %74 = load float, ptr %50, align 4, !tbaa !85
  %75 = fmul float %74, %73
  store float %75, ptr %50, align 4, !tbaa !85
  %76 = load float, ptr %60, align 4, !tbaa !85
  %77 = fmul float %73, %76
  store float %77, ptr %60, align 4, !tbaa !85
  %78 = load float, ptr %66, align 4, !tbaa !85
  %79 = fmul float %73, %78
  br label %81

80:                                               ; preds = %48
  store float 0.000000e+00, ptr %50, align 4, !tbaa !85
  store float 0.000000e+00, ptr %60, align 4, !tbaa !85
  br label %81

81:                                               ; preds = %71, %80
  %82 = phi float [ 0.000000e+00, %80 ], [ %79, %71 ]
  store float %82, ptr %66, align 4, !tbaa !85
  br label %83

83:                                               ; preds = %81, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vergxcobev(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.BevelSort, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !253
  %5 = getelementptr inbounds %struct.BevelSort, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 8, !tbaa !253
  %7 = fcmp ogt float %4, %6
  %8 = fcmp olt float %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

declare void @unit_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @make_bevel_list_segment_3D(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.BevList, ptr %0, i64 0, i32 9
  %4 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 4
  %5 = getelementptr inbounds i8, ptr %0, i64 172
  %6 = load float, ptr %4, align 4, !tbaa !85
  %7 = load float, ptr %3, align 4, !tbaa !85
  %8 = fsub float %6, %7
  store float %8, ptr %5, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 5
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = getelementptr inbounds i8, ptr %0, i64 60
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 176
  store float %13, ptr %14, align 4, !tbaa !85
  %15 = getelementptr inbounds %struct.BevList, ptr %0, i64 2, i32 6
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = getelementptr inbounds %struct.BevList, ptr %0, i64 1, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !85
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds i8, ptr %0, i64 180
  store float %19, ptr %20, align 4, !tbaa !85
  %21 = fmul float %13, %13
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %22)
  %24 = fcmp ogt float %23, 0x38AA95A5C0000000
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = tail call float @sqrtf(float noundef %23) #22
  %27 = fdiv float 1.000000e+00, %26
  %28 = load float, ptr %5, align 4, !tbaa !85
  %29 = fmul float %28, %27
  store float %29, ptr %5, align 4, !tbaa !85
  %30 = load float, ptr %14, align 4, !tbaa !85
  %31 = fmul float %27, %30
  store float %31, ptr %14, align 4, !tbaa !85
  %32 = load float, ptr %20, align 4, !tbaa !85
  %33 = fmul float %27, %32
  br label %35

34:                                               ; preds = %1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !85
  store float 0.000000e+00, ptr %14, align 4, !tbaa !85
  br label %35

35:                                               ; preds = %25, %34
  %36 = phi float [ 0.000000e+00, %34 ], [ %33, %25 ]
  store float %36, ptr %20, align 4, !tbaa !85
  %37 = getelementptr inbounds %struct.BevList, ptr %0, i64 3, i32 5
  tail call void @vec_to_quat(ptr noundef nonnull %37, ptr noundef nonnull %5, i16 noundef signext 5, i16 noundef signext 1) #22
  %38 = getelementptr inbounds i8, ptr %0, i64 148
  %39 = load float, ptr %38, align 4, !tbaa !224
  call void @axis_angle_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %5, float noundef %39) #22
  call void @mul_qt_qtqt(ptr noundef nonnull %37, ptr noundef nonnull %2, ptr noundef nonnull %37) #22
  %40 = call float @normalize_qt(ptr noundef nonnull %37) #22
  %41 = getelementptr inbounds i8, ptr %0, i64 92
  %42 = load float, ptr %5, align 4, !tbaa !85
  store float %42, ptr %41, align 4, !tbaa !85
  %43 = load float, ptr %14, align 4, !tbaa !85
  %44 = getelementptr inbounds i8, ptr %0, i64 96
  store float %43, ptr %44, align 4, !tbaa !85
  %45 = load float, ptr %20, align 4, !tbaa !85
  %46 = getelementptr inbounds i8, ptr %0, i64 100
  store float %45, ptr %46, align 4, !tbaa !85
  %47 = getelementptr inbounds i8, ptr %0, i64 116
  call void @copy_qt_qt(ptr noundef nonnull %47, ptr noundef nonnull %37) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handle_calc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #11 {
  tail call fastcc void @calchandleNurb_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calchandleNurb_intern(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #11 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 1, !tbaa !230
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %12 = load i8, ptr %11, align 2, !tbaa !229
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %412, label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %19 = load float, ptr %15, align 4, !tbaa !85
  %20 = load float, ptr %18, align 4, !tbaa !85
  %21 = fneg float %20
  %22 = tail call float @llvm.fmuladd.f32(float %19, float 2.000000e+00, float %21)
  store float %22, ptr %6, align 4, !tbaa !85
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !85
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !85
  %27 = fneg float %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float 2.000000e+00, float %27)
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %28, ptr %29, align 4, !tbaa !85
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !85
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !85
  %34 = fneg float %33
  %35 = tail call float @llvm.fmuladd.f32(float %31, float 2.000000e+00, float %34)
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %35, ptr %36, align 4, !tbaa !85
  br label %39

37:                                               ; preds = %14
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi ptr [ %6, %17 ], [ %38, %37 ]
  %41 = icmp eq ptr %2, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load float, ptr %15, align 4, !tbaa !85
  %44 = load float, ptr %40, align 4, !tbaa !85
  %45 = fneg float %44
  %46 = tail call float @llvm.fmuladd.f32(float %43, float 2.000000e+00, float %45)
  store float %46, ptr %6, align 4, !tbaa !85
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !85
  %49 = getelementptr inbounds float, ptr %40, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !85
  %51 = fneg float %50
  %52 = tail call float @llvm.fmuladd.f32(float %48, float 2.000000e+00, float %51)
  %53 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %52, ptr %53, align 4, !tbaa !85
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !85
  %56 = getelementptr inbounds float, ptr %40, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !85
  %58 = fneg float %57
  %59 = tail call float @llvm.fmuladd.f32(float %55, float 2.000000e+00, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %59, ptr %60, align 4, !tbaa !85
  br label %63

61:                                               ; preds = %39
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  br label %63

63:                                               ; preds = %61, %42
  %64 = phi ptr [ %6, %42 ], [ %62, %61 ]
  %65 = load float, ptr %15, align 4, !tbaa !85
  %66 = load float, ptr %40, align 4, !tbaa !85
  %67 = fsub float %65, %66
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !85
  %70 = getelementptr inbounds float, ptr %40, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !85
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !85
  %75 = getelementptr inbounds float, ptr %40, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !85
  %77 = fsub float %74, %76
  %78 = load float, ptr %64, align 4, !tbaa !85
  %79 = fsub float %78, %65
  %80 = getelementptr inbounds float, ptr %64, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !85
  %82 = fsub float %81, %69
  %83 = getelementptr inbounds float, ptr %64, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !85
  %85 = fsub float %84, %74
  %86 = icmp eq i8 %3, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %63
  %88 = fmul float %72, %72
  %89 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %88)
  %90 = tail call float @llvm.fmuladd.f32(float %77, float %77, float %89)
  %91 = tail call float @sqrtf(float noundef %90) #22
  %92 = fmul float %82, %82
  %93 = tail call float @llvm.fmuladd.f32(float %79, float %79, float %92)
  %94 = tail call float @llvm.fmuladd.f32(float %85, float %85, float %93)
  %95 = tail call float @sqrtf(float noundef %94) #22
  br label %96

96:                                               ; preds = %63, %87
  %97 = phi float [ %95, %87 ], [ %79, %63 ]
  %98 = phi float [ %91, %87 ], [ %67, %63 ]
  %99 = fcmp oeq float %98, 0.000000e+00
  %100 = select i1 %99, float 1.000000e+00, float %98
  %101 = fcmp oeq float %97, 0.000000e+00
  %102 = select i1 %101, float 1.000000e+00, float %97
  %103 = load i8, ptr %7, align 1, !tbaa !230
  switch i8 %103, label %104 [
    i8 1, label %107
    i8 4, label %107
  ]

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %106 = load i8, ptr %105, align 2, !tbaa !229
  switch i8 %106, label %241 [
    i8 1, label %107
    i8 4, label %107
  ]

107:                                              ; preds = %104, %104, %96, %96
  %108 = fdiv float %79, %102
  %109 = fdiv float %67, %100
  %110 = fadd float %108, %109
  %111 = fdiv float %82, %102
  %112 = fdiv float %72, %100
  %113 = fadd float %111, %112
  %114 = fdiv float %85, %102
  %115 = fdiv float %77, %100
  %116 = fadd float %114, %115
  br i1 %86, label %117, label %122

117:                                              ; preds = %107
  %118 = fmul float %113, %113
  %119 = tail call float @llvm.fmuladd.f32(float %110, float %110, float %118)
  %120 = tail call float @llvm.fmuladd.f32(float %116, float %116, float %119)
  %121 = tail call float @sqrtf(float noundef %120) #22
  br label %122

122:                                              ; preds = %107, %117
  %123 = phi float [ %121, %117 ], [ %110, %107 ]
  %124 = fmul float %123, 0x40047DBF40000000
  %125 = fcmp une float %124, 0.000000e+00
  br i1 %125, label %126, label %241

126:                                              ; preds = %122
  %127 = fmul float %102, 5.000000e+00
  %128 = fcmp ogt float %100, %127
  %129 = select i1 %128, float %127, float %100
  %130 = fmul float %129, 5.000000e+00
  %131 = fcmp ogt float %102, %130
  %132 = select i1 %131, float %130, float %102
  %133 = load i8, ptr %7, align 1, !tbaa !230
  switch i8 %133, label %173 [
    i8 1, label %134
    i8 4, label %134
  ]

134:                                              ; preds = %126, %126
  %135 = fneg float %129
  %136 = fdiv float %135, %124
  %137 = load float, ptr %15, align 4, !tbaa !85
  %138 = tail call float @llvm.fmuladd.f32(float %110, float %136, float %137)
  store float %138, ptr %0, align 4, !tbaa !85
  %139 = load float, ptr %68, align 4, !tbaa !85
  %140 = tail call float @llvm.fmuladd.f32(float %113, float %136, float %139)
  %141 = getelementptr inbounds float, ptr %0, i64 1
  store float %140, ptr %141, align 4, !tbaa !85
  %142 = load float, ptr %73, align 4, !tbaa !85
  %143 = tail call float @llvm.fmuladd.f32(float %116, float %136, float %142)
  %144 = getelementptr inbounds float, ptr %0, i64 2
  store float %143, ptr %144, align 4, !tbaa !85
  %145 = icmp eq i8 %133, 4
  %146 = icmp ne ptr %2, null
  %147 = and i1 %146, %145
  %148 = icmp ne ptr %1, null
  %149 = and i1 %148, %147
  br i1 %149, label %150, label %173

150:                                              ; preds = %134
  %151 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !85
  %153 = fsub float %152, %139
  %154 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !85
  %156 = fsub float %155, %139
  %157 = fcmp ole float %153, 0.000000e+00
  %158 = fcmp ole float %156, 0.000000e+00
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %169, label %160

160:                                              ; preds = %150
  %161 = fcmp oge float %153, 0.000000e+00
  %162 = fcmp oge float %156, 0.000000e+00
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  br i1 %157, label %165, label %167

165:                                              ; preds = %164
  %166 = fcmp ogt float %152, %140
  br i1 %166, label %169, label %173

167:                                              ; preds = %164
  %168 = fcmp olt float %152, %140
  br i1 %168, label %169, label %173

169:                                              ; preds = %167, %165, %150, %160
  %170 = phi float [ %139, %160 ], [ %139, %150 ], [ %152, %165 ], [ %152, %167 ]
  %171 = phi i1 [ false, %160 ], [ false, %150 ], [ true, %165 ], [ true, %167 ]
  %172 = phi i1 [ true, %160 ], [ true, %150 ], [ false, %165 ], [ false, %167 ]
  store float %170, ptr %141, align 4, !tbaa !85
  br label %173

173:                                              ; preds = %169, %167, %165, %126, %134
  %174 = phi i1 [ false, %134 ], [ false, %126 ], [ false, %165 ], [ false, %167 ], [ %171, %169 ]
  %175 = phi i1 [ true, %134 ], [ true, %126 ], [ true, %165 ], [ true, %167 ], [ %172, %169 ]
  %176 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %177 = load i8, ptr %176, align 2, !tbaa !229
  switch i8 %177, label %216 [
    i8 1, label %178
    i8 4, label %178
  ]

178:                                              ; preds = %173, %173
  %179 = fdiv float %132, %124
  %180 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %181 = load float, ptr %15, align 4, !tbaa !85
  %182 = tail call float @llvm.fmuladd.f32(float %110, float %179, float %181)
  store float %182, ptr %180, align 4, !tbaa !85
  %183 = load float, ptr %68, align 4, !tbaa !85
  %184 = tail call float @llvm.fmuladd.f32(float %113, float %179, float %183)
  %185 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %184, ptr %185, align 4, !tbaa !85
  %186 = load float, ptr %73, align 4, !tbaa !85
  %187 = tail call float @llvm.fmuladd.f32(float %116, float %179, float %186)
  %188 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  store float %187, ptr %188, align 4, !tbaa !85
  %189 = icmp eq i8 %177, 4
  %190 = icmp ne ptr %2, null
  %191 = and i1 %190, %189
  %192 = icmp ne ptr %1, null
  %193 = and i1 %192, %191
  br i1 %193, label %194, label %216

194:                                              ; preds = %178
  %195 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !85
  %197 = fsub float %196, %183
  %198 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !85
  %200 = fsub float %199, %183
  %201 = fcmp ole float %197, 0.000000e+00
  %202 = fcmp ole float %200, 0.000000e+00
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %213, label %204

204:                                              ; preds = %194
  %205 = fcmp oge float %197, 0.000000e+00
  %206 = fcmp oge float %200, 0.000000e+00
  %207 = select i1 %205, i1 %206, i1 false
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  br i1 %201, label %209, label %211

209:                                              ; preds = %208
  %210 = fcmp olt float %199, %184
  br i1 %210, label %213, label %216

211:                                              ; preds = %208
  %212 = fcmp ogt float %199, %184
  br i1 %212, label %213, label %216

213:                                              ; preds = %211, %209, %194, %204
  %214 = phi float [ %183, %204 ], [ %183, %194 ], [ %199, %209 ], [ %199, %211 ]
  %215 = phi i1 [ false, %204 ], [ false, %194 ], [ true, %209 ], [ true, %211 ]
  store float %214, ptr %185, align 4, !tbaa !85
  br label %216

216:                                              ; preds = %213, %211, %209, %173, %178
  %217 = phi i1 [ false, %178 ], [ false, %173 ], [ false, %209 ], [ false, %211 ], [ %215, %213 ]
  %218 = or i1 %174, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %216
  %220 = load float, ptr %0, align 4, !tbaa !85
  %221 = load float, ptr %15, align 4, !tbaa !85
  %222 = fsub float %220, %221
  %223 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !85
  %225 = fsub float %221, %224
  %226 = load float, ptr %68, align 4, !tbaa !85
  br i1 %175, label %234, label %227

227:                                              ; preds = %219
  %228 = getelementptr inbounds float, ptr %0, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !85
  %230 = fsub float %226, %229
  %231 = fdiv float %230, %222
  %232 = tail call float @llvm.fmuladd.f32(float %231, float %225, float %226)
  %233 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %232, ptr %233, align 4, !tbaa !85
  br label %241

234:                                              ; preds = %219
  %235 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !85
  %237 = fsub float %226, %236
  %238 = fdiv float %237, %225
  %239 = tail call float @llvm.fmuladd.f32(float %238, float %222, float %226)
  %240 = getelementptr inbounds float, ptr %0, i64 1
  store float %239, ptr %240, align 4, !tbaa !85
  br label %241

241:                                              ; preds = %122, %227, %234, %216, %104
  %242 = load i8, ptr %7, align 1, !tbaa !230
  %243 = icmp eq i8 %242, 2
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load float, ptr %15, align 4, !tbaa !85
  %246 = tail call float @llvm.fmuladd.f32(float %67, float 0xBFD5555560000000, float %245)
  store float %246, ptr %0, align 4, !tbaa !85
  %247 = load float, ptr %68, align 4, !tbaa !85
  %248 = tail call float @llvm.fmuladd.f32(float %72, float 0xBFD5555560000000, float %247)
  %249 = getelementptr inbounds float, ptr %0, i64 1
  store float %248, ptr %249, align 4, !tbaa !85
  %250 = load float, ptr %73, align 4, !tbaa !85
  %251 = tail call float @llvm.fmuladd.f32(float %77, float 0xBFD5555560000000, float %250)
  %252 = getelementptr inbounds float, ptr %0, i64 2
  store float %251, ptr %252, align 4, !tbaa !85
  br label %253

253:                                              ; preds = %244, %241
  %254 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %255 = load i8, ptr %254, align 2, !tbaa !229
  %256 = icmp eq i8 %255, 2
  br i1 %256, label %257, label %267

257:                                              ; preds = %253
  %258 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %259 = load float, ptr %15, align 4, !tbaa !85
  %260 = tail call float @llvm.fmuladd.f32(float %79, float 0x3FD5555560000000, float %259)
  store float %260, ptr %258, align 4, !tbaa !85
  %261 = load float, ptr %68, align 4, !tbaa !85
  %262 = tail call float @llvm.fmuladd.f32(float %82, float 0x3FD5555560000000, float %261)
  %263 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %262, ptr %263, align 4, !tbaa !85
  %264 = load float, ptr %73, align 4, !tbaa !85
  %265 = tail call float @llvm.fmuladd.f32(float %85, float 0x3FD5555560000000, float %264)
  %266 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  store float %265, ptr %266, align 4, !tbaa !85
  br label %267

267:                                              ; preds = %257, %253
  %268 = icmp ne i8 %4, 0
  %269 = icmp eq i8 %242, 0
  %270 = or i1 %268, %269
  %271 = icmp eq i8 %255, 0
  %272 = or i1 %270, %271
  br i1 %272, label %412, label %273

273:                                              ; preds = %267
  %274 = icmp eq i8 %242, 3
  %275 = icmp eq i8 %255, 3
  %276 = or i1 %274, %275
  %277 = icmp eq i8 %242, 5
  %278 = or i1 %277, %276
  %279 = icmp eq i8 %255, 5
  %280 = or i1 %279, %278
  br i1 %280, label %281, label %412

281:                                              ; preds = %273
  %282 = load float, ptr %0, align 4, !tbaa !85
  %283 = load float, ptr %15, align 4, !tbaa !85
  %284 = fsub float %282, %283
  %285 = getelementptr inbounds float, ptr %0, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !85
  %287 = load float, ptr %68, align 4, !tbaa !85
  %288 = fsub float %286, %287
  %289 = getelementptr inbounds float, ptr %0, i64 2
  %290 = load float, ptr %289, align 4, !tbaa !85
  %291 = load float, ptr %73, align 4, !tbaa !85
  %292 = fsub float %290, %291
  %293 = fmul float %288, %288
  %294 = tail call float @llvm.fmuladd.f32(float %284, float %284, float %293)
  %295 = tail call float @llvm.fmuladd.f32(float %292, float %292, float %294)
  %296 = tail call float @sqrtf(float noundef %295) #22
  %297 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !85
  %299 = load float, ptr %15, align 4, !tbaa !85
  %300 = fsub float %298, %299
  %301 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !85
  %303 = load float, ptr %68, align 4, !tbaa !85
  %304 = fsub float %302, %303
  %305 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !85
  %307 = load float, ptr %73, align 4, !tbaa !85
  %308 = fsub float %306, %307
  %309 = fmul float %304, %304
  %310 = tail call float @llvm.fmuladd.f32(float %300, float %300, float %309)
  %311 = tail call float @llvm.fmuladd.f32(float %308, float %308, float %310)
  %312 = tail call float @sqrtf(float noundef %311) #22
  %313 = fcmp oeq float %296, 0.000000e+00
  %314 = select i1 %313, float 1.000000e+00, float %296
  %315 = fcmp oeq float %312, 0.000000e+00
  %316 = select i1 %315, float 1.000000e+00, float %312
  %317 = fdiv float %314, %316
  %318 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %319 = load i8, ptr %318, align 1, !tbaa !279
  %320 = and i8 %319, 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %367, label %322

322:                                              ; preds = %281
  %323 = load i8, ptr %254, align 2, !tbaa !229
  %324 = icmp eq i8 %323, 3
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = icmp eq i8 %323, 5
  %327 = fcmp ogt float %314, 0x3EE4F8B580000000
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %331, label %345

329:                                              ; preds = %322
  %330 = fcmp ogt float %314, 0x3EE4F8B580000000
  br i1 %330, label %331, label %345

331:                                              ; preds = %325, %329
  %332 = fdiv float 1.000000e+00, %317
  %333 = load float, ptr %15, align 4, !tbaa !85
  %334 = load float, ptr %0, align 4, !tbaa !85
  %335 = fsub float %333, %334
  %336 = tail call float @llvm.fmuladd.f32(float %332, float %335, float %333)
  store float %336, ptr %297, align 4, !tbaa !85
  %337 = load float, ptr %68, align 4, !tbaa !85
  %338 = load float, ptr %285, align 4, !tbaa !85
  %339 = fsub float %337, %338
  %340 = tail call float @llvm.fmuladd.f32(float %332, float %339, float %337)
  store float %340, ptr %301, align 4, !tbaa !85
  %341 = load float, ptr %73, align 4, !tbaa !85
  %342 = load float, ptr %289, align 4, !tbaa !85
  %343 = fsub float %341, %342
  %344 = tail call float @llvm.fmuladd.f32(float %332, float %343, float %341)
  store float %344, ptr %305, align 4, !tbaa !85
  br label %345

345:                                              ; preds = %329, %331, %325
  %346 = load i8, ptr %7, align 1, !tbaa !230
  %347 = icmp eq i8 %346, 3
  br i1 %347, label %352, label %348

348:                                              ; preds = %345
  %349 = icmp eq i8 %346, 5
  %350 = fcmp ogt float %316, 0x3EE4F8B580000000
  %351 = select i1 %349, i1 %350, i1 false
  br i1 %351, label %354, label %412

352:                                              ; preds = %345
  %353 = fcmp ogt float %316, 0x3EE4F8B580000000
  br i1 %353, label %354, label %412

354:                                              ; preds = %348, %352
  %355 = load float, ptr %15, align 4, !tbaa !85
  %356 = load float, ptr %297, align 4, !tbaa !85
  %357 = fsub float %355, %356
  %358 = tail call float @llvm.fmuladd.f32(float %317, float %357, float %355)
  store float %358, ptr %0, align 4, !tbaa !85
  %359 = load float, ptr %68, align 4, !tbaa !85
  %360 = load float, ptr %301, align 4, !tbaa !85
  %361 = fsub float %359, %360
  %362 = tail call float @llvm.fmuladd.f32(float %317, float %361, float %359)
  store float %362, ptr %285, align 4, !tbaa !85
  %363 = load float, ptr %73, align 4, !tbaa !85
  %364 = load float, ptr %305, align 4, !tbaa !85
  %365 = fsub float %363, %364
  %366 = tail call float @llvm.fmuladd.f32(float %317, float %365, float %363)
  store float %366, ptr %289, align 4, !tbaa !85
  br label %412

367:                                              ; preds = %281
  %368 = load i8, ptr %7, align 1, !tbaa !230
  %369 = icmp eq i8 %368, 3
  br i1 %369, label %374, label %370

370:                                              ; preds = %367
  %371 = icmp eq i8 %368, 5
  %372 = fcmp ogt float %316, 0x3EE4F8B580000000
  %373 = select i1 %371, i1 %372, i1 false
  br i1 %373, label %376, label %389

374:                                              ; preds = %367
  %375 = fcmp ogt float %316, 0x3EE4F8B580000000
  br i1 %375, label %376, label %389

376:                                              ; preds = %370, %374
  %377 = load float, ptr %15, align 4, !tbaa !85
  %378 = load float, ptr %297, align 4, !tbaa !85
  %379 = fsub float %377, %378
  %380 = tail call float @llvm.fmuladd.f32(float %317, float %379, float %377)
  store float %380, ptr %0, align 4, !tbaa !85
  %381 = load float, ptr %68, align 4, !tbaa !85
  %382 = load float, ptr %301, align 4, !tbaa !85
  %383 = fsub float %381, %382
  %384 = tail call float @llvm.fmuladd.f32(float %317, float %383, float %381)
  store float %384, ptr %285, align 4, !tbaa !85
  %385 = load float, ptr %73, align 4, !tbaa !85
  %386 = load float, ptr %305, align 4, !tbaa !85
  %387 = fsub float %385, %386
  %388 = tail call float @llvm.fmuladd.f32(float %317, float %387, float %385)
  store float %388, ptr %289, align 4, !tbaa !85
  br label %389

389:                                              ; preds = %374, %376, %370
  %390 = load i8, ptr %254, align 2, !tbaa !229
  %391 = icmp eq i8 %390, 3
  br i1 %391, label %396, label %392

392:                                              ; preds = %389
  %393 = icmp eq i8 %390, 5
  %394 = fcmp ogt float %314, 0x3EE4F8B580000000
  %395 = select i1 %393, i1 %394, i1 false
  br i1 %395, label %398, label %412

396:                                              ; preds = %389
  %397 = fcmp ogt float %314, 0x3EE4F8B580000000
  br i1 %397, label %398, label %412

398:                                              ; preds = %392, %396
  %399 = fdiv float 1.000000e+00, %317
  %400 = load float, ptr %15, align 4, !tbaa !85
  %401 = load float, ptr %0, align 4, !tbaa !85
  %402 = fsub float %400, %401
  %403 = tail call float @llvm.fmuladd.f32(float %399, float %402, float %400)
  store float %403, ptr %297, align 4, !tbaa !85
  %404 = load float, ptr %68, align 4, !tbaa !85
  %405 = load float, ptr %285, align 4, !tbaa !85
  %406 = fsub float %404, %405
  %407 = tail call float @llvm.fmuladd.f32(float %399, float %406, float %404)
  store float %407, ptr %301, align 4, !tbaa !85
  %408 = load float, ptr %73, align 4, !tbaa !85
  %409 = load float, ptr %289, align 4, !tbaa !85
  %410 = fsub float %408, %409
  %411 = tail call float @llvm.fmuladd.f32(float %399, float %410, float %408)
  store float %411, ptr %305, align 4, !tbaa !85
  br label %412

412:                                              ; preds = %352, %354, %348, %396, %398, %392, %267, %273, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handle_calc_simple(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %12 = load i16, ptr %11, align 4, !tbaa !134
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = zext nneg i32 %4 to i64
  %17 = getelementptr %struct.BezTriple, ptr %8, i64 %16
  %18 = getelementptr %struct.BezTriple, ptr %17, i64 -1
  br label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 -1
  br label %21

21:                                               ; preds = %10, %15, %19
  %22 = phi ptr [ %18, %15 ], [ %20, %19 ], [ null, %10 ]
  %23 = zext nneg i32 %4 to i64
  %24 = getelementptr %struct.BezTriple, ptr %8, i64 %23
  %25 = getelementptr %struct.BezTriple, ptr %24, i64 -1
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %29 = load i16, ptr %28, align 4, !tbaa !134
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  %32 = select i1 %31, ptr null, ptr %8
  br label %35

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1
  br label %35

35:                                               ; preds = %27, %33
  %36 = phi ptr [ %34, %33 ], [ %32, %27 ]
  tail call fastcc void @calchandleNurb_intern(ptr noundef %1, ptr noundef %22, ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %37

37:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_nurb_bezt_handle_test(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #18 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !279
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
  %18 = zext nneg i8 %17 to i16
  br label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %21 = load i8, ptr %20, align 4, !tbaa !280
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i16 0, i16 7
  br label %25

25:                                               ; preds = %4, %19
  %26 = phi i16 [ %24, %19 ], [ %18, %4 ]
  %27 = zext nneg i16 %26 to i32
  switch i16 %26, label %28 [
    i16 7, label %55
    i16 0, label %55
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %30 = load i8, ptr %29, align 1, !tbaa !230
  switch i8 %30, label %32 [
    i8 1, label %31
    i8 4, label %31
  ]

31:                                               ; preds = %28, %28
  store i8 3, ptr %29, align 1, !tbaa !230
  br label %32

32:                                               ; preds = %28, %31
  %33 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %34 = load i8, ptr %33, align 2, !tbaa !229
  switch i8 %34, label %36 [
    i8 1, label %35
    i8 4, label %35
  ]

35:                                               ; preds = %32, %32
  store i8 3, ptr %33, align 2, !tbaa !229
  br label %36

36:                                               ; preds = %32, %35
  %37 = load i8, ptr %29, align 1, !tbaa !230
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = lshr i32 %27, 1
  %41 = xor i32 %40, %27
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8 0, ptr %29, align 1, !tbaa !230
  br label %45

45:                                               ; preds = %39, %44, %36
  %46 = load i8, ptr %33, align 2, !tbaa !229
  %47 = icmp eq i8 %46, 2
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = lshr i32 %27, 2
  %50 = lshr i32 %27, 1
  %51 = xor i32 %49, %50
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i8 0, ptr %33, align 2, !tbaa !229
  br label %55

55:                                               ; preds = %25, %25, %45, %54, %48
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurb_handles_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !130
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %55

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !76
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %16, %13 ], [ %9, %11 ]
  %15 = phi ptr [ %17, %13 ], [ %12, %11 ]
  %16 = add nsw i32 %14, -1
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef %15, i8 noundef zeroext %1)
  %17 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %13, !llvm.loop !282

19:                                               ; preds = %13, %6
  %20 = load i16, ptr %3, align 8, !tbaa !130
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i32, ptr %8, align 8, !tbaa !131
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %55, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %7, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %28 = load i16, ptr %27, align 4, !tbaa !134
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  %31 = zext nneg i32 %23 to i64
  %32 = getelementptr %struct.BezTriple, ptr %26, i64 %31
  %33 = getelementptr %struct.BezTriple, ptr %32, i64 -1
  %34 = select i1 %30, ptr null, ptr %33
  %35 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 1
  br label %36

36:                                               ; preds = %51, %25
  %37 = phi i32 [ %23, %25 ], [ %41, %51 ]
  %38 = phi ptr [ %35, %25 ], [ %52, %51 ]
  %39 = phi ptr [ %34, %25 ], [ %40, %51 ]
  %40 = phi ptr [ %26, %25 ], [ %53, %51 ]
  %41 = add nsw i32 %37, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %40, ptr noundef %39, ptr noundef %38, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i16, ptr %27, align 4, !tbaa !134
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %7, align 8, !tbaa !76
  br label %51

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 1
  br label %51

51:                                               ; preds = %49, %47, %43
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ], [ null, %43 ]
  %53 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1
  %54 = icmp eq i32 %41, 0
  br i1 %54, label %55, label %36, !llvm.loop !135

55:                                               ; preds = %51, %22, %19, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_handles_autocalc(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %170, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %170, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !131
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %133, label %12

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr %struct.BezTriple, ptr %6, i64 %13
  %15 = getelementptr %struct.BezTriple, ptr %14, i64 -2
  %16 = getelementptr %struct.BezTriple, ptr %14, i64 -1
  %17 = icmp eq i32 %1, 0
  br label %18

18:                                               ; preds = %12, %130
  %19 = phi i32 [ %10, %12 ], [ %23, %130 ]
  %20 = phi ptr [ %15, %12 ], [ %21, %130 ]
  %21 = phi ptr [ %16, %12 ], [ %22, %130 ]
  %22 = phi ptr [ %6, %12 ], [ %131, %130 ]
  %23 = add nsw i32 %19, -1
  br i1 %17, label %30, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %26 = load i8, ptr %25, align 1, !tbaa !279
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  store i8 0, ptr %31, align 1, !tbaa !230
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !85
  %35 = load float, ptr %32, align 4, !tbaa !85
  %36 = fsub float %34, %35
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !85
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !85
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !85
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !85
  %46 = fsub float %43, %45
  %47 = fmul float %41, %41
  %48 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %48)
  %50 = fcmp uge float %49, 0x3E45798EC0000000
  br i1 %50, label %51, label %60

51:                                               ; preds = %30
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %53 = tail call float @dist_squared_to_line_v3(ptr noundef nonnull %32, ptr noundef %21, ptr noundef nonnull %52) #22
  %54 = fcmp olt float %53, 0x3E45798EC0000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i8 3, ptr %31, align 1, !tbaa !230
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i8 [ 1, %55 ], [ 0, %51 ]
  %58 = tail call float @dist_squared_to_line_v3(ptr noundef %21, ptr noundef nonnull %32, ptr noundef nonnull %33) #22
  %59 = fcmp olt float %58, 0x3E45798EC0000000
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %30
  %61 = phi i8 [ 0, %30 ], [ %57, %56 ]
  store i8 2, ptr %31, align 1, !tbaa !230
  br label %62

62:                                               ; preds = %60, %56, %24
  %63 = phi i8 [ %57, %56 ], [ 0, %24 ], [ %61, %60 ]
  %64 = phi i1 [ true, %56 ], [ true, %24 ], [ %50, %60 ]
  br i1 %17, label %71, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %67 = load i8, ptr %66, align 1, !tbaa !281
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, %1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %65, %62
  %72 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 0, ptr %72, align 2, !tbaa !229
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !85
  %76 = load float, ptr %73, align 4, !tbaa !85
  %77 = fsub float %75, %76
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !85
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !85
  %82 = fsub float %79, %81
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !85
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !85
  %87 = fsub float %84, %86
  %88 = fmul float %82, %82
  %89 = tail call float @llvm.fmuladd.f32(float %77, float %77, float %88)
  %90 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %89)
  %91 = fcmp uge float %90, 0x3E45798EC0000000
  br i1 %91, label %92, label %99

92:                                               ; preds = %71
  %93 = icmp eq i8 %63, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %92
  store i8 3, ptr %72, align 2, !tbaa !229
  br label %95

95:                                               ; preds = %94, %92
  %96 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %97 = tail call float @dist_squared_to_line_v3(ptr noundef nonnull %96, ptr noundef nonnull %73, ptr noundef nonnull %74) #22
  %98 = fcmp olt float %97, 0x3E45798EC0000000
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %71
  store i8 2, ptr %72, align 2, !tbaa !229
  br label %100

100:                                              ; preds = %99, %95, %65
  %101 = phi i1 [ true, %95 ], [ true, %65 ], [ %91, %99 ]
  br i1 %64, label %107, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  %104 = load i8, ptr %103, align 2, !tbaa !229
  %105 = icmp eq i8 %104, 3
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i8 0, ptr %103, align 2, !tbaa !229
  br label %107

107:                                              ; preds = %106, %102, %100
  br i1 %101, label %113, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  %110 = load i8, ptr %109, align 1, !tbaa !230
  %111 = icmp eq i8 %110, 3
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i8 0, ptr %109, align 1, !tbaa !230
  br label %113

113:                                              ; preds = %112, %108, %107
  %114 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  %115 = load i8, ptr %114, align 1, !tbaa !230
  %116 = icmp eq i8 %115, 3
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  %119 = load i8, ptr %118, align 2, !tbaa !229
  %120 = icmp eq i8 %119, 2
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8 0, ptr %114, align 1, !tbaa !230
  br label %122

122:                                              ; preds = %121, %117, %113
  %123 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  %124 = load i8, ptr %123, align 2, !tbaa !229
  %125 = icmp eq i8 %124, 3
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i8, ptr %114, align 1, !tbaa !230
  %128 = icmp eq i8 %127, 2
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i8 0, ptr %123, align 2, !tbaa !229
  br label %130

130:                                              ; preds = %129, %126, %122
  %131 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %132 = icmp eq i32 %23, 0
  br i1 %132, label %133, label %18, !llvm.loop !283

133:                                              ; preds = %130, %8
  %134 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %135 = load i16, ptr %134, align 8, !tbaa !130
  %136 = icmp eq i16 %135, 1
  br i1 %136, label %137, label %170

137:                                              ; preds = %133
  %138 = load i32, ptr %9, align 8, !tbaa !131
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %170, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %5, align 8, !tbaa !76
  %142 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %143 = load i16, ptr %142, align 4, !tbaa !134
  %144 = and i16 %143, 1
  %145 = icmp eq i16 %144, 0
  %146 = zext nneg i32 %138 to i64
  %147 = getelementptr %struct.BezTriple, ptr %141, i64 %146
  %148 = getelementptr %struct.BezTriple, ptr %147, i64 -1
  %149 = select i1 %145, ptr null, ptr %148
  %150 = getelementptr inbounds %struct.BezTriple, ptr %141, i64 1
  br label %151

151:                                              ; preds = %166, %140
  %152 = phi i32 [ %138, %140 ], [ %156, %166 ]
  %153 = phi ptr [ %150, %140 ], [ %167, %166 ]
  %154 = phi ptr [ %149, %140 ], [ %155, %166 ]
  %155 = phi ptr [ %141, %140 ], [ %168, %166 ]
  %156 = add nsw i32 %152, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %155, ptr noundef %154, ptr noundef %153, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load i16, ptr %142, align 4, !tbaa !134
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %5, align 8, !tbaa !76
  br label %166

164:                                              ; preds = %151
  %165 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 1
  br label %166

166:                                              ; preds = %164, %162, %158
  %167 = phi ptr [ %163, %162 ], [ %165, %164 ], [ null, %158 ]
  %168 = getelementptr inbounds %struct.BezTriple, ptr %155, i64 1
  %169 = icmp eq i32 %156, 0
  br i1 %169, label %170, label %151, !llvm.loop !135

170:                                              ; preds = %166, %137, %133, %2, %4
  ret void
}

declare float @dist_squared_to_line_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurbList_handles_autocalc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @BKE_nurb_handles_autocalc(ptr noundef nonnull %6, i32 noundef %1)
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !284

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_nurbList_handles_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = add i8 %1, -1
  %4 = icmp ult i8 %3, 2
  br i1 %4, label %5, label %128

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %285, label %8

8:                                                ; preds = %5, %125
  %9 = phi ptr [ %126, %125 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !130
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %125

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !131
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %72, label %19

19:                                               ; preds = %13, %52
  %20 = phi i32 [ %22, %52 ], [ %17, %13 ]
  %21 = phi ptr [ %53, %52 ], [ %15, %13 ]
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !279
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %29 = load i8, ptr %28, align 1, !tbaa !281
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  br i1 %26, label %35, label %33

33:                                               ; preds = %19, %32
  %34 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  store i8 %1, ptr %34, align 1, !tbaa !230
  br label %35

35:                                               ; preds = %33, %32
  %36 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !281
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 %1, ptr %41, align 2, !tbaa !229
  br label %42

42:                                               ; preds = %40, %35
  %43 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  %44 = load i8, ptr %43, align 1, !tbaa !230
  %45 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  %46 = load i8, ptr %45, align 2, !tbaa !229
  %47 = icmp eq i8 %44, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  switch i8 %44, label %50 [
    i8 3, label %49
    i8 1, label %49
  ]

49:                                               ; preds = %48, %48
  store i8 0, ptr %43, align 1, !tbaa !230
  br label %50

50:                                               ; preds = %48, %49
  switch i8 %46, label %52 [
    i8 3, label %51
    i8 1, label %51
  ]

51:                                               ; preds = %50, %50
  store i8 0, ptr %45, align 2, !tbaa !229
  br label %52

52:                                               ; preds = %50, %42, %51, %27
  %53 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %54 = icmp eq i32 %22, 0
  br i1 %54, label %55, label %19, !llvm.loop !285

55:                                               ; preds = %52, %69
  %56 = phi i32 [ %58, %69 ], [ %17, %52 ]
  %57 = phi ptr [ %70, %69 ], [ %15, %52 ]
  %58 = add nsw i32 %56, -1
  %59 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !279
  %61 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !281
  %63 = xor i8 %62, %60
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = xor i8 %60, 1
  store i8 %67, ptr %59, align 1, !tbaa !279
  %68 = xor i8 %62, 1
  store i8 %68, ptr %61, align 1, !tbaa !281
  br label %69

69:                                               ; preds = %66, %55
  %70 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 1
  %71 = icmp eq i32 %58, 0
  br i1 %71, label %72, label %55, !llvm.loop !286

72:                                               ; preds = %69, %13
  %73 = icmp slt i32 %17, 2
  br i1 %73, label %103, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 13
  %76 = load i16, ptr %75, align 4, !tbaa !134
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  %79 = zext nneg i32 %17 to i64
  %80 = getelementptr %struct.BezTriple, ptr %15, i64 %79
  %81 = getelementptr %struct.BezTriple, ptr %80, i64 -1
  %82 = select i1 %78, ptr null, ptr %81
  %83 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 1
  br label %84

84:                                               ; preds = %99, %74
  %85 = phi i32 [ %17, %74 ], [ %89, %99 ]
  %86 = phi ptr [ %83, %74 ], [ %100, %99 ]
  %87 = phi ptr [ %82, %74 ], [ %88, %99 ]
  %88 = phi ptr [ %15, %74 ], [ %101, %99 ]
  %89 = add nsw i32 %85, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %88, ptr noundef %87, ptr noundef %86, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i16, ptr %75, align 4, !tbaa !134
  %93 = and i16 %92, 1
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %14, align 8, !tbaa !76
  br label %99

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 1
  br label %99

99:                                               ; preds = %97, %95, %91
  %100 = phi ptr [ %96, %95 ], [ %98, %97 ], [ null, %91 ]
  %101 = getelementptr inbounds %struct.BezTriple, ptr %88, i64 1
  %102 = icmp eq i32 %89, 0
  br i1 %102, label %103, label %84, !llvm.loop !135

103:                                              ; preds = %99, %72
  %104 = load i32, ptr %16, align 8, !tbaa !131
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %14, align 8, !tbaa !76
  br label %108

108:                                              ; preds = %122, %106
  %109 = phi i32 [ %111, %122 ], [ %104, %106 ]
  %110 = phi ptr [ %123, %122 ], [ %107, %106 ]
  %111 = add nsw i32 %109, -1
  %112 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 7
  %113 = load i8, ptr %112, align 1, !tbaa !279
  %114 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 9
  %115 = load i8, ptr %114, align 1, !tbaa !281
  %116 = xor i8 %115, %113
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  %120 = xor i8 %113, 1
  store i8 %120, ptr %112, align 1, !tbaa !279
  %121 = xor i8 %115, 1
  store i8 %121, ptr %114, align 1, !tbaa !281
  br label %122

122:                                              ; preds = %119, %108
  %123 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 1
  %124 = icmp eq i32 %111, 0
  br i1 %124, label %125, label %108, !llvm.loop !286

125:                                              ; preds = %122, %103, %8
  %126 = load ptr, ptr %9, align 8, !tbaa !46
  %127 = icmp eq ptr %126, null
  br i1 %127, label %285, label %8, !llvm.loop !287

128:                                              ; preds = %2
  switch i8 %1, label %129 [
    i8 5, label %177
    i8 6, label %132
  ]

129:                                              ; preds = %128
  %130 = load ptr, ptr %0, align 8, !tbaa !46
  %131 = icmp eq ptr %130, null
  br i1 %131, label %177, label %133

132:                                              ; preds = %128
  br label %177

133:                                              ; preds = %129, %170
  %134 = phi ptr [ %172, %170 ], [ %130, %129 ]
  %135 = phi i8 [ %171, %170 ], [ 0, %129 ]
  %136 = getelementptr inbounds %struct.Nurb, ptr %134, i64 0, i32 2
  %137 = load i16, ptr %136, align 8, !tbaa !130
  %138 = icmp eq i16 %137, 1
  br i1 %138, label %139, label %170

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.Nurb, ptr %134, i64 0, i32 6
  %141 = load i32, ptr %140, align 8, !tbaa !131
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %170, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.Nurb, ptr %134, i64 0, i32 18
  %145 = load ptr, ptr %144, align 8, !tbaa !76
  br label %146

146:                                              ; preds = %143, %167
  %147 = phi i32 [ %149, %167 ], [ %141, %143 ]
  %148 = phi ptr [ %168, %167 ], [ %145, %143 ]
  %149 = add nsw i32 %147, -1
  %150 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 7
  %151 = load i8, ptr %150, align 1, !tbaa !279
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 5
  %156 = load i8, ptr %155, align 1, !tbaa !230
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %154, %146
  %159 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 9
  %160 = load i8, ptr %159, align 1, !tbaa !281
  %161 = and i8 %160, 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 6
  %165 = load i8, ptr %164, align 2, !tbaa !229
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163, %158
  %168 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 1
  %169 = icmp eq i32 %149, 0
  br i1 %169, label %170, label %146, !llvm.loop !288

170:                                              ; preds = %167, %163, %154, %139, %133
  %171 = phi i8 [ %135, %133 ], [ %135, %139 ], [ 1, %154 ], [ 1, %163 ], [ %135, %167 ]
  %172 = load ptr, ptr %134, align 8, !tbaa !46
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %133, !llvm.loop !289

174:                                              ; preds = %170
  %175 = icmp eq i8 %171, 0
  %176 = select i1 %175, i8 3, i8 0
  br label %177

177:                                              ; preds = %129, %174, %128, %132
  %178 = phi i8 [ 0, %132 ], [ 3, %128 ], [ 3, %129 ], [ %176, %174 ]
  %179 = load ptr, ptr %0, align 8, !tbaa !46
  %180 = icmp eq ptr %179, null
  br i1 %180, label %285, label %181

181:                                              ; preds = %177, %282
  %182 = phi ptr [ %283, %282 ], [ %179, %177 ]
  %183 = getelementptr inbounds %struct.Nurb, ptr %182, i64 0, i32 2
  %184 = load i16, ptr %183, align 8, !tbaa !130
  %185 = icmp eq i16 %184, 1
  br i1 %185, label %186, label %282

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.Nurb, ptr %182, i64 0, i32 18
  %188 = load ptr, ptr %187, align 8, !tbaa !76
  %189 = getelementptr inbounds %struct.Nurb, ptr %182, i64 0, i32 6
  %190 = load i32, ptr %189, align 8, !tbaa !131
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %229, label %192

192:                                              ; preds = %186, %209
  %193 = phi i32 [ %195, %209 ], [ %190, %186 ]
  %194 = phi ptr [ %210, %209 ], [ %188, %186 ]
  %195 = add nsw i32 %193, -1
  %196 = getelementptr inbounds %struct.BezTriple, ptr %194, i64 0, i32 7
  %197 = load i8, ptr %196, align 1, !tbaa !279
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.BezTriple, ptr %194, i64 0, i32 5
  store i8 %178, ptr %201, align 1, !tbaa !230
  br label %202

202:                                              ; preds = %200, %192
  %203 = getelementptr inbounds %struct.BezTriple, ptr %194, i64 0, i32 9
  %204 = load i8, ptr %203, align 1, !tbaa !281
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.BezTriple, ptr %194, i64 0, i32 6
  store i8 %178, ptr %208, align 2, !tbaa !229
  br label %209

209:                                              ; preds = %207, %202
  %210 = getelementptr inbounds %struct.BezTriple, ptr %194, i64 1
  %211 = icmp eq i32 %195, 0
  br i1 %211, label %212, label %192, !llvm.loop !290

212:                                              ; preds = %209, %226
  %213 = phi i32 [ %215, %226 ], [ %190, %209 ]
  %214 = phi ptr [ %227, %226 ], [ %188, %209 ]
  %215 = add nsw i32 %213, -1
  %216 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 0, i32 7
  %217 = load i8, ptr %216, align 1, !tbaa !279
  %218 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 0, i32 9
  %219 = load i8, ptr %218, align 1, !tbaa !281
  %220 = xor i8 %219, %217
  %221 = and i8 %220, 1
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %212
  %224 = xor i8 %217, 1
  store i8 %224, ptr %216, align 1, !tbaa !279
  %225 = xor i8 %219, 1
  store i8 %225, ptr %218, align 1, !tbaa !281
  br label %226

226:                                              ; preds = %223, %212
  %227 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 1
  %228 = icmp eq i32 %215, 0
  br i1 %228, label %229, label %212, !llvm.loop !286

229:                                              ; preds = %226, %186
  %230 = icmp slt i32 %190, 2
  br i1 %230, label %260, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.Nurb, ptr %182, i64 0, i32 13
  %233 = load i16, ptr %232, align 4, !tbaa !134
  %234 = and i16 %233, 1
  %235 = icmp eq i16 %234, 0
  %236 = zext nneg i32 %190 to i64
  %237 = getelementptr %struct.BezTriple, ptr %188, i64 %236
  %238 = getelementptr %struct.BezTriple, ptr %237, i64 -1
  %239 = select i1 %235, ptr null, ptr %238
  %240 = getelementptr inbounds %struct.BezTriple, ptr %188, i64 1
  br label %241

241:                                              ; preds = %256, %231
  %242 = phi i32 [ %190, %231 ], [ %246, %256 ]
  %243 = phi ptr [ %240, %231 ], [ %257, %256 ]
  %244 = phi ptr [ %239, %231 ], [ %245, %256 ]
  %245 = phi ptr [ %188, %231 ], [ %258, %256 ]
  %246 = add nsw i32 %242, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %245, ptr noundef %244, ptr noundef %243, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %254

248:                                              ; preds = %241
  %249 = load i16, ptr %232, align 4, !tbaa !134
  %250 = and i16 %249, 1
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load ptr, ptr %187, align 8, !tbaa !76
  br label %256

254:                                              ; preds = %241
  %255 = getelementptr inbounds %struct.BezTriple, ptr %243, i64 1
  br label %256

256:                                              ; preds = %254, %252, %248
  %257 = phi ptr [ %253, %252 ], [ %255, %254 ], [ null, %248 ]
  %258 = getelementptr inbounds %struct.BezTriple, ptr %245, i64 1
  %259 = icmp eq i32 %246, 0
  br i1 %259, label %260, label %241, !llvm.loop !135

260:                                              ; preds = %256, %229
  %261 = load i32, ptr %189, align 8, !tbaa !131
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %282, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr %187, align 8, !tbaa !76
  br label %265

265:                                              ; preds = %279, %263
  %266 = phi i32 [ %268, %279 ], [ %261, %263 ]
  %267 = phi ptr [ %280, %279 ], [ %264, %263 ]
  %268 = add nsw i32 %266, -1
  %269 = getelementptr inbounds %struct.BezTriple, ptr %267, i64 0, i32 7
  %270 = load i8, ptr %269, align 1, !tbaa !279
  %271 = getelementptr inbounds %struct.BezTriple, ptr %267, i64 0, i32 9
  %272 = load i8, ptr %271, align 1, !tbaa !281
  %273 = xor i8 %272, %270
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %265
  %277 = xor i8 %270, 1
  store i8 %277, ptr %269, align 1, !tbaa !279
  %278 = xor i8 %272, 1
  store i8 %278, ptr %271, align 1, !tbaa !281
  br label %279

279:                                              ; preds = %276, %265
  %280 = getelementptr inbounds %struct.BezTriple, ptr %267, i64 1
  %281 = icmp eq i32 %268, 0
  br i1 %281, label %282, label %265, !llvm.loop !286

282:                                              ; preds = %279, %260, %181
  %283 = load ptr, ptr %182, align 8, !tbaa !46
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %181, !llvm.loop !291

285:                                              ; preds = %282, %125, %177, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurbList_handles_recalculate(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %163, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %1, 0
  %8 = icmp eq i8 %1, 0
  br label %9

9:                                                ; preds = %6, %160
  %10 = phi ptr [ %4, %6 ], [ %161, %160 ]
  %11 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !130
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %160

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !131
  %17 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %121, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %17, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 13
  %22 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 13
  br label %23

23:                                               ; preds = %19, %117
  %24 = phi i32 [ %16, %19 ], [ %27, %117 ]
  %25 = phi ptr [ %20, %19 ], [ %119, %117 ]
  %26 = phi i8 [ 0, %19 ], [ %118, %117 ]
  %27 = add nsw i32 %24, -1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 7
  %29 = load i8, ptr %28, align 1, !tbaa !279
  %30 = and i8 %29, %2
  %31 = icmp eq i8 %30, %2
  %32 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 9
  %33 = load i8, ptr %32, align 1, !tbaa !281
  %34 = and i8 %33, %2
  %35 = icmp eq i8 %34, %2
  %36 = select i1 %31, i1 true, i1 %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 5
  %39 = load i8, ptr %38, align 1, !tbaa !230
  %40 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 6
  %41 = load i8, ptr %40, align 2, !tbaa !229
  store i8 1, ptr %38, align 1, !tbaa !230
  store i8 1, ptr %40, align 2, !tbaa !229
  %42 = load float, ptr %25, align 4, !tbaa !85
  %43 = getelementptr inbounds float, ptr %25, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !85
  %45 = getelementptr inbounds float, ptr %25, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !85
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !85
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !85
  %51 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !85
  %53 = load i32, ptr %15, align 8, !tbaa !131
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %83

55:                                               ; preds = %37
  %56 = load ptr, ptr %17, align 8, !tbaa !76
  %57 = icmp eq ptr %56, %25
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i16, ptr %21, align 4, !tbaa !134
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = zext nneg i32 %53 to i64
  %64 = getelementptr %struct.BezTriple, ptr %56, i64 %63
  %65 = getelementptr %struct.BezTriple, ptr %64, i64 -1
  br label %68

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 -1
  br label %68

68:                                               ; preds = %66, %62, %58
  %69 = phi ptr [ %65, %62 ], [ %67, %66 ], [ null, %58 ]
  %70 = zext nneg i32 %53 to i64
  %71 = getelementptr %struct.BezTriple, ptr %56, i64 %70
  %72 = getelementptr %struct.BezTriple, ptr %71, i64 -1
  %73 = icmp eq ptr %72, %25
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i16, ptr %22, align 4, !tbaa !134
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  %78 = select i1 %77, ptr null, ptr %56
  br label %81

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 1
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi ptr [ %80, %79 ], [ %78, %74 ]
  tail call fastcc void @calchandleNurb_intern(ptr noundef nonnull %25, ptr noundef %69, ptr noundef %82, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %83

83:                                               ; preds = %37, %81
  store i8 %39, ptr %38, align 1, !tbaa !230
  store i8 %41, ptr %40, align 2, !tbaa !229
  br i1 %31, label %84, label %99

84:                                               ; preds = %83
  br i1 %7, label %85, label %100

85:                                               ; preds = %84
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !85
  %88 = fsub float %87, %42
  %89 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !85
  %91 = fsub float %90, %44
  %92 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !85
  %94 = fsub float %93, %46
  %95 = fmul float %91, %91
  %96 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %95)
  %97 = tail call float @llvm.fmuladd.f32(float %94, float %94, float %96)
  %98 = tail call float @sqrtf(float noundef %97) #22
  tail call void @dist_ensure_v3_v3fl(ptr noundef nonnull %25, ptr noundef nonnull %86, float noundef %98) #22
  br label %100

99:                                               ; preds = %83
  store float %42, ptr %25, align 4, !tbaa !85
  store float %44, ptr %43, align 4, !tbaa !85
  store float %46, ptr %45, align 4, !tbaa !85
  br label %100

100:                                              ; preds = %84, %85, %99
  br i1 %35, label %101, label %116

101:                                              ; preds = %100
  br i1 %8, label %102, label %117

102:                                              ; preds = %101
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !85
  %105 = fsub float %104, %48
  %106 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !85
  %108 = fsub float %107, %50
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !85
  %111 = fsub float %110, %52
  %112 = fmul float %108, %108
  %113 = tail call float @llvm.fmuladd.f32(float %105, float %105, float %112)
  %114 = tail call float @llvm.fmuladd.f32(float %111, float %111, float %113)
  %115 = tail call float @sqrtf(float noundef %114) #22
  tail call void @dist_ensure_v3_v3fl(ptr noundef nonnull %47, ptr noundef nonnull %103, float noundef %115) #22
  br label %117

116:                                              ; preds = %100
  store float %48, ptr %47, align 4, !tbaa !85
  store float %50, ptr %49, align 4, !tbaa !85
  store float %52, ptr %51, align 4, !tbaa !85
  br label %117

117:                                              ; preds = %116, %102, %101, %23
  %118 = phi i8 [ %26, %23 ], [ 1, %101 ], [ 1, %102 ], [ 1, %116 ]
  %119 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 1
  %120 = icmp eq i32 %27, 0
  br i1 %120, label %121, label %23, !llvm.loop !292

121:                                              ; preds = %117, %14
  %122 = phi i8 [ 0, %14 ], [ %118, %117 ]
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %160, label %124

124:                                              ; preds = %121
  %125 = load i16, ptr %11, align 8, !tbaa !130
  %126 = icmp eq i16 %125, 1
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  %128 = load i32, ptr %15, align 8, !tbaa !131
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %160, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %17, align 8, !tbaa !76
  %132 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 13
  %133 = load i16, ptr %132, align 4, !tbaa !134
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  %136 = zext nneg i32 %128 to i64
  %137 = getelementptr %struct.BezTriple, ptr %131, i64 %136
  %138 = getelementptr %struct.BezTriple, ptr %137, i64 -1
  %139 = select i1 %135, ptr null, ptr %138
  %140 = getelementptr inbounds %struct.BezTriple, ptr %131, i64 1
  br label %141

141:                                              ; preds = %156, %130
  %142 = phi i32 [ %128, %130 ], [ %146, %156 ]
  %143 = phi ptr [ %140, %130 ], [ %157, %156 ]
  %144 = phi ptr [ %139, %130 ], [ %145, %156 ]
  %145 = phi ptr [ %131, %130 ], [ %158, %156 ]
  %146 = add nsw i32 %142, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %145, ptr noundef %144, ptr noundef %143, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i16, ptr %132, align 4, !tbaa !134
  %150 = and i16 %149, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %17, align 8, !tbaa !76
  br label %156

154:                                              ; preds = %141
  %155 = getelementptr inbounds %struct.BezTriple, ptr %143, i64 1
  br label %156

156:                                              ; preds = %154, %152, %148
  %157 = phi ptr [ %153, %152 ], [ %155, %154 ], [ null, %148 ]
  %158 = getelementptr inbounds %struct.BezTriple, ptr %145, i64 1
  %159 = icmp eq i32 %146, 0
  br i1 %159, label %160, label %141, !llvm.loop !135

160:                                              ; preds = %156, %127, %124, %121, %9
  %161 = load ptr, ptr %10, align 8, !tbaa !46
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %9, !llvm.loop !293

163:                                              ; preds = %160, %3
  ret void
}

declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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
  %10 = load i16, ptr %9, align 8, !tbaa !130
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !131
  br i1 %11, label %14, label %28

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !76
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
  store i8 %6, ptr %25, align 1, !tbaa !279
  %26 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %43, label %19, !llvm.loop !294

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !126
  %31 = mul nsw i32 %30, %13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i32 [ %39, %36 ], [ %31, %33 ]
  %38 = phi ptr [ %41, %36 ], [ %35, %33 ]
  %39 = add nsw i32 %37, -1
  %40 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 3
  store i16 %1, ptr %40, align 4, !tbaa !295
  %41 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %36, !llvm.loop !296

43:                                               ; preds = %36, %19, %28, %14
  %44 = load ptr, ptr %8, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %7, !llvm.loop !297

46:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nurb_direction_switch(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.BezTriple, align 4
  %3 = alloca %struct.BPoint, align 4
  %4 = alloca %struct.BPoint, align 4
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %263, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !130
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %98

16:                                               ; preds = %12
  %17 = and i32 %6, 1
  %18 = add i32 %17, %6
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %263

20:                                               ; preds = %16
  %21 = lshr i32 %18, 1
  %22 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = sext i32 %6 to i64
  %25 = getelementptr %struct.BezTriple, ptr %23, i64 %24
  br label %26

26:                                               ; preds = %20, %91
  %27 = phi ptr [ %96, %91 ], [ %23, %20 ]
  %28 = phi ptr [ %30, %91 ], [ %25, %20 ]
  %29 = phi i32 [ %95, %91 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 -1
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %55, label %32

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %27, i64 72, i1 false), !tbaa.struct !298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %27, ptr noundef nonnull align 4 dereferenceable(72) %30, i64 72, i1 false), !tbaa.struct !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %30, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !298
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2)
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2
  %34 = load float, ptr %27, align 4, !tbaa !85
  %35 = load float, ptr %33, align 4, !tbaa !85
  store float %35, ptr %27, align 4, !tbaa !85
  store float %34, ptr %33, align 4, !tbaa !85
  %36 = getelementptr inbounds float, ptr %27, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !85
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !85
  store float %39, ptr %36, align 4, !tbaa !85
  store float %37, ptr %38, align 4, !tbaa !85
  %40 = getelementptr inbounds float, ptr %27, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !85
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !85
  store float %43, ptr %40, align 4, !tbaa !85
  store float %41, ptr %42, align 4, !tbaa !85
  %44 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 2
  %45 = load float, ptr %30, align 4, !tbaa !85
  %46 = load float, ptr %44, align 4, !tbaa !85
  store float %46, ptr %30, align 4, !tbaa !85
  store float %45, ptr %44, align 4, !tbaa !85
  %47 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !85
  %49 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !85
  store float %50, ptr %47, align 4, !tbaa !85
  store float %48, ptr %49, align 4, !tbaa !85
  %51 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 0, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !85
  %53 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 2, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !85
  store float %54, ptr %51, align 4, !tbaa !85
  store float %52, ptr %53, align 4, !tbaa !85
  br label %67

55:                                               ; preds = %26
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2
  %57 = load float, ptr %27, align 4, !tbaa !85
  %58 = load float, ptr %56, align 4, !tbaa !85
  store float %58, ptr %27, align 4, !tbaa !85
  store float %57, ptr %56, align 4, !tbaa !85
  %59 = getelementptr inbounds float, ptr %27, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !85
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !85
  store float %62, ptr %59, align 4, !tbaa !85
  store float %60, ptr %61, align 4, !tbaa !85
  %63 = getelementptr inbounds float, ptr %27, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !85
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !85
  store float %66, ptr %63, align 4, !tbaa !85
  store float %64, ptr %65, align 4, !tbaa !85
  br label %67

67:                                               ; preds = %55, %32
  %68 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 5
  %69 = load i8, ptr %68, align 1, !tbaa !230
  %70 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 6
  %71 = load i8, ptr %70, align 2, !tbaa !229
  store i8 %71, ptr %68, align 1, !tbaa !230
  store i8 %69, ptr %70, align 2, !tbaa !229
  %72 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 7
  %73 = load i8, ptr %72, align 1, !tbaa !279
  %74 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 9
  %75 = load i8, ptr %74, align 1, !tbaa !281
  store i8 %75, ptr %72, align 1, !tbaa !279
  store i8 %73, ptr %74, align 1, !tbaa !281
  br i1 %31, label %89, label %76

76:                                               ; preds = %67
  %77 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 5
  %78 = load i8, ptr %77, align 1, !tbaa !230
  %79 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 6
  %80 = load i8, ptr %79, align 2, !tbaa !229
  store i8 %80, ptr %77, align 1, !tbaa !230
  store i8 %78, ptr %79, align 2, !tbaa !229
  %81 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 7
  %82 = load i8, ptr %81, align 1, !tbaa !279
  %83 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 9
  %84 = load i8, ptr %83, align 1, !tbaa !281
  store i8 %84, ptr %81, align 1, !tbaa !279
  store i8 %82, ptr %83, align 1, !tbaa !281
  %85 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 1
  %86 = load float, ptr %85, align 4, !tbaa !231
  %87 = fneg float %86
  store float %87, ptr %85, align 4, !tbaa !231
  %88 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 1
  br label %91

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 1
  br label %91

91:                                               ; preds = %89, %76
  %92 = phi ptr [ %90, %89 ], [ %88, %76 ]
  %93 = load float, ptr %92, align 4, !tbaa !231
  %94 = fneg float %93
  store float %94, ptr %92, align 4, !tbaa !231
  %95 = add nsw i32 %29, -1
  %96 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 1
  %97 = icmp sgt i32 %29, 1
  br i1 %97, label %26, label %263, !llvm.loop !299

98:                                               ; preds = %12
  %99 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %100 = load i32, ptr %99, align 4, !tbaa !126
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %99, align 4, !tbaa !126
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %263

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  br label %234

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %109 = load ptr, ptr %108, align 8, !tbaa !77
  %110 = sext i32 %6 to i64
  %111 = getelementptr %struct.BPoint, ptr %109, i64 %110
  %112 = getelementptr inbounds %struct.BPoint, ptr %111, i64 -1
  %113 = icmp ne ptr %109, %112
  %114 = icmp sgt i32 %6, 1
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %107
  %117 = sdiv i32 %6, 2
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi ptr [ %131, %118 ], [ %112, %116 ]
  %120 = phi ptr [ %130, %118 ], [ %109, %116 ]
  %121 = phi ptr [ %119, %118 ], [ %111, %116 ]
  %122 = phi i32 [ %123, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %120, i64 36, i1 false), !tbaa.struct !300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %120, ptr noundef nonnull align 4 dereferenceable(36) %119, i64 36, i1 false), !tbaa.struct !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %119, ptr noundef nonnull align 4 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !300
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3)
  %123 = add nsw i32 %122, -1
  %124 = getelementptr inbounds %struct.BPoint, ptr %120, i64 0, i32 1
  %125 = load float, ptr %124, align 4, !tbaa !178
  %126 = fneg float %125
  store float %126, ptr %124, align 4, !tbaa !178
  %127 = getelementptr %struct.BPoint, ptr %121, i64 -1, i32 1
  %128 = load float, ptr %127, align 4, !tbaa !178
  %129 = fneg float %128
  store float %129, ptr %127, align 4, !tbaa !178
  %130 = getelementptr inbounds %struct.BPoint, ptr %120, i64 1
  %131 = getelementptr inbounds %struct.BPoint, ptr %119, i64 -1
  %132 = icmp ne ptr %130, %131
  %133 = icmp sgt i32 %122, 1
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %118, label %135, !llvm.loop !301

135:                                              ; preds = %118, %107
  %136 = phi ptr [ %109, %107 ], [ %130, %118 ]
  %137 = load i32, ptr %5, align 8, !tbaa !131
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.BPoint, ptr %136, i64 0, i32 1
  %142 = load float, ptr %141, align 4, !tbaa !178
  %143 = fneg float %142
  store float %143, ptr %141, align 4, !tbaa !178
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i16, ptr %13, align 8, !tbaa !130
  %146 = icmp eq i16 %145, 4
  br i1 %146, label %147, label %263

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %149 = load ptr, ptr %148, align 8, !tbaa !78
  %150 = icmp eq ptr %149, null
  br i1 %150, label %263, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %153 = load i16, ptr %152, align 8, !tbaa !146
  %154 = sext i16 %153 to i32
  %155 = add nsw i32 %137, %154
  %156 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %157 = load i16, ptr %156, align 4, !tbaa !134
  %158 = and i16 %157, 1
  %159 = icmp eq i16 %158, 0
  %160 = add nsw i32 %154, -1
  %161 = select i1 %159, i32 0, i32 %160
  %162 = add nsw i32 %155, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr float, ptr %149, i64 %163
  %165 = getelementptr inbounds float, ptr %164, i64 -1
  %166 = icmp ne ptr %149, %165
  %167 = icmp sgt i32 %162, 1
  %168 = and i1 %166, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %151
  %170 = sdiv i32 %162, 2
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi ptr [ %179, %171 ], [ %165, %169 ]
  %173 = phi ptr [ %178, %171 ], [ %149, %169 ]
  %174 = phi i32 [ %177, %171 ], [ %170, %169 ]
  %175 = load float, ptr %173, align 4, !tbaa !85
  %176 = load float, ptr %172, align 4, !tbaa !85
  store float %176, ptr %173, align 4, !tbaa !85
  store float %175, ptr %172, align 4, !tbaa !85
  %177 = add nsw i32 %174, -1
  %178 = getelementptr inbounds float, ptr %173, i64 1
  %179 = getelementptr inbounds float, ptr %172, i64 -1
  %180 = icmp ne ptr %178, %179
  %181 = icmp sgt i32 %174, 1
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %171, label %183, !llvm.loop !302

183:                                              ; preds = %171, %151
  %184 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %185 = shl nsw i64 %163, 2
  %186 = tail call ptr %184(i64 noundef %185, ptr noundef nonnull @.str.39) #22
  %187 = add nsw i32 %162, -1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, ptr %149, i64 %188
  %190 = load float, ptr %189, align 4, !tbaa !85
  %191 = getelementptr inbounds float, ptr %186, i64 %188
  store float %190, ptr %191, align 4, !tbaa !85
  %192 = icmp eq i32 %187, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %183, %193
  %194 = phi ptr [ %198, %193 ], [ %149, %183 ]
  %195 = phi i32 [ %197, %193 ], [ %187, %183 ]
  %196 = phi ptr [ %203, %193 ], [ %186, %183 ]
  %197 = add nsw i32 %195, -1
  %198 = getelementptr inbounds float, ptr %194, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !85
  %200 = load float, ptr %194, align 4, !tbaa !85
  %201 = fsub float %199, %200
  %202 = tail call float @llvm.fabs.f32(float %201)
  store float %202, ptr %196, align 4, !tbaa !85
  %203 = getelementptr inbounds float, ptr %196, i64 1
  %204 = icmp eq i32 %197, 0
  br i1 %204, label %205, label %193, !llvm.loop !303

205:                                              ; preds = %193, %183
  %206 = load i16, ptr %152, align 8, !tbaa !146
  %207 = sext i16 %206 to i32
  %208 = load i32, ptr %5, align 8, !tbaa !131
  %209 = add nsw i32 %208, %207
  %210 = load i16, ptr %156, align 4, !tbaa !134
  %211 = and i16 %210, 1
  %212 = icmp eq i16 %211, 0
  %213 = add nsw i32 %207, -1
  %214 = select i1 %212, i32 0, i32 %213
  %215 = add nsw i32 %209, %214
  %216 = load ptr, ptr %148, align 8, !tbaa !78
  store float 0.000000e+00, ptr %216, align 4, !tbaa !85
  %217 = add nsw i32 %215, -1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %205
  %220 = load float, ptr %216, align 4
  br label %221

221:                                              ; preds = %219, %221
  %222 = phi float [ %220, %219 ], [ %228, %221 ]
  %223 = phi i32 [ %217, %219 ], [ %230, %221 ]
  %224 = phi ptr [ %216, %219 ], [ %226, %221 ]
  %225 = phi ptr [ %186, %219 ], [ %229, %221 ]
  %226 = getelementptr inbounds float, ptr %224, i64 1
  %227 = load float, ptr %225, align 4, !tbaa !85
  %228 = fadd float %222, %227
  store float %228, ptr %226, align 4, !tbaa !85
  %229 = getelementptr inbounds float, ptr %225, i64 1
  %230 = add nsw i32 %223, -1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %221, !llvm.loop !304

232:                                              ; preds = %221, %205
  %233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %233(ptr noundef %186) #22
  br label %263

234:                                              ; preds = %105, %259
  %235 = phi i32 [ 0, %105 ], [ %260, %259 ]
  %236 = load ptr, ptr %106, align 8, !tbaa !77
  %237 = load i32, ptr %5, align 8, !tbaa !131
  %238 = mul nsw i32 %237, %235
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.BPoint, ptr %236, i64 %239
  %241 = sext i32 %237 to i64
  %242 = getelementptr %struct.BPoint, ptr %240, i64 %241
  %243 = getelementptr inbounds %struct.BPoint, ptr %242, i64 -1
  %244 = icmp ne ptr %240, %243
  %245 = icmp sgt i32 %237, 1
  %246 = and i1 %244, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %234
  %248 = sdiv i32 %237, 2
  br label %249

249:                                              ; preds = %247, %249
  %250 = phi ptr [ %255, %249 ], [ %243, %247 ]
  %251 = phi ptr [ %254, %249 ], [ %240, %247 ]
  %252 = phi i32 [ %253, %249 ], [ %248, %247 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %251, i64 36, i1 false), !tbaa.struct !300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %251, ptr noundef nonnull align 4 dereferenceable(36) %250, i64 36, i1 false), !tbaa.struct !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %250, ptr noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !300
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4)
  %253 = add nsw i32 %252, -1
  %254 = getelementptr inbounds %struct.BPoint, ptr %251, i64 1
  %255 = getelementptr inbounds %struct.BPoint, ptr %250, i64 -1
  %256 = icmp ne ptr %254, %255
  %257 = icmp sgt i32 %252, 1
  %258 = select i1 %256, i1 %257, i1 false
  br i1 %258, label %249, label %259, !llvm.loop !305

259:                                              ; preds = %249, %234
  %260 = add nuw nsw i32 %235, 1
  %261 = load i32, ptr %99, align 4, !tbaa !126
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %234, label %263, !llvm.loop !306

263:                                              ; preds = %259, %91, %102, %16, %144, %232, %147, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_nurbs_vertexCos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2, %27
  %6 = phi ptr [ %29, %27 ], [ %3, %2 ]
  %7 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, %7
  br label %27

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !126
  %25 = mul nsw i32 %24, %22
  %26 = add nsw i32 %25, %7
  br label %27

27:                                               ; preds = %20, %16, %11
  %28 = phi i32 [ %15, %11 ], [ %26, %20 ], [ %7, %16 ]
  %29 = load ptr, ptr %6, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %5, !llvm.loop !144

31:                                               ; preds = %27, %2
  %32 = phi i32 [ 0, %2 ], [ %28, %27 ]
  store i32 %32, ptr %1, align 4, !tbaa !162
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %34 = sext i32 %32 to i64
  %35 = mul nsw i64 %34, 12
  %36 = tail call ptr %33(i64 noundef %35, ptr noundef nonnull @.str.40) #22
  %37 = load ptr, ptr %0, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %112, label %39

39:                                               ; preds = %31, %108
  %40 = phi ptr [ %110, %108 ], [ %37, %31 ]
  %41 = phi ptr [ %109, %108 ], [ %36, %31 ]
  %42 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 2
  %43 = load i16, ptr %42, align 8, !tbaa !130
  %44 = icmp eq i16 %43, 1
  %45 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !131
  br i1 %44, label %47, label %85

47:                                               ; preds = %39
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %108

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi ptr [ %83, %52 ], [ %51, %49 ]
  %54 = phi i32 [ %82, %52 ], [ 0, %49 ]
  %55 = phi ptr [ %81, %52 ], [ %41, %49 ]
  %56 = load float, ptr %53, align 4, !tbaa !85
  store float %56, ptr %55, align 4, !tbaa !85
  %57 = getelementptr inbounds float, ptr %53, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !85
  %59 = getelementptr inbounds float, ptr %55, i64 1
  store float %58, ptr %59, align 4, !tbaa !85
  %60 = getelementptr inbounds float, ptr %53, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !85
  %62 = getelementptr inbounds float, ptr %55, i64 2
  store float %61, ptr %62, align 4, !tbaa !85
  %63 = getelementptr inbounds float, ptr %55, i64 3
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !85
  store float %65, ptr %63, align 4, !tbaa !85
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 1, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !85
  %68 = getelementptr inbounds float, ptr %55, i64 4
  store float %67, ptr %68, align 4, !tbaa !85
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 1, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !85
  %71 = getelementptr inbounds float, ptr %55, i64 5
  store float %70, ptr %71, align 4, !tbaa !85
  %72 = getelementptr inbounds float, ptr %55, i64 6
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !85
  store float %74, ptr %72, align 4, !tbaa !85
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 2, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !85
  %77 = getelementptr inbounds float, ptr %55, i64 7
  store float %76, ptr %77, align 4, !tbaa !85
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 2, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !85
  %80 = getelementptr inbounds float, ptr %55, i64 8
  store float %79, ptr %80, align 4, !tbaa !85
  %81 = getelementptr inbounds float, ptr %55, i64 9
  %82 = add nuw nsw i32 %54, 1
  %83 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 1
  %84 = icmp eq i32 %82, %46
  br i1 %84, label %108, label %52, !llvm.loop !307

85:                                               ; preds = %39
  %86 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 7
  %87 = load i32, ptr %86, align 4, !tbaa !126
  %88 = mul nsw i32 %87, %46
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !77
  br label %93

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %106, %93 ], [ %92, %90 ]
  %95 = phi i32 [ %105, %93 ], [ 0, %90 ]
  %96 = phi ptr [ %104, %93 ], [ %41, %90 ]
  %97 = load float, ptr %94, align 4, !tbaa !85
  store float %97, ptr %96, align 4, !tbaa !85
  %98 = getelementptr inbounds float, ptr %94, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !85
  %100 = getelementptr inbounds float, ptr %96, i64 1
  store float %99, ptr %100, align 4, !tbaa !85
  %101 = getelementptr inbounds float, ptr %94, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !85
  %103 = getelementptr inbounds float, ptr %96, i64 2
  store float %102, ptr %103, align 4, !tbaa !85
  %104 = getelementptr inbounds float, ptr %96, i64 3
  %105 = add nuw nsw i32 %95, 1
  %106 = getelementptr inbounds %struct.BPoint, ptr %94, i64 1
  %107 = icmp eq i32 %105, %88
  br i1 %107, label %108, label %93, !llvm.loop !308

108:                                              ; preds = %93, %52, %85, %47
  %109 = phi ptr [ %41, %47 ], [ %41, %85 ], [ %81, %52 ], [ %104, %93 ]
  %110 = load ptr, ptr %40, align 8, !tbaa !46
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %39, !llvm.loop !309

112:                                              ; preds = %108, %31
  ret ptr %36
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BK_curve_nurbs_vertexCos_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %114, label %5

5:                                                ; preds = %2, %111
  %6 = phi ptr [ %112, %111 ], [ %3, %2 ]
  %7 = phi ptr [ %75, %111 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !130
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !131
  br i1 %10, label %13, label %51

13:                                               ; preds = %5
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %49, %18 ], [ %17, %15 ]
  %20 = phi i32 [ %48, %18 ], [ 0, %15 ]
  %21 = phi ptr [ %47, %18 ], [ %7, %15 ]
  %22 = load float, ptr %21, align 4, !tbaa !85
  store float %22, ptr %19, align 4, !tbaa !85
  %23 = getelementptr inbounds float, ptr %21, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !85
  %25 = getelementptr inbounds float, ptr %19, i64 1
  store float %24, ptr %25, align 4, !tbaa !85
  %26 = getelementptr inbounds float, ptr %21, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !85
  %28 = getelementptr inbounds float, ptr %19, i64 2
  store float %27, ptr %28, align 4, !tbaa !85
  %29 = getelementptr inbounds float, ptr %21, i64 3
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1
  %31 = load float, ptr %29, align 4, !tbaa !85
  store float %31, ptr %30, align 4, !tbaa !85
  %32 = getelementptr inbounds float, ptr %21, i64 4
  %33 = load float, ptr %32, align 4, !tbaa !85
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1, i64 1
  store float %33, ptr %34, align 4, !tbaa !85
  %35 = getelementptr inbounds float, ptr %21, i64 5
  %36 = load float, ptr %35, align 4, !tbaa !85
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1, i64 2
  store float %36, ptr %37, align 4, !tbaa !85
  %38 = getelementptr inbounds float, ptr %21, i64 6
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 2
  %40 = load float, ptr %38, align 4, !tbaa !85
  store float %40, ptr %39, align 4, !tbaa !85
  %41 = getelementptr inbounds float, ptr %21, i64 7
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 2, i64 1
  store float %42, ptr %43, align 4, !tbaa !85
  %44 = getelementptr inbounds float, ptr %21, i64 8
  %45 = load float, ptr %44, align 4, !tbaa !85
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 2, i64 2
  store float %45, ptr %46, align 4, !tbaa !85
  %47 = getelementptr inbounds float, ptr %21, i64 9
  %48 = add nuw nsw i32 %20, 1
  %49 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %50 = icmp eq i32 %48, %12
  br i1 %50, label %74, label %18, !llvm.loop !310

51:                                               ; preds = %5
  %52 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %53 = load i32, ptr %52, align 4, !tbaa !126
  %54 = mul nsw i32 %53, %12
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi ptr [ %72, %59 ], [ %58, %56 ]
  %61 = phi i32 [ %71, %59 ], [ 0, %56 ]
  %62 = phi ptr [ %70, %59 ], [ %7, %56 ]
  %63 = load float, ptr %62, align 4, !tbaa !85
  store float %63, ptr %60, align 4, !tbaa !85
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !85
  %66 = getelementptr inbounds float, ptr %60, i64 1
  store float %65, ptr %66, align 4, !tbaa !85
  %67 = getelementptr inbounds float, ptr %62, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !85
  %69 = getelementptr inbounds float, ptr %60, i64 2
  store float %68, ptr %69, align 4, !tbaa !85
  %70 = getelementptr inbounds float, ptr %62, i64 3
  %71 = add nuw nsw i32 %61, 1
  %72 = getelementptr inbounds %struct.BPoint, ptr %60, i64 1
  %73 = icmp eq i32 %71, %54
  br i1 %73, label %74, label %59, !llvm.loop !311

74:                                               ; preds = %59, %18, %51, %13
  %75 = phi ptr [ %7, %13 ], [ %7, %51 ], [ %47, %18 ], [ %70, %59 ]
  br i1 %10, label %76, label %111

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !131
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %111, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !76
  %83 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 13
  %84 = load i16, ptr %83, align 4, !tbaa !134
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  %87 = zext nneg i32 %78 to i64
  %88 = getelementptr %struct.BezTriple, ptr %82, i64 %87
  %89 = getelementptr %struct.BezTriple, ptr %88, i64 -1
  %90 = select i1 %86, ptr null, ptr %89
  %91 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 1
  br label %92

92:                                               ; preds = %107, %80
  %93 = phi i32 [ %78, %80 ], [ %97, %107 ]
  %94 = phi ptr [ %91, %80 ], [ %108, %107 ]
  %95 = phi ptr [ %90, %80 ], [ %96, %107 ]
  %96 = phi ptr [ %82, %80 ], [ %109, %107 ]
  %97 = add nsw i32 %93, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %96, ptr noundef %95, ptr noundef %94, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i16, ptr %83, align 4, !tbaa !134
  %101 = and i16 %100, 1
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %81, align 8, !tbaa !76
  br label %107

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.BezTriple, ptr %94, i64 1
  br label %107

107:                                              ; preds = %105, %103, %99
  %108 = phi ptr [ %104, %103 ], [ %106, %105 ], [ null, %99 ]
  %109 = getelementptr inbounds %struct.BezTriple, ptr %96, i64 1
  %110 = icmp eq i32 %97, 0
  br i1 %110, label %111, label %92, !llvm.loop !135

111:                                              ; preds = %107, %74, %76
  %112 = load ptr, ptr %6, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %5, !llvm.loop !312

114:                                              ; preds = %111, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_nurbs_keyVertexCos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2, %27
  %6 = phi ptr [ %29, %27 ], [ %3, %2 ]
  %7 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, %7
  br label %27

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !126
  %25 = mul nsw i32 %24, %22
  %26 = add nsw i32 %25, %7
  br label %27

27:                                               ; preds = %20, %16, %11
  %28 = phi i32 [ %15, %11 ], [ %26, %20 ], [ %7, %16 ]
  %29 = load ptr, ptr %6, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %5, !llvm.loop !144

31:                                               ; preds = %27
  %32 = sext i32 %28 to i64
  %33 = mul nsw i64 %32, 12
  br label %34

34:                                               ; preds = %31, %2
  %35 = phi i64 [ 0, %2 ], [ %33, %31 ]
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %37 = tail call ptr %36(i64 noundef %35, ptr noundef nonnull @.str.40) #22
  %38 = load ptr, ptr %0, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %109, label %40

40:                                               ; preds = %34, %104
  %41 = phi ptr [ %107, %104 ], [ %38, %34 ]
  %42 = phi ptr [ %106, %104 ], [ %1, %34 ]
  %43 = phi ptr [ %105, %104 ], [ %37, %34 ]
  %44 = getelementptr inbounds %struct.Nurb, ptr %41, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !130
  %46 = icmp eq i16 %45, 1
  %47 = getelementptr inbounds %struct.Nurb, ptr %41, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !131
  br i1 %46, label %54, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.Nurb, ptr %41, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !126
  %52 = mul nsw i32 %51, %48
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %89, label %104

54:                                               ; preds = %40
  %55 = icmp sgt i32 %48, 0
  br i1 %55, label %56, label %104

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %86, %56 ], [ %42, %54 ]
  %58 = phi ptr [ %85, %56 ], [ %43, %54 ]
  %59 = phi i32 [ %87, %56 ], [ 0, %54 ]
  %60 = load float, ptr %57, align 4, !tbaa !85
  store float %60, ptr %58, align 4, !tbaa !85
  %61 = getelementptr inbounds float, ptr %57, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !85
  %63 = getelementptr inbounds float, ptr %58, i64 1
  store float %62, ptr %63, align 4, !tbaa !85
  %64 = getelementptr inbounds float, ptr %57, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !85
  %66 = getelementptr inbounds float, ptr %58, i64 2
  store float %65, ptr %66, align 4, !tbaa !85
  %67 = getelementptr inbounds float, ptr %58, i64 3
  %68 = getelementptr inbounds float, ptr %57, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !85
  store float %69, ptr %67, align 4, !tbaa !85
  %70 = getelementptr inbounds float, ptr %57, i64 4
  %71 = load float, ptr %70, align 4, !tbaa !85
  %72 = getelementptr inbounds float, ptr %58, i64 4
  store float %71, ptr %72, align 4, !tbaa !85
  %73 = getelementptr inbounds float, ptr %57, i64 5
  %74 = load float, ptr %73, align 4, !tbaa !85
  %75 = getelementptr inbounds float, ptr %58, i64 5
  store float %74, ptr %75, align 4, !tbaa !85
  %76 = getelementptr inbounds float, ptr %58, i64 6
  %77 = getelementptr inbounds float, ptr %57, i64 6
  %78 = load float, ptr %77, align 4, !tbaa !85
  store float %78, ptr %76, align 4, !tbaa !85
  %79 = getelementptr inbounds float, ptr %57, i64 7
  %80 = load float, ptr %79, align 4, !tbaa !85
  %81 = getelementptr inbounds float, ptr %58, i64 7
  store float %80, ptr %81, align 4, !tbaa !85
  %82 = getelementptr inbounds float, ptr %57, i64 8
  %83 = load float, ptr %82, align 4, !tbaa !85
  %84 = getelementptr inbounds float, ptr %58, i64 8
  store float %83, ptr %84, align 4, !tbaa !85
  %85 = getelementptr inbounds float, ptr %58, i64 9
  %86 = getelementptr inbounds float, ptr %57, i64 12
  %87 = add nuw nsw i32 %59, 1
  %88 = icmp eq i32 %87, %48
  br i1 %88, label %104, label %56, !llvm.loop !313

89:                                               ; preds = %49, %89
  %90 = phi ptr [ %101, %89 ], [ %42, %49 ]
  %91 = phi ptr [ %100, %89 ], [ %43, %49 ]
  %92 = phi i32 [ %102, %89 ], [ 0, %49 ]
  %93 = load float, ptr %90, align 4, !tbaa !85
  store float %93, ptr %91, align 4, !tbaa !85
  %94 = getelementptr inbounds float, ptr %90, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !85
  %96 = getelementptr inbounds float, ptr %91, i64 1
  store float %95, ptr %96, align 4, !tbaa !85
  %97 = getelementptr inbounds float, ptr %90, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !85
  %99 = getelementptr inbounds float, ptr %91, i64 2
  store float %98, ptr %99, align 4, !tbaa !85
  %100 = getelementptr inbounds float, ptr %91, i64 3
  %101 = getelementptr inbounds float, ptr %90, i64 4
  %102 = add nuw nsw i32 %92, 1
  %103 = icmp eq i32 %102, %52
  br i1 %103, label %104, label %89, !llvm.loop !314

104:                                              ; preds = %89, %56, %49, %54
  %105 = phi ptr [ %43, %54 ], [ %43, %49 ], [ %85, %56 ], [ %100, %89 ]
  %106 = phi ptr [ %42, %54 ], [ %42, %49 ], [ %86, %56 ], [ %101, %89 ]
  %107 = load ptr, ptr %41, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %40, !llvm.loop !315

109:                                              ; preds = %104, %34
  ret ptr %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_nurbs_keyVertexTilts_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2, %48
  %6 = phi ptr [ %50, %48 ], [ %3, %2 ]
  %7 = phi ptr [ %49, %48 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !130
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !131
  br i1 %10, label %13, label %29

13:                                               ; preds = %5
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %27, %18 ], [ %17, %15 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %15 ]
  %21 = phi ptr [ %25, %18 ], [ %7, %15 ]
  %22 = getelementptr inbounds float, ptr %21, i64 9
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 1
  store float %23, ptr %24, align 4, !tbaa !231
  %25 = getelementptr inbounds float, ptr %21, i64 12
  %26 = add nuw nsw i32 %20, 1
  %27 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %28 = icmp eq i32 %26, %12
  br i1 %28, label %48, label %18, !llvm.loop !316

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !126
  %32 = mul nsw i32 %31, %12
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %46, %37 ], [ %36, %34 ]
  %39 = phi i32 [ %45, %37 ], [ 0, %34 ]
  %40 = phi ptr [ %44, %37 ], [ %7, %34 ]
  %41 = getelementptr inbounds float, ptr %40, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 1
  store float %42, ptr %43, align 4, !tbaa !178
  %44 = getelementptr inbounds float, ptr %40, i64 4
  %45 = add nuw nsw i32 %39, 1
  %46 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1
  %47 = icmp eq i32 %45, %32
  br i1 %47, label %48, label %37, !llvm.loop !317

48:                                               ; preds = %37, %18, %29, %13
  %49 = phi ptr [ %7, %13 ], [ %7, %29 ], [ %25, %18 ], [ %44, %37 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %5, !llvm.loop !318

52:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_check_valid_v(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !126
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !130
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !147
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %3, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !128
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !148
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  switch i16 %11, label %28 [
    i16 4, label %25
    i16 3, label %27
  ]

25:                                               ; preds = %24
  %26 = icmp slt i32 %3, 5
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %25, %19, %14
  br label %28

28:                                               ; preds = %24, %25, %9, %5, %1, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %1 ], [ 1, %5 ], [ 0, %9 ], [ 0, %25 ], [ 0, %24 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_check_valid_uv(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !131
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !130
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !146
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %3, %12
  br i1 %13, label %54, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !128
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %21 = load i16, ptr %20, align 4, !tbaa !134
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  switch i16 %11, label %54 [
    i16 4, label %25
    i16 3, label %27
  ]

25:                                               ; preds = %24
  %26 = icmp slt i32 %3, 5
  br i1 %26, label %54, label %27

27:                                               ; preds = %14, %19, %24, %25, %5
  %28 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !126
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !130
  %34 = icmp eq i16 %33, 4
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %37 = load i16, ptr %36, align 2, !tbaa !147
  %38 = sext i16 %37 to i32
  %39 = icmp slt i32 %29, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 5
  %42 = load i16, ptr %41, align 2, !tbaa !128
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %47 = load i16, ptr %46, align 2, !tbaa !148
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  switch i16 %37, label %54 [
    i16 4, label %51
    i16 3, label %53
  ]

51:                                               ; preds = %50
  %52 = icmp slt i32 %29, 5
  br i1 %52, label %54, label %53

53:                                               ; preds = %40, %45, %50, %51, %31
  br label %54

54:                                               ; preds = %27, %53, %51, %50, %35, %25, %24, %9, %1
  %55 = phi i8 [ 0, %1 ], [ 0, %9 ], [ 0, %24 ], [ 0, %25 ], [ 0, %35 ], [ 0, %50 ], [ 0, %51 ], [ 1, %53 ], [ 1, %27 ]
  ret i8 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_order_clamp_u(ptr nocapture noundef %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call i32 @llvm.smax.i32(i32 %3, i32 2)
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %4, align 8, !tbaa !146
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i8 [ 1, %8 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %14 = load i16, ptr %13, align 4, !tbaa !134
  %15 = and i16 %14, 5
  %16 = icmp eq i16 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i16, ptr %4, align 8, !tbaa !146
  %19 = icmp slt i16 %18, 3
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i16 %18, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %17
  %23 = phi i16 [ 3, %17 ], [ 4, %20 ]
  store i16 %23, ptr %4, align 8, !tbaa !146
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = phi i8 [ %12, %11 ], [ 1, %20 ], [ 1, %22 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BKE_nurb_order_clamp_v(ptr nocapture noundef %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !126
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !147
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call i32 @llvm.smax.i32(i32 %3, i32 2)
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %4, align 2, !tbaa !147
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i8 [ 1, %8 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %14 = load i16, ptr %13, align 2, !tbaa !148
  %15 = and i16 %14, 5
  %16 = icmp eq i16 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i16, ptr %4, align 2, !tbaa !147
  %19 = icmp slt i16 %18, 3
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i16 %18, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %17
  %23 = phi i16 [ 3, %17 ], [ 4, %20 ]
  store i16 %23, ptr %4, align 2, !tbaa !147
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = phi i8 [ %12, %11 ], [ 1, %20 ], [ 1, %22 ]
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nurb_type_convert(ptr nocapture noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !130
  switch i16 %5, label %287 [
    i16 0, label %6
    i16 1, label %102
    i16 4, label %204
  ]

6:                                                ; preds = %3
  switch i16 %1, label %287 [
    i16 1, label %7
    i16 4, label %81
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = sext i32 %9 to i64
  %12 = mul nsw i64 %11, 72
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.41) #22
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  store ptr %13, ptr %14, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %7, %18
  %19 = phi i32 [ %22, %18 ], [ %9, %7 ]
  %20 = phi ptr [ %45, %18 ], [ %16, %7 ]
  %21 = phi ptr [ %46, %18 ], [ %13, %7 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %24 = load float, ptr %20, align 4, !tbaa !85
  store float %24, ptr %23, align 4, !tbaa !85
  %25 = getelementptr inbounds float, ptr %20, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !85
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  store float %26, ptr %27, align 4, !tbaa !85
  %28 = getelementptr inbounds float, ptr %20, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !85
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  store float %29, ptr %30, align 4, !tbaa !85
  %31 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 3
  %32 = load i16, ptr %31, align 4, !tbaa !295
  %33 = trunc i16 %32 to i8
  %34 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  store i8 %33, ptr %34, align 1, !tbaa !281
  %35 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  store i8 %33, ptr %35, align 4, !tbaa !280
  %36 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  store i8 %33, ptr %36, align 1, !tbaa !279
  %37 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 6
  store i8 2, ptr %37, align 2, !tbaa !229
  %38 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 5
  store i8 2, ptr %38, align 1, !tbaa !230
  %39 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !179
  %41 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 2
  store float %40, ptr %41, align 4, !tbaa !232
  %42 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 5
  %43 = load float, ptr %42, align 4, !tbaa !152
  %44 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 3
  store float %43, ptr %44, align 4, !tbaa !149
  %45 = getelementptr inbounds %struct.BPoint, ptr %20, i64 1
  %46 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %47 = icmp eq i32 %22, 0
  br i1 %47, label %48, label %18, !llvm.loop !319

48:                                               ; preds = %18, %7
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %49(ptr noundef %16) #22
  store ptr null, ptr %15, align 8, !tbaa !77
  store i32 %9, ptr %8, align 8, !tbaa !131
  store i16 1, ptr %4, align 8, !tbaa !130
  %50 = icmp slt i32 %9, 2
  br i1 %50, label %287, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %14, align 8, !tbaa !76
  %53 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %54 = load i16, ptr %53, align 4, !tbaa !134
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  %57 = zext nneg i32 %9 to i64
  %58 = getelementptr %struct.BezTriple, ptr %52, i64 %57
  %59 = getelementptr %struct.BezTriple, ptr %58, i64 -1
  %60 = select i1 %56, ptr null, ptr %59
  %61 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 1
  br label %62

62:                                               ; preds = %77, %51
  %63 = phi i32 [ %9, %51 ], [ %67, %77 ]
  %64 = phi ptr [ %61, %51 ], [ %78, %77 ]
  %65 = phi ptr [ %60, %51 ], [ %66, %77 ]
  %66 = phi ptr [ %52, %51 ], [ %79, %77 ]
  %67 = add nsw i32 %63, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %66, ptr noundef %65, ptr noundef %64, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i16, ptr %53, align 4, !tbaa !134
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %14, align 8, !tbaa !76
  br label %77

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.BezTriple, ptr %64, i64 1
  br label %77

77:                                               ; preds = %75, %73, %69
  %78 = phi ptr [ %74, %73 ], [ %76, %75 ], [ null, %69 ]
  %79 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1
  %80 = icmp eq i32 %67, 0
  br i1 %80, label %287, label %62, !llvm.loop !135

81:                                               ; preds = %6
  store i16 4, ptr %4, align 8, !tbaa !130
  %82 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  store i16 4, ptr %82, align 8, !tbaa !146
  %83 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %84 = load i16, ptr %83, align 4, !tbaa !134
  %85 = and i16 %84, 1
  store i16 %85, ptr %83, align 4, !tbaa !134
  tail call fastcc void @makeknots(ptr noundef %0, i16 noundef signext 1)
  %86 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !131
  %88 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %89 = load i32, ptr %88, align 4, !tbaa !126
  %90 = mul nsw i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %287, label %92

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !77
  br label %95

95:                                               ; preds = %92, %95
  %96 = phi i32 [ %98, %95 ], [ %90, %92 ]
  %97 = phi ptr [ %100, %95 ], [ %94, %92 ]
  %98 = add nsw i32 %96, -1
  %99 = getelementptr inbounds [4 x float], ptr %97, i64 0, i64 3
  store float 1.000000e+00, ptr %99, align 4, !tbaa !85
  %100 = getelementptr inbounds %struct.BPoint, ptr %97, i64 1
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %287, label %95, !llvm.loop !320

102:                                              ; preds = %3
  %103 = icmp eq i16 %1, 0
  %104 = icmp eq i16 %1, 4
  switch i16 %1, label %287 [
    i16 4, label %105
    i16 0, label %105
  ]

105:                                              ; preds = %102, %102
  %106 = icmp eq i8 %2, 0
  %107 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %108 = load i32, ptr %107, align 8, !tbaa !131
  %109 = mul nsw i32 %108, 3
  %110 = select i1 %106, i32 %108, i32 %109
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %112 = sext i32 %110 to i64
  %113 = mul nsw i64 %112, 36
  %114 = tail call ptr %111(i64 noundef %113, ptr noundef nonnull @.str.42) #22
  %115 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  store ptr %114, ptr %115, align 8, !tbaa !77
  %116 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %117 = load i32, ptr %116, align 8, !tbaa !131
  %118 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  %120 = icmp eq i32 %117, 0
  br i1 %120, label %193, label %121

121:                                              ; preds = %105, %188
  %122 = phi i32 [ %126, %188 ], [ %117, %105 ]
  %123 = phi i32 [ %190, %188 ], [ %110, %105 ]
  %124 = phi ptr [ %189, %188 ], [ %114, %105 ]
  %125 = phi ptr [ %191, %188 ], [ %119, %105 ]
  %126 = add nsw i32 %122, -1
  br i1 %103, label %127, label %136

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 5
  %129 = load i8, ptr %128, align 1, !tbaa !230
  %130 = icmp eq i8 %129, 2
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 6
  %133 = load i8, ptr %132, align 2, !tbaa !229
  %134 = icmp eq i8 %133, 2
  %135 = or i1 %106, %134
  br i1 %135, label %137, label %160

136:                                              ; preds = %127, %121
  br i1 %106, label %137, label %160

137:                                              ; preds = %136, %131
  %138 = getelementptr inbounds [3 x [3 x float]], ptr %125, i64 0, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !85
  store float %139, ptr %124, align 4, !tbaa !85
  %140 = getelementptr inbounds [3 x [3 x float]], ptr %125, i64 0, i64 1, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !85
  %142 = getelementptr inbounds float, ptr %124, i64 1
  store float %141, ptr %142, align 4, !tbaa !85
  %143 = getelementptr inbounds [3 x [3 x float]], ptr %125, i64 0, i64 1, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !85
  %145 = getelementptr inbounds float, ptr %124, i64 2
  store float %144, ptr %145, align 4, !tbaa !85
  %146 = getelementptr inbounds [4 x float], ptr %124, i64 0, i64 3
  store float 1.000000e+00, ptr %146, align 4, !tbaa !85
  %147 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 8
  %148 = load i8, ptr %147, align 4, !tbaa !280
  %149 = zext i8 %148 to i16
  %150 = getelementptr inbounds %struct.BPoint, ptr %124, i64 0, i32 3
  store i16 %149, ptr %150, align 4, !tbaa !295
  %151 = add nsw i32 %123, -2
  %152 = select i1 %106, i32 %123, i32 %151
  %153 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 3
  %154 = load float, ptr %153, align 4, !tbaa !149
  %155 = getelementptr inbounds %struct.BPoint, ptr %124, i64 0, i32 5
  store float %154, ptr %155, align 4, !tbaa !152
  %156 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 2
  %157 = load float, ptr %156, align 4, !tbaa !232
  %158 = getelementptr inbounds %struct.BPoint, ptr %124, i64 0, i32 2
  store float %157, ptr %158, align 4, !tbaa !179
  %159 = getelementptr inbounds %struct.BPoint, ptr %124, i64 1
  br label %188

160:                                              ; preds = %131, %136
  %161 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 7
  %162 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 3
  %163 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 2
  br label %164

164:                                              ; preds = %160, %164
  %165 = phi i64 [ 0, %160 ], [ %185, %164 ]
  %166 = phi ptr [ %161, %160 ], [ %186, %164 ]
  %167 = phi ptr [ %124, %160 ], [ %184, %164 ]
  %168 = getelementptr inbounds [3 x [3 x float]], ptr %125, i64 0, i64 %165
  %169 = load float, ptr %168, align 4, !tbaa !85
  store float %169, ptr %167, align 4, !tbaa !85
  %170 = getelementptr inbounds float, ptr %168, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !85
  %172 = getelementptr inbounds float, ptr %167, i64 1
  store float %171, ptr %172, align 4, !tbaa !85
  %173 = getelementptr inbounds float, ptr %168, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !85
  %175 = getelementptr inbounds float, ptr %167, i64 2
  store float %174, ptr %175, align 4, !tbaa !85
  %176 = getelementptr inbounds [4 x float], ptr %167, i64 0, i64 3
  store float 1.000000e+00, ptr %176, align 4, !tbaa !85
  %177 = load i8, ptr %166, align 1, !tbaa !260
  %178 = zext i8 %177 to i16
  %179 = getelementptr inbounds %struct.BPoint, ptr %167, i64 0, i32 3
  store i16 %178, ptr %179, align 4, !tbaa !295
  %180 = load float, ptr %162, align 4, !tbaa !149
  %181 = getelementptr inbounds %struct.BPoint, ptr %167, i64 0, i32 5
  store float %180, ptr %181, align 4, !tbaa !152
  %182 = load float, ptr %163, align 4, !tbaa !232
  %183 = getelementptr inbounds %struct.BPoint, ptr %167, i64 0, i32 2
  store float %182, ptr %183, align 4, !tbaa !179
  %184 = getelementptr inbounds %struct.BPoint, ptr %167, i64 1
  %185 = add nuw nsw i64 %165, 1
  %186 = getelementptr inbounds i8, ptr %166, i64 1
  %187 = icmp eq i64 %185, 3
  br i1 %187, label %188, label %164, !llvm.loop !321

188:                                              ; preds = %164, %137
  %189 = phi ptr [ %159, %137 ], [ %184, %164 ]
  %190 = phi i32 [ %152, %137 ], [ %123, %164 ]
  %191 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 1
  %192 = icmp eq i32 %126, 0
  br i1 %192, label %193, label %121, !llvm.loop !322

193:                                              ; preds = %188, %105
  %194 = phi i32 [ %110, %105 ], [ %190, %188 ]
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %195(ptr noundef %119) #22
  store ptr null, ptr %118, align 8, !tbaa !76
  store i32 %194, ptr %116, align 8, !tbaa !131
  %196 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  store i32 1, ptr %196, align 4, !tbaa !126
  %197 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  store i16 4, ptr %197, align 8, !tbaa !146
  %198 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  store i16 1, ptr %198, align 2, !tbaa !147
  store i16 %1, ptr %4, align 8, !tbaa !130
  br i1 %104, label %199, label %287

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %201 = load i16, ptr %200, align 4, !tbaa !134
  %202 = and i16 %201, 1
  %203 = or disjoint i16 %202, 4
  store i16 %203, ptr %200, align 4, !tbaa !134
  tail call fastcc void @makeknots(ptr noundef %0, i16 noundef signext 1)
  br label %287

204:                                              ; preds = %3
  switch i16 %1, label %287 [
    i16 0, label %205
    i16 1, label %218
  ]

205:                                              ; preds = %204
  store i16 0, ptr %4, align 8, !tbaa !130
  %206 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %207 = load ptr, ptr %206, align 8, !tbaa !78
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %210(ptr noundef nonnull %207) #22
  br label %211

211:                                              ; preds = %209, %205
  store ptr null, ptr %206, align 8, !tbaa !78
  %212 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %213 = load ptr, ptr %212, align 8, !tbaa !79
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %216(ptr noundef nonnull %213) #22
  br label %217

217:                                              ; preds = %215, %211
  store ptr null, ptr %212, align 8, !tbaa !79
  br label %287

218:                                              ; preds = %204
  %219 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %220 = load i32, ptr %219, align 8, !tbaa !131
  %221 = sdiv i32 %220, 3
  %222 = icmp slt i32 %220, 6
  br i1 %222, label %287, label %223

223:                                              ; preds = %218
  %224 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %225 = zext nneg i32 %221 to i64
  %226 = mul nuw nsw i64 %225, 72
  %227 = tail call ptr %224(i64 noundef %226, ptr noundef nonnull @.str.41) #22
  %228 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  store ptr %227, ptr %228, align 8, !tbaa !76
  %229 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %230 = load ptr, ptr %229, align 8, !tbaa !77
  br label %231

231:                                              ; preds = %223, %231
  %232 = phi i32 [ %235, %231 ], [ %221, %223 ]
  %233 = phi ptr [ %279, %231 ], [ %230, %223 ]
  %234 = phi ptr [ %280, %231 ], [ %227, %223 ]
  %235 = add nsw i32 %232, -1
  %236 = load float, ptr %233, align 4, !tbaa !85
  store float %236, ptr %234, align 4, !tbaa !85
  %237 = getelementptr inbounds float, ptr %233, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !85
  %239 = getelementptr inbounds float, ptr %234, i64 1
  store float %238, ptr %239, align 4, !tbaa !85
  %240 = getelementptr inbounds float, ptr %233, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !85
  %242 = getelementptr inbounds float, ptr %234, i64 2
  store float %241, ptr %242, align 4, !tbaa !85
  %243 = getelementptr inbounds %struct.BPoint, ptr %233, i64 0, i32 3
  %244 = load i16, ptr %243, align 4, !tbaa !295
  %245 = trunc i16 %244 to i8
  %246 = getelementptr inbounds %struct.BezTriple, ptr %234, i64 0, i32 7
  store i8 %245, ptr %246, align 1, !tbaa !279
  %247 = getelementptr inbounds %struct.BPoint, ptr %233, i64 1
  %248 = getelementptr inbounds [3 x [3 x float]], ptr %234, i64 0, i64 1
  %249 = load float, ptr %247, align 4, !tbaa !85
  store float %249, ptr %248, align 4, !tbaa !85
  %250 = getelementptr inbounds %struct.BPoint, ptr %233, i64 1, i32 0, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !85
  %252 = getelementptr inbounds [3 x [3 x float]], ptr %234, i64 0, i64 1, i64 1
  store float %251, ptr %252, align 4, !tbaa !85
  %253 = getelementptr inbounds %struct.BPoint, ptr %233, i64 1, i32 0, i64 2
  %254 = load float, ptr %253, align 4, !tbaa !85
  %255 = getelementptr inbounds [3 x [3 x float]], ptr %234, i64 0, i64 1, i64 2
  store float %254, ptr %255, align 4, !tbaa !85
  %256 = getelementptr inbounds %struct.BPoint, ptr %233, i64 1, i32 3
  %257 = load i16, ptr %256, align 4, !tbaa !295
  %258 = trunc i16 %257 to i8
  %259 = getelementptr inbounds %struct.BezTriple, ptr %234, i64 0, i32 8
  store i8 %258, ptr %259, align 4, !tbaa !280
  %260 = getelementptr inbounds %struct.BPoint, ptr %233, i64 2
  %261 = getelementptr inbounds [3 x [3 x float]], ptr %234, i64 0, i64 2
  %262 = load float, ptr %260, align 4, !tbaa !85
  store float %262, ptr %261, align 4, !tbaa !85
  %263 = getelementptr inbounds %struct.BPoint, ptr %233, i64 2, i32 0, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !85
  %265 = getelementptr inbounds [3 x [3 x float]], ptr %234, i64 0, i64 2, i64 1
  store float %264, ptr %265, align 4, !tbaa !85
  %266 = getelementptr inbounds %struct.BPoint, ptr %233, i64 2, i32 0, i64 2
  %267 = load float, ptr %266, align 4, !tbaa !85
  %268 = getelementptr inbounds [3 x [3 x float]], ptr %234, i64 0, i64 2, i64 2
  store float %267, ptr %268, align 4, !tbaa !85
  %269 = getelementptr inbounds %struct.BPoint, ptr %233, i64 2, i32 3
  %270 = load i16, ptr %269, align 4, !tbaa !295
  %271 = trunc i16 %270 to i8
  %272 = getelementptr inbounds %struct.BezTriple, ptr %234, i64 0, i32 9
  store i8 %271, ptr %272, align 1, !tbaa !281
  %273 = getelementptr inbounds %struct.BPoint, ptr %233, i64 2, i32 5
  %274 = load float, ptr %273, align 4, !tbaa !152
  %275 = getelementptr inbounds %struct.BezTriple, ptr %234, i64 0, i32 3
  store float %274, ptr %275, align 4, !tbaa !149
  %276 = getelementptr inbounds %struct.BPoint, ptr %233, i64 2, i32 2
  %277 = load float, ptr %276, align 4, !tbaa !179
  %278 = getelementptr inbounds %struct.BezTriple, ptr %234, i64 0, i32 2
  store float %277, ptr %278, align 4, !tbaa !232
  %279 = getelementptr inbounds %struct.BPoint, ptr %233, i64 3
  %280 = getelementptr inbounds %struct.BezTriple, ptr %234, i64 1
  %281 = icmp eq i32 %235, 0
  br i1 %281, label %282, label %231, !llvm.loop !323

282:                                              ; preds = %231
  %283 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %283(ptr noundef %230) #22
  store ptr null, ptr %229, align 8, !tbaa !77
  %284 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %285 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %286 = load ptr, ptr %285, align 8, !tbaa !78
  tail call void %284(ptr noundef %286) #22
  store ptr null, ptr %285, align 8, !tbaa !78
  store i32 %221, ptr %219, align 8, !tbaa !131
  store i16 1, ptr %4, align 8, !tbaa !130
  br label %287

287:                                              ; preds = %95, %77, %81, %48, %282, %217, %199, %193, %6, %102, %3, %204, %218
  %288 = phi i8 [ 0, %218 ], [ 1, %204 ], [ 1, %3 ], [ 1, %102 ], [ 1, %6 ], [ 1, %193 ], [ 1, %199 ], [ 1, %217 ], [ 1, %282 ], [ 1, %48 ], [ 1, %81 ], [ 1, %77 ], [ 1, %95 ]
  ret i8 %288
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_nurb_active_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = tail call i32 @BLI_findindex(ptr noundef %6, ptr noundef nonnull %1) #22
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -1, %2 ]
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  store i32 %9, ptr %10, align 4, !tbaa !324
  ret void
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_nurb_active_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !324
  %6 = tail call ptr @BLI_findlink(ptr noundef %3, i32 noundef %5) #22
  ret ptr %6
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_curve_vert_active_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  %3 = load i32, ptr %2, align 8, !tbaa !325
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  %9 = load i32, ptr %8, align 4, !tbaa !324
  %10 = tail call ptr @BLI_findlink(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !130
  %15 = icmp eq i16 %14, 1
  %16 = load i32, ptr %2, align 8, !tbaa !325
  %17 = sext i32 %16 to i64
  br i1 %15, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 %17
  br label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = getelementptr inbounds %struct.BPoint, ptr %24, i64 %17
  br label %26

26:                                               ; preds = %1, %5, %18, %22
  %27 = phi ptr [ null, %1 ], [ %21, %18 ], [ %25, %22 ], [ null, %5 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_curve_nurb_vert_active_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  %5 = load i32, ptr %4, align 8, !tbaa !325
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  %11 = load i32, ptr %10, align 4, !tbaa !324
  %12 = tail call ptr @BLI_findlink(ptr noundef %9, i32 noundef %11) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !130
  %17 = icmp eq i16 %16, 1
  %18 = load i32, ptr %4, align 8, !tbaa !325
  %19 = sext i32 %18 to i64
  br i1 %17, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 %19
  br label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.BPoint, ptr %26, i64 %19
  br label %28

28:                                               ; preds = %7, %24, %20, %3
  %29 = phi ptr [ null, %3 ], [ %23, %20 ], [ %27, %24 ], [ null, %7 ]
  %30 = phi ptr [ null, %3 ], [ %12, %20 ], [ %12, %24 ], [ %12, %7 ]
  store ptr %30, ptr %1, align 8, !tbaa !46
  store ptr %29, ptr %2, align 8, !tbaa !46
  %31 = icmp ne ptr %29, null
  %32 = zext i1 %31 to i8
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_nurb_vert_active_set(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call i32 @BLI_findindex(ptr noundef %7, ptr noundef nonnull %1) #22
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  store i32 %8, ptr %9, align 4, !tbaa !324
  %10 = icmp eq ptr %2, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !130
  %14 = icmp eq i16 %13, 1
  %15 = ptrtoint ptr %2 to i64
  %16 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  br i1 %14, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = ptrtoint ptr %19 to i64
  %21 = sub i64 %15, %20
  %22 = sdiv exact i64 %21, 72
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %16, align 8, !tbaa !325
  br label %36

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = ptrtoint ptr %26 to i64
  %28 = sub i64 %15, %27
  %29 = sdiv exact i64 %28, 36
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr %16, align 8, !tbaa !325
  br label %36

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  store i32 -1, ptr %32, align 8, !tbaa !325
  br label %36

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  store i32 -1, ptr %34, align 8, !tbaa !325
  %35 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  store i32 -1, ptr %35, align 4, !tbaa !324
  br label %36

36:                                               ; preds = %31, %24, %17, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_nurb_vert_active_validate(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 32
  %3 = load i32, ptr %2, align 8, !tbaa !325
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 31
  %9 = load i32, ptr %8, align 4, !tbaa !324
  %10 = tail call ptr @BLI_findlink(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !130
  %15 = icmp eq i16 %14, 1
  %16 = load i32, ptr %2, align 8, !tbaa !325
  %17 = sext i32 %16 to i64
  br i1 %15, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 %17
  br label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = getelementptr inbounds %struct.BPoint, ptr %24, i64 %17
  br label %26

26:                                               ; preds = %1, %5, %18, %22
  %27 = phi ptr [ null, %1 ], [ %21, %18 ], [ %25, %22 ], [ null, %5 ]
  %28 = phi ptr [ null, %1 ], [ %10, %18 ], [ %10, %22 ], [ %10, %5 ]
  %29 = icmp eq ptr %27, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !130
  %33 = icmp eq i16 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !279
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %45

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  %41 = load i16, ptr %40, align 4, !tbaa !295
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  store i32 -1, ptr %2, align 8, !tbaa !325
  br label %45

45:                                               ; preds = %44, %34, %39, %26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_curve_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %7 = select i1 %5, ptr %6, ptr %4
  store float 0.000000e+00, ptr %1, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !85
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %97, label %12

12:                                               ; preds = %2, %92
  %13 = phi ptr [ %95, %92 ], [ %10, %2 ]
  %14 = phi i32 [ %94, %92 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !130
  %17 = icmp eq i16 %16, 1
  %18 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !131
  br i1 %17, label %20, label %64

20:                                               ; preds = %12
  %21 = mul nsw i32 %19, 3
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %92, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = load float, ptr %1, align 4, !tbaa !85
  %27 = load float, ptr %8, align 4, !tbaa !85
  %28 = load float, ptr %9, align 4, !tbaa !85
  br label %29

29:                                               ; preds = %23, %29
  %30 = phi float [ %28, %23 ], [ %61, %29 ]
  %31 = phi float [ %27, %23 ], [ %58, %29 ]
  %32 = phi float [ %26, %23 ], [ %55, %29 ]
  %33 = phi ptr [ %25, %23 ], [ %62, %29 ]
  %34 = phi i32 [ %19, %23 ], [ %35, %29 ]
  %35 = add nsw i32 %34, -1
  %36 = load float, ptr %33, align 4, !tbaa !85
  %37 = fadd float %36, %32
  store float %37, ptr %1, align 4, !tbaa !85
  %38 = getelementptr inbounds float, ptr %33, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !85
  %40 = fadd float %39, %31
  store float %40, ptr %8, align 4, !tbaa !85
  %41 = getelementptr inbounds float, ptr %33, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !85
  %43 = fadd float %42, %30
  store float %43, ptr %9, align 4, !tbaa !85
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !85
  %46 = fadd float %37, %45
  store float %46, ptr %1, align 4, !tbaa !85
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !85
  %49 = fadd float %40, %48
  store float %49, ptr %8, align 4, !tbaa !85
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !85
  %52 = fadd float %43, %51
  store float %52, ptr %9, align 4, !tbaa !85
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !85
  %55 = fadd float %46, %54
  store float %55, ptr %1, align 4, !tbaa !85
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !85
  %58 = fadd float %49, %57
  store float %58, ptr %8, align 4, !tbaa !85
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 2, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !85
  %61 = fadd float %52, %60
  store float %61, ptr %9, align 4, !tbaa !85
  %62 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %63 = icmp eq i32 %35, 0
  br i1 %63, label %92, label %29, !llvm.loop !326

64:                                               ; preds = %12
  %65 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !126
  %67 = mul nsw i32 %66, %19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = load float, ptr %1, align 4, !tbaa !85
  %73 = load float, ptr %8, align 4, !tbaa !85
  %74 = load float, ptr %9, align 4, !tbaa !85
  br label %75

75:                                               ; preds = %69, %75
  %76 = phi float [ %74, %69 ], [ %89, %75 ]
  %77 = phi float [ %73, %69 ], [ %86, %75 ]
  %78 = phi float [ %72, %69 ], [ %83, %75 ]
  %79 = phi ptr [ %71, %69 ], [ %90, %75 ]
  %80 = phi i32 [ %67, %69 ], [ %81, %75 ]
  %81 = add nsw i32 %80, -1
  %82 = load float, ptr %79, align 4, !tbaa !85
  %83 = fadd float %82, %78
  store float %83, ptr %1, align 4, !tbaa !85
  %84 = getelementptr inbounds float, ptr %79, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !85
  %86 = fadd float %85, %77
  store float %86, ptr %8, align 4, !tbaa !85
  %87 = getelementptr inbounds float, ptr %79, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !85
  %89 = fadd float %88, %76
  store float %89, ptr %9, align 4, !tbaa !85
  %90 = getelementptr inbounds %struct.BPoint, ptr %79, i64 1
  %91 = icmp eq i32 %81, 0
  br i1 %91, label %92, label %75, !llvm.loop !327

92:                                               ; preds = %75, %29, %64, %20
  %93 = phi i32 [ %21, %20 ], [ %67, %64 ], [ %21, %29 ], [ %67, %75 ]
  %94 = add nsw i32 %93, %14
  %95 = load ptr, ptr %13, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %12, !llvm.loop !328

97:                                               ; preds = %92, %2
  %98 = phi i32 [ 0, %2 ], [ %94, %92 ]
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = sitofp i32 %98 to float
  %102 = fdiv float 1.000000e+00, %101
  %103 = load float, ptr %1, align 4, !tbaa !85
  %104 = fmul float %102, %103
  store float %104, ptr %1, align 4, !tbaa !85
  %105 = load float, ptr %8, align 4, !tbaa !85
  %106 = fmul float %102, %105
  store float %106, ptr %8, align 4, !tbaa !85
  %107 = load float, ptr %9, align 4, !tbaa !85
  %108 = fmul float %102, %107
  store float %108, ptr %9, align 4, !tbaa !85
  br label %109

109:                                              ; preds = %100, %97
  %110 = zext i1 %99 to i8
  ret i8 %110
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_curve_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !85
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !85
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !85
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !85
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !85
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %13 = select i1 %11, ptr %12, ptr %10
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %18, %16 ], [ %14, %2 ]
  call void @BKE_nurb_minmax(ptr noundef nonnull %17, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %16, !llvm.loop !138

20:                                               ; preds = %16, %2
  %21 = load ptr, ptr %13, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  br label %24

24:                                               ; preds = %20, %23
  %25 = phi i8 [ 1, %23 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_transform_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %4, %81
  %9 = phi ptr [ %82, %81 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !130
  %12 = icmp eq i16 %11, 1
  %13 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !131
  br i1 %12, label %15, label %67

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !76
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %23, %20 ], [ %14, %18 ]
  %22 = phi ptr [ %29, %20 ], [ %19, %18 ]
  %23 = add nsw i32 %21, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %22) #22
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %24) #22
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %25) #22
  %26 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !149
  %28 = fmul float %27, %3
  store float %28, ptr %26, align 4, !tbaa !149
  %29 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %30 = icmp eq i32 %23, 0
  br i1 %30, label %31, label %20, !llvm.loop !329

31:                                               ; preds = %20, %15
  %32 = load i16, ptr %10, align 8, !tbaa !130
  %33 = icmp eq i16 %32, 1
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load i32, ptr %13, align 8, !tbaa !131
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %81, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %16, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 13
  %40 = load i16, ptr %39, align 4, !tbaa !134
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  %43 = zext nneg i32 %35 to i64
  %44 = getelementptr %struct.BezTriple, ptr %38, i64 %43
  %45 = getelementptr %struct.BezTriple, ptr %44, i64 -1
  %46 = select i1 %42, ptr null, ptr %45
  %47 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 1
  br label %48

48:                                               ; preds = %63, %37
  %49 = phi i32 [ %35, %37 ], [ %53, %63 ]
  %50 = phi ptr [ %47, %37 ], [ %64, %63 ]
  %51 = phi ptr [ %46, %37 ], [ %52, %63 ]
  %52 = phi ptr [ %38, %37 ], [ %65, %63 ]
  %53 = add nsw i32 %49, -1
  tail call fastcc void @calchandleNurb_intern(ptr noundef %52, ptr noundef %51, ptr noundef %50, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i16, ptr %39, align 4, !tbaa !134
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %16, align 8, !tbaa !76
  br label %63

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 1
  br label %63

63:                                               ; preds = %61, %59, %55
  %64 = phi ptr [ %60, %59 ], [ %62, %61 ], [ null, %55 ]
  %65 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 1
  %66 = icmp eq i32 %53, 0
  br i1 %66, label %81, label %48, !llvm.loop !135

67:                                               ; preds = %8
  %68 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  %69 = load i32, ptr %68, align 4, !tbaa !126
  %70 = mul nsw i32 %69, %14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !77
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i32 [ %78, %75 ], [ %70, %72 ]
  %77 = phi ptr [ %79, %75 ], [ %74, %72 ]
  %78 = add nsw i32 %76, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %77) #22
  %79 = getelementptr inbounds %struct.BPoint, ptr %77, i64 1
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %81, label %75, !llvm.loop !330

81:                                               ; preds = %75, %63, %67, %34, %31
  %82 = load ptr, ptr %9, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %8, !llvm.loop !331

84:                                               ; preds = %81, %4
  %85 = icmp eq i8 %2, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = icmp eq ptr %88, null
  br i1 %89, label %111, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.Key, ptr %88, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = icmp eq ptr %92, null
  br i1 %93, label %111, label %97

94:                                               ; preds = %105, %97
  %95 = load ptr, ptr %98, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %111, label %97, !llvm.loop !332

97:                                               ; preds = %90, %94
  %98 = phi ptr [ %95, %94 ], [ %92, %90 ]
  %99 = getelementptr inbounds %struct.KeyBlock, ptr %98, i64 0, i32 8
  %100 = load i32, ptr %99, align 8, !tbaa !333
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %94, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.KeyBlock, ptr %98, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !335
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %109, %105 ], [ %104, %102 ]
  %107 = phi i32 [ %108, %105 ], [ %100, %102 ]
  %108 = add nsw i32 %107, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %106) #22
  %109 = getelementptr inbounds float, ptr %106, i64 3
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %94, label %105, !llvm.loop !336

111:                                              ; preds = %94, %90, %86, %84
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_curve_transform(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call float @mat4_to_scale(ptr noundef %1) #22
  tail call void @BKE_curve_transform_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %4)
  ret void
}

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %8 = select i1 %6, ptr %7, ptr %5
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %97, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = getelementptr inbounds float, ptr %1, i64 2
  br label %16

16:                                               ; preds = %11, %94
  %17 = phi ptr [ %9, %11 ], [ %95, %94 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !130
  %20 = icmp eq i16 %19, 1
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !131
  br i1 %20, label %23, label %69

23:                                               ; preds = %16
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %94, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %67, %28 ], [ %27, %25 ]
  %30 = phi i32 [ %31, %28 ], [ %22, %25 ]
  %31 = add nsw i32 %30, -1
  %32 = load float, ptr %1, align 4, !tbaa !85
  %33 = load float, ptr %29, align 4, !tbaa !85
  %34 = fadd float %32, %33
  store float %34, ptr %29, align 4, !tbaa !85
  %35 = load float, ptr %14, align 4, !tbaa !85
  %36 = getelementptr inbounds float, ptr %29, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !85
  %38 = fadd float %35, %37
  store float %38, ptr %36, align 4, !tbaa !85
  %39 = load float, ptr %15, align 4, !tbaa !85
  %40 = getelementptr inbounds float, ptr %29, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !85
  %42 = fadd float %39, %41
  store float %42, ptr %40, align 4, !tbaa !85
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1
  %44 = load float, ptr %1, align 4, !tbaa !85
  %45 = load float, ptr %43, align 4, !tbaa !85
  %46 = fadd float %44, %45
  store float %46, ptr %43, align 4, !tbaa !85
  %47 = load float, ptr %14, align 4, !tbaa !85
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !85
  %50 = fadd float %47, %49
  store float %50, ptr %48, align 4, !tbaa !85
  %51 = load float, ptr %15, align 4, !tbaa !85
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !85
  %54 = fadd float %51, %53
  store float %54, ptr %52, align 4, !tbaa !85
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 2
  %56 = load float, ptr %1, align 4, !tbaa !85
  %57 = load float, ptr %55, align 4, !tbaa !85
  %58 = fadd float %56, %57
  store float %58, ptr %55, align 4, !tbaa !85
  %59 = load float, ptr %14, align 4, !tbaa !85
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 2, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !85
  %62 = fadd float %59, %61
  store float %62, ptr %60, align 4, !tbaa !85
  %63 = load float, ptr %15, align 4, !tbaa !85
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 2, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !85
  %66 = fadd float %63, %65
  store float %66, ptr %64, align 4, !tbaa !85
  %67 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 1
  %68 = icmp eq i32 %31, 0
  br i1 %68, label %94, label %28, !llvm.loop !337

69:                                               ; preds = %16
  %70 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %71 = load i32, ptr %70, align 4, !tbaa !126
  %72 = mul nsw i32 %71, %22
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !77
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi ptr [ %92, %77 ], [ %76, %74 ]
  %79 = phi i32 [ %80, %77 ], [ %72, %74 ]
  %80 = add nsw i32 %79, -1
  %81 = load float, ptr %1, align 4, !tbaa !85
  %82 = load float, ptr %78, align 4, !tbaa !85
  %83 = fadd float %81, %82
  store float %83, ptr %78, align 4, !tbaa !85
  %84 = load float, ptr %12, align 4, !tbaa !85
  %85 = getelementptr inbounds float, ptr %78, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !85
  %87 = fadd float %84, %86
  store float %87, ptr %85, align 4, !tbaa !85
  %88 = load float, ptr %13, align 4, !tbaa !85
  %89 = getelementptr inbounds float, ptr %78, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !85
  %91 = fadd float %88, %90
  store float %91, ptr %89, align 4, !tbaa !85
  %92 = getelementptr inbounds %struct.BPoint, ptr %78, i64 1
  %93 = icmp eq i32 %80, 0
  br i1 %93, label %94, label %77, !llvm.loop !338

94:                                               ; preds = %77, %28, %69, %23
  %95 = load ptr, ptr %17, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %16, !llvm.loop !339

97:                                               ; preds = %94, %3
  %98 = icmp eq i8 %2, 0
  br i1 %98, label %138, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !60
  %102 = icmp eq ptr %101, null
  br i1 %102, label %138, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Key, ptr %101, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = icmp eq ptr %105, null
  br i1 %106, label %138, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds float, ptr %1, i64 1
  %109 = getelementptr inbounds float, ptr %1, i64 2
  br label %113

110:                                              ; preds = %121, %113
  %111 = load ptr, ptr %114, align 8, !tbaa !46
  %112 = icmp eq ptr %111, null
  br i1 %112, label %138, label %113, !llvm.loop !340

113:                                              ; preds = %107, %110
  %114 = phi ptr [ %105, %107 ], [ %111, %110 ]
  %115 = getelementptr inbounds %struct.KeyBlock, ptr %114, i64 0, i32 8
  %116 = load i32, ptr %115, align 8, !tbaa !333
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %110, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.KeyBlock, ptr %114, i64 0, i32 10
  %120 = load ptr, ptr %119, align 8, !tbaa !335
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %136, %121 ], [ %120, %118 ]
  %123 = phi i32 [ %124, %121 ], [ %116, %118 ]
  %124 = add nsw i32 %123, -1
  %125 = load float, ptr %1, align 4, !tbaa !85
  %126 = load float, ptr %122, align 4, !tbaa !85
  %127 = fadd float %125, %126
  store float %127, ptr %122, align 4, !tbaa !85
  %128 = load float, ptr %108, align 4, !tbaa !85
  %129 = getelementptr inbounds float, ptr %122, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !85
  %131 = fadd float %128, %130
  store float %131, ptr %129, align 4, !tbaa !85
  %132 = load float, ptr %109, align 4, !tbaa !85
  %133 = getelementptr inbounds float, ptr %122, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !85
  %135 = fadd float %132, %134
  store float %135, ptr %133, align 4, !tbaa !85
  %136 = getelementptr inbounds float, ptr %122, i64 3
  %137 = icmp eq i32 %124, 0
  br i1 %137, label %110, label %121, !llvm.loop !341

138:                                              ; preds = %110, %103, %99, %97
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_material_index_remove(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 14
  %8 = load i16, ptr %7, align 4, !tbaa !99
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %10 ]
  %16 = phi i32 [ %20, %14 ], [ 2, %10 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !126
  %19 = icmp sgt i32 %18, 1
  %20 = select i1 %19, i32 3, i32 %16
  %21 = load ptr, ptr %15, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !127

23:                                               ; preds = %14
  %24 = trunc i32 %20 to i16
  br label %25

25:                                               ; preds = %6, %10, %23, %2
  %26 = phi i16 [ 4, %2 ], [ %8, %6 ], [ 2, %10 ], [ %24, %23 ]
  %27 = icmp eq i16 %26, 4
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 50
  %30 = load i32, ptr %29, align 8, !tbaa !105
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  br label %35

35:                                               ; preds = %32, %47
  %36 = phi i32 [ %38, %47 ], [ %30, %32 ]
  %37 = phi ptr [ %48, %47 ], [ %34, %32 ]
  %38 = add nsw i32 %36, -1
  %39 = getelementptr inbounds %struct.CharInfo, ptr %37, i64 0, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !342
  %41 = icmp eq i16 %40, 0
  %42 = sext i16 %40 to i32
  %43 = icmp slt i32 %42, %1
  %44 = or i1 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = add i16 %40, -1
  store i16 %46, ptr %39, align 2, !tbaa !342
  br label %47

47:                                               ; preds = %35, %45
  %48 = getelementptr inbounds %struct.CharInfo, ptr %37, i64 1
  %49 = icmp sgt i32 %36, 1
  br i1 %49, label %35, label %73, !llvm.loop !343

50:                                               ; preds = %25
  %51 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = icmp eq i16 %26, 2
  br label %56

56:                                               ; preds = %54, %70
  %57 = phi ptr [ %52, %54 ], [ %71, %70 ]
  %58 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 3
  %59 = load i16, ptr %58, align 2, !tbaa !344
  %60 = icmp eq i16 %59, 0
  %61 = sext i16 %59 to i32
  %62 = icmp slt i32 %61, %1
  %63 = or i1 %60, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = add i16 %59, -1
  store i16 %65, ptr %58, align 2, !tbaa !344
  br i1 %55, label %66, label %70

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 21
  %68 = load i32, ptr %67, align 4, !tbaa !221
  %69 = add nsw i32 %68, -1
  store i32 %69, ptr %67, align 4, !tbaa !221
  br label %70

70:                                               ; preds = %56, %66, %64
  %71 = load ptr, ptr %57, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %56, !llvm.loop !345

73:                                               ; preds = %70, %47, %50, %28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_curve_material_index_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 4, !tbaa !99
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %9 ]
  %15 = phi i32 [ %19, %13 ], [ 2, %9 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !126
  %18 = icmp sgt i32 %17, 1
  %19 = select i1 %18, i32 3, i32 %15
  %20 = load ptr, ptr %14, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !127

22:                                               ; preds = %13
  %23 = trunc i32 %19 to i16
  br label %24

24:                                               ; preds = %5, %9, %22, %1
  %25 = phi i16 [ 4, %1 ], [ %7, %5 ], [ 2, %9 ], [ %23, %22 ]
  %26 = icmp eq i16 %25, 4
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 50
  %29 = load i32, ptr %28, align 8, !tbaa !105
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %37, %34 ], [ %29, %31 ]
  %36 = phi ptr [ %39, %34 ], [ %33, %31 ]
  %37 = add nsw i32 %35, -1
  %38 = getelementptr inbounds %struct.CharInfo, ptr %36, i64 0, i32 1
  store i16 0, ptr %38, align 2, !tbaa !342
  %39 = getelementptr inbounds %struct.CharInfo, ptr %36, i64 1
  %40 = icmp sgt i32 %35, 1
  br i1 %40, label %34, label %55, !llvm.loop !346

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = icmp eq i16 %25, 2
  br label %47

47:                                               ; preds = %45, %52
  %48 = phi ptr [ %43, %45 ], [ %53, %52 ]
  %49 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 3
  store i16 0, ptr %49, align 2, !tbaa !344
  br i1 %46, label %50, label %52

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 21
  store i32 0, ptr %51, align 4, !tbaa !221
  br label %52

52:                                               ; preds = %47, %50
  %53 = load ptr, ptr %48, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47, !llvm.loop !347

55:                                               ; preds = %52, %34, %41, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_curve_material_index_validate(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 4, !tbaa !99
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %9 ]
  %15 = phi i32 [ %19, %13 ], [ 2, %9 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !126
  %18 = icmp sgt i32 %17, 1
  %19 = select i1 %18, i32 3, i32 %15
  %20 = load ptr, ptr %14, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !127

22:                                               ; preds = %13
  %23 = trunc i32 %19 to i16
  br label %24

24:                                               ; preds = %5, %9, %22, %1
  %25 = phi i16 [ 4, %1 ], [ %7, %5 ], [ 2, %9 ], [ %23, %22 ]
  %26 = icmp eq i16 %25, 4
  %27 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %28 = load i16, ptr %27, align 2, !tbaa !34
  br i1 %26, label %29, label %50

29:                                               ; preds = %24
  %30 = tail call i16 @llvm.smax.i16(i16 %28, i16 0)
  %31 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 50
  %32 = load i32, ptr %31, align 8, !tbaa !105
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 62
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  br label %37

37:                                               ; preds = %34, %46
  %38 = phi i32 [ %41, %46 ], [ %32, %34 ]
  %39 = phi i8 [ %47, %46 ], [ 1, %34 ]
  %40 = phi ptr [ %48, %46 ], [ %36, %34 ]
  %41 = add nsw i32 %38, -1
  %42 = getelementptr inbounds %struct.CharInfo, ptr %40, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !342
  %44 = icmp slt i16 %30, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i16 0, ptr %42, align 2, !tbaa !342
  br label %46

46:                                               ; preds = %37, %45
  %47 = phi i8 [ 0, %45 ], [ %39, %37 ]
  %48 = getelementptr inbounds %struct.CharInfo, ptr %40, i64 1
  %49 = icmp sgt i32 %38, 1
  br i1 %49, label %37, label %70, !llvm.loop !348

50:                                               ; preds = %24
  %51 = tail call i16 @llvm.smax.i16(i16 %28, i16 1)
  %52 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = icmp eq i16 %25, 2
  br label %57

57:                                               ; preds = %55, %66
  %58 = phi ptr [ %53, %55 ], [ %68, %66 ]
  %59 = phi i8 [ 1, %55 ], [ %67, %66 ]
  %60 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !344
  %62 = icmp sgt i16 %51, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  store i16 0, ptr %60, align 2, !tbaa !344
  br i1 %56, label %64, label %66

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 21
  store i32 0, ptr %65, align 4, !tbaa !221
  br label %66

66:                                               ; preds = %63, %64, %57
  %67 = phi i8 [ %59, %57 ], [ 0, %64 ], [ 0, %63 ]
  %68 = load ptr, ptr %58, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %57, !llvm.loop !349

70:                                               ; preds = %66, %46, %50, %29
  %71 = phi i8 [ 1, %29 ], [ 1, %50 ], [ %47, %46 ], [ %67, %66 ]
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #22
  br label %74

74:                                               ; preds = %70, %73
  %75 = phi i32 [ 1, %73 ], [ 0, %70 ]
  ret i32 %75
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_curve_rect_from_textbox(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #18 {
  %4 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 44
  %5 = load float, ptr %4, align 8, !tbaa !350
  %6 = load float, ptr %1, align 4, !tbaa !351
  %7 = fadd float %5, %6
  store float %7, ptr %2, align 4, !tbaa !352
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 45
  %9 = load float, ptr %8, align 4, !tbaa !354
  %10 = getelementptr inbounds %struct.TextBox, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !355
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 40
  %14 = load float, ptr %13, align 8, !tbaa !94
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  store float %15, ptr %16, align 4, !tbaa !356
  %17 = getelementptr inbounds %struct.TextBox, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !111
  %19 = fadd float %7, %18
  %20 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  store float %19, ptr %20, align 4, !tbaa !357
  %21 = getelementptr inbounds %struct.TextBox, ptr %1, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !109
  %23 = fsub float %15, %22
  %24 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  store float %23, ptr %24, align 4, !tbaa !358
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @calcknots(ptr nocapture noundef writeonly %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #19 {
  %5 = sext i16 %2 to i32
  %6 = add i32 %5, %1
  %7 = and i16 %3, 6
  switch i16 %7, label %17 [
    i16 2, label %8
    i16 4, label %32
  ]

8:                                                ; preds = %4
  %9 = getelementptr float, ptr %0, i64 -1
  %10 = icmp slt i32 %6, 1
  br i1 %10, label %71, label %11

11:                                               ; preds = %8
  %12 = sext i32 %1 to i64
  %13 = sext i16 %2 to i64
  %14 = add i32 %5, %1
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  br label %21

17:                                               ; preds = %4
  %18 = icmp sgt i32 %6, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %17
  %20 = zext nneg i32 %6 to i64
  br label %64

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 1, %11 ], [ %30, %21 ]
  %23 = phi float [ 0.000000e+00, %11 ], [ %29, %21 ]
  %24 = getelementptr float, ptr %9, i64 %22
  store float %23, ptr %24, align 4, !tbaa !85
  %25 = icmp slt i64 %22, %13
  %26 = icmp sgt i64 %22, %12
  %27 = or i1 %25, %26
  %28 = fadd float %23, 1.000000e+00
  %29 = select i1 %27, float %23, float %28
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %16
  br i1 %31, label %71, label %21, !llvm.loop !359

32:                                               ; preds = %4
  switch i16 %2, label %62 [
    i16 4, label %38
    i16 3, label %33
  ]

33:                                               ; preds = %32
  %34 = icmp sgt i32 %6, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %33
  %36 = sext i32 %1 to i64
  %37 = zext nneg i32 %6 to i64
  br label %50

38:                                               ; preds = %32
  %39 = icmp sgt i32 %6, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %38
  %41 = zext nneg i32 %6 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %48, %42 ]
  %44 = phi float [ 0x3FD5C28F60000000, %40 ], [ %47, %42 ]
  %45 = tail call float @llvm.floor.f32(float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 %43
  store float %45, ptr %46, align 4, !tbaa !85
  %47 = fadd float %44, 0x3FD5555560000000
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %41
  br i1 %49, label %71, label %42, !llvm.loop !360

50:                                               ; preds = %35, %50
  %51 = phi i64 [ 0, %35 ], [ %60, %50 ]
  %52 = phi float [ 0x3FE3333340000000, %35 ], [ %57, %50 ]
  %53 = icmp ult i64 %51, 3
  %54 = icmp sgt i64 %51, %36
  %55 = or i1 %53, %54
  %56 = fadd float %52, 5.000000e-01
  %57 = select i1 %55, float %52, float %56
  %58 = tail call float @llvm.floor.f32(float %57)
  %59 = getelementptr inbounds float, ptr %0, i64 %51
  store float %58, ptr %59, align 4, !tbaa !85
  %60 = add nuw nsw i64 %51, 1
  %61 = icmp eq i64 %60, %37
  br i1 %61, label %71, label %50, !llvm.loop !361

62:                                               ; preds = %32
  %63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %71

64:                                               ; preds = %19, %64
  %65 = phi i64 [ 0, %19 ], [ %69, %64 ]
  %66 = trunc i64 %65 to i32
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds float, ptr %0, i64 %65
  store float %67, ptr %68, align 4, !tbaa !85
  %69 = add nuw nsw i64 %65, 1
  %70 = icmp eq i64 %69, %20
  br i1 %70, label %71, label %64, !llvm.loop !157

71:                                               ; preds = %50, %42, %21, %64, %33, %38, %8, %17, %62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #16

declare void @bisect_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #16

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @tri_to_quat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @minimum_twist_between_two_points(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 7
  %6 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 7
  %7 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %10 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 7, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 7, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !85
  %14 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 7, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !85
  %16 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 7, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !85
  %18 = fneg float %15
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %11, float %13, float %19)
  store float %20, ptr %4, align 4, !tbaa !85
  %21 = load float, ptr %6, align 4, !tbaa !85
  %22 = load float, ptr %5, align 4, !tbaa !85
  %23 = fneg float %22
  %24 = fmul float %13, %23
  %25 = tail call float @llvm.fmuladd.f32(float %15, float %21, float %24)
  %26 = getelementptr inbounds float, ptr %4, i64 1
  store float %25, ptr %26, align 4, !tbaa !85
  %27 = fneg float %11
  %28 = fmul float %21, %27
  %29 = tail call float @llvm.fmuladd.f32(float %22, float %17, float %28)
  %30 = getelementptr inbounds float, ptr %4, i64 2
  store float %29, ptr %30, align 4, !tbaa !85
  call void @axis_angle_to_quat(ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %7) #22
  %31 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 9
  %32 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %31, ptr noundef nonnull %3, ptr noundef nonnull %32) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %36

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.BevPoint, ptr %0, i64 0, i32 9
  %35 = getelementptr inbounds %struct.BevPoint, ptr %1, i64 0, i32 9
  tail call void @copy_qt_qt(ptr noundef nonnull %34, ptr noundef nonnull %35) #22
  br label %36

36:                                               ; preds = %33, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #20

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nounwind }

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
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!35, !37, i64 448}
!55 = !{!56, !41, i64 100}
!56 = !{!"VFont", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160}
!57 = !{!35, !37, i64 456}
!58 = !{!35, !37, i64 464}
!59 = !{!35, !37, i64 472}
!60 = !{!35, !37, i64 192}
!61 = !{!62, !41, i64 100}
!62 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !41, i64 220}
!63 = !{!35, !37, i64 376}
!64 = !{!65, !37, i64 16}
!65 = !{!"EditFont", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!66 = !{!65, !37, i64 24}
!67 = !{!65, !37, i64 0}
!68 = !{!65, !37, i64 8}
!69 = !{!65, !37, i64 32}
!70 = !{!71, !37, i64 16}
!71 = !{!"EditNurb", !42, i64 0, !37, i64 16, !41, i64 24, !38, i64 28}
!72 = !{!35, !37, i64 152}
!73 = !{!42, !37, i64 0}
!74 = !{!75, !37, i64 0}
!75 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!76 = !{!75, !37, i64 72}
!77 = !{!75, !37, i64 64}
!78 = !{!75, !37, i64 48}
!79 = !{!75, !37, i64 56}
!80 = distinct !{!80, !52, !53}
!81 = !{!35, !37, i64 368}
!82 = !{!35, !37, i64 496}
!83 = !{!35, !37, i64 128}
!84 = !{!35, !37, i64 480}
!85 = !{!43, !43, i64 0}
!86 = !{!35, !41, i64 268}
!87 = !{!35, !41, i64 260}
!88 = !{!35, !40, i64 286}
!89 = !{!35, !40, i64 284}
!90 = !{!35, !43, i64 272}
!91 = !{!35, !43, i64 324}
!92 = !{!35, !43, i64 312}
!93 = !{!35, !43, i64 308}
!94 = !{!35, !43, i64 320}
!95 = !{!35, !43, i64 332}
!96 = !{!35, !40, i64 246}
!97 = !{!35, !43, i64 256}
!98 = !{!35, !40, i64 250}
!99 = !{!35, !40, i64 244}
!100 = !{!35, !43, i64 516}
!101 = !{!35, !43, i64 520}
!102 = !{!35, !38, i64 524}
!103 = !{!35, !38, i64 525}
!104 = !{!35, !41, i64 348}
!105 = !{!35, !41, i64 360}
!106 = !{!35, !41, i64 364}
!107 = !{!35, !41, i64 492}
!108 = !{!35, !41, i64 488}
!109 = !{!110, !43, i64 12}
!110 = !{!"TextBox", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!111 = !{!110, !43, i64 8}
!112 = distinct !{!112, !52, !53}
!113 = !{!62, !37, i64 200}
!114 = distinct !{!114, !52, !53}
!115 = !{!116, !37, i64 0}
!116 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!117 = !{!35, !37, i64 24}
!118 = !{!35, !41, i64 100}
!119 = !{!120, !37, i64 296}
!120 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !121, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !122, i64 1304, !122, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!121 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!122 = !{!"long", !38, i64 0}
!123 = !{!120, !37, i64 24}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = !{!75, !41, i64 28}
!127 = distinct !{!127, !52, !53}
!128 = !{!75, !40, i64 22}
!129 = distinct !{!129, !52, !53}
!130 = !{!75, !40, i64 16}
!131 = !{!75, !41, i64 24}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = !{!75, !40, i64 44}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = !{!120, !40, i64 136}
!138 = distinct !{!138, !52, !53}
!139 = !{!140, !41, i64 96}
!140 = !{!"BoundBox", !38, i64 0, !41, i64 96, !41, i64 100}
!141 = !{!120, !37, i64 264}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = !{!75, !40, i64 40}
!147 = !{!75, !40, i64 42}
!148 = !{!75, !40, i64 46}
!149 = !{!150, !43, i64 44}
!150 = !{!"BezTriple", !38, i64 0, !43, i64 36, !43, i64 40, !43, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !43, i64 56, !43, i64 60, !43, i64 64, !38, i64 68}
!151 = distinct !{!151, !52, !53}
!152 = !{!153, !43, i64 28}
!153 = !{!"BPoint", !38, i64 0, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !43, i64 28, !43, i64 32}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = distinct !{!161, !52, !53}
!162 = !{!41, !41, i64 0}
!163 = distinct !{!163, !52, !53}
!164 = distinct !{!164, !52, !53}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = !{!153, !43, i64 16}
!179 = !{!153, !43, i64 20}
!180 = distinct !{!180, !52, !53}
!181 = distinct !{!181, !52, !53}
!182 = distinct !{!182, !52, !53}
!183 = !{!35, !40, i64 288}
!184 = !{!35, !40, i64 290}
!185 = !{!75, !40, i64 36}
!186 = !{!75, !40, i64 38}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = !{!194, !40, i64 16}
!194 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!195 = !{!194, !41, i64 24}
!196 = !{!194, !40, i64 18}
!197 = !{!194, !41, i64 20}
!198 = distinct !{!198, !52, !53}
!199 = !{!194, !37, i64 32}
!200 = distinct !{!200, !52, !53}
!201 = distinct !{!201, !52, !53}
!202 = distinct !{!202, !52, !53}
!203 = distinct !{!203, !52, !53}
!204 = !{!35, !37, i64 160}
!205 = !{!35, !43, i64 276}
!206 = !{!35, !43, i64 280}
!207 = !{!120, !37, i64 1280}
!208 = !{!209, !37, i64 0}
!209 = !{!"CurveCache", !42, i64 0, !42, i64 16, !42, i64 32, !37, i64 48}
!210 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 2, !211, i64 18, i64 2, !211, i64 20, i64 4, !162, i64 24, i64 4, !162, i64 28, i64 2, !211, i64 30, i64 2, !211, i64 32, i64 8, !46, i64 40, i64 8, !46, i64 48, i64 8, !46, i64 56, i64 4, !162, i64 60, i64 4, !162, i64 64, i64 8, !46}
!211 = !{!40, !40, i64 0}
!212 = distinct !{!212, !52, !53}
!213 = !{!194, !37, i64 0}
!214 = distinct !{!214, !52, !53}
!215 = !{!35, !40, i64 264}
!216 = distinct !{!216, !52, !53}
!217 = distinct !{!217, !52, !53}
!218 = distinct !{!218, !52, !53}
!219 = distinct !{!219, !52, !53}
!220 = !{!75, !40, i64 20}
!221 = !{!75, !41, i64 84}
!222 = !{!223, !43, i64 24}
!223 = !{!"BevPoint", !38, i64 0, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !38, i64 36, !38, i64 48, !38, i64 60, !40, i64 76, !40, i64 78}
!224 = !{!223, !43, i64 12}
!225 = !{!223, !43, i64 16}
!226 = !{!223, !43, i64 20}
!227 = !{!223, !40, i64 76}
!228 = distinct !{!228, !52, !53}
!229 = !{!150, !38, i64 50}
!230 = !{!150, !38, i64 49}
!231 = !{!150, !43, i64 36}
!232 = !{!150, !43, i64 40}
!233 = !{!223, !40, i64 78}
!234 = distinct !{!234, !52, !53}
!235 = !{!75, !40, i64 80}
!236 = !{!75, !40, i64 82}
!237 = distinct !{!237, !52, !53}
!238 = distinct !{!238, !52, !53}
!239 = distinct !{!239, !52, !53}
!240 = distinct !{!240, !52, !53}
!241 = distinct !{!241, !52, !53}
!242 = distinct !{!242, !52, !53}
!243 = distinct !{!243, !52, !53}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = distinct !{!247, !52, !53}
!248 = distinct !{!248, !52, !53}
!249 = distinct !{!249, !52, !53}
!250 = distinct !{!250, !52, !53}
!251 = !{!252, !37, i64 0}
!252 = !{!"BevelSort", !37, i64 0, !43, i64 8, !41, i64 12}
!253 = !{!252, !43, i64 8}
!254 = !{!252, !41, i64 12}
!255 = distinct !{!255, !52, !53}
!256 = distinct !{!256, !52, !53}
!257 = distinct !{!257, !52, !53}
!258 = distinct !{!258, !52, !53}
!259 = !{i64 0, i64 12, !260, i64 12, i64 4, !85, i64 16, i64 4, !85, i64 20, i64 4, !85, i64 24, i64 4, !85, i64 28, i64 4, !85, i64 32, i64 4, !85, i64 36, i64 12, !260, i64 48, i64 12, !260, i64 60, i64 16, !260, i64 76, i64 2, !211, i64 78, i64 2, !211}
!260 = !{!38, !38, i64 0}
!261 = distinct !{!261, !52, !53}
!262 = distinct !{!262, !52, !53}
!263 = !{!223, !43, i64 28}
!264 = !{!223, !43, i64 32}
!265 = distinct !{!265, !52, !53}
!266 = distinct !{!266, !52, !53}
!267 = !{!35, !43, i64 252}
!268 = distinct !{!268, !52, !53}
!269 = distinct !{!269, !52, !53}
!270 = distinct !{!270, !52, !53}
!271 = distinct !{!271, !52, !53}
!272 = distinct !{!272, !52, !53}
!273 = distinct !{!273, !52, !53}
!274 = distinct !{!274, !52, !53}
!275 = distinct !{!275, !52, !53}
!276 = distinct !{!276, !52, !53}
!277 = distinct !{!277, !52, !53}
!278 = distinct !{!278, !52, !53}
!279 = !{!150, !38, i64 51}
!280 = !{!150, !38, i64 52}
!281 = !{!150, !38, i64 53}
!282 = distinct !{!282, !52, !53}
!283 = distinct !{!283, !52, !53}
!284 = distinct !{!284, !52, !53}
!285 = distinct !{!285, !52, !53}
!286 = distinct !{!286, !52, !53}
!287 = distinct !{!287, !52, !53}
!288 = distinct !{!288, !52, !53}
!289 = distinct !{!289, !52, !53}
!290 = distinct !{!290, !52, !53}
!291 = distinct !{!291, !52, !53}
!292 = distinct !{!292, !52, !53}
!293 = distinct !{!293, !52, !53}
!294 = distinct !{!294, !52, !53}
!295 = !{!153, !40, i64 24}
!296 = distinct !{!296, !52, !53}
!297 = distinct !{!297, !52, !53}
!298 = !{i64 0, i64 36, !260, i64 36, i64 4, !85, i64 40, i64 4, !85, i64 44, i64 4, !85, i64 48, i64 1, !260, i64 49, i64 1, !260, i64 50, i64 1, !260, i64 51, i64 1, !260, i64 52, i64 1, !260, i64 53, i64 1, !260, i64 54, i64 1, !260, i64 55, i64 1, !260, i64 56, i64 4, !85, i64 60, i64 4, !85, i64 64, i64 4, !85, i64 68, i64 4, !260}
!299 = distinct !{!299, !52, !53}
!300 = !{i64 0, i64 16, !260, i64 16, i64 4, !85, i64 20, i64 4, !85, i64 24, i64 2, !211, i64 26, i64 2, !211, i64 28, i64 4, !85, i64 32, i64 4, !85}
!301 = distinct !{!301, !52, !53}
!302 = distinct !{!302, !52, !53}
!303 = distinct !{!303, !52, !53}
!304 = distinct !{!304, !52, !53}
!305 = distinct !{!305, !52, !53}
!306 = distinct !{!306, !52, !53}
!307 = distinct !{!307, !52, !53}
!308 = distinct !{!308, !52, !53}
!309 = distinct !{!309, !52, !53}
!310 = distinct !{!310, !52, !53}
!311 = distinct !{!311, !52, !53}
!312 = distinct !{!312, !52, !53}
!313 = distinct !{!313, !52, !53}
!314 = distinct !{!314, !52, !53}
!315 = distinct !{!315, !52, !53}
!316 = distinct !{!316, !52, !53}
!317 = distinct !{!317, !52, !53}
!318 = distinct !{!318, !52, !53}
!319 = distinct !{!319, !52, !53}
!320 = distinct !{!320, !52, !53}
!321 = distinct !{!321, !52, !53}
!322 = distinct !{!322, !52, !53}
!323 = distinct !{!323, !52, !53}
!324 = !{!35, !41, i64 292}
!325 = !{!35, !41, i64 296}
!326 = distinct !{!326, !52, !53}
!327 = distinct !{!327, !52, !53}
!328 = distinct !{!328, !52, !53}
!329 = distinct !{!329, !52, !53}
!330 = distinct !{!330, !52, !53}
!331 = distinct !{!331, !52, !53}
!332 = distinct !{!332, !52, !53}
!333 = !{!334, !41, i64 32}
!334 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !43, i64 180}
!335 = !{!334, !37, i64 40}
!336 = distinct !{!336, !52, !53}
!337 = distinct !{!337, !52, !53}
!338 = distinct !{!338, !52, !53}
!339 = distinct !{!339, !52, !53}
!340 = distinct !{!340, !52, !53}
!341 = distinct !{!341, !52, !53}
!342 = !{!44, !40, i64 2}
!343 = distinct !{!343, !52, !53}
!344 = !{!75, !40, i64 18}
!345 = distinct !{!345, !52, !53}
!346 = distinct !{!346, !52, !53}
!347 = distinct !{!347, !52, !53}
!348 = distinct !{!348, !52, !53}
!349 = distinct !{!349, !52, !53}
!350 = !{!35, !43, i64 336}
!351 = !{!110, !43, i64 0}
!352 = !{!353, !43, i64 0}
!353 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!354 = !{!35, !43, i64 340}
!355 = !{!110, !43, i64 4}
!356 = !{!353, !43, i64 12}
!357 = !{!353, !43, i64 4}
!358 = !{!353, !43, i64 8}
!359 = distinct !{!359, !52, !53}
!360 = distinct !{!360, !52, !53}
!361 = distinct !{!361, !52, !53}
