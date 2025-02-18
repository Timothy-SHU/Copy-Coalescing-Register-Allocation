; ModuleID = 'blender/source/blender/blenkernel/intern/lattice.c'
source_filename = "blender/source/blender/blenkernel/intern/lattice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.LatticeDeformData = type { ptr, ptr, [4 x [4 x float]] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.CurveDeform = type { [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Path = type { ptr, i32, float }
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }
%struct.PathPoint = type { [4 x float], [4 x float], float, float }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"tmp_vcos\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"lattice bp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lattvert\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Lattice MDeformVert\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"latticedata\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Lattice Deform Data\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"lt_vcos\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"CurveCache for lattice\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lt_dl\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_lattice_index_from_uvw(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !43
  %10 = sext i16 %9 to i32
  %11 = mul i32 %10, %3
  %12 = add i32 %11, %2
  %13 = mul i32 %12, %7
  %14 = add i32 %13, %1
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_lattice_index_to_uvw(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !43
  %11 = sext i16 %10 to i32
  %12 = srem i32 %1, %8
  store i32 %12, ptr %2, align 4, !tbaa !44
  %13 = sdiv i32 %1, %8
  %14 = srem i32 %13, %11
  store i32 %14, ptr %3, align 4, !tbaa !44
  %15 = mul nsw i32 %11, %8
  %16 = sdiv i32 %1, %15
  store i32 %16, ptr %4, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_lattice_index_flip(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !43
  %11 = sext i16 %10 to i32
  %12 = mul nsw i32 %11, %8
  %13 = sdiv i32 %1, %12
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !45
  %18 = sext i16 %17 to i32
  %19 = xor i32 %13, -1
  %20 = add i32 %18, %19
  br label %21

21:                                               ; preds = %15, %5
  %22 = phi i32 [ %13, %5 ], [ %20, %15 ]
  %23 = icmp eq i8 %3, 0
  %24 = sdiv i32 %1, %8
  %25 = srem i32 %24, %11
  %26 = xor i32 %25, -1
  %27 = add nsw i32 %26, %11
  %28 = select i1 %23, i32 %25, i32 %27
  %29 = icmp eq i8 %2, 0
  %30 = srem i32 %1, %8
  %31 = xor i32 %30, -1
  %32 = add nsw i32 %31, %8
  %33 = select i1 %29, i32 %30, i32 %32
  %34 = mul nsw i32 %22, %12
  %35 = mul nsw i32 %28, %8
  %36 = add nsw i32 %35, %34
  %37 = add nsw i32 %36, %33
  ret i32 %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_lattice_bitmap_from_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !43
  %11 = sext i16 %10 to i32
  %12 = mul nsw i32 %11, %8
  %13 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !45
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i8 %4, 0
  %22 = icmp eq i8 %3, 0
  br label %23

23:                                               ; preds = %18, %53
  %24 = phi ptr [ %20, %18 ], [ %55, %53 ]
  %25 = phi i32 [ 0, %18 ], [ %54, %53 ]
  %26 = getelementptr inbounds %struct.BPoint, ptr %24, i64 0, i32 3
  %27 = load i16, ptr %26, align 4, !tbaa !47
  %28 = and i16 %27, %2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  br i1 %21, label %35, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.BPoint, ptr %24, i64 0, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !49
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %30
  %36 = and i32 %25, 31
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %25, 5
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %1, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !44
  %42 = or i32 %41, %37
  store i32 %42, ptr %40, align 4, !tbaa !44
  br label %53

43:                                               ; preds = %31, %23
  br i1 %22, label %53, label %44

44:                                               ; preds = %43
  %45 = and i32 %25, 31
  %46 = shl nuw i32 1, %45
  %47 = xor i32 %46, -1
  %48 = lshr i32 %25, 5
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %1, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !44
  %52 = and i32 %51, %47
  store i32 %52, ptr %50, align 4, !tbaa !44
  br label %53

53:                                               ; preds = %35, %44, %43
  %54 = add nuw i32 %25, 1
  %55 = getelementptr inbounds %struct.BPoint, ptr %24, i64 1
  %56 = icmp eq i32 %54, %16
  br i1 %56, label %57, label %23, !llvm.loop !50

57:                                               ; preds = %53, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @calc_lat_fudu(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !53
  br label %18

7:                                                ; preds = %4
  %8 = and i32 %0, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = add nsw i32 %1, -1
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, -5.000000e-01
  store float %13, ptr %2, align 4, !tbaa !53
  br label %18

14:                                               ; preds = %7
  store float -1.000000e+00, ptr %2, align 4, !tbaa !53
  %15 = add nsw i32 %1, -1
  %16 = sitofp i32 %15 to float
  %17 = fdiv float 2.000000e+00, %16
  br label %18

18:                                               ; preds = %10, %14, %6
  %19 = phi float [ 1.000000e+00, %10 ], [ %17, %14 ], [ 0.000000e+00, %6 ]
  store float %19, ptr %3, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_resize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !34
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !43
  %16 = sext i16 %15 to i32
  %17 = mul nsw i32 %16, %13
  %18 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %19 = load i16, ptr %18, align 4, !tbaa !45
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %17, %20
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %8, i32 noundef %21) #13
  store ptr null, ptr %7, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %10, %5
  %23 = mul i32 %2, %3
  %24 = mul i32 %23, %1
  %25 = icmp sgt i32 %24, 32000
  br i1 %25, label %26, label %50

26:                                               ; preds = %22, %43
  %27 = phi i32 [ %46, %43 ], [ %1, %22 ]
  %28 = phi i32 [ %45, %43 ], [ %2, %22 ]
  %29 = phi i32 [ %44, %43 ], [ %3, %22 ]
  %30 = icmp slt i32 %27, %28
  %31 = icmp slt i32 %27, %29
  %32 = or i1 %30, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = add nsw i32 %27, -1
  br label %43

35:                                               ; preds = %26
  %36 = icmp slt i32 %28, %27
  %37 = icmp slt i32 %28, %29
  %38 = or i1 %37, %36
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = add nsw i32 %28, -1
  br label %43

41:                                               ; preds = %35
  %42 = add nsw i32 %29, -1
  br label %43

43:                                               ; preds = %39, %41, %33
  %44 = phi i32 [ %29, %33 ], [ %29, %39 ], [ %42, %41 ]
  %45 = phi i32 [ %28, %33 ], [ %40, %39 ], [ %28, %41 ]
  %46 = phi i32 [ %34, %33 ], [ %27, %39 ], [ %27, %41 ]
  %47 = mul i32 %45, %44
  %48 = mul i32 %47, %46
  %49 = icmp sgt i32 %48, 32000
  br i1 %49, label %26, label %50, !llvm.loop !55

50:                                               ; preds = %43, %22
  %51 = phi i32 [ %3, %22 ], [ %44, %43 ]
  %52 = phi i32 [ %2, %22 ], [ %45, %43 ]
  %53 = phi i32 [ %1, %22 ], [ %46, %43 ]
  %54 = phi i32 [ %24, %22 ], [ %48, %43 ]
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %56 = sext i32 %53 to i64
  %57 = sext i32 %52 to i64
  %58 = sext i32 %51 to i64
  %59 = mul nsw i64 %58, 12
  %60 = mul i64 %59, %57
  %61 = mul i64 %60, %56
  %62 = tail call ptr %55(i64 noundef %61, ptr noundef nonnull @.str) #13
  %63 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %64 = icmp eq i32 %53, 1
  br i1 %64, label %75, label %65

65:                                               ; preds = %50
  %66 = load i16, ptr %63, align 2, !tbaa !57
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  %69 = add nsw i32 %53, -1
  %70 = sitofp i32 %69 to float
  br i1 %68, label %73, label %71

71:                                               ; preds = %65
  %72 = fmul float %70, -5.000000e-01
  br label %75

73:                                               ; preds = %65
  %74 = fdiv float 2.000000e+00, %70
  br label %75

75:                                               ; preds = %50, %71, %73
  %76 = phi float [ -1.000000e+00, %73 ], [ %72, %71 ], [ 0.000000e+00, %50 ]
  %77 = phi float [ %74, %73 ], [ 1.000000e+00, %71 ], [ 0.000000e+00, %50 ]
  %78 = icmp eq i32 %52, 1
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load i16, ptr %63, align 2, !tbaa !57
  %81 = and i16 %80, 1
  %82 = icmp eq i16 %81, 0
  %83 = add nsw i32 %52, -1
  %84 = sitofp i32 %83 to float
  br i1 %82, label %87, label %85

85:                                               ; preds = %79
  %86 = fmul float %84, -5.000000e-01
  br label %89

87:                                               ; preds = %79
  %88 = fdiv float 2.000000e+00, %84
  br label %89

89:                                               ; preds = %75, %85, %87
  %90 = phi float [ -1.000000e+00, %87 ], [ %86, %85 ], [ 0.000000e+00, %75 ]
  %91 = phi float [ %88, %87 ], [ 1.000000e+00, %85 ], [ 0.000000e+00, %75 ]
  %92 = icmp eq i32 %51, 1
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = load i16, ptr %63, align 2, !tbaa !57
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  %97 = add nsw i32 %51, -1
  %98 = sitofp i32 %97 to float
  br i1 %96, label %101, label %99

99:                                               ; preds = %93
  %100 = fmul float %98, -5.000000e-01
  br label %103

101:                                              ; preds = %93
  %102 = fdiv float 2.000000e+00, %98
  br label %103

103:                                              ; preds = %89, %99, %101
  %104 = phi float [ -1.000000e+00, %101 ], [ %100, %99 ], [ 0.000000e+00, %89 ]
  %105 = phi float [ %102, %101 ], [ 1.000000e+00, %99 ], [ 0.000000e+00, %89 ]
  %106 = icmp eq ptr %4, null
  br i1 %106, label %162, label %107

107:                                              ; preds = %103
  br i1 %64, label %124, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %110 = load i16, ptr %109, align 8, !tbaa !34
  %111 = icmp eq i16 %110, 1
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 15
  %114 = load float, ptr %113, align 8, !tbaa !58
  %115 = sext i16 %110 to i32
  %116 = add nsw i32 %115, -1
  %117 = sitofp i32 %116 to float
  %118 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 18
  %119 = load float, ptr %118, align 4, !tbaa !59
  %120 = fmul float %119, %117
  %121 = add nsw i32 %53, -1
  %122 = sitofp i32 %121 to float
  %123 = fdiv float %120, %122
  br label %124

124:                                              ; preds = %112, %108, %107
  %125 = phi float [ %76, %107 ], [ %76, %108 ], [ %114, %112 ]
  %126 = phi float [ %77, %107 ], [ %77, %108 ], [ %123, %112 ]
  br i1 %78, label %143, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %129 = load i16, ptr %128, align 2, !tbaa !43
  %130 = icmp eq i16 %129, 1
  br i1 %130, label %143, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 16
  %133 = load float, ptr %132, align 4, !tbaa !60
  %134 = sext i16 %129 to i32
  %135 = add nsw i32 %134, -1
  %136 = sitofp i32 %135 to float
  %137 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 19
  %138 = load float, ptr %137, align 8, !tbaa !61
  %139 = fmul float %138, %136
  %140 = add nsw i32 %52, -1
  %141 = sitofp i32 %140 to float
  %142 = fdiv float %139, %141
  br label %143

143:                                              ; preds = %131, %127, %124
  %144 = phi float [ %90, %124 ], [ %90, %127 ], [ %133, %131 ]
  %145 = phi float [ %91, %124 ], [ %91, %127 ], [ %142, %131 ]
  br i1 %92, label %162, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %148 = load i16, ptr %147, align 4, !tbaa !45
  %149 = icmp eq i16 %148, 1
  br i1 %149, label %162, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 17
  %152 = load float, ptr %151, align 8, !tbaa !62
  %153 = sext i16 %148 to i32
  %154 = add nsw i32 %153, -1
  %155 = sitofp i32 %154 to float
  %156 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 20
  %157 = load float, ptr %156, align 4, !tbaa !63
  %158 = fmul float %157, %155
  %159 = add nsw i32 %51, -1
  %160 = sitofp i32 %159 to float
  %161 = fdiv float %158, %160
  br label %162

162:                                              ; preds = %143, %146, %150, %103
  %163 = phi float [ %76, %103 ], [ %125, %143 ], [ %125, %146 ], [ %125, %150 ]
  %164 = phi float [ %90, %103 ], [ %144, %143 ], [ %144, %146 ], [ %144, %150 ]
  %165 = phi float [ %104, %103 ], [ %104, %143 ], [ %104, %146 ], [ %152, %150 ]
  %166 = phi float [ %77, %103 ], [ %126, %143 ], [ %126, %146 ], [ %126, %150 ]
  %167 = phi float [ %91, %103 ], [ %145, %143 ], [ %145, %146 ], [ %145, %150 ]
  %168 = phi float [ %105, %103 ], [ %105, %143 ], [ %105, %146 ], [ %161, %150 ]
  %169 = icmp sgt i32 %51, 0
  br i1 %169, label %170, label %201

170:                                              ; preds = %162
  %171 = icmp sgt i32 %52, 0
  %172 = icmp sgt i32 %53, 0
  br label %173

173:                                              ; preds = %170, %196
  %174 = phi ptr [ %62, %170 ], [ %197, %196 ]
  %175 = phi float [ %165, %170 ], [ %199, %196 ]
  %176 = phi i32 [ 0, %170 ], [ %198, %196 ]
  br i1 %171, label %177, label %196

177:                                              ; preds = %173, %191
  %178 = phi ptr [ %192, %191 ], [ %174, %173 ]
  %179 = phi float [ %194, %191 ], [ %164, %173 ]
  %180 = phi i32 [ %193, %191 ], [ 0, %173 ]
  br i1 %172, label %181, label %191

181:                                              ; preds = %177, %181
  %182 = phi ptr [ %188, %181 ], [ %178, %177 ]
  %183 = phi float [ %189, %181 ], [ %163, %177 ]
  %184 = phi i32 [ %187, %181 ], [ 0, %177 ]
  store float %183, ptr %182, align 4, !tbaa !53
  %185 = getelementptr inbounds float, ptr %182, i64 1
  store float %179, ptr %185, align 4, !tbaa !53
  %186 = getelementptr inbounds float, ptr %182, i64 2
  store float %175, ptr %186, align 4, !tbaa !53
  %187 = add nuw nsw i32 %184, 1
  %188 = getelementptr inbounds float, ptr %182, i64 3
  %189 = fadd float %166, %183
  %190 = icmp eq i32 %187, %53
  br i1 %190, label %191, label %181, !llvm.loop !64

191:                                              ; preds = %181, %177
  %192 = phi ptr [ %178, %177 ], [ %188, %181 ]
  %193 = add nuw nsw i32 %180, 1
  %194 = fadd float %167, %179
  %195 = icmp eq i32 %193, %52
  br i1 %195, label %196, label %177, !llvm.loop !65

196:                                              ; preds = %191, %173
  %197 = phi ptr [ %174, %173 ], [ %192, %191 ]
  %198 = add nuw nsw i32 %176, 1
  %199 = fadd float %168, %175
  %200 = icmp eq i32 %198, %51
  br i1 %200, label %201, label %173, !llvm.loop !66

201:                                              ; preds = %196, %162
  br i1 %106, label %234, label %202

202:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %203 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 10
  %204 = load i8, ptr %203, align 8, !tbaa !67
  %205 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 11
  %206 = load i8, ptr %205, align 1, !tbaa !68
  %207 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 12
  %208 = load i8, ptr %207, align 2, !tbaa !69
  store i8 0, ptr %207, align 2, !tbaa !69
  store i8 0, ptr %205, align 1, !tbaa !68
  store i8 0, ptr %203, align 8, !tbaa !67
  %209 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 118
  %210 = load ptr, ptr %209, align 8, !tbaa !70
  tail call void @BKE_displist_free(ptr noundef %210) #13
  %211 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %211) #13
  call void @unit_m4(ptr noundef nonnull %211) #13
  %212 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %213 = load i16, ptr %212, align 8, !tbaa !75
  %214 = icmp eq i16 %213, 22
  br i1 %214, label %215, label %233

215:                                              ; preds = %202
  %216 = call ptr @init_latt_deform(ptr noundef nonnull %4, ptr noundef null)
  %217 = icmp sgt i32 %54, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = zext nneg i32 %54 to i64
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi i64 [ 0, %218 ], [ %223, %220 ]
  %222 = getelementptr inbounds [3 x float], ptr %62, i64 %221
  call void @calc_latt_deform(ptr noundef %216, ptr noundef %222, float noundef 1.000000e+00)
  %223 = add nuw nsw i64 %221, 1
  %224 = icmp eq i64 %223, %219
  br i1 %224, label %225, label %220, !llvm.loop !76

225:                                              ; preds = %220, %215
  %226 = getelementptr inbounds %struct.LatticeDeformData, ptr %216, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !77
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %230(ptr noundef nonnull %227) #13
  br label %231

231:                                              ; preds = %229, %225
  %232 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %232(ptr noundef %216) #13
  br label %233

233:                                              ; preds = %202, %231
  call void @copy_m4_m4(ptr noundef nonnull %211, ptr noundef nonnull %6) #13
  store i8 %204, ptr %203, align 8, !tbaa !67
  store i8 %206, ptr %205, align 1, !tbaa !68
  store i8 %208, ptr %207, align 2, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %234

234:                                              ; preds = %233, %201
  %235 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 15
  store float %163, ptr %235, align 8, !tbaa !58
  %236 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 16
  store float %164, ptr %236, align 4, !tbaa !60
  %237 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 17
  store float %165, ptr %237, align 8, !tbaa !62
  %238 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 18
  store float %166, ptr %238, align 4, !tbaa !59
  %239 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 19
  store float %167, ptr %239, align 8, !tbaa !61
  %240 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 20
  store float %168, ptr %240, align 4, !tbaa !63
  %241 = trunc i32 %53 to i16
  %242 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  store i16 %241, ptr %242, align 8, !tbaa !34
  %243 = trunc i32 %52 to i16
  %244 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  store i16 %243, ptr %244, align 2, !tbaa !43
  %245 = trunc i32 %51 to i16
  %246 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  store i16 %245, ptr %246, align 4, !tbaa !45
  %247 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 14
  store i32 -1, ptr %247, align 4, !tbaa !79
  %248 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %249 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %250 = load ptr, ptr %249, align 8, !tbaa !46
  call void %248(ptr noundef %250) #13
  %251 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %252 = load i16, ptr %242, align 8, !tbaa !34
  %253 = sext i16 %252 to i64
  %254 = load i16, ptr %244, align 2, !tbaa !43
  %255 = sext i16 %254 to i64
  %256 = load i16, ptr %246, align 4, !tbaa !45
  %257 = sext i16 %256 to i64
  %258 = shl nsw i64 %253, 32
  %259 = mul nsw i64 %258, %255
  %260 = mul i64 %259, %257
  %261 = ashr exact i64 %260, 32
  %262 = mul nsw i64 %261, 36
  %263 = call ptr %251(i64 noundef %262, ptr noundef nonnull @.str.1) #13
  store ptr %263, ptr %249, align 8, !tbaa !46
  %264 = load i16, ptr %242, align 8, !tbaa !34
  %265 = sext i16 %264 to i32
  %266 = load i16, ptr %244, align 2, !tbaa !43
  %267 = sext i16 %266 to i32
  %268 = mul nsw i32 %267, %265
  %269 = load i16, ptr %246, align 4, !tbaa !45
  %270 = sext i16 %269 to i32
  %271 = mul nsw i32 %268, %270
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %289

273:                                              ; preds = %234
  %274 = zext nneg i32 %271 to i64
  br label %275

275:                                              ; preds = %273, %275
  %276 = phi i64 [ 0, %273 ], [ %286, %275 ]
  %277 = phi ptr [ %263, %273 ], [ %287, %275 ]
  %278 = getelementptr inbounds [3 x float], ptr %62, i64 %276
  %279 = load float, ptr %278, align 4, !tbaa !53
  store float %279, ptr %277, align 4, !tbaa !53
  %280 = getelementptr inbounds float, ptr %278, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !53
  %282 = getelementptr inbounds float, ptr %277, i64 1
  store float %281, ptr %282, align 4, !tbaa !53
  %283 = getelementptr inbounds float, ptr %278, i64 2
  %284 = load float, ptr %283, align 4, !tbaa !53
  %285 = getelementptr inbounds float, ptr %277, i64 2
  store float %284, ptr %285, align 4, !tbaa !53
  %286 = add nuw nsw i64 %276, 1
  %287 = getelementptr inbounds %struct.BPoint, ptr %277, i64 1
  %288 = icmp eq i64 %286, %274
  br i1 %288, label %289, label %275, !llvm.loop !80

289:                                              ; preds = %275, %234
  %290 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %290(ptr noundef %62) #13
  ret void
}

declare void @BKE_defvert_array_free(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #6

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @unit_m4(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @lattice_deform_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, float noundef %6) local_unnamed_addr #5 {
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !75
  %10 = icmp eq i16 %9, 22
  br i1 %10, label %11, label %89

11:                                               ; preds = %7
  %12 = tail call ptr @init_latt_deform(ptr noundef %0, ptr noundef %1)
  %13 = icmp eq ptr %1, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !75
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = tail call ptr %22(ptr noundef nonnull %2, i32 noundef 2) #13
  %24 = icmp ne ptr %23, null
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = icmp ne ptr %29, null
  br label %31

31:                                               ; preds = %11, %14, %20, %25
  %32 = phi i1 [ %24, %20 ], [ %30, %25 ], [ false, %14 ], [ false, %11 ]
  %33 = icmp eq ptr %5, null
  br i1 %33, label %72, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %5, align 1, !tbaa !87
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %36, i1 %32, i1 false
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %5) #13
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !85
  %46 = icmp ne ptr %45, null
  %47 = icmp ne ptr %2, null
  %48 = or i1 %47, %46
  %49 = icmp sgt i32 %4, 0
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 46
  %53 = zext i32 %4 to i64
  br label %54

54:                                               ; preds = %51, %68
  %55 = phi i64 [ 0, %51 ], [ %69, %68 ]
  %56 = phi ptr [ %45, %51 ], [ %70, %68 ]
  br i1 %47, label %57, label %61

57:                                               ; preds = %54
  %58 = load ptr, ptr %52, align 8, !tbaa !88
  %59 = trunc i64 %55 to i32
  %60 = tail call ptr %58(ptr noundef nonnull %2, i32 noundef %59, i32 noundef 2) #13
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi ptr [ %60, %57 ], [ %56, %54 ]
  %63 = tail call float @defvert_find_weight(ptr noundef %62, i32 noundef %41) #13
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds [3 x float], ptr %3, i64 %55
  %67 = fmul float %63, %6
  tail call void @calc_latt_deform(ptr noundef %12, ptr noundef %66, float noundef %67)
  br label %68

68:                                               ; preds = %61, %65
  %69 = add nuw nsw i64 %55, 1
  %70 = getelementptr inbounds %struct.MDeformVert, ptr %62, i64 1
  %71 = icmp eq i64 %69, %53
  br i1 %71, label %81, label %54, !llvm.loop !89

72:                                               ; preds = %34, %31
  %73 = icmp sgt i32 %4, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = zext nneg i32 %4 to i64
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %79, %76 ]
  %78 = getelementptr inbounds [3 x float], ptr %3, i64 %77
  tail call void @calc_latt_deform(ptr noundef %12, ptr noundef %78, float noundef %6)
  %79 = add nuw nsw i64 %77, 1
  %80 = icmp eq i64 %79, %75
  br i1 %80, label %81, label %76, !llvm.loop !76

81:                                               ; preds = %68, %76, %72, %38, %43
  %82 = getelementptr inbounds %struct.LatticeDeformData, ptr %12, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !77
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %86(ptr noundef nonnull %83) #13
  br label %87

87:                                               ; preds = %81, %85
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %88(ptr noundef %12) #13
  br label %89

89:                                               ; preds = %7, %87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_lattice_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21580, ptr noundef %1) #13
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 5
  store i16 1, ptr %4, align 2, !tbaa !57
  %5 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 12
  store i8 2, ptr %5, align 2, !tbaa !69
  %6 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 11
  store i8 2, ptr %6, align 1, !tbaa !68
  %7 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 10
  store i8 2, ptr %7, align 8, !tbaa !67
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %9 = tail call ptr %8(i64 noundef 36, ptr noundef nonnull @.str.2) #13
  %10 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 21
  store ptr %9, ptr %10, align 8, !tbaa !46
  tail call void @BKE_lattice_resize(ptr noundef %3, i32 noundef 2, i32 noundef 2, i32 noundef 2, ptr noundef null)
  %11 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 14
  store i32 -1, ptr %11, align 4, !tbaa !79
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_lattice_copy(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #13
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr %3(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 21
  store ptr %6, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call ptr @BKE_key_copy(ptr noundef %9) #13
  store ptr %10, ptr %8, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Key, ptr %10, i64 0, i32 8
  store ptr %2, ptr %13, align 8, !tbaa !91
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !34
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !43
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %24, %21
  %26 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %27 = load i16, ptr %26, align 4, !tbaa !45
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %25, %28
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %31 = sext i32 %29 to i64
  %32 = shl nsw i64 %31, 4
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.3) #13
  %34 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 24
  store ptr %33, ptr %34, align 8, !tbaa !54
  %35 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @BKE_defvert_array_copy(ptr noundef %33, ptr noundef %35, i32 noundef %29) #13
  br label %36

36:                                               ; preds = %18, %14
  %37 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 26
  store ptr null, ptr %37, align 8, !tbaa !93
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #6

declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #6

declare void @BKE_defvert_array_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_free(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %6(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !43
  %17 = sext i16 %16 to i32
  %18 = mul nsw i32 %17, %14
  %19 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !45
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %18, %21
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %9, i32 noundef %22) #13
  br label %23

23:                                               ; preds = %11, %7
  %24 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %33(ptr noundef nonnull %30) #13
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %40 = load i16, ptr %39, align 8, !tbaa !34
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %43 = load i16, ptr %42, align 2, !tbaa !43
  %44 = sext i16 %43 to i32
  %45 = mul nsw i32 %44, %41
  %46 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %47 = load i16, ptr %46, align 4, !tbaa !45
  %48 = sext i16 %47 to i32
  %49 = mul nsw i32 %45, %48
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %36, i32 noundef %49) #13
  br label %50

50:                                               ; preds = %38, %34
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %51(ptr noundef %28) #13
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %53 = load ptr, ptr %24, align 8, !tbaa !93
  tail call void %52(ptr noundef %53) #13
  br label %54

54:                                               ; preds = %50, %23
  %55 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !96
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @BKE_free_animdata(ptr noundef %0) #13
  store ptr null, ptr %55, align 8, !tbaa !96
  br label %59

59:                                               ; preds = %58, %54
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_make_local(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @G, align 8, !tbaa !97
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %107, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !100
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %106, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %34, %31 ], [ %12, %10 ]
  %16 = phi i8 [ %33, %31 ], [ 0, %10 ]
  %17 = phi i8 [ %32, %31 ], [ 0, %10 ]
  %18 = icmp eq i8 %16, 0
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !84
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i8 1, i8 %17
  %30 = select i1 %28, i8 %16, i8 1
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i8 [ %17, %21 ], [ %29, %25 ]
  %33 = phi i8 [ %16, %21 ], [ %30, %25 ]
  %34 = load ptr, ptr %15, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14, !llvm.loop !102

36:                                               ; preds = %31, %14
  %37 = phi i8 [ %17, %14 ], [ %32, %31 ]
  %38 = phi i8 [ %16, %14 ], [ %33, %31 ]
  %39 = icmp ne i8 %37, 0
  br label %40

40:                                               ; preds = %36, %10
  %41 = phi i1 [ false, %10 ], [ %39, %36 ]
  %42 = phi i8 [ 0, %10 ], [ %38, %36 ]
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %106, label %45

45:                                               ; preds = %40
  %46 = icmp ne i8 %42, 0
  %47 = select i1 %41, i1 %46, i1 false
  br i1 %47, label %48, label %107

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #13
  %50 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %51 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = tail call ptr %50(ptr noundef %52) #13
  %54 = getelementptr inbounds %struct.Lattice, ptr %49, i64 0, i32 21
  store ptr %53, ptr %54, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.Lattice, ptr %49, i64 0, i32 23
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  %57 = tail call ptr @BKE_key_copy(ptr noundef %56) #13
  store ptr %57, ptr %55, align 8, !tbaa !90
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.Key, ptr %57, i64 0, i32 8
  store ptr %49, ptr %60, align 8, !tbaa !91
  br label %61

61:                                               ; preds = %59, %48
  %62 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  %64 = icmp eq ptr %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !34
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !43
  %71 = sext i16 %70 to i32
  %72 = mul nsw i32 %71, %68
  %73 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %74 = load i16, ptr %73, align 4, !tbaa !45
  %75 = sext i16 %74 to i32
  %76 = mul nsw i32 %72, %75
  %77 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %78 = sext i32 %76 to i64
  %79 = shl nsw i64 %78, 4
  %80 = tail call ptr %77(i64 noundef %79, ptr noundef nonnull @.str.3) #13
  %81 = getelementptr inbounds %struct.Lattice, ptr %49, i64 0, i32 24
  store ptr %80, ptr %81, align 8, !tbaa !54
  %82 = load ptr, ptr %62, align 8, !tbaa !54
  tail call void @BKE_defvert_array_copy(ptr noundef %80, ptr noundef %82, i32 noundef %76) #13
  br label %83

83:                                               ; preds = %61, %65
  %84 = getelementptr inbounds %struct.Lattice, ptr %49, i64 0, i32 26
  store ptr null, ptr %84, align 8, !tbaa !93
  %85 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  store i32 0, ptr %85, align 4, !tbaa !100
  %86 = load ptr, ptr %3, align 8, !tbaa !99
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %86, ptr noundef %49) #13
  %87 = load ptr, ptr %11, align 8, !tbaa !56
  %88 = icmp eq ptr %87, null
  br i1 %88, label %107, label %89

89:                                               ; preds = %83, %103
  %90 = phi ptr [ %104, %103 ], [ %87, %83 ]
  %91 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !84
  %93 = icmp eq ptr %92, %0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !101
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  store ptr %49, ptr %91, align 8, !tbaa !84
  %99 = load i32, ptr %85, align 4, !tbaa !100
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %85, align 4, !tbaa !100
  %101 = load i32, ptr %7, align 4, !tbaa !100
  %102 = add nsw i32 %101, -1
  store i32 %102, ptr %7, align 4, !tbaa !100
  br label %103

103:                                              ; preds = %89, %98, %94
  %104 = load ptr, ptr %90, align 8, !tbaa !56
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %89, !llvm.loop !103

106:                                              ; preds = %40, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #13
  br label %107

107:                                              ; preds = %103, %106, %83, %45, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @init_latt_deform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @BKE_displist_find(ptr noundef nonnull %8, i32 noundef 7) #13
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.DispList, ptr %13, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %17, %15 ], [ null, %12 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %20 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %21, align 8, !tbaa !94
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %6, %18 ]
  %27 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 21
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !34
  %32 = sext i16 %31 to i64
  %33 = mul nsw i64 %32, 12
  %34 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !43
  %36 = sext i16 %35 to i64
  %37 = mul nsw i64 %33, %36
  %38 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !45
  %40 = sext i16 %39 to i64
  %41 = mul nsw i64 %37, %40
  %42 = tail call ptr %29(i64 noundef %41, ptr noundef nonnull @.str.4) #13
  %43 = icmp eq ptr %1, null
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br i1 %43, label %45, label %47

45:                                               ; preds = %25
  %46 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %44) #13
  br label %50

47:                                               ; preds = %25
  %48 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %44) #13
  %49 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %49) #13
  br label %50

50:                                               ; preds = %47, %45
  %51 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %52 = load i16, ptr %38, align 4, !tbaa !45
  %53 = icmp sgt i16 %52, 0
  br i1 %53, label %54, label %137

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 17
  %56 = load float, ptr %55, align 8, !tbaa !62
  %57 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 16
  %58 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 15
  %59 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 18
  %60 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 19
  %61 = getelementptr inbounds %struct.Lattice, ptr %26, i64 0, i32 20
  br label %62

62:                                               ; preds = %54, %127
  %63 = phi ptr [ %28, %54 ], [ %130, %127 ]
  %64 = phi i32 [ 0, %54 ], [ %131, %127 ]
  %65 = phi float [ %56, %54 ], [ %133, %127 ]
  %66 = phi ptr [ %42, %54 ], [ %129, %127 ]
  %67 = phi ptr [ %19, %54 ], [ %128, %127 ]
  %68 = load i16, ptr %34, align 2, !tbaa !43
  %69 = icmp sgt i16 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %62
  %71 = load float, ptr %57, align 4, !tbaa !60
  br label %72

72:                                               ; preds = %70, %117
  %73 = phi ptr [ %120, %117 ], [ %63, %70 ]
  %74 = phi i32 [ %121, %117 ], [ 0, %70 ]
  %75 = phi float [ %123, %117 ], [ %71, %70 ]
  %76 = phi ptr [ %119, %117 ], [ %66, %70 ]
  %77 = phi ptr [ %118, %117 ], [ %67, %70 ]
  %78 = load i16, ptr %30, align 8, !tbaa !34
  %79 = icmp sgt i16 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %72
  %81 = load float, ptr %58, align 8, !tbaa !58
  br label %82

82:                                               ; preds = %80, %104
  %83 = phi ptr [ %109, %104 ], [ %73, %80 ]
  %84 = phi i32 [ %108, %104 ], [ 0, %80 ]
  %85 = phi float [ %113, %104 ], [ %81, %80 ]
  %86 = phi ptr [ %111, %104 ], [ %76, %80 ]
  %87 = phi ptr [ %110, %104 ], [ %77, %80 ]
  %88 = getelementptr inbounds float, ptr %86, i64 1
  %89 = getelementptr inbounds float, ptr %86, i64 2
  br i1 %14, label %97, label %90

90:                                               ; preds = %82
  %91 = load float, ptr %87, align 4, !tbaa !53
  %92 = fsub float %91, %85
  store float %92, ptr %86, align 4, !tbaa !53
  %93 = getelementptr inbounds float, ptr %87, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !53
  %95 = fsub float %94, %75
  store float %95, ptr %88, align 4, !tbaa !53
  %96 = getelementptr inbounds float, ptr %87, i64 2
  br label %104

97:                                               ; preds = %82
  %98 = load float, ptr %83, align 4, !tbaa !53
  %99 = fsub float %98, %85
  store float %99, ptr %86, align 4, !tbaa !53
  %100 = getelementptr inbounds [4 x float], ptr %83, i64 0, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !53
  %102 = fsub float %101, %75
  store float %102, ptr %88, align 4, !tbaa !53
  %103 = getelementptr inbounds [4 x float], ptr %83, i64 0, i64 2
  br label %104

104:                                              ; preds = %97, %90
  %105 = phi ptr [ %103, %97 ], [ %96, %90 ]
  %106 = load float, ptr %105, align 4, !tbaa !53
  %107 = fsub float %106, %65
  store float %107, ptr %89, align 4, !tbaa !53
  call void @mul_mat3_m4_v3(ptr noundef nonnull %3, ptr noundef %86) #13
  %108 = add nuw nsw i32 %84, 1
  %109 = getelementptr inbounds %struct.BPoint, ptr %83, i64 1
  %110 = getelementptr inbounds float, ptr %87, i64 3
  %111 = getelementptr inbounds float, ptr %86, i64 3
  %112 = load float, ptr %59, align 4, !tbaa !59
  %113 = fadd float %85, %112
  %114 = load i16, ptr %30, align 8, !tbaa !34
  %115 = sext i16 %114 to i32
  %116 = icmp slt i32 %108, %115
  br i1 %116, label %82, label %117, !llvm.loop !106

117:                                              ; preds = %104, %72
  %118 = phi ptr [ %77, %72 ], [ %110, %104 ]
  %119 = phi ptr [ %76, %72 ], [ %111, %104 ]
  %120 = phi ptr [ %73, %72 ], [ %109, %104 ]
  %121 = add nuw nsw i32 %74, 1
  %122 = load float, ptr %60, align 8, !tbaa !61
  %123 = fadd float %75, %122
  %124 = load i16, ptr %34, align 2, !tbaa !43
  %125 = sext i16 %124 to i32
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %72, label %127, !llvm.loop !107

127:                                              ; preds = %117, %62
  %128 = phi ptr [ %67, %62 ], [ %118, %117 ]
  %129 = phi ptr [ %66, %62 ], [ %119, %117 ]
  %130 = phi ptr [ %63, %62 ], [ %120, %117 ]
  %131 = add nuw nsw i32 %64, 1
  %132 = load float, ptr %61, align 4, !tbaa !63
  %133 = fadd float %65, %132
  %134 = load i16, ptr %38, align 4, !tbaa !45
  %135 = sext i16 %134 to i32
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %62, label %137, !llvm.loop !108

137:                                              ; preds = %127, %50
  %138 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %139 = call ptr %138(i64 noundef 80, ptr noundef nonnull @.str.5) #13
  %140 = getelementptr inbounds %struct.LatticeDeformData, ptr %139, i64 0, i32 1
  store ptr %42, ptr %140, align 8, !tbaa !77
  store ptr %0, ptr %139, align 8, !tbaa !109
  %141 = getelementptr inbounds %struct.LatticeDeformData, ptr %139, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %141, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret ptr %139
}

declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @calc_latt_deform(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %12 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr %13, align 8, !tbaa !94
  br label %17

17:                                               ; preds = %3, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %3 ]
  %19 = getelementptr inbounds %struct.Lattice, ptr %18, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  br i1 %14, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %13, align 8, !tbaa !94
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %11, %17 ]
  %25 = getelementptr inbounds %struct.LatticeDeformData, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = icmp eq ptr %26, null
  br i1 %27, label %263, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 25
  %30 = load i8, ptr %29, align 8, !tbaa !87
  %31 = icmp ne i8 %30, 0
  %32 = icmp ne ptr %20, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = tail call i32 @defgroup_name_index(ptr noundef %9, ptr noundef nonnull %29) #13
  %36 = load float, ptr %1, align 4, !tbaa !53
  store float %36, ptr %8, align 4, !tbaa !53
  %37 = getelementptr inbounds float, ptr %1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !53
  %39 = getelementptr inbounds float, ptr %8, i64 1
  store float %38, ptr %39, align 4, !tbaa !53
  %40 = getelementptr inbounds float, ptr %1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !53
  %42 = getelementptr inbounds float, ptr %8, i64 2
  store float %41, ptr %42, align 4, !tbaa !53
  br label %43

43:                                               ; preds = %34, %28
  %44 = phi i32 [ %35, %34 ], [ -1, %28 ]
  %45 = getelementptr inbounds %struct.LatticeDeformData, ptr %0, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %45, ptr noundef %1) #13
  %46 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 2
  %47 = load i16, ptr %46, align 8, !tbaa !34
  %48 = icmp sgt i16 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load float, ptr %7, align 4, !tbaa !53
  %51 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 15
  %52 = load float, ptr %51, align 8, !tbaa !58
  %53 = fsub float %50, %52
  %54 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 18
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = fdiv float %53, %55
  %57 = call float @llvm.floor.f32(float %56)
  %58 = fptosi float %57 to i32
  %59 = sitofp i32 %58 to float
  %60 = fsub float %56, %59
  %61 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 10
  %62 = load i8, ptr %61, align 8, !tbaa !67
  %63 = zext i8 %62 to i32
  call void @key_curve_position_weights(float noundef %60, ptr noundef nonnull %4, i32 noundef %63) #13
  br label %68

64:                                               ; preds = %43
  %65 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 0.000000e+00, ptr %65, align 4, !tbaa !53
  %66 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %66, align 8, !tbaa !53
  store float 0.000000e+00, ptr %4, align 16, !tbaa !53
  %67 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float 1.000000e+00, ptr %67, align 4, !tbaa !53
  br label %68

68:                                               ; preds = %64, %49
  %69 = phi i32 [ %58, %49 ], [ 0, %64 ]
  %70 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !43
  %72 = icmp sgt i16 %71, 1
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !53
  %76 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 16
  %77 = load float, ptr %76, align 4, !tbaa !60
  %78 = fsub float %75, %77
  %79 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 19
  %80 = load float, ptr %79, align 8, !tbaa !61
  %81 = fdiv float %78, %80
  %82 = call float @llvm.floor.f32(float %81)
  %83 = fptosi float %82 to i32
  %84 = sitofp i32 %83 to float
  %85 = fsub float %81, %84
  %86 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 11
  %87 = load i8, ptr %86, align 1, !tbaa !68
  %88 = zext i8 %87 to i32
  call void @key_curve_position_weights(float noundef %85, ptr noundef nonnull %5, i32 noundef %88) #13
  br label %93

89:                                               ; preds = %68
  %90 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 0.000000e+00, ptr %90, align 4, !tbaa !53
  %91 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %91, align 8, !tbaa !53
  store float 0.000000e+00, ptr %5, align 16, !tbaa !53
  %92 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  store float 1.000000e+00, ptr %92, align 4, !tbaa !53
  br label %93

93:                                               ; preds = %89, %73
  %94 = phi i32 [ %83, %73 ], [ 0, %89 ]
  %95 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 4
  %96 = load i16, ptr %95, align 4, !tbaa !45
  %97 = icmp sgt i16 %96, 1
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !53
  %101 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 17
  %102 = load float, ptr %101, align 8, !tbaa !62
  %103 = fsub float %100, %102
  %104 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 20
  %105 = load float, ptr %104, align 4, !tbaa !63
  %106 = fdiv float %103, %105
  %107 = call float @llvm.floor.f32(float %106)
  %108 = fptosi float %107 to i32
  %109 = sitofp i32 %108 to float
  %110 = fsub float %106, %109
  %111 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 12
  %112 = load i8, ptr %111, align 2, !tbaa !69
  %113 = zext i8 %112 to i32
  call void @key_curve_position_weights(float noundef %110, ptr noundef nonnull %6, i32 noundef %113) #13
  br label %118

114:                                              ; preds = %93
  %115 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 0.000000e+00, ptr %115, align 4, !tbaa !53
  %116 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %116, align 8, !tbaa !53
  store float 0.000000e+00, ptr %6, align 16, !tbaa !53
  %117 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  store float 1.000000e+00, ptr %117, align 4, !tbaa !53
  br label %118

118:                                              ; preds = %114, %98
  %119 = phi i32 [ %108, %98 ], [ 0, %114 ]
  %120 = add i32 %119, -1
  %121 = add nsw i32 %119, 2
  %122 = add i32 %94, -1
  %123 = add nsw i32 %94, 2
  %124 = add i32 %69, -1
  %125 = add nsw i32 %69, 2
  %126 = getelementptr inbounds float, ptr %1, i64 1
  %127 = getelementptr inbounds float, ptr %1, i64 2
  %128 = icmp eq i32 %44, -1
  %129 = sext i32 %124 to i64
  %130 = sext i32 %125 to i64
  %131 = sext i32 %122 to i64
  %132 = sext i32 %123 to i64
  %133 = sext i32 %120 to i64
  %134 = sext i32 %121 to i64
  br label %135

135:                                              ; preds = %118, %256
  %136 = phi i64 [ %133, %118 ], [ %258, %256 ]
  %137 = phi float [ 0.000000e+00, %118 ], [ %257, %256 ]
  %138 = trunc i64 %136 to i32
  %139 = sub i32 %138, %119
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !53
  %144 = fcmp une float %143, 0.000000e+00
  br i1 %144, label %145, label %256

145:                                              ; preds = %135
  %146 = icmp sgt i64 %136, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %145
  %148 = load i16, ptr %95, align 4, !tbaa !45
  %149 = sext i16 %148 to i64
  %150 = icmp slt i64 %136, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i16, ptr %46, align 8, !tbaa !34
  %153 = sext i16 %152 to i32
  %154 = trunc i64 %136 to i32
  %155 = mul nsw i32 %154, %153
  br label %162

156:                                              ; preds = %147
  %157 = sext i16 %148 to i32
  %158 = add nsw i32 %157, -1
  %159 = load i16, ptr %46, align 8, !tbaa !34
  %160 = sext i16 %159 to i32
  %161 = mul nsw i32 %158, %160
  br label %162

162:                                              ; preds = %156, %151
  %163 = phi i32 [ %155, %151 ], [ %161, %156 ]
  %164 = load i16, ptr %70, align 2, !tbaa !43
  %165 = sext i16 %164 to i32
  %166 = mul nsw i32 %163, %165
  br label %167

167:                                              ; preds = %162, %145
  %168 = phi i32 [ 0, %145 ], [ %166, %162 ]
  br label %169

169:                                              ; preds = %167, %252
  %170 = phi i64 [ %131, %167 ], [ %254, %252 ]
  %171 = phi float [ %137, %167 ], [ %253, %252 ]
  %172 = trunc i64 %170 to i32
  %173 = sub i32 %172, %94
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !53
  %178 = fmul float %143, %177
  %179 = fcmp une float %178, 0.000000e+00
  br i1 %179, label %180, label %252

180:                                              ; preds = %169
  %181 = icmp sgt i64 %170, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %180
  %183 = load i16, ptr %70, align 2, !tbaa !43
  %184 = sext i16 %183 to i64
  %185 = icmp slt i64 %170, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i16, ptr %46, align 8, !tbaa !34
  %188 = sext i16 %187 to i32
  %189 = trunc i64 %170 to i32
  %190 = mul nsw i32 %189, %188
  %191 = add nsw i32 %190, %168
  br label %199

192:                                              ; preds = %182
  %193 = sext i16 %183 to i32
  %194 = add nsw i32 %193, -1
  %195 = load i16, ptr %46, align 8, !tbaa !34
  %196 = sext i16 %195 to i32
  %197 = mul nsw i32 %194, %196
  %198 = add nsw i32 %197, %168
  br label %199

199:                                              ; preds = %180, %186, %192
  %200 = phi i32 [ %191, %186 ], [ %198, %192 ], [ %168, %180 ]
  %201 = fmul float %178, %2
  %202 = add i32 %200, -1
  br label %203

203:                                              ; preds = %199, %248
  %204 = phi i64 [ %129, %199 ], [ %250, %248 ]
  %205 = phi float [ %171, %199 ], [ %249, %248 ]
  %206 = trunc i64 %204 to i32
  %207 = sub i32 %206, %69
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %209
  %211 = load float, ptr %210, align 4, !tbaa !53
  %212 = fmul float %201, %211
  %213 = fcmp une float %212, 0.000000e+00
  br i1 %213, label %214, label %248

214:                                              ; preds = %203
  %215 = icmp sgt i64 %204, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %214
  %217 = load i16, ptr %46, align 8, !tbaa !34
  %218 = sext i16 %217 to i64
  %219 = icmp slt i64 %204, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = trunc i64 %204 to i32
  %222 = add i32 %200, %221
  br label %226

223:                                              ; preds = %216
  %224 = sext i16 %217 to i32
  %225 = add i32 %202, %224
  br label %226

226:                                              ; preds = %214, %220, %223
  %227 = phi i32 [ %222, %220 ], [ %225, %223 ], [ %200, %214 ]
  %228 = load ptr, ptr %25, align 8, !tbaa !77
  %229 = mul nsw i32 %227, 3
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, ptr %228, i64 %230
  %232 = load float, ptr %231, align 4, !tbaa !53
  %233 = load float, ptr %1, align 4, !tbaa !53
  %234 = call float @llvm.fmuladd.f32(float %232, float %212, float %233)
  store float %234, ptr %1, align 4, !tbaa !53
  %235 = getelementptr inbounds float, ptr %231, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !53
  %237 = load float, ptr %126, align 4, !tbaa !53
  %238 = call float @llvm.fmuladd.f32(float %236, float %212, float %237)
  store float %238, ptr %126, align 4, !tbaa !53
  %239 = getelementptr inbounds float, ptr %231, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !53
  %241 = load float, ptr %127, align 4, !tbaa !53
  %242 = call float @llvm.fmuladd.f32(float %240, float %212, float %241)
  store float %242, ptr %127, align 4, !tbaa !53
  br i1 %128, label %248, label %243

243:                                              ; preds = %226
  %244 = sext i32 %227 to i64
  %245 = getelementptr inbounds %struct.MDeformVert, ptr %20, i64 %244
  %246 = call float @defvert_find_weight(ptr noundef %245, i32 noundef %44) #13
  %247 = call float @llvm.fmuladd.f32(float %212, float %246, float %205)
  br label %248

248:                                              ; preds = %203, %243, %226
  %249 = phi float [ %247, %243 ], [ %205, %226 ], [ %205, %203 ]
  %250 = add nsw i64 %204, 1
  %251 = icmp slt i64 %204, %130
  br i1 %251, label %203, label %252, !llvm.loop !110

252:                                              ; preds = %248, %169
  %253 = phi float [ %171, %169 ], [ %249, %248 ]
  %254 = add nsw i64 %170, 1
  %255 = icmp slt i64 %170, %132
  br i1 %255, label %169, label %256, !llvm.loop !111

256:                                              ; preds = %252, %135
  %257 = phi float [ %137, %135 ], [ %253, %252 ]
  %258 = add nsw i64 %136, 1
  %259 = icmp slt i64 %136, %134
  br i1 %259, label %135, label %260, !llvm.loop !112

260:                                              ; preds = %256
  %261 = icmp eq i32 %44, -1
  br i1 %261, label %263, label %262

262:                                              ; preds = %260
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %1, float noundef %257) #13
  br label %263

263:                                              ; preds = %260, %262, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_lattice_deform_verts_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  ret ptr %12
}

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @end_latt_deform(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.LatticeDeformData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %6(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %8(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @curve_deform_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i16 noundef signext %7) local_unnamed_addr #5 {
  %9 = alloca %struct.CurveDeform, align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %9) #13
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !75
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %176

14:                                               ; preds = %8
  %15 = icmp slt i16 %7, 3
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %20 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  %21 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 3
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %21, ptr noundef nonnull %18, ptr noundef nonnull %22) #13
  %23 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 2
  %24 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %21) #13
  %25 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 4
  call void @copy_m3_m4(ptr noundef nonnull %25, ptr noundef nonnull %21) #13
  %26 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 5
  store i32 0, ptr %26, align 4, !tbaa !113
  %27 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %28 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %29 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1
  %30 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 2
  %31 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 1
  %32 = select i1 %15, float 0.000000e+00, float -1.000000e+00
  %33 = select i1 %15, float 1.000000e+00, float 0.000000e+00
  store float %32, ptr %27, align 4, !tbaa !53
  store float %32, ptr %28, align 4, !tbaa !53
  store float %32, ptr %9, align 4, !tbaa !53
  store float %33, ptr %30, align 4, !tbaa !53
  store float %33, ptr %31, align 4, !tbaa !53
  store float %33, ptr %29, align 4, !tbaa !53
  %34 = icmp eq ptr %6, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %14
  %36 = load i8, ptr %6, align 1, !tbaa !87
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %40 = load i16, ptr %39, align 8, !tbaa !75
  switch i16 %40, label %61 [
    i16 1, label %41
    i16 22, label %41
  ]

41:                                               ; preds = %38, %38
  %42 = call i32 @defgroup_name_index(ptr noundef %2, ptr noundef nonnull %6) #13
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %61, label %44

44:                                               ; preds = %41
  %45 = icmp eq ptr %3, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 50
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  %49 = call ptr %48(ptr noundef nonnull %3, i32 noundef 2) #13
  br label %61

50:                                               ; preds = %44
  %51 = load i16, ptr %39, align 8, !tbaa !75
  %52 = icmp eq i16 %51, 22
  %53 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !84
  br i1 %52, label %55, label %58

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.Lattice, ptr %54, i64 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  br label %61

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !85
  br label %61

61:                                               ; preds = %38, %41, %55, %58, %46, %35, %14
  %62 = phi i32 [ %42, %46 ], [ %42, %55 ], [ %42, %58 ], [ -1, %41 ], [ -1, %35 ], [ -1, %14 ], [ -1, %38 ]
  %63 = phi ptr [ %49, %46 ], [ %57, %55 ], [ %60, %58 ], [ null, %41 ], [ null, %35 ], [ null, %14 ], [ null, %38 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %137, label %65

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %66 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %67 = load i32, ptr %66, align 4, !tbaa !115
  %68 = and i32 %67, 64
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %5, 0
  br i1 %71, label %72, label %136

72:                                               ; preds = %70
  %73 = getelementptr inbounds float, ptr %10, i64 1
  %74 = getelementptr inbounds float, ptr %10, i64 2
  %75 = zext nneg i32 %5 to i64
  br label %76

76:                                               ; preds = %72, %89
  %77 = phi i64 [ 0, %72 ], [ %90, %89 ]
  %78 = phi ptr [ %63, %72 ], [ %91, %89 ]
  %79 = call float @defvert_find_weight(ptr noundef nonnull %78, i32 noundef %62) #13
  %80 = fcmp ogt float %79, 0.000000e+00
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds [3 x float], ptr %4, i64 %77
  call void @mul_m4_v3(ptr noundef nonnull %23, ptr noundef %82) #13
  %83 = load float, ptr %82, align 4, !tbaa !53
  store float %83, ptr %10, align 4, !tbaa !53
  %84 = getelementptr inbounds float, ptr %82, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !53
  store float %85, ptr %73, align 4, !tbaa !53
  %86 = getelementptr inbounds float, ptr %82, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !53
  store float %87, ptr %74, align 4, !tbaa !53
  %88 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null), !range !118
  call void @interp_v3_v3v3(ptr noundef nonnull %82, ptr noundef nonnull %82, ptr noundef nonnull %10, float noundef %79) #13
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef nonnull %82) #13
  br label %89

89:                                               ; preds = %81, %76
  %90 = add nuw nsw i64 %77, 1
  %91 = getelementptr inbounds %struct.MDeformVert, ptr %78, i64 1
  %92 = icmp eq i64 %90, %75
  br i1 %92, label %136, label %76, !llvm.loop !119

93:                                               ; preds = %65
  %94 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0x46293E5940000000, ptr %94, align 4, !tbaa !53
  %95 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0x46293E5940000000, ptr %95, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %9, align 4, !tbaa !53
  %96 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1
  %97 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 2
  store float 0xC6293E5940000000, ptr %97, align 4, !tbaa !53
  %98 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 1
  store float 0xC6293E5940000000, ptr %98, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %96, align 4, !tbaa !53
  %99 = icmp sgt i32 %5, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = zext nneg i32 %5 to i64
  br label %108

102:                                              ; preds = %115, %93
  %103 = icmp sgt i32 %5, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %102
  %105 = getelementptr inbounds float, ptr %10, i64 1
  %106 = getelementptr inbounds float, ptr %10, i64 2
  %107 = zext nneg i32 %5 to i64
  br label %119

108:                                              ; preds = %100, %115
  %109 = phi i64 [ 0, %100 ], [ %116, %115 ]
  %110 = phi ptr [ %63, %100 ], [ %117, %115 ]
  %111 = call float @defvert_find_weight(ptr noundef nonnull %110, i32 noundef %62) #13
  %112 = fcmp ogt float %111, 0.000000e+00
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = getelementptr inbounds [3 x float], ptr %4, i64 %109
  call void @mul_m4_v3(ptr noundef nonnull %23, ptr noundef %114) #13
  call void @minmax_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %96, ptr noundef %114) #13
  br label %115

115:                                              ; preds = %108, %113
  %116 = add nuw nsw i64 %109, 1
  %117 = getelementptr inbounds %struct.MDeformVert, ptr %110, i64 1
  %118 = icmp eq i64 %116, %101
  br i1 %118, label %102, label %108, !llvm.loop !120

119:                                              ; preds = %104, %132
  %120 = phi i64 [ 0, %104 ], [ %133, %132 ]
  %121 = phi ptr [ %63, %104 ], [ %134, %132 ]
  %122 = call float @defvert_find_weight(ptr noundef nonnull %121, i32 noundef %62) #13
  %123 = fcmp ogt float %122, 0.000000e+00
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = getelementptr inbounds [3 x float], ptr %4, i64 %120
  %126 = load float, ptr %125, align 4, !tbaa !53
  store float %126, ptr %10, align 4, !tbaa !53
  %127 = getelementptr inbounds float, ptr %125, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !53
  store float %128, ptr %105, align 4, !tbaa !53
  %129 = getelementptr inbounds float, ptr %125, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !53
  store float %130, ptr %106, align 4, !tbaa !53
  %131 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null), !range !118
  call void @interp_v3_v3v3(ptr noundef nonnull %125, ptr noundef nonnull %125, ptr noundef nonnull %10, float noundef %122) #13
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef nonnull %125) #13
  br label %132

132:                                              ; preds = %124, %119
  %133 = add nuw nsw i64 %120, 1
  %134 = getelementptr inbounds %struct.MDeformVert, ptr %121, i64 1
  %135 = icmp eq i64 %133, %107
  br i1 %135, label %136, label %119, !llvm.loop !121

136:                                              ; preds = %89, %132, %70, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  br label %176

137:                                              ; preds = %61
  %138 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %139 = load i32, ptr %138, align 4, !tbaa !115
  %140 = and i32 %139, 64
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = icmp sgt i32 %5, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %142
  %145 = zext nneg i32 %5 to i64
  br label %146

146:                                              ; preds = %144, %146
  %147 = phi i64 [ 0, %144 ], [ %150, %146 ]
  %148 = getelementptr inbounds [3 x float], ptr %4, i64 %147
  call void @mul_m4_v3(ptr noundef nonnull %23, ptr noundef %148) #13
  %149 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef %148, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null), !range !118
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef %148) #13
  %150 = add nuw nsw i64 %147, 1
  %151 = icmp eq i64 %150, %145
  br i1 %151, label %176, label %146, !llvm.loop !122

152:                                              ; preds = %137
  %153 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0x46293E5940000000, ptr %153, align 4, !tbaa !53
  %154 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0x46293E5940000000, ptr %154, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %9, align 4, !tbaa !53
  %155 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1
  %156 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 2
  store float 0xC6293E5940000000, ptr %156, align 4, !tbaa !53
  %157 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 1
  store float 0xC6293E5940000000, ptr %157, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %155, align 4, !tbaa !53
  %158 = icmp sgt i32 %5, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = zext nneg i32 %5 to i64
  br label %165

161:                                              ; preds = %165, %152
  %162 = icmp sgt i32 %5, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %161
  %164 = zext nneg i32 %5 to i64
  br label %170

165:                                              ; preds = %159, %165
  %166 = phi i64 [ 0, %159 ], [ %168, %165 ]
  %167 = getelementptr inbounds [3 x float], ptr %4, i64 %166
  call void @mul_m4_v3(ptr noundef nonnull %23, ptr noundef %167) #13
  call void @minmax_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %155, ptr noundef %167) #13
  %168 = add nuw nsw i64 %166, 1
  %169 = icmp eq i64 %168, %160
  br i1 %169, label %161, label %165, !llvm.loop !123

170:                                              ; preds = %163, %170
  %171 = phi i64 [ 0, %163 ], [ %174, %170 ]
  %172 = getelementptr inbounds [3 x float], ptr %4, i64 %171
  %173 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef %172, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null), !range !118
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef %172) #13
  %174 = add nuw nsw i64 %171, 1
  %175 = icmp eq i64 %174, %164
  br i1 %175, label %176, label %170, !llvm.loop !124

176:                                              ; preds = %146, %170, %142, %161, %136, %8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %9) #13
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i16 noundef signext %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #5 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca float, align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %17 = icmp sgt i16 %3, 2
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  br label %22

22:                                               ; preds = %21, %6
  %23 = load ptr, ptr %18, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.CurveCache, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !125
  %26 = icmp eq ptr %25, null
  br i1 %26, label %280, label %27

27:                                               ; preds = %22
  br i1 %17, label %28, label %54

28:                                               ; preds = %27
  %29 = add nsw i16 %3, -3
  %30 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %31 = load i32, ptr %30, align 4, !tbaa !115
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  %34 = sext i16 %29 to i64
  %35 = getelementptr inbounds float, ptr %2, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !53
  br i1 %33, label %46, label %37

37:                                               ; preds = %28
  %38 = fneg float %36
  %39 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 1, i64 %34
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %34
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fsub float %40, %43
  %45 = fdiv float %41, %44
  br label %82

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 1, i64 %34
  %48 = load float, ptr %47, align 4, !tbaa !53
  %49 = fsub float %36, %48
  %50 = fneg float %49
  %51 = getelementptr inbounds %struct.Path, ptr %25, i64 0, i32 2
  %52 = load float, ptr %51, align 4, !tbaa !127
  %53 = fdiv float %50, %52
  br label %82

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %56 = load i32, ptr %55, align 4, !tbaa !115
  %57 = and i32 %56, 128
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = sext i16 %3 to i64
  %61 = getelementptr inbounds float, ptr %2, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !53
  %63 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %60
  %64 = load float, ptr %63, align 4, !tbaa !53
  %65 = fsub float %62, %64
  %66 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 1, i64 %60
  %67 = load float, ptr %66, align 4, !tbaa !53
  %68 = fsub float %67, %64
  %69 = fdiv float %65, %68
  br label %82

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.Path, ptr %25, i64 0, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !127
  %73 = fcmp ogt float %72, 0x3E80000000000000
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = sext i16 %3 to i64
  %76 = getelementptr inbounds float, ptr %2, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !53
  %78 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %75
  %79 = load float, ptr %78, align 4, !tbaa !53
  %80 = fsub float %77, %79
  %81 = fdiv float %80, %72
  br label %82

82:                                               ; preds = %70, %59, %74, %37, %46
  %83 = phi float [ %45, %37 ], [ %53, %46 ], [ %69, %59 ], [ %81, %74 ], [ 0.000000e+00, %70 ]
  %84 = phi i16 [ %29, %37 ], [ %29, %46 ], [ %3, %59 ], [ %3, %74 ], [ %3, %70 ]
  %85 = getelementptr inbounds %struct.CurveCache, ptr %23, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !129
  %87 = getelementptr inbounds %struct.BevList, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !44
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %280, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.BevList, ptr %86, i64 0, i32 4
  %92 = load i32, ptr %91, align 8, !tbaa !44
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = fcmp olt float %83, 0.000000e+00
  %96 = fcmp ogt float %83, 1.000000e+00
  %97 = select i1 %96, float 1.000000e+00, float %83
  %98 = select i1 %95, float 0.000000e+00, float %97
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi float [ %98, %94 ], [ %83, %90 ]
  %101 = call i32 @where_on_path(ptr noundef %1, float noundef %100, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null) #13
  %102 = icmp eq i32 %101, 0
  %103 = or i1 %93, %102
  br i1 %103, label %188, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %18, align 8, !tbaa !70
  %106 = getelementptr inbounds %struct.CurveCache, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !125
  %108 = fcmp olt float %83, 0.000000e+00
  br i1 %108, label %109, label %144

109:                                              ; preds = %104
  %110 = load ptr, ptr %107, align 8, !tbaa !130
  %111 = getelementptr inbounds %struct.PathPoint, ptr %110, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !53
  %113 = load float, ptr %110, align 4, !tbaa !53
  %114 = fsub float %112, %113
  %115 = getelementptr inbounds %struct.PathPoint, ptr %110, i64 1, i32 0, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !53
  %117 = getelementptr inbounds float, ptr %110, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !53
  %119 = fsub float %116, %118
  %120 = getelementptr inbounds %struct.PathPoint, ptr %110, i64 1, i32 0, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = getelementptr inbounds float, ptr %110, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !53
  %124 = fsub float %121, %123
  %125 = getelementptr inbounds %struct.Path, ptr %107, i64 0, i32 1
  %126 = load i32, ptr %125, align 8, !tbaa !131
  %127 = sitofp i32 %126 to float
  %128 = fmul float %83, %127
  %129 = fmul float %114, %128
  %130 = fmul float %119, %128
  %131 = fmul float %124, %128
  %132 = load float, ptr %7, align 16, !tbaa !53
  %133 = fadd float %132, %129
  store float %133, ptr %7, align 16, !tbaa !53
  %134 = getelementptr inbounds float, ptr %7, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !53
  %136 = fadd float %135, %130
  store float %136, ptr %134, align 4, !tbaa !53
  %137 = getelementptr inbounds float, ptr %7, i64 2
  %138 = load float, ptr %137, align 8, !tbaa !53
  %139 = fadd float %131, %138
  store float %139, ptr %137, align 8, !tbaa !53
  %140 = getelementptr inbounds %struct.PathPoint, ptr %110, i64 0, i32 1
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %140) #13
  %141 = load ptr, ptr %107, align 8, !tbaa !130
  %142 = getelementptr inbounds %struct.PathPoint, ptr %141, i64 0, i32 2
  %143 = load float, ptr %142, align 4, !tbaa !132
  store float %143, ptr %10, align 4, !tbaa !53
  br label %189

144:                                              ; preds = %104
  %145 = fcmp ogt float %83, 1.000000e+00
  br i1 %145, label %146, label %189

146:                                              ; preds = %144
  %147 = load ptr, ptr %107, align 8, !tbaa !130
  %148 = getelementptr inbounds %struct.Path, ptr %107, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !131
  %150 = sext i32 %149 to i64
  %151 = getelementptr %struct.PathPoint, ptr %147, i64 %150
  %152 = getelementptr %struct.PathPoint, ptr %151, i64 -1
  %153 = getelementptr %struct.PathPoint, ptr %151, i64 -2
  %154 = load float, ptr %152, align 4, !tbaa !53
  %155 = load float, ptr %153, align 4, !tbaa !53
  %156 = fsub float %154, %155
  %157 = getelementptr %struct.PathPoint, ptr %151, i64 -1, i32 0, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !53
  %159 = getelementptr %struct.PathPoint, ptr %151, i64 -2, i32 0, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !53
  %161 = fsub float %158, %160
  %162 = getelementptr %struct.PathPoint, ptr %151, i64 -1, i32 0, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !53
  %164 = getelementptr %struct.PathPoint, ptr %151, i64 -2, i32 0, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !53
  %166 = fsub float %163, %165
  %167 = fadd float %83, -1.000000e+00
  %168 = sitofp i32 %149 to float
  %169 = fmul float %167, %168
  %170 = fmul float %169, %156
  %171 = fmul float %169, %161
  %172 = fmul float %169, %166
  %173 = load float, ptr %7, align 16, !tbaa !53
  %174 = fadd float %170, %173
  store float %174, ptr %7, align 16, !tbaa !53
  %175 = getelementptr inbounds float, ptr %7, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !53
  %177 = fadd float %171, %176
  store float %177, ptr %175, align 4, !tbaa !53
  %178 = getelementptr inbounds float, ptr %7, i64 2
  %179 = load float, ptr %178, align 8, !tbaa !53
  %180 = fadd float %172, %179
  store float %180, ptr %178, align 8, !tbaa !53
  %181 = getelementptr %struct.PathPoint, ptr %151, i64 -1, i32 1
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef %181) #13
  %182 = load ptr, ptr %107, align 8, !tbaa !130
  %183 = load i32, ptr %148, align 8, !tbaa !131
  %184 = sext i32 %183 to i64
  %185 = getelementptr %struct.PathPoint, ptr %182, i64 %184
  %186 = getelementptr %struct.PathPoint, ptr %185, i64 -1, i32 2
  %187 = load float, ptr %186, align 4, !tbaa !132
  store float %187, ptr %10, align 4, !tbaa !53
  br label %189

188:                                              ; preds = %99
  br i1 %102, label %280, label %189

189:                                              ; preds = %144, %146, %109, %188
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  %190 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 5
  %191 = load i32, ptr %190, align 4, !tbaa !113
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %239, label %193

193:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  %194 = load float, ptr %8, align 4, !tbaa !53
  store float %194, ptr %13, align 4, !tbaa !53
  %195 = getelementptr inbounds float, ptr %8, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !53
  %197 = getelementptr inbounds float, ptr %13, i64 1
  store float %196, ptr %197, align 4, !tbaa !53
  %198 = getelementptr inbounds float, ptr %8, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !53
  %200 = getelementptr inbounds float, ptr %13, i64 2
  store float %199, ptr %200, align 4, !tbaa !53
  %201 = add nsw i32 %191, -1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %202
  store float 0.000000e+00, ptr %203, align 4, !tbaa !53
  %204 = fmul float %196, %196
  %205 = call float @llvm.fmuladd.f32(float %194, float %194, float %204)
  %206 = call float @llvm.fmuladd.f32(float %199, float %199, float %205)
  %207 = fcmp ogt float %206, 0x38AA95A5C0000000
  br i1 %207, label %208, label %217

208:                                              ; preds = %193
  %209 = call float @sqrtf(float noundef %206) #13
  %210 = fdiv float 1.000000e+00, %209
  %211 = load float, ptr %8, align 4, !tbaa !53
  %212 = fmul float %211, %210
  store float %212, ptr %8, align 4, !tbaa !53
  %213 = load float, ptr %195, align 4, !tbaa !53
  %214 = fmul float %210, %213
  store float %214, ptr %195, align 4, !tbaa !53
  %215 = load float, ptr %198, align 4, !tbaa !53
  %216 = fmul float %210, %215
  br label %218

217:                                              ; preds = %193
  store float 0.000000e+00, ptr %8, align 4, !tbaa !53
  store float 0.000000e+00, ptr %195, align 4, !tbaa !53
  br label %218

218:                                              ; preds = %208, %217
  %219 = phi float [ 0.000000e+00, %217 ], [ %216, %208 ]
  store float %219, ptr %198, align 4, !tbaa !53
  %220 = load float, ptr %13, align 4, !tbaa !53
  %221 = load float, ptr %197, align 4, !tbaa !53
  %222 = fmul float %221, %221
  %223 = call float @llvm.fmuladd.f32(float %220, float %220, float %222)
  %224 = load float, ptr %200, align 4, !tbaa !53
  %225 = call float @llvm.fmuladd.f32(float %224, float %224, float %223)
  %226 = fcmp ogt float %225, 0x38AA95A5C0000000
  br i1 %226, label %227, label %236

227:                                              ; preds = %218
  %228 = call float @sqrtf(float noundef %225) #13
  %229 = fdiv float 1.000000e+00, %228
  %230 = load float, ptr %13, align 4, !tbaa !53
  %231 = fmul float %230, %229
  store float %231, ptr %13, align 4, !tbaa !53
  %232 = load float, ptr %197, align 4, !tbaa !53
  %233 = fmul float %229, %232
  store float %233, ptr %197, align 4, !tbaa !53
  %234 = load float, ptr %200, align 4, !tbaa !53
  %235 = fmul float %229, %234
  br label %237

236:                                              ; preds = %218
  store float 0.000000e+00, ptr %13, align 4, !tbaa !53
  store float 0.000000e+00, ptr %197, align 4, !tbaa !53
  br label %237

237:                                              ; preds = %227, %236
  %238 = phi float [ 0.000000e+00, %236 ], [ %235, %227 ]
  store float %238, ptr %200, align 4, !tbaa !53
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef nonnull %13) #13
  call void @mul_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  br label %239

239:                                              ; preds = %237, %189
  call void @copy_qt_qt(ptr noundef nonnull %11, ptr noundef nonnull %9) #13
  %240 = load float, ptr %2, align 4, !tbaa !53
  store float %240, ptr %12, align 4, !tbaa !53
  %241 = getelementptr inbounds float, ptr %2, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !53
  %243 = getelementptr inbounds float, ptr %12, i64 1
  store float %242, ptr %243, align 4, !tbaa !53
  %244 = getelementptr inbounds float, ptr %2, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !53
  %246 = getelementptr inbounds float, ptr %12, i64 2
  store float %245, ptr %246, align 4, !tbaa !53
  %247 = and i16 %3, -3
  %248 = icmp eq i16 %247, 0
  %249 = zext i1 %248 to i16
  call void @quat_apply_track(ptr noundef nonnull %11, i16 noundef signext %3, i16 noundef signext %249) #13
  call void @vec_apply_track(ptr noundef nonnull %12, i16 noundef signext %3) #13
  %250 = sext i16 %84 to i64
  %251 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %250
  store float 0.000000e+00, ptr %251, align 4, !tbaa !53
  %252 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %253 = load i32, ptr %252, align 4, !tbaa !115
  %254 = and i32 %253, 4096
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %239
  %257 = load float, ptr %10, align 4, !tbaa !53
  %258 = load float, ptr %12, align 4, !tbaa !53
  %259 = fmul float %257, %258
  store float %259, ptr %12, align 4, !tbaa !53
  %260 = load float, ptr %243, align 4, !tbaa !53
  %261 = fmul float %257, %260
  store float %261, ptr %243, align 4, !tbaa !53
  %262 = load float, ptr %246, align 4, !tbaa !53
  %263 = fmul float %257, %262
  store float %263, ptr %246, align 4, !tbaa !53
  br label %264

264:                                              ; preds = %256, %239
  %265 = call float @normalize_qt(ptr noundef nonnull %11) #13
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  %266 = load float, ptr %12, align 4, !tbaa !53
  %267 = load float, ptr %7, align 16, !tbaa !53
  %268 = fadd float %266, %267
  store float %268, ptr %2, align 4, !tbaa !53
  %269 = load float, ptr %243, align 4, !tbaa !53
  %270 = getelementptr inbounds float, ptr %7, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !53
  %272 = fadd float %269, %271
  store float %272, ptr %241, align 4, !tbaa !53
  %273 = load float, ptr %246, align 4, !tbaa !53
  %274 = getelementptr inbounds float, ptr %7, i64 2
  %275 = load float, ptr %274, align 8, !tbaa !53
  %276 = fadd float %273, %275
  store float %276, ptr %244, align 4, !tbaa !53
  %277 = icmp eq ptr %5, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %264
  call void @copy_qt_qt(ptr noundef nonnull %5, ptr noundef nonnull %11) #13
  br label %279

279:                                              ; preds = %278, %264
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %280

280:                                              ; preds = %82, %188, %22, %279
  %281 = phi i8 [ 1, %279 ], [ 0, %22 ], [ 0, %188 ], [ 0, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret i8 %281
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @curve_deform_vector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = alloca %struct.CurveDeform, align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !75
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @unit_m3(ptr noundef %5) #13
  br label %42

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %18 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  %19 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 3
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %19, ptr noundef nonnull %16, ptr noundef nonnull %20) #13
  %21 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 2
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %19) #13
  %23 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 4
  call void @copy_m3_m4(ptr noundef nonnull %23, ptr noundef nonnull %19) #13
  %24 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 5
  store i32 %6, ptr %24, align 4, !tbaa !113
  %25 = load float, ptr %3, align 4, !tbaa !53
  store float %25, ptr %8, align 4, !tbaa !53
  %26 = getelementptr inbounds float, ptr %3, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !53
  %28 = getelementptr inbounds float, ptr %8, i64 1
  store float %27, ptr %28, align 4, !tbaa !53
  %29 = getelementptr inbounds float, ptr %3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = getelementptr inbounds float, ptr %8, i64 2
  store float %30, ptr %31, align 4, !tbaa !53
  %32 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 1
  store float %25, ptr %32, align 4, !tbaa !53
  %33 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 1, i64 1
  store float %27, ptr %33, align 4, !tbaa !53
  %34 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 1, i64 2
  store float %30, ptr %34, align 4, !tbaa !53
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef %4) #13
  %35 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 57
  %36 = load i16, ptr %35, align 4, !tbaa !134
  %37 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef %4, i16 noundef signext %36, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !118
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #13
  call void @quat_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %9) #13
  call void @mul_m3_m3m3(ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #13
  br label %41

40:                                               ; preds = %15
  call void @unit_m3(ptr noundef %5) #13
  br label %41

41:                                               ; preds = %40, %39
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef %4) #13
  br label %42

42:                                               ; preds = %41, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #13
  ret void
}

declare void @unit_m3(ptr noundef) local_unnamed_addr #6

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @object_deform_mball(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !75
  %9 = icmp eq i16 %8, 22
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !136
  %13 = icmp eq i16 %12, 4
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %14, %45
  %18 = phi ptr [ %46, %45 ], [ %15, %14 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !135
  %20 = getelementptr inbounds %struct.DispList, ptr %18, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = getelementptr inbounds %struct.DispList, ptr %18, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !137
  %24 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !75
  %26 = icmp eq i16 %25, 22
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = tail call ptr @init_latt_deform(ptr noundef %19, ptr noundef %0)
  %29 = icmp sgt i32 %23, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = zext nneg i32 %23 to i64
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  %34 = getelementptr inbounds [3 x float], ptr %21, i64 %33
  tail call void @calc_latt_deform(ptr noundef %28, ptr noundef %34, float noundef 1.000000e+00)
  %35 = add nuw nsw i64 %33, 1
  %36 = icmp eq i64 %35, %31
  br i1 %36, label %37, label %32, !llvm.loop !76

37:                                               ; preds = %32, %27
  %38 = getelementptr inbounds %struct.LatticeDeformData, ptr %28, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !77
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %42(ptr noundef nonnull %39) #13
  br label %43

43:                                               ; preds = %41, %37
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %44(ptr noundef %28) #13
  br label %45

45:                                               ; preds = %17, %43
  %46 = load ptr, ptr %18, align 8, !tbaa !56
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %17, !llvm.loop !138

48:                                               ; preds = %45, %14, %2, %6, %10
  %49 = phi i8 [ 0, %10 ], [ 0, %6 ], [ 0, %2 ], [ 1, %14 ], [ 1, %45 ]
  ret i8 %49
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @outside_lattice(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !57
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %180, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !34
  %11 = icmp sgt i16 %10, 1
  %12 = add nsw i16 %10, -1
  %13 = sitofp i16 %12 to float
  %14 = fdiv float 1.000000e+00, %13
  %15 = select i1 %11, float %14, float 0.000000e+00
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !43
  %18 = icmp sgt i16 %17, 1
  %19 = add nsw i16 %17, -1
  %20 = sitofp i16 %19 to float
  %21 = fdiv float 1.000000e+00, %20
  %22 = select i1 %18, float %21, float 0.000000e+00
  %23 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !45
  %25 = icmp sgt i16 %24, 1
  %26 = add nsw i16 %24, -1
  %27 = sitofp i16 %26 to float
  %28 = fdiv float 1.000000e+00, %27
  %29 = select i1 %25, float %28, float 0.000000e+00
  %30 = icmp sgt i16 %24, 0
  br i1 %30, label %31, label %218

31:                                               ; preds = %6
  %32 = zext nneg i16 %24 to i32
  %33 = sext i16 %17 to i32
  %34 = icmp sgt i16 %17, 0
  %35 = sext i16 %10 to i32
  %36 = icmp sgt i16 %10, 0
  %37 = add nsw i32 %35, -1
  %38 = add nsw i32 %33, -1
  %39 = add nsw i32 %32, -1
  %40 = mul nsw i32 %33, %35
  %41 = mul nsw i32 %38, %35
  %42 = mul nsw i32 %39, %40
  %43 = zext i32 %37 to i64
  %44 = sext i16 %10 to i64
  %45 = sext i32 %37 to i64
  %46 = sext i32 %42 to i64
  %47 = zext i32 %38 to i64
  %48 = sext i32 %40 to i64
  %49 = sext i32 %41 to i64
  %50 = zext i32 %39 to i64
  %51 = zext nneg i16 %24 to i64
  %52 = zext nneg i32 %33 to i64
  %53 = getelementptr %struct.BPoint, ptr %8, i64 %45
  %54 = zext nneg i32 %35 to i64
  %55 = getelementptr %struct.BPoint, ptr %8, i64 %49
  %56 = getelementptr %struct.BPoint, ptr %8, i64 %46
  br label %57

57:                                               ; preds = %31, %176
  %58 = phi i64 [ 0, %31 ], [ %178, %176 ]
  %59 = phi ptr [ %8, %31 ], [ %177, %176 ]
  br i1 %34, label %60, label %176

60:                                               ; preds = %57
  %61 = icmp eq i64 %58, 0
  %62 = icmp eq i64 %58, %50
  %63 = mul nsw i64 %58, %48
  %64 = trunc i64 %58 to i32
  %65 = sitofp i32 %64 to float
  %66 = fmul float %29, %65
  %67 = fsub float 1.000000e+00, %66
  %68 = getelementptr %struct.BPoint, ptr %8, i64 %63
  %69 = getelementptr %struct.BPoint, ptr %55, i64 %63
  br label %70

70:                                               ; preds = %60, %172
  %71 = phi i64 [ 0, %60 ], [ %174, %172 ]
  %72 = phi ptr [ %59, %60 ], [ %173, %172 ]
  br i1 %36, label %73, label %172

73:                                               ; preds = %70
  %74 = icmp eq i64 %71, 0
  %75 = icmp eq i64 %71, %47
  %76 = mul nsw i64 %71, %44
  %77 = add nuw nsw i64 %76, %63
  %78 = getelementptr inbounds %struct.BPoint, ptr %8, i64 %77
  %79 = getelementptr %struct.BPoint, ptr %53, i64 %77
  %80 = getelementptr inbounds [4 x float], ptr %78, i64 0, i64 1
  %81 = getelementptr inbounds [4 x float], ptr %79, i64 0, i64 1
  %82 = getelementptr inbounds [4 x float], ptr %78, i64 0, i64 2
  %83 = getelementptr inbounds [4 x float], ptr %79, i64 0, i64 2
  %84 = trunc i64 %71 to i32
  %85 = sitofp i32 %84 to float
  %86 = fmul float %22, %85
  %87 = fsub float 1.000000e+00, %86
  %88 = getelementptr %struct.BPoint, ptr %8, i64 %76
  %89 = getelementptr %struct.BPoint, ptr %56, i64 %76
  br label %90

90:                                               ; preds = %73, %168
  %91 = phi i64 [ 0, %73 ], [ %169, %168 ]
  %92 = phi ptr [ %72, %73 ], [ %170, %168 ]
  %93 = icmp eq i64 %91, 0
  %94 = or i1 %74, %93
  %95 = or i1 %61, %94
  %96 = icmp eq i64 %91, %43
  %97 = select i1 %95, i1 true, i1 %96
  %98 = select i1 %97, i1 true, i1 %75
  %99 = select i1 %98, i1 true, i1 %62
  br i1 %99, label %168, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.BPoint, ptr %92, i64 0, i32 4
  store i16 1, ptr %101, align 2, !tbaa !49
  %102 = getelementptr inbounds %struct.BPoint, ptr %92, i64 0, i32 3
  %103 = load i16, ptr %102, align 4, !tbaa !47
  %104 = and i16 %103, -2
  store i16 %104, ptr %102, align 4, !tbaa !47
  %105 = trunc i64 %91 to i32
  %106 = sitofp i32 %105 to float
  %107 = fmul float %15, %106
  %108 = fsub float 1.000000e+00, %107
  %109 = load float, ptr %78, align 4, !tbaa !53
  %110 = load float, ptr %79, align 4, !tbaa !53
  %111 = fmul float %107, %110
  %112 = tail call float @llvm.fmuladd.f32(float %108, float %109, float %111)
  store float %112, ptr %92, align 4, !tbaa !53
  %113 = load float, ptr %80, align 4, !tbaa !53
  %114 = load float, ptr %81, align 4, !tbaa !53
  %115 = fmul float %107, %114
  %116 = tail call float @llvm.fmuladd.f32(float %108, float %113, float %115)
  %117 = getelementptr inbounds [4 x float], ptr %92, i64 0, i64 1
  store float %116, ptr %117, align 4, !tbaa !53
  %118 = load float, ptr %82, align 4, !tbaa !53
  %119 = load float, ptr %83, align 4, !tbaa !53
  %120 = fmul float %107, %119
  %121 = tail call float @llvm.fmuladd.f32(float %108, float %118, float %120)
  %122 = getelementptr inbounds [4 x float], ptr %92, i64 0, i64 2
  store float %121, ptr %122, align 4, !tbaa !53
  %123 = getelementptr %struct.BPoint, ptr %68, i64 %91
  %124 = getelementptr %struct.BPoint, ptr %69, i64 %91
  %125 = load float, ptr %123, align 4, !tbaa !53
  %126 = load float, ptr %124, align 4, !tbaa !53
  %127 = fmul float %86, %126
  %128 = tail call float @llvm.fmuladd.f32(float %87, float %125, float %127)
  %129 = fadd float %112, %128
  store float %129, ptr %92, align 4, !tbaa !53
  %130 = getelementptr inbounds [4 x float], ptr %123, i64 0, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !53
  %132 = getelementptr inbounds [4 x float], ptr %124, i64 0, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !53
  %134 = fmul float %86, %133
  %135 = tail call float @llvm.fmuladd.f32(float %87, float %131, float %134)
  %136 = fadd float %116, %135
  store float %136, ptr %117, align 4, !tbaa !53
  %137 = getelementptr inbounds [4 x float], ptr %123, i64 0, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !53
  %139 = getelementptr inbounds [4 x float], ptr %124, i64 0, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !53
  %141 = fmul float %86, %140
  %142 = tail call float @llvm.fmuladd.f32(float %87, float %138, float %141)
  %143 = fadd float %121, %142
  store float %143, ptr %122, align 4, !tbaa !53
  %144 = getelementptr %struct.BPoint, ptr %88, i64 %91
  %145 = getelementptr %struct.BPoint, ptr %89, i64 %91
  %146 = load float, ptr %144, align 4, !tbaa !53
  %147 = load float, ptr %145, align 4, !tbaa !53
  %148 = fmul float %66, %147
  %149 = tail call float @llvm.fmuladd.f32(float %67, float %146, float %148)
  %150 = fadd float %129, %149
  store float %150, ptr %92, align 4, !tbaa !53
  %151 = getelementptr inbounds [4 x float], ptr %144, i64 0, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !53
  %153 = getelementptr inbounds [4 x float], ptr %145, i64 0, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !53
  %155 = fmul float %66, %154
  %156 = tail call float @llvm.fmuladd.f32(float %67, float %152, float %155)
  %157 = fadd float %136, %156
  store float %157, ptr %117, align 4, !tbaa !53
  %158 = getelementptr inbounds [4 x float], ptr %144, i64 0, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !53
  %160 = getelementptr inbounds [4 x float], ptr %145, i64 0, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !53
  %162 = fmul float %66, %161
  %163 = tail call float @llvm.fmuladd.f32(float %67, float %159, float %162)
  %164 = fadd float %143, %163
  store float %164, ptr %122, align 4, !tbaa !53
  %165 = fmul float %150, 0x3FD5555560000000
  store float %165, ptr %92, align 4, !tbaa !53
  %166 = fmul float %157, 0x3FD5555560000000
  store float %166, ptr %117, align 4, !tbaa !53
  %167 = fmul float %164, 0x3FD5555560000000
  store float %167, ptr %122, align 4, !tbaa !53
  br label %168

168:                                              ; preds = %90, %100
  %169 = add nuw nsw i64 %91, 1
  %170 = getelementptr inbounds %struct.BPoint, ptr %92, i64 1
  %171 = icmp eq i64 %169, %54
  br i1 %171, label %172, label %90, !llvm.loop !139

172:                                              ; preds = %168, %70
  %173 = phi ptr [ %72, %70 ], [ %170, %168 ]
  %174 = add nuw nsw i64 %71, 1
  %175 = icmp eq i64 %174, %52
  br i1 %175, label %176, label %70, !llvm.loop !140

176:                                              ; preds = %172, %57
  %177 = phi ptr [ %59, %57 ], [ %173, %172 ]
  %178 = add nuw nsw i64 %58, 1
  %179 = icmp eq i64 %178, %51
  br i1 %179, label %218, label %57, !llvm.loop !141

180:                                              ; preds = %1
  %181 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %182 = load i16, ptr %181, align 4, !tbaa !45
  %183 = sext i16 %182 to i32
  %184 = icmp sgt i16 %182, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !43
  %190 = sext i16 %189 to i32
  %191 = icmp sgt i16 %189, 0
  %192 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  br label %193

193:                                              ; preds = %185, %214
  %194 = phi ptr [ %187, %185 ], [ %215, %214 ]
  %195 = phi i32 [ 0, %185 ], [ %216, %214 ]
  br i1 %191, label %196, label %214

196:                                              ; preds = %193
  %197 = load i16, ptr %192, align 8, !tbaa !34
  %198 = sext i16 %197 to i32
  %199 = icmp sgt i16 %197, 0
  br label %200

200:                                              ; preds = %196, %210
  %201 = phi ptr [ %194, %196 ], [ %211, %210 ]
  %202 = phi i32 [ 0, %196 ], [ %212, %210 ]
  br i1 %199, label %203, label %210

203:                                              ; preds = %200, %203
  %204 = phi ptr [ %208, %203 ], [ %201, %200 ]
  %205 = phi i32 [ %207, %203 ], [ 0, %200 ]
  %206 = getelementptr inbounds %struct.BPoint, ptr %204, i64 0, i32 4
  store i16 0, ptr %206, align 2, !tbaa !49
  %207 = add nuw nsw i32 %205, 1
  %208 = getelementptr inbounds %struct.BPoint, ptr %204, i64 1
  %209 = icmp eq i32 %207, %198
  br i1 %209, label %210, label %203, !llvm.loop !142

210:                                              ; preds = %203, %200
  %211 = phi ptr [ %201, %200 ], [ %208, %203 ]
  %212 = add nuw nsw i32 %202, 1
  %213 = icmp eq i32 %212, %190
  br i1 %213, label %214, label %200, !llvm.loop !143

214:                                              ; preds = %210, %193
  %215 = phi ptr [ %194, %193 ], [ %211, %210 ]
  %216 = add nuw nsw i32 %195, 1
  %217 = icmp eq i32 %216, %183
  br i1 %217, label %218, label %193, !llvm.loop !144

218:                                              ; preds = %176, %214, %6, %180
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_lattice_vertexcos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !94
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !43
  %17 = sext i16 %16 to i32
  %18 = mul nsw i32 %17, %14
  %19 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !45
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %18, %21
  store i32 %22, ptr %1, align 4, !tbaa !44
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %24 = sext i32 %22 to i64
  %25 = mul nsw i64 %24, 12
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.6) #13
  %27 = icmp sgt i32 %22, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = zext nneg i32 %22 to i64
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i64 [ 0, %28 ], [ %43, %32 ]
  %34 = getelementptr inbounds [3 x float], ptr %26, i64 %33
  %35 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %33
  %36 = load float, ptr %35, align 4, !tbaa !53
  store float %36, ptr %34, align 4, !tbaa !53
  %37 = getelementptr inbounds float, ptr %35, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !53
  %39 = getelementptr inbounds float, ptr %34, i64 1
  store float %38, ptr %39, align 4, !tbaa !53
  %40 = getelementptr inbounds float, ptr %35, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !53
  %42 = getelementptr inbounds float, ptr %34, i64 2
  store float %41, ptr %42, align 4, !tbaa !53
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp eq i64 %43, %31
  br i1 %44, label %45, label %32, !llvm.loop !145

45:                                               ; preds = %32, %10
  ret ptr %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_lattice_vertexcos_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !43
  %10 = sext i16 %9 to i32
  %11 = mul nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !45
  %14 = sext i16 %13 to i32
  %15 = mul nsw i32 %11, %14
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi i64 [ 0, %17 ], [ %32, %21 ]
  %23 = getelementptr inbounds %struct.BPoint, ptr %19, i64 %22
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 %22
  %25 = load float, ptr %24, align 4, !tbaa !53
  store float %25, ptr %23, align 4, !tbaa !53
  %26 = getelementptr inbounds float, ptr %24, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !53
  %28 = getelementptr inbounds float, ptr %23, i64 1
  store float %27, ptr %28, align 4, !tbaa !53
  %29 = getelementptr inbounds float, ptr %24, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = getelementptr inbounds float, ptr %23, i64 2
  store float %30, ptr %31, align 4, !tbaa !53
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, %20
  br i1 %33, label %34, label %21, !llvm.loop !146

34:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_modifiers_calc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.VirtualModifierData, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #13
  %6 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #13
  %7 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp ne ptr %8, null
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @BKE_displist_free(ptr noundef nonnull %11) #13
  br label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %16 = call ptr %15(i64 noundef 56, ptr noundef nonnull @.str.7) #13
  store ptr %16, ptr %10, align 8, !tbaa !70
  br label %17

17:                                               ; preds = %14, %13
  %18 = icmp eq ptr %6, null
  br i1 %18, label %100, label %19

19:                                               ; preds = %17, %95
  %20 = phi ptr [ %98, %95 ], [ %6, %17 ]
  %21 = phi ptr [ %97, %95 ], [ null, %17 ]
  %22 = phi i32 [ %96, %95 ], [ undef, %17 ]
  %23 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !147
  %25 = call ptr @modifierType_getInfo(i32 noundef %24) #13
  %26 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 7
  store ptr %0, ptr %26, align 8, !tbaa !149
  %27 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !150
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %95, label %31

31:                                               ; preds = %19
  %32 = and i32 %28, 4
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %9, %33
  br i1 %34, label %95, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %25, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !151
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call zeroext i8 %37(ptr noundef nonnull %20, i32 noundef 0) #13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %95

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %25, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !153
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %95

46:                                               ; preds = %42
  %47 = icmp eq ptr %21, null
  br i1 %47, label %48, label %90

48:                                               ; preds = %46
  %49 = load ptr, ptr %4, align 8, !tbaa !84
  %50 = getelementptr inbounds %struct.Lattice, ptr %49, i64 0, i32 26
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %51, align 8, !tbaa !94
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi ptr [ %54, %53 ], [ %49, %48 ]
  %57 = getelementptr inbounds %struct.Lattice, ptr %56, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !34
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds %struct.Lattice, ptr %56, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !43
  %62 = sext i16 %61 to i32
  %63 = mul nsw i32 %62, %59
  %64 = getelementptr inbounds %struct.Lattice, ptr %56, i64 0, i32 4
  %65 = load i16, ptr %64, align 4, !tbaa !45
  %66 = sext i16 %65 to i32
  %67 = mul nsw i32 %63, %66
  %68 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %69 = sext i32 %67 to i64
  %70 = mul nsw i64 %69, 12
  %71 = call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.6) #13
  %72 = icmp sgt i32 %67, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.Lattice, ptr %56, i64 0, i32 21
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = zext nneg i32 %67 to i64
  br label %77

77:                                               ; preds = %77, %73
  %78 = phi i64 [ 0, %73 ], [ %88, %77 ]
  %79 = getelementptr inbounds [3 x float], ptr %71, i64 %78
  %80 = getelementptr inbounds %struct.BPoint, ptr %75, i64 %78
  %81 = load float, ptr %80, align 4, !tbaa !53
  store float %81, ptr %79, align 4, !tbaa !53
  %82 = getelementptr inbounds float, ptr %80, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !53
  %84 = getelementptr inbounds float, ptr %79, i64 1
  store float %83, ptr %84, align 4, !tbaa !53
  %85 = getelementptr inbounds float, ptr %80, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !53
  %87 = getelementptr inbounds float, ptr %79, i64 2
  store float %86, ptr %87, align 4, !tbaa !53
  %88 = add nuw nsw i64 %78, 1
  %89 = icmp eq i64 %88, %76
  br i1 %89, label %90, label %77, !llvm.loop !145

90:                                               ; preds = %77, %55, %46
  %91 = phi i32 [ %22, %46 ], [ %67, %55 ], [ %67, %77 ]
  %92 = phi ptr [ %21, %46 ], [ %71, %55 ], [ %71, %77 ]
  %93 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %25, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !154
  call void %94(ptr noundef nonnull %20, ptr noundef %1, ptr noundef null, ptr noundef %92, i32 noundef %91, i32 noundef 0) #13
  br label %95

95:                                               ; preds = %42, %39, %31, %19, %90
  %96 = phi i32 [ %22, %19 ], [ %22, %31 ], [ %91, %90 ], [ %22, %42 ], [ %22, %39 ]
  %97 = phi ptr [ %21, %19 ], [ %21, %31 ], [ %92, %90 ], [ %21, %42 ], [ %21, %39 ]
  %98 = load ptr, ptr %20, align 8, !tbaa !155
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %19, !llvm.loop !156

100:                                              ; preds = %95, %17
  %101 = phi i32 [ undef, %17 ], [ %96, %95 ]
  %102 = phi ptr [ null, %17 ], [ %97, %95 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %146

104:                                              ; preds = %100
  %105 = load ptr, ptr %4, align 8, !tbaa !84
  %106 = getelementptr inbounds %struct.Lattice, ptr %105, i64 0, i32 26
  %107 = load ptr, ptr %106, align 8, !tbaa !93
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr %107, align 8, !tbaa !94
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi ptr [ %110, %109 ], [ %105, %104 ]
  %113 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 2
  %114 = load i16, ptr %113, align 8, !tbaa !34
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 3
  %117 = load i16, ptr %116, align 2, !tbaa !43
  %118 = sext i16 %117 to i32
  %119 = mul nsw i32 %118, %115
  %120 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 4
  %121 = load i16, ptr %120, align 4, !tbaa !45
  %122 = sext i16 %121 to i32
  %123 = mul nsw i32 %119, %122
  %124 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %125 = sext i32 %123 to i64
  %126 = mul nsw i64 %125, 12
  %127 = call ptr %124(i64 noundef %126, ptr noundef nonnull @.str.6) #13
  %128 = icmp sgt i32 %123, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %111
  %130 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 21
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = zext nneg i32 %123 to i64
  br label %133

133:                                              ; preds = %133, %129
  %134 = phi i64 [ 0, %129 ], [ %144, %133 ]
  %135 = getelementptr inbounds [3 x float], ptr %127, i64 %134
  %136 = getelementptr inbounds %struct.BPoint, ptr %131, i64 %134
  %137 = load float, ptr %136, align 4, !tbaa !53
  store float %137, ptr %135, align 4, !tbaa !53
  %138 = getelementptr inbounds float, ptr %136, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !53
  %140 = getelementptr inbounds float, ptr %135, i64 1
  store float %139, ptr %140, align 4, !tbaa !53
  %141 = getelementptr inbounds float, ptr %136, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !53
  %143 = getelementptr inbounds float, ptr %135, i64 2
  store float %142, ptr %143, align 4, !tbaa !53
  %144 = add nuw nsw i64 %134, 1
  %145 = icmp eq i64 %144, %132
  br i1 %145, label %146, label %133, !llvm.loop !145

146:                                              ; preds = %133, %111, %100
  %147 = phi i32 [ %101, %100 ], [ %123, %111 ], [ %123, %133 ]
  %148 = phi ptr [ %102, %100 ], [ %127, %111 ], [ %127, %133 ]
  %149 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %150 = call ptr %149(i64 noundef 72, ptr noundef nonnull @.str.8) #13
  %151 = getelementptr inbounds %struct.DispList, ptr %150, i64 0, i32 2
  store i16 7, ptr %151, align 8, !tbaa !157
  %152 = getelementptr inbounds %struct.DispList, ptr %150, i64 0, i32 4
  store i32 1, ptr %152, align 4, !tbaa !158
  %153 = getelementptr inbounds %struct.DispList, ptr %150, i64 0, i32 5
  store i32 %147, ptr %153, align 8, !tbaa !137
  %154 = getelementptr inbounds %struct.DispList, ptr %150, i64 0, i32 8
  store ptr %148, ptr %154, align 8, !tbaa !104
  %155 = load ptr, ptr %10, align 8, !tbaa !70
  call void @BLI_addtail(ptr noundef %155, ptr noundef %150) #13
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #13
  ret void
}

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_lattice_active_point_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !94
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 14
  %10 = load i32, ptr %9, align 4, !tbaa !79
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !34
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !43
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, %15
  %20 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !45
  %22 = sext i16 %21 to i32
  %23 = mul nsw i32 %19, %22
  %24 = icmp slt i32 %10, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = sext i32 %10 to i64
  %29 = getelementptr inbounds %struct.BPoint, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %7, %12, %25
  %31 = phi ptr [ %29, %25 ], [ null, %12 ], [ null, %7 ]
  ret ptr %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_lattice_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !94
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !43
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, %12
  %17 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 4
  %18 = load i16, ptr %17, align 4, !tbaa !45
  %19 = sext i16 %18 to i32
  %20 = mul nsw i32 %16, %19
  store float 0.000000e+00, ptr %1, align 4, !tbaa !53
  %21 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %21, align 4, !tbaa !53
  %22 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %22, align 4, !tbaa !53
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load float, ptr %1, align 4, !tbaa !53
  %28 = load float, ptr %21, align 4, !tbaa !53
  %29 = load float, ptr %22, align 4, !tbaa !53
  %30 = zext nneg i32 %20 to i64
  br label %31

31:                                               ; preds = %24, %31
  %32 = phi i64 [ 0, %24 ], [ %45, %31 ]
  %33 = phi float [ %29, %24 ], [ %44, %31 ]
  %34 = phi float [ %28, %24 ], [ %41, %31 ]
  %35 = phi float [ %27, %24 ], [ %38, %31 ]
  %36 = getelementptr inbounds %struct.BPoint, ptr %26, i64 %32
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = fadd float %37, %35
  store float %38, ptr %1, align 4, !tbaa !53
  %39 = getelementptr inbounds float, ptr %36, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fadd float %40, %34
  store float %41, ptr %21, align 4, !tbaa !53
  %42 = getelementptr inbounds float, ptr %36, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fadd float %43, %33
  store float %44, ptr %22, align 4, !tbaa !53
  %45 = add nuw nsw i64 %32, 1
  %46 = icmp eq i64 %45, %30
  br i1 %46, label %47, label %31, !llvm.loop !159

47:                                               ; preds = %31, %8
  %48 = sitofp i32 %20 to float
  %49 = fdiv float 1.000000e+00, %48
  %50 = load float, ptr %1, align 4, !tbaa !53
  %51 = fmul float %49, %50
  store float %51, ptr %1, align 4, !tbaa !53
  %52 = load float, ptr %21, align 4, !tbaa !53
  %53 = fmul float %49, %52
  store float %53, ptr %21, align 4, !tbaa !53
  %54 = load float, ptr %22, align 4, !tbaa !53
  %55 = fmul float %49, %54
  store float %55, ptr %22, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !34
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !43
  %16 = sext i16 %15 to i32
  %17 = mul nsw i32 %16, %13
  %18 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 4
  %19 = load i16, ptr %18, align 4, !tbaa !45
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %17, %20
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 21
  %25 = zext nneg i32 %21 to i64
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %24, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.BPoint, ptr %28, i64 %27
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %29) #13
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %25
  br i1 %31, label %32, label %26, !llvm.loop !160

32:                                               ; preds = %26, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !53
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !53
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !53
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !53
  %9 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %10, align 8, !tbaa !94
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %0, %2 ]
  %16 = getelementptr inbounds %struct.Lattice, ptr %15, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !34
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.Lattice, ptr %15, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !43
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %21, %18
  %23 = getelementptr inbounds %struct.Lattice, ptr %15, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !45
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %22, %25
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.Lattice, ptr %15, i64 0, i32 21
  %30 = zext nneg i32 %26 to i64
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ 0, %28 ], [ %35, %31 ]
  %33 = load ptr, ptr %29, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.BPoint, ptr %33, i64 %32
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %34) #13
  %35 = add nuw nsw i64 %32, 1
  %36 = icmp eq i64 %35, %30
  br i1 %36, label %37, label %31, !llvm.loop !160

37:                                               ; preds = %31, %14
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret void
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lattice_transform(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !43
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, %6
  %11 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !45
  %13 = sext i16 %12 to i32
  %14 = mul nsw i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i32 [ %22, %19 ], [ %14, %16 ]
  %21 = phi ptr [ %23, %19 ], [ %18, %16 ]
  %22 = add nsw i32 %20, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %21) #13
  %23 = getelementptr inbounds %struct.BPoint, ptr %21, i64 1
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %19, !llvm.loop !161

25:                                               ; preds = %19, %3
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Key, ptr %29, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %38

35:                                               ; preds = %46, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !56
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38, !llvm.loop !162

38:                                               ; preds = %31, %35
  %39 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %40 = getelementptr inbounds %struct.KeyBlock, ptr %39, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !163
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %35, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.KeyBlock, ptr %39, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !165
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %50, %46 ], [ %45, %43 ]
  %48 = phi i32 [ %49, %46 ], [ %41, %43 ]
  %49 = add nsw i32 %48, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %47) #13
  %50 = getelementptr inbounds float, ptr %47, i64 3
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %35, label %46, !llvm.loop !166

52:                                               ; preds = %35, %31, %27, %25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_lattice_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !43
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, %6
  %11 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !45
  %13 = sext i16 %12 to i32
  %14 = mul i32 %10, %13
  %15 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp ne ptr %16, null
  %18 = icmp sgt i32 %14, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = zext i32 %14 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ 0, %20 ], [ %38, %24 ]
  %26 = getelementptr inbounds %struct.BPoint, ptr %16, i64 %25
  %27 = load float, ptr %1, align 4, !tbaa !53
  %28 = load float, ptr %26, align 4, !tbaa !53
  %29 = fadd float %27, %28
  store float %29, ptr %26, align 4, !tbaa !53
  %30 = load float, ptr %21, align 4, !tbaa !53
  %31 = getelementptr inbounds float, ptr %26, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !53
  %33 = fadd float %30, %32
  store float %33, ptr %31, align 4, !tbaa !53
  %34 = load float, ptr %22, align 4, !tbaa !53
  %35 = getelementptr inbounds float, ptr %26, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = fadd float %34, %36
  store float %37, ptr %35, align 4, !tbaa !53
  %38 = add nuw nsw i64 %25, 1
  %39 = icmp eq i64 %38, %23
  br i1 %39, label %40, label %24, !llvm.loop !167

40:                                               ; preds = %24, %3
  %41 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = icmp ne ptr %42, null
  %44 = icmp sgt i32 %14, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %69

46:                                               ; preds = %40
  %47 = load ptr, ptr %42, align 8, !tbaa !94
  %48 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 21
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds float, ptr %1, i64 1
  %51 = getelementptr inbounds float, ptr %1, i64 2
  %52 = zext i32 %14 to i64
  br label %53

53:                                               ; preds = %46, %53
  %54 = phi i64 [ 0, %46 ], [ %67, %53 ]
  %55 = getelementptr inbounds %struct.BPoint, ptr %49, i64 %54
  %56 = load float, ptr %1, align 4, !tbaa !53
  %57 = load float, ptr %55, align 4, !tbaa !53
  %58 = fadd float %56, %57
  store float %58, ptr %55, align 4, !tbaa !53
  %59 = load float, ptr %50, align 4, !tbaa !53
  %60 = getelementptr inbounds float, ptr %55, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !53
  %62 = fadd float %59, %61
  store float %62, ptr %60, align 4, !tbaa !53
  %63 = load float, ptr %51, align 4, !tbaa !53
  %64 = getelementptr inbounds float, ptr %55, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = fadd float %63, %65
  store float %66, ptr %64, align 4, !tbaa !53
  %67 = add nuw nsw i64 %54, 1
  %68 = icmp eq i64 %67, %52
  br i1 %68, label %69, label %53, !llvm.loop !168

69:                                               ; preds = %53, %40
  %70 = icmp eq i8 %2, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = icmp eq ptr %73, null
  br i1 %74, label %110, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Key, ptr %73, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !56
  %78 = icmp eq ptr %77, null
  br i1 %78, label %110, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds float, ptr %1, i64 1
  %81 = getelementptr inbounds float, ptr %1, i64 2
  br label %85

82:                                               ; preds = %93, %85
  %83 = load ptr, ptr %86, align 8, !tbaa !56
  %84 = icmp eq ptr %83, null
  br i1 %84, label %110, label %85, !llvm.loop !169

85:                                               ; preds = %79, %82
  %86 = phi ptr [ %77, %79 ], [ %83, %82 ]
  %87 = getelementptr inbounds %struct.KeyBlock, ptr %86, i64 0, i32 8
  %88 = load i32, ptr %87, align 8, !tbaa !163
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %82, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.KeyBlock, ptr %86, i64 0, i32 10
  %92 = load ptr, ptr %91, align 8, !tbaa !165
  br label %93

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %108, %93 ], [ %92, %90 ]
  %95 = phi i32 [ %96, %93 ], [ %88, %90 ]
  %96 = add nsw i32 %95, -1
  %97 = load float, ptr %1, align 4, !tbaa !53
  %98 = load float, ptr %94, align 4, !tbaa !53
  %99 = fadd float %97, %98
  store float %99, ptr %94, align 4, !tbaa !53
  %100 = load float, ptr %80, align 4, !tbaa !53
  %101 = getelementptr inbounds float, ptr %94, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !53
  %103 = fadd float %100, %102
  store float %103, ptr %101, align 4, !tbaa !53
  %104 = load float, ptr %81, align 4, !tbaa !53
  %105 = getelementptr inbounds float, ptr %94, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !53
  %107 = fadd float %104, %106
  store float %107, ptr %105, align 4, !tbaa !53
  %108 = getelementptr inbounds float, ptr %94, i64 3
  %109 = icmp eq i32 %96, 0
  br i1 %109, label %82, label %93, !llvm.loop !170

110:                                              ; preds = %82, %75, %71, %69
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @quat_apply_track(ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #6

declare void @vec_apply_track(ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare float @normalize_qt(ptr noundef) local_unnamed_addr #6

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!34 = !{!35, !40, i64 128}
!35 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !40, i64 130}
!44 = !{!41, !41, i64 0}
!45 = !{!35, !40, i64 132}
!46 = !{!35, !37, i64 176}
!47 = !{!48, !40, i64 24}
!48 = !{!"BPoint", !38, i64 0, !42, i64 16, !42, i64 20, !40, i64 24, !40, i64 26, !42, i64 28, !42, i64 32}
!49 = !{!48, !40, i64 26}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!42, !42, i64 0}
!54 = !{!35, !37, i64 200}
!55 = distinct !{!55, !51, !52}
!56 = !{!37, !37, i64 0}
!57 = !{!35, !40, i64 134}
!58 = !{!35, !42, i64 152}
!59 = !{!35, !42, i64 164}
!60 = !{!35, !42, i64 156}
!61 = !{!35, !42, i64 168}
!62 = !{!35, !42, i64 160}
!63 = !{!35, !42, i64 172}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51, !52}
!66 = distinct !{!66, !51, !52}
!67 = !{!35, !38, i64 144}
!68 = !{!35, !38, i64 145}
!69 = !{!35, !38, i64 146}
!70 = !{!71, !37, i64 1280}
!71 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !72, i64 312, !37, i64 360, !73, i64 368, !73, i64 384, !73, i64 400, !73, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !73, i64 1056, !73, i64 1072, !73, i64 1088, !73, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !73, i64 1176, !73, i64 1192, !73, i64 1208, !73, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !74, i64 1304, !74, i64 1312, !41, i64 1320, !41, i64 1324, !73, i64 1328, !73, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !73, i64 1400, !37, i64 1416}
!72 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!73 = !{!"ListBase", !37, i64 0, !37, i64 8}
!74 = !{!"long", !38, i64 0}
!75 = !{!71, !40, i64 136}
!76 = distinct !{!76, !51, !52}
!77 = !{!78, !37, i64 8}
!78 = !{!"LatticeDeformData", !37, i64 0, !37, i64 8, !38, i64 16}
!79 = !{!35, !41, i64 148}
!80 = distinct !{!80, !51, !52}
!81 = !{!82, !37, i64 1320}
!82 = !{!"DerivedMesh", !83, i64 0, !83, i64 200, !83, i64 400, !83, i64 600, !83, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!83 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!84 = !{!71, !37, i64 296}
!85 = !{!86, !37, i64 248}
!86 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !83, i64 280, !83, i64 480, !83, i64 680, !83, i64 880, !83, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !42, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!87 = !{!38, !38, i64 0}
!88 = !{!82, !37, i64 1288}
!89 = distinct !{!89, !51, !52}
!90 = !{!35, !37, i64 192}
!91 = !{!92, !37, i64 200}
!92 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !73, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !41, i64 220}
!93 = !{!35, !37, i64 272}
!94 = !{!95, !37, i64 0}
!95 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!96 = !{!35, !37, i64 120}
!97 = !{!98, !37, i64 0}
!98 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !73, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!99 = !{!35, !37, i64 24}
!100 = !{!35, !41, i64 100}
!101 = !{!71, !37, i64 24}
!102 = distinct !{!102, !51, !52}
!103 = distinct !{!103, !51, !52}
!104 = !{!105, !37, i64 32}
!105 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!106 = distinct !{!106, !51, !52}
!107 = distinct !{!107, !51, !52}
!108 = distinct !{!108, !51, !52}
!109 = !{!78, !37, i64 0}
!110 = distinct !{!110, !51, !52}
!111 = distinct !{!111, !51, !52}
!112 = distinct !{!112, !51, !52}
!113 = !{!114, !41, i64 188}
!114 = !{!"", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 88, !38, i64 152, !41, i64 188}
!115 = !{!116, !41, i64 268}
!116 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !73, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !42, i64 252, !42, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !117, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!117 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!118 = !{i8 0, i8 2}
!119 = distinct !{!119, !51, !52}
!120 = distinct !{!120, !51, !52}
!121 = distinct !{!121, !51, !52}
!122 = distinct !{!122, !51, !52}
!123 = distinct !{!123, !51, !52}
!124 = distinct !{!124, !51, !52}
!125 = !{!126, !37, i64 48}
!126 = !{!"CurveCache", !73, i64 0, !73, i64 16, !73, i64 32, !37, i64 48}
!127 = !{!128, !42, i64 12}
!128 = !{!"Path", !37, i64 0, !41, i64 8, !42, i64 12}
!129 = !{!126, !37, i64 16}
!130 = !{!128, !37, i64 0}
!131 = !{!128, !41, i64 8}
!132 = !{!133, !42, i64 32}
!133 = !{!"PathPoint", !38, i64 0, !38, i64 16, !42, i64 32, !42, i64 36}
!134 = !{!71, !40, i64 956}
!135 = !{!71, !37, i64 216}
!136 = !{!71, !40, i64 138}
!137 = !{!105, !41, i64 24}
!138 = distinct !{!138, !51, !52}
!139 = distinct !{!139, !51, !52}
!140 = distinct !{!140, !51, !52}
!141 = distinct !{!141, !51, !52}
!142 = distinct !{!142, !51, !52}
!143 = distinct !{!143, !51, !52}
!144 = distinct !{!144, !51, !52}
!145 = distinct !{!145, !51, !52}
!146 = distinct !{!146, !51, !52}
!147 = !{!148, !41, i64 16}
!148 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!149 = !{!148, !37, i64 96}
!150 = !{!148, !41, i64 20}
!151 = !{!152, !37, i64 160}
!152 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!153 = !{!152, !41, i64 68}
!154 = !{!152, !37, i64 88}
!155 = !{!148, !37, i64 0}
!156 = distinct !{!156, !51, !52}
!157 = !{!105, !40, i64 16}
!158 = !{!105, !41, i64 20}
!159 = distinct !{!159, !51, !52}
!160 = distinct !{!160, !51, !52}
!161 = distinct !{!161, !51, !52}
!162 = distinct !{!162, !51, !52}
!163 = !{!164, !41, i64 32}
!164 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !42, i64 176, !42, i64 180}
!165 = !{!164, !37, i64 40}
!166 = distinct !{!166, !51, !52}
!167 = distinct !{!167, !51, !52}
!168 = distinct !{!168, !51, !52}
!169 = distinct !{!169, !51, !52}
!170 = distinct !{!170, !51, !52}
