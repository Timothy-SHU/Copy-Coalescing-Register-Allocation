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
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.LatticeDeformData = type { ptr, ptr, [4 x [4 x float]] }
%struct.CurveDeform = type { [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Path = type { ptr, i32, float }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }
%struct.PathPoint = type { [4 x float], [4 x float], float, float }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BKE_lattice_index_flip(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @BKE_lattice_index_to_uvw(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !34
  %13 = sext i16 %12 to i32
  %14 = load i32, ptr %6, align 4, !tbaa !44
  %15 = xor i32 %14, -1
  %16 = add i32 %15, %13
  store i32 %16, ptr %6, align 4, !tbaa !44
  br label %17

17:                                               ; preds = %10, %5
  %18 = icmp eq i8 %3, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !43
  %22 = sext i16 %21 to i32
  %23 = load i32, ptr %7, align 4, !tbaa !44
  %24 = xor i32 %23, -1
  %25 = add i32 %24, %22
  store i32 %25, ptr %7, align 4, !tbaa !44
  br label %26

26:                                               ; preds = %19, %17
  %27 = icmp eq i8 %4, 0
  %28 = load i32, ptr %8, align 4, !tbaa !44
  br i1 %27, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %31 = load i16, ptr %30, align 4, !tbaa !45
  %32 = sext i16 %31 to i32
  %33 = xor i32 %28, -1
  %34 = add i32 %33, %32
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i32 [ %34, %29 ], [ %28, %26 ]
  %37 = load i32, ptr %6, align 4, !tbaa !44
  %38 = load i32, ptr %7, align 4, !tbaa !44
  %39 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %0, i32 noundef %37, i32 noundef %38, i32 noundef %36) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @calc_lat_fudu(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !52
  br label %18

7:                                                ; preds = %4
  %8 = and i32 %0, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = add nsw i32 %1, -1
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, -5.000000e-01
  store float %13, ptr %2, align 4, !tbaa !52
  br label %18

14:                                               ; preds = %7
  store float -1.000000e+00, ptr %2, align 4, !tbaa !52
  %15 = add nsw i32 %1, -1
  %16 = sitofp i32 %15 to float
  %17 = fdiv float 2.000000e+00, %16
  br label %18

18:                                               ; preds = %10, %14, %6
  %19 = phi float [ 1.000000e+00, %10 ], [ %17, %14 ], [ 0.000000e+00, %6 ]
  store float %19, ptr %3, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lattice_resize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store float 0.000000e+00, ptr %9, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store float 0.000000e+00, ptr %10, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store float 0.000000e+00, ptr %11, align 4, !tbaa !52
  %13 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !34
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !43
  %22 = sext i16 %21 to i32
  %23 = mul nsw i32 %22, %19
  %24 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !45
  %26 = sext i16 %25 to i32
  %27 = mul nsw i32 %23, %26
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %14, i32 noundef %27) #16
  store ptr null, ptr %13, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %16, %5
  %29 = mul i32 %2, %3
  %30 = mul i32 %29, %1
  %31 = icmp sgt i32 %30, 32000
  br i1 %31, label %32, label %56

32:                                               ; preds = %28, %49
  %33 = phi i32 [ %52, %49 ], [ %1, %28 ]
  %34 = phi i32 [ %51, %49 ], [ %2, %28 ]
  %35 = phi i32 [ %50, %49 ], [ %3, %28 ]
  %36 = icmp slt i32 %33, %34
  %37 = icmp slt i32 %33, %35
  %38 = or i1 %36, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = add nsw i32 %33, -1
  br label %49

41:                                               ; preds = %32
  %42 = icmp slt i32 %34, %33
  %43 = icmp slt i32 %34, %35
  %44 = or i1 %43, %42
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = add nsw i32 %34, -1
  br label %49

47:                                               ; preds = %41
  %48 = add nsw i32 %35, -1
  br label %49

49:                                               ; preds = %45, %47, %39
  %50 = phi i32 [ %35, %39 ], [ %35, %45 ], [ %48, %47 ]
  %51 = phi i32 [ %34, %39 ], [ %46, %45 ], [ %34, %47 ]
  %52 = phi i32 [ %40, %39 ], [ %33, %45 ], [ %33, %47 ]
  %53 = mul i32 %51, %50
  %54 = mul i32 %53, %52
  %55 = icmp sgt i32 %54, 32000
  br i1 %55, label %32, label %56, !llvm.loop !54

56:                                               ; preds = %49, %28
  %57 = phi i32 [ %3, %28 ], [ %50, %49 ]
  %58 = phi i32 [ %2, %28 ], [ %51, %49 ]
  %59 = phi i32 [ %1, %28 ], [ %52, %49 ]
  %60 = phi i32 [ %30, %28 ], [ %54, %49 ]
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %62 = sext i32 %59 to i64
  %63 = sext i32 %58 to i64
  %64 = sext i32 %57 to i64
  %65 = mul nsw i64 %64, 12
  %66 = mul i64 %65, %63
  %67 = mul i64 %66, %62
  %68 = tail call ptr %61(i64 noundef %67, ptr noundef nonnull @.str) #16
  %69 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %70 = load i16, ptr %69, align 2, !tbaa !56
  %71 = sext i16 %70 to i32
  call void @calc_lat_fudu(i32 noundef %71, i32 noundef %59, ptr noundef nonnull %6, ptr noundef nonnull %9) #15
  call void @calc_lat_fudu(i32 noundef %71, i32 noundef %58, ptr noundef nonnull %7, ptr noundef nonnull %10) #15
  call void @calc_lat_fudu(i32 noundef %71, i32 noundef %57, ptr noundef nonnull %8, ptr noundef nonnull %11) #15
  %72 = icmp eq ptr %4, null
  br i1 %72, label %127, label %73

73:                                               ; preds = %56
  %74 = icmp eq i32 %59, 1
  br i1 %74, label %91, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %77 = load i16, ptr %76, align 8, !tbaa !34
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 15
  %81 = load float, ptr %80, align 8, !tbaa !57
  store float %81, ptr %6, align 4, !tbaa !52
  %82 = sext i16 %77 to i32
  %83 = add nsw i32 %82, -1
  %84 = sitofp i32 %83 to float
  %85 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 18
  %86 = load float, ptr %85, align 4, !tbaa !58
  %87 = fmul float %86, %84
  %88 = add nsw i32 %59, -1
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %87, %89
  store float %90, ptr %9, align 4, !tbaa !52
  br label %91

91:                                               ; preds = %79, %75, %73
  %92 = icmp eq i32 %58, 1
  br i1 %92, label %109, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !43
  %96 = icmp eq i16 %95, 1
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 16
  %99 = load float, ptr %98, align 4, !tbaa !59
  store float %99, ptr %7, align 4, !tbaa !52
  %100 = sext i16 %95 to i32
  %101 = add nsw i32 %100, -1
  %102 = sitofp i32 %101 to float
  %103 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 19
  %104 = load float, ptr %103, align 8, !tbaa !60
  %105 = fmul float %104, %102
  %106 = add nsw i32 %58, -1
  %107 = sitofp i32 %106 to float
  %108 = fdiv float %105, %107
  store float %108, ptr %10, align 4, !tbaa !52
  br label %109

109:                                              ; preds = %97, %93, %91
  %110 = icmp eq i32 %57, 1
  br i1 %110, label %129, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %113 = load i16, ptr %112, align 4, !tbaa !45
  %114 = icmp eq i16 %113, 1
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 17
  %117 = load float, ptr %116, align 8, !tbaa !61
  store float %117, ptr %8, align 4, !tbaa !52
  %118 = sext i16 %113 to i32
  %119 = add nsw i32 %118, -1
  %120 = sitofp i32 %119 to float
  %121 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 20
  %122 = load float, ptr %121, align 4, !tbaa !62
  %123 = fmul float %122, %120
  %124 = add nsw i32 %57, -1
  %125 = sitofp i32 %124 to float
  %126 = fdiv float %123, %125
  store float %126, ptr %11, align 4, !tbaa !52
  br label %127

127:                                              ; preds = %111, %115, %56
  %128 = icmp sgt i32 %57, 0
  br i1 %128, label %129, label %168

129:                                              ; preds = %109, %127
  %130 = load float, ptr %8, align 4, !tbaa !52
  %131 = icmp sgt i32 %58, 0
  %132 = icmp sgt i32 %59, 0
  br label %133

133:                                              ; preds = %129, %162
  %134 = phi ptr [ %68, %129 ], [ %163, %162 ]
  %135 = phi float [ %130, %129 ], [ %166, %162 ]
  %136 = phi i32 [ 0, %129 ], [ %164, %162 ]
  br i1 %131, label %137, label %162

137:                                              ; preds = %133
  %138 = load float, ptr %7, align 4, !tbaa !52
  br label %139

139:                                              ; preds = %137, %156
  %140 = phi ptr [ %157, %156 ], [ %134, %137 ]
  %141 = phi float [ %160, %156 ], [ %138, %137 ]
  %142 = phi i32 [ %158, %156 ], [ 0, %137 ]
  br i1 %132, label %143, label %156

143:                                              ; preds = %139
  %144 = load float, ptr %6, align 4, !tbaa !52
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %152, %145 ], [ %140, %143 ]
  %147 = phi float [ %154, %145 ], [ %144, %143 ]
  %148 = phi i32 [ %151, %145 ], [ 0, %143 ]
  store float %147, ptr %146, align 4, !tbaa !52
  %149 = getelementptr inbounds float, ptr %146, i64 1
  store float %141, ptr %149, align 4, !tbaa !52
  %150 = getelementptr inbounds float, ptr %146, i64 2
  store float %135, ptr %150, align 4, !tbaa !52
  %151 = add nuw nsw i32 %148, 1
  %152 = getelementptr inbounds float, ptr %146, i64 3
  %153 = load float, ptr %9, align 4, !tbaa !52
  %154 = fadd float %147, %153
  %155 = icmp eq i32 %151, %59
  br i1 %155, label %156, label %145, !llvm.loop !63

156:                                              ; preds = %145, %139
  %157 = phi ptr [ %140, %139 ], [ %152, %145 ]
  %158 = add nuw nsw i32 %142, 1
  %159 = load float, ptr %10, align 4, !tbaa !52
  %160 = fadd float %141, %159
  %161 = icmp eq i32 %158, %58
  br i1 %161, label %162, label %139, !llvm.loop !64

162:                                              ; preds = %156, %133
  %163 = phi ptr [ %134, %133 ], [ %157, %156 ]
  %164 = add nuw nsw i32 %136, 1
  %165 = load float, ptr %11, align 4, !tbaa !52
  %166 = fadd float %135, %165
  %167 = icmp eq i32 %164, %57
  br i1 %167, label %168, label %133, !llvm.loop !65

168:                                              ; preds = %162, %127
  br i1 %72, label %179, label %169

169:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #14
  %170 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 10
  %171 = load i8, ptr %170, align 8, !tbaa !66
  %172 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 11
  %173 = load i8, ptr %172, align 1, !tbaa !67
  %174 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 12
  %175 = load i8, ptr %174, align 2, !tbaa !68
  store i8 0, ptr %174, align 2, !tbaa !68
  store i8 0, ptr %172, align 1, !tbaa !67
  store i8 0, ptr %170, align 8, !tbaa !66
  %176 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 118
  %177 = load ptr, ptr %176, align 8, !tbaa !69
  tail call void @BKE_displist_free(ptr noundef %177) #16
  %178 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %178) #16
  call void @unit_m4(ptr noundef nonnull %178) #16
  call void @lattice_deform_verts(ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %68, i32 noundef %60, ptr noundef null, float noundef 1.000000e+00) #15
  call void @copy_m4_m4(ptr noundef nonnull %178, ptr noundef nonnull %12) #16
  store i8 %171, ptr %170, align 8, !tbaa !66
  store i8 %173, ptr %172, align 1, !tbaa !67
  store i8 %175, ptr %174, align 2, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #14
  br label %179

179:                                              ; preds = %169, %168
  %180 = load float, ptr %6, align 4, !tbaa !52
  %181 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 15
  store float %180, ptr %181, align 8, !tbaa !57
  %182 = load float, ptr %7, align 4, !tbaa !52
  %183 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 16
  store float %182, ptr %183, align 4, !tbaa !59
  %184 = load float, ptr %8, align 4, !tbaa !52
  %185 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 17
  store float %184, ptr %185, align 8, !tbaa !61
  %186 = load float, ptr %9, align 4, !tbaa !52
  %187 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 18
  store float %186, ptr %187, align 4, !tbaa !58
  %188 = load float, ptr %10, align 4, !tbaa !52
  %189 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 19
  store float %188, ptr %189, align 8, !tbaa !60
  %190 = load float, ptr %11, align 4, !tbaa !52
  %191 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 20
  store float %190, ptr %191, align 4, !tbaa !62
  %192 = trunc i32 %59 to i16
  %193 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  store i16 %192, ptr %193, align 8, !tbaa !34
  %194 = trunc i32 %58 to i16
  %195 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  store i16 %194, ptr %195, align 2, !tbaa !43
  %196 = trunc i32 %57 to i16
  %197 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  store i16 %196, ptr %197, align 4, !tbaa !45
  %198 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 14
  store i32 -1, ptr %198, align 4, !tbaa !74
  %199 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %200 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  call void %199(ptr noundef %201) #16
  %202 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %203 = load i16, ptr %193, align 8, !tbaa !34
  %204 = sext i16 %203 to i64
  %205 = load i16, ptr %195, align 2, !tbaa !43
  %206 = sext i16 %205 to i64
  %207 = load i16, ptr %197, align 4, !tbaa !45
  %208 = sext i16 %207 to i64
  %209 = shl nsw i64 %204, 32
  %210 = mul nsw i64 %209, %206
  %211 = mul i64 %210, %208
  %212 = ashr exact i64 %211, 32
  %213 = mul nsw i64 %212, 36
  %214 = call ptr %202(i64 noundef %213, ptr noundef nonnull @.str.1) #16
  store ptr %214, ptr %200, align 8, !tbaa !46
  %215 = load i16, ptr %193, align 8, !tbaa !34
  %216 = sext i16 %215 to i32
  %217 = load i16, ptr %195, align 2, !tbaa !43
  %218 = sext i16 %217 to i32
  %219 = mul nsw i32 %218, %216
  %220 = load i16, ptr %197, align 4, !tbaa !45
  %221 = sext i16 %220 to i32
  %222 = mul nsw i32 %219, %221
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %179, %224
  %225 = phi i64 [ %228, %224 ], [ 0, %179 ]
  %226 = phi ptr [ %229, %224 ], [ %214, %179 ]
  %227 = getelementptr inbounds [3 x float], ptr %68, i64 %225
  call fastcc void @copy_v3_v3(ptr noundef %226, ptr noundef %227) #15
  %228 = add nuw nsw i64 %225, 1
  %229 = getelementptr inbounds %struct.BPoint, ptr %226, i64 1
  %230 = load i16, ptr %193, align 8, !tbaa !34
  %231 = sext i16 %230 to i64
  %232 = load i16, ptr %195, align 2, !tbaa !43
  %233 = sext i16 %232 to i64
  %234 = mul nsw i64 %233, %231
  %235 = load i16, ptr %197, align 4, !tbaa !45
  %236 = sext i16 %235 to i64
  %237 = mul nsw i64 %234, %236
  %238 = shl i64 %237, 32
  %239 = ashr exact i64 %238, 32
  %240 = icmp slt i64 %228, %239
  br i1 %240, label %224, label %241, !llvm.loop !75

241:                                              ; preds = %224, %179
  %242 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %242(ptr noundef %68) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @BKE_defvert_array_free(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lattice_deform_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, float noundef %6) local_unnamed_addr #5 {
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !76
  %10 = icmp eq i16 %9, 22
  br i1 %10, label %11, label %82

11:                                               ; preds = %7
  %12 = tail call ptr @init_latt_deform(ptr noundef nonnull %0, ptr noundef %1) #15
  %13 = icmp eq ptr %1, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !76
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = tail call ptr %22(ptr noundef nonnull %2, i32 noundef 2) #16
  %24 = icmp ne ptr %23, null
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = icmp ne ptr %29, null
  br label %31

31:                                               ; preds = %11, %14, %20, %25
  %32 = phi i1 [ %24, %20 ], [ %30, %25 ], [ false, %14 ], [ false, %11 ]
  %33 = icmp eq ptr %5, null
  br i1 %33, label %72, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %5, align 1, !tbaa !83
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %36, i1 %32, i1 false
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %5) #16
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = icmp ne ptr %45, null
  %47 = icmp ne ptr %2, null
  %48 = or i1 %47, %46
  %49 = icmp sgt i32 %4, 0
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 46
  %53 = zext nneg i32 %4 to i64
  br label %54

54:                                               ; preds = %51, %68
  %55 = phi i64 [ 0, %51 ], [ %69, %68 ]
  %56 = phi ptr [ %45, %51 ], [ %70, %68 ]
  br i1 %47, label %57, label %61

57:                                               ; preds = %54
  %58 = load ptr, ptr %52, align 8, !tbaa !84
  %59 = trunc i64 %55 to i32
  %60 = tail call ptr %58(ptr noundef nonnull %2, i32 noundef %59, i32 noundef 2) #16
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi ptr [ %60, %57 ], [ %56, %54 ]
  %63 = tail call float @defvert_find_weight(ptr noundef %62, i32 noundef %41) #16
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds [3 x float], ptr %3, i64 %55
  %67 = fmul float %63, %6
  tail call void @calc_latt_deform(ptr noundef %12, ptr noundef %66, float noundef %67) #15
  br label %68

68:                                               ; preds = %61, %65
  %69 = add nuw nsw i64 %55, 1
  %70 = getelementptr inbounds %struct.MDeformVert, ptr %62, i64 1
  %71 = icmp eq i64 %69, %53
  br i1 %71, label %81, label %54, !llvm.loop !85

72:                                               ; preds = %34, %31
  %73 = icmp sgt i32 %4, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = zext nneg i32 %4 to i64
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %79, %76 ]
  %78 = getelementptr inbounds [3 x float], ptr %3, i64 %77
  tail call void @calc_latt_deform(ptr noundef %12, ptr noundef %78, float noundef %6) #15
  %79 = add nuw nsw i64 %77, 1
  %80 = icmp eq i64 %79, %75
  br i1 %80, label %81, label %76, !llvm.loop !86

81:                                               ; preds = %68, %76, %72, %38, %43
  tail call void @end_latt_deform(ptr noundef %12) #15
  br label %82

82:                                               ; preds = %7, %81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !87 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_lattice_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21580, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 5
  store i16 1, ptr %4, align 2, !tbaa !56
  %5 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 12
  store i8 2, ptr %5, align 2, !tbaa !68
  %6 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 11
  store i8 2, ptr %6, align 1, !tbaa !67
  %7 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 10
  store i8 2, ptr %7, align 8, !tbaa !66
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %9 = tail call ptr %8(i64 noundef 36, ptr noundef nonnull @.str.2) #16
  %10 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 21
  store ptr %9, ptr %10, align 8, !tbaa !46
  tail call void @BKE_lattice_resize(ptr noundef %3, i32 noundef 2, i32 noundef 2, i32 noundef 2, ptr noundef null) #15
  %11 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 14
  store i32 -1, ptr %11, align 4, !tbaa !74
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_lattice_copy(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #16
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 21
  store ptr %6, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = tail call ptr @BKE_key_copy(ptr noundef %9) #16
  store ptr %10, ptr %8, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Key, ptr %10, i64 0, i32 8
  store ptr %2, ptr %13, align 8, !tbaa !89
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !53
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
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %31 = sext i32 %29 to i64
  %32 = shl nsw i64 %31, 4
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.3) #16
  %34 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 24
  store ptr %33, ptr %34, align 8, !tbaa !53
  %35 = load ptr, ptr %15, align 8, !tbaa !53
  tail call void @BKE_defvert_array_copy(ptr noundef %33, ptr noundef %35, i32 noundef %29) #16
  br label %36

36:                                               ; preds = %18, %14
  %37 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 26
  store ptr null, ptr %37, align 8, !tbaa !91
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_defvert_array_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lattice_free(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !53
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
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %9, i32 noundef %22) #16
  br label %23

23:                                               ; preds = %11, %7
  %24 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !92
  %29 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %33(ptr noundef nonnull %30) #16
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !53
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
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %36, i32 noundef %49) #16
  br label %50

50:                                               ; preds = %38, %34
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %51(ptr noundef nonnull %28) #16
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %53 = load ptr, ptr %24, align 8, !tbaa !91
  tail call void %52(ptr noundef %53) #16
  br label %54

54:                                               ; preds = %50, %23
  %55 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !94
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #16
  store ptr null, ptr %55, align 8, !tbaa !94
  br label %59

59:                                               ; preds = %58, %54
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lattice_make_local(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @G, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #16
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !55
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
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !99
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 1, i8 %18
  %31 = select i1 %29, i8 %17, i8 1
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !100

37:                                               ; preds = %32
  %38 = icmp ne i8 %33, 0
  %39 = icmp eq i8 %34, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #16
  br label %70

42:                                               ; preds = %15, %37
  %43 = phi i8 [ %34, %37 ], [ %17, %15 ]
  %44 = phi i1 [ %38, %37 ], [ true, %15 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_lattice_copy(ptr noundef %0) #15
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  store i32 0, ptr %49, align 4, !tbaa !98
  %50 = load ptr, ptr %3, align 8, !tbaa !97
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %50, ptr noundef %48) #16
  %51 = load ptr, ptr %12, align 8, !tbaa !55
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %47, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !99
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  store ptr %48, ptr %55, align 8, !tbaa !80
  %63 = load i32, ptr %49, align 4, !tbaa !98
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %49, align 4, !tbaa !98
  %65 = load i32, ptr %7, align 4, !tbaa !98
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %7, align 4, !tbaa !98
  br label %67

67:                                               ; preds = %53, %62, %58
  %68 = load ptr, ptr %54, align 8, !tbaa !55
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !llvm.loop !101

70:                                               ; preds = %67, %11, %47, %41, %42, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @init_latt_deform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @BKE_displist_find(ptr noundef nonnull %8, i32 noundef 7) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DispList, ptr %11, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  br label %16

16:                                               ; preds = %2, %10, %13
  %17 = phi i1 [ false, %13 ], [ true, %10 ], [ true, %2 ]
  %18 = phi ptr [ %15, %13 ], [ null, %10 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %19 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !92
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %6, %16 ]
  %26 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !34
  %31 = sext i16 %30 to i64
  %32 = mul nsw i64 %31, 12
  %33 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !43
  %35 = sext i16 %34 to i64
  %36 = mul nsw i64 %32, %35
  %37 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !45
  %39 = sext i16 %38 to i64
  %40 = mul nsw i64 %36, %39
  %41 = tail call ptr %28(i64 noundef %40, ptr noundef nonnull @.str.4) #16
  %42 = icmp eq ptr %1, null
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br i1 %42, label %44, label %46

44:                                               ; preds = %24
  %45 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %43) #16
  br label %49

46:                                               ; preds = %24
  %47 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %43) #16
  %48 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %48) #16
  br label %49

49:                                               ; preds = %46, %44
  %50 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %51 = load i16, ptr %37, align 4, !tbaa !45
  %52 = icmp sgt i16 %51, 0
  br i1 %52, label %53, label %148

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 17
  %55 = load float, ptr %54, align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 16
  %57 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 15
  %58 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 18
  %59 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 19
  %60 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 20
  %61 = load i16, ptr %33, align 2, !tbaa !43
  br label %62

62:                                               ; preds = %53, %136
  %63 = phi i16 [ %51, %53 ], [ %137, %136 ]
  %64 = phi i16 [ %61, %53 ], [ %138, %136 ]
  %65 = phi i16 [ %61, %53 ], [ %139, %136 ]
  %66 = phi ptr [ %27, %53 ], [ %142, %136 ]
  %67 = phi i32 [ 0, %53 ], [ %143, %136 ]
  %68 = phi float [ %55, %53 ], [ %145, %136 ]
  %69 = phi ptr [ %41, %53 ], [ %141, %136 ]
  %70 = phi ptr [ %18, %53 ], [ %140, %136 ]
  %71 = icmp sgt i16 %65, 0
  br i1 %71, label %72, label %136

72:                                               ; preds = %62
  %73 = load float, ptr %56, align 4, !tbaa !59
  %74 = load i16, ptr %29, align 8, !tbaa !34
  br label %75

75:                                               ; preds = %72, %123
  %76 = phi i16 [ %124, %123 ], [ %64, %72 ]
  %77 = phi i16 [ %125, %123 ], [ %74, %72 ]
  %78 = phi ptr [ %128, %123 ], [ %66, %72 ]
  %79 = phi i32 [ %129, %123 ], [ 0, %72 ]
  %80 = phi float [ %131, %123 ], [ %73, %72 ]
  %81 = phi ptr [ %127, %123 ], [ %69, %72 ]
  %82 = phi ptr [ %126, %123 ], [ %70, %72 ]
  %83 = icmp sgt i16 %77, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %75
  %85 = load float, ptr %57, align 8, !tbaa !57
  br label %86

86:                                               ; preds = %84, %107
  %87 = phi ptr [ %113, %107 ], [ %78, %84 ]
  %88 = phi i32 [ %112, %107 ], [ 0, %84 ]
  %89 = phi float [ %117, %107 ], [ %85, %84 ]
  %90 = phi ptr [ %115, %107 ], [ %81, %84 ]
  %91 = phi ptr [ %114, %107 ], [ %82, %84 ]
  %92 = getelementptr inbounds float, ptr %90, i64 1
  br i1 %17, label %100, label %93

93:                                               ; preds = %86
  %94 = load float, ptr %91, align 4, !tbaa !52
  %95 = fsub float %94, %89
  store float %95, ptr %90, align 4, !tbaa !52
  %96 = getelementptr inbounds float, ptr %91, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !52
  %98 = fsub float %97, %80
  store float %98, ptr %92, align 4, !tbaa !52
  %99 = getelementptr inbounds float, ptr %91, i64 2
  br label %107

100:                                              ; preds = %86
  %101 = load float, ptr %87, align 4, !tbaa !52
  %102 = fsub float %101, %89
  store float %102, ptr %90, align 4, !tbaa !52
  %103 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !52
  %105 = fsub float %104, %80
  store float %105, ptr %92, align 4, !tbaa !52
  %106 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 2
  br label %107

107:                                              ; preds = %100, %93
  %108 = phi ptr [ %106, %100 ], [ %99, %93 ]
  %109 = load float, ptr %108, align 4, !tbaa !52
  %110 = fsub float %109, %68
  %111 = getelementptr inbounds float, ptr %90, i64 2
  store float %110, ptr %111, align 4
  call void @mul_mat3_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %90) #16
  %112 = add nuw nsw i32 %88, 1
  %113 = getelementptr inbounds %struct.BPoint, ptr %87, i64 1
  %114 = getelementptr inbounds float, ptr %91, i64 3
  %115 = getelementptr inbounds float, ptr %90, i64 3
  %116 = load float, ptr %58, align 4, !tbaa !58
  %117 = fadd float %89, %116
  %118 = load i16, ptr %29, align 8, !tbaa !34
  %119 = sext i16 %118 to i32
  %120 = icmp slt i32 %112, %119
  br i1 %120, label %86, label %121, !llvm.loop !104

121:                                              ; preds = %107
  %122 = load i16, ptr %33, align 2, !tbaa !43
  br label %123

123:                                              ; preds = %121, %75
  %124 = phi i16 [ %76, %75 ], [ %122, %121 ]
  %125 = phi i16 [ %77, %75 ], [ %118, %121 ]
  %126 = phi ptr [ %82, %75 ], [ %114, %121 ]
  %127 = phi ptr [ %81, %75 ], [ %115, %121 ]
  %128 = phi ptr [ %78, %75 ], [ %113, %121 ]
  %129 = add nuw nsw i32 %79, 1
  %130 = load float, ptr %59, align 8, !tbaa !60
  %131 = fadd float %80, %130
  %132 = sext i16 %124 to i32
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %75, label %134, !llvm.loop !105

134:                                              ; preds = %123
  %135 = load i16, ptr %37, align 4, !tbaa !45
  br label %136

136:                                              ; preds = %134, %62
  %137 = phi i16 [ %63, %62 ], [ %135, %134 ]
  %138 = phi i16 [ %64, %62 ], [ %124, %134 ]
  %139 = phi i16 [ %65, %62 ], [ %124, %134 ]
  %140 = phi ptr [ %70, %62 ], [ %126, %134 ]
  %141 = phi ptr [ %69, %62 ], [ %127, %134 ]
  %142 = phi ptr [ %66, %62 ], [ %128, %134 ]
  %143 = add nuw nsw i32 %67, 1
  %144 = load float, ptr %60, align 4, !tbaa !62
  %145 = fadd float %68, %144
  %146 = sext i16 %137 to i32
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %62, label %148, !llvm.loop !106

148:                                              ; preds = %136, %49
  %149 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %150 = call ptr %149(i64 noundef 80, ptr noundef nonnull @.str.5) #16
  %151 = getelementptr inbounds %struct.LatticeDeformData, ptr %150, i64 0, i32 1
  store ptr %41, ptr %151, align 8, !tbaa !107
  store ptr %0, ptr %150, align 8, !tbaa !109
  %152 = getelementptr inbounds %struct.LatticeDeformData, ptr %150, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %152, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret ptr %150
}

; Function Attrs: optsize
declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calc_latt_deform(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %12 = tail call ptr @BKE_lattice_deform_verts_get(ptr noundef %9) #15
  %13 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %14, align 8, !tbaa !92
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %17, %16 ], [ %11, %3 ]
  %20 = getelementptr inbounds %struct.LatticeDeformData, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %215, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 25
  %25 = load i8, ptr %24, align 8, !tbaa !83
  %26 = icmp ne i8 %25, 0
  %27 = icmp ne ptr %12, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 @defgroup_name_index(ptr noundef nonnull %9, ptr noundef nonnull %24) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #15
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ -1, %23 ]
  %33 = getelementptr inbounds %struct.LatticeDeformData, ptr %0, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef %1) #16
  %34 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !34
  %36 = icmp sgt i16 %35, 1
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load float, ptr %7, align 4, !tbaa !52
  %39 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 15
  %40 = load float, ptr %39, align 8, !tbaa !57
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 18
  %43 = load float, ptr %42, align 4, !tbaa !58
  %44 = fdiv float %41, %43
  %45 = call float @llvm.floor.f32(float %44)
  %46 = fptosi float %45 to i32
  %47 = sitofp i32 %46 to float
  %48 = fsub float %44, %47
  %49 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 10
  %50 = load i8, ptr %49, align 8, !tbaa !66
  %51 = zext i8 %50 to i32
  call void @key_curve_position_weights(float noundef %48, ptr noundef nonnull %4, i32 noundef %51) #16
  br label %53

52:                                               ; preds = %31
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !52
  br label %53

53:                                               ; preds = %52, %37
  %54 = phi i32 [ %46, %37 ], [ 0, %52 ]
  %55 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 3
  %56 = load i16, ptr %55, align 2, !tbaa !43
  %57 = icmp sgt i16 %56, 1
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !52
  %61 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 16
  %62 = load float, ptr %61, align 4, !tbaa !59
  %63 = fsub float %60, %62
  %64 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 19
  %65 = load float, ptr %64, align 8, !tbaa !60
  %66 = fdiv float %63, %65
  %67 = call float @llvm.floor.f32(float %66)
  %68 = fptosi float %67 to i32
  %69 = sitofp i32 %68 to float
  %70 = fsub float %66, %69
  %71 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 11
  %72 = load i8, ptr %71, align 1, !tbaa !67
  %73 = zext i8 %72 to i32
  call void @key_curve_position_weights(float noundef %70, ptr noundef nonnull %5, i32 noundef %73) #16
  br label %75

74:                                               ; preds = %53
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 16, !tbaa !52
  br label %75

75:                                               ; preds = %74, %58
  %76 = phi i32 [ %68, %58 ], [ 0, %74 ]
  %77 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !45
  %79 = icmp sgt i16 %78, 1
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !52
  %83 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 17
  %84 = load float, ptr %83, align 8, !tbaa !61
  %85 = fsub float %82, %84
  %86 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 20
  %87 = load float, ptr %86, align 4, !tbaa !62
  %88 = fdiv float %85, %87
  %89 = call float @llvm.floor.f32(float %88)
  %90 = fptosi float %89 to i32
  %91 = sitofp i32 %90 to float
  %92 = fsub float %88, %91
  %93 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 12
  %94 = load i8, ptr %93, align 2, !tbaa !68
  %95 = zext i8 %94 to i32
  call void @key_curve_position_weights(float noundef %92, ptr noundef nonnull %6, i32 noundef %95) #16
  br label %97

96:                                               ; preds = %75
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %6, align 16, !tbaa !52
  br label %97

97:                                               ; preds = %96, %80
  %98 = phi i32 [ %90, %80 ], [ 0, %96 ]
  %99 = add i32 %98, -1
  %100 = add nsw i32 %98, 2
  %101 = add i32 %76, -1
  %102 = add nsw i32 %76, 2
  %103 = add i32 %54, -1
  %104 = add nsw i32 %54, 2
  %105 = icmp eq i32 %32, -1
  %106 = sext i32 %103 to i64
  %107 = sext i32 %104 to i64
  %108 = sext i32 %101 to i64
  %109 = sext i32 %102 to i64
  %110 = sext i32 %99 to i64
  %111 = sext i32 %100 to i64
  br label %112

112:                                              ; preds = %97, %209
  %113 = phi i64 [ %110, %97 ], [ %211, %209 ]
  %114 = phi float [ 0.000000e+00, %97 ], [ %210, %209 ]
  %115 = trunc i64 %113 to i32
  %116 = sub i32 %115, %98
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !52
  %121 = fcmp une float %120, 0.000000e+00
  br i1 %121, label %122, label %209

122:                                              ; preds = %112
  %123 = icmp sgt i64 %113, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %122
  %125 = load i16, ptr %77, align 4, !tbaa !45
  %126 = sext i16 %125 to i64
  %127 = icmp slt i64 %113, %126
  %128 = sext i16 %125 to i32
  %129 = add nsw i32 %128, -1
  %130 = select i1 %127, i32 %115, i32 %129
  %131 = load i16, ptr %34, align 8, !tbaa !34
  %132 = sext i16 %131 to i32
  %133 = mul nsw i32 %130, %132
  %134 = load i16, ptr %55, align 2, !tbaa !43
  %135 = sext i16 %134 to i32
  %136 = mul nsw i32 %133, %135
  br label %137

137:                                              ; preds = %124, %122
  %138 = phi i32 [ 0, %122 ], [ %136, %124 ]
  br label %139

139:                                              ; preds = %137, %205
  %140 = phi i64 [ %108, %137 ], [ %207, %205 ]
  %141 = phi float [ %114, %137 ], [ %206, %205 ]
  %142 = trunc i64 %140 to i32
  %143 = sub i32 %142, %76
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !52
  %148 = fmul float %120, %147
  %149 = fcmp une float %148, 0.000000e+00
  br i1 %149, label %150, label %205

150:                                              ; preds = %139
  %151 = icmp sgt i64 %140, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %150
  %153 = load i16, ptr %55, align 2, !tbaa !43
  %154 = sext i16 %153 to i64
  %155 = icmp slt i64 %140, %154
  %156 = sext i16 %153 to i32
  %157 = add nsw i32 %156, -1
  %158 = select i1 %155, i32 %142, i32 %157
  %159 = load i16, ptr %34, align 8, !tbaa !34
  %160 = sext i16 %159 to i32
  %161 = mul nsw i32 %158, %160
  %162 = add nsw i32 %161, %138
  br label %163

163:                                              ; preds = %152, %150
  %164 = phi i32 [ %138, %150 ], [ %162, %152 ]
  %165 = fmul float %148, %2
  %166 = add i32 %164, -1
  br label %167

167:                                              ; preds = %163, %201
  %168 = phi i64 [ %106, %163 ], [ %203, %201 ]
  %169 = phi float [ %141, %163 ], [ %202, %201 ]
  %170 = trunc i64 %168 to i32
  %171 = sub i32 %170, %54
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %173
  %175 = load float, ptr %174, align 4, !tbaa !52
  %176 = fmul float %165, %175
  %177 = fcmp une float %176, 0.000000e+00
  br i1 %177, label %178, label %201

178:                                              ; preds = %167
  %179 = icmp sgt i64 %168, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %178
  %181 = load i16, ptr %34, align 8, !tbaa !34
  %182 = sext i16 %181 to i64
  %183 = icmp slt i64 %168, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = trunc i64 %168 to i32
  %186 = add i32 %164, %185
  br label %190

187:                                              ; preds = %180
  %188 = sext i16 %181 to i32
  %189 = add i32 %166, %188
  br label %190

190:                                              ; preds = %178, %184, %187
  %191 = phi i32 [ %186, %184 ], [ %189, %187 ], [ %164, %178 ]
  %192 = load ptr, ptr %20, align 8, !tbaa !107
  %193 = mul nsw i32 %191, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, ptr %192, i64 %194
  call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef %195, float noundef %176) #15
  br i1 %105, label %201, label %196

196:                                              ; preds = %190
  %197 = sext i32 %191 to i64
  %198 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %197
  %199 = call float @defvert_find_weight(ptr noundef %198, i32 noundef %32) #16
  %200 = call float @llvm.fmuladd.f32(float %176, float %199, float %169)
  br label %201

201:                                              ; preds = %167, %196, %190
  %202 = phi float [ %200, %196 ], [ %169, %190 ], [ %169, %167 ]
  %203 = add nsw i64 %168, 1
  %204 = icmp slt i64 %168, %107
  br i1 %204, label %167, label %205, !llvm.loop !110

205:                                              ; preds = %201, %139
  %206 = phi float [ %141, %139 ], [ %202, %201 ]
  %207 = add nsw i64 %140, 1
  %208 = icmp slt i64 %140, %109
  br i1 %208, label %139, label %209, !llvm.loop !111

209:                                              ; preds = %205, %112
  %210 = phi float [ %114, %112 ], [ %206, %205 ]
  %211 = add nsw i64 %113, 1
  %212 = icmp slt i64 %113, %111
  br i1 %212, label %112, label %213, !llvm.loop !112

213:                                              ; preds = %209
  br i1 %105, label %215, label %214

214:                                              ; preds = %213
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %1, float noundef %210) #16
  br label %215

215:                                              ; preds = %213, %214, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_lattice_deform_verts_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !92
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !113 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %0, align 4, !tbaa !52
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !52
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !52
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !52
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_latt_deform(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.LatticeDeformData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %8(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curve_deform_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i16 noundef signext %7) local_unnamed_addr #5 {
  %9 = alloca %struct.CurveDeform, align 16
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %9) #14
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !76
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %148

14:                                               ; preds = %8
  %15 = icmp slt i16 %7, 3
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  call fastcc void @init_curve_deform(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %9) #15
  %18 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1, i64 1
  %19 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 1
  %20 = insertelement <2 x i1> poison, i1 %15, i64 0
  %21 = shufflevector <2 x i1> %20, <2 x i1> poison, <2 x i32> zeroinitializer
  %22 = select <2 x i1> %21, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float -1.000000e+00, float 0.000000e+00>
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %24 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  store <2 x float> %24, ptr %18, align 16
  store <4 x float> %23, ptr %9, align 16
  %25 = icmp eq ptr %6, null
  br i1 %25, label %111, label %26

26:                                               ; preds = %14
  %27 = load i8, ptr %6, align 1, !tbaa !83
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %111, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !76
  switch i16 %31, label %111 [
    i16 1, label %32
    i16 22, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = call i32 @defgroup_name_index(ptr noundef nonnull %2, ptr noundef nonnull %6) #16
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %111, label %35

35:                                               ; preds = %32
  %36 = icmp eq ptr %3, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 50
  %39 = load ptr, ptr %38, align 8, !tbaa !77
  %40 = call ptr %39(ptr noundef nonnull %3, i32 noundef 2) #16
  br label %52

41:                                               ; preds = %35
  %42 = load i16, ptr %30, align 8, !tbaa !76
  %43 = icmp eq i16 %42, 22
  %44 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !80
  br i1 %43, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Lattice, ptr %45, i64 0, i32 24
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  br label %52

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !81
  br label %52

52:                                               ; preds = %46, %49, %37
  %53 = phi ptr [ %40, %37 ], [ %48, %46 ], [ %51, %49 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %111, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %56 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = icmp sgt i32 %5, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 2
  %64 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 3
  %65 = zext nneg i32 %5 to i64
  br label %66

66:                                               ; preds = %62, %74
  %67 = phi i64 [ 0, %62 ], [ %75, %74 ]
  %68 = phi ptr [ %53, %62 ], [ %76, %74 ]
  %69 = call float @defvert_find_weight(ptr noundef nonnull %68, i32 noundef %33) #16
  %70 = fcmp ogt float %69, 0.000000e+00
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr inbounds [3 x float], ptr %4, i64 %67
  call void @mul_m4_v3(ptr noundef nonnull %63, ptr noundef %72) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %72) #15
  %73 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null) #15, !range !117
  call void @interp_v3_v3v3(ptr noundef %72, ptr noundef %72, ptr noundef nonnull %10, float noundef %69) #16
  call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef %72) #16
  br label %74

74:                                               ; preds = %71, %66
  %75 = add nuw nsw i64 %67, 1
  %76 = getelementptr inbounds %struct.MDeformVert, ptr %68, i64 1
  %77 = icmp eq i64 %75, %65
  br i1 %77, label %110, label %66, !llvm.loop !118

78:                                               ; preds = %55
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %18, align 16, !tbaa !52
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %9, align 16, !tbaa !52
  %79 = icmp sgt i32 %5, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 2
  %82 = zext nneg i32 %5 to i64
  br label %87

83:                                               ; preds = %94
  br i1 %79, label %84, label %110

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 3
  %86 = zext nneg i32 %5 to i64
  br label %98

87:                                               ; preds = %80, %94
  %88 = phi i64 [ 0, %80 ], [ %95, %94 ]
  %89 = phi ptr [ %53, %80 ], [ %96, %94 ]
  %90 = call float @defvert_find_weight(ptr noundef nonnull %89, i32 noundef %33) #16
  %91 = fcmp ogt float %90, 0.000000e+00
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds [3 x float], ptr %4, i64 %88
  call void @mul_m4_v3(ptr noundef nonnull %81, ptr noundef %93) #16
  call void @minmax_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %19, ptr noundef %93) #16
  br label %94

94:                                               ; preds = %87, %92
  %95 = add nuw nsw i64 %88, 1
  %96 = getelementptr inbounds %struct.MDeformVert, ptr %89, i64 1
  %97 = icmp eq i64 %95, %82
  br i1 %97, label %83, label %87, !llvm.loop !119

98:                                               ; preds = %84, %106
  %99 = phi i64 [ 0, %84 ], [ %107, %106 ]
  %100 = phi ptr [ %53, %84 ], [ %108, %106 ]
  %101 = call float @defvert_find_weight(ptr noundef nonnull %100, i32 noundef %33) #16
  %102 = fcmp ogt float %101, 0.000000e+00
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = getelementptr inbounds [3 x float], ptr %4, i64 %99
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %104) #15
  %105 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null) #15, !range !117
  call void @interp_v3_v3v3(ptr noundef %104, ptr noundef %104, ptr noundef nonnull %10, float noundef %101) #16
  call void @mul_m4_v3(ptr noundef nonnull %85, ptr noundef %104) #16
  br label %106

106:                                              ; preds = %103, %98
  %107 = add nuw nsw i64 %99, 1
  %108 = getelementptr inbounds %struct.MDeformVert, ptr %100, i64 1
  %109 = icmp eq i64 %107, %86
  br i1 %109, label %110, label %98, !llvm.loop !120

110:                                              ; preds = %74, %106, %78, %60, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %148

111:                                              ; preds = %29, %14, %26, %32, %52
  %112 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %113 = load i32, ptr %112, align 4, !tbaa !114
  %114 = and i32 %113, 64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %111
  %117 = icmp sgt i32 %5, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 2
  %120 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 3
  %121 = zext nneg i32 %5 to i64
  br label %122

122:                                              ; preds = %118, %122
  %123 = phi i64 [ 0, %118 ], [ %126, %122 ]
  %124 = getelementptr inbounds [3 x float], ptr %4, i64 %123
  call void @mul_m4_v3(ptr noundef nonnull %119, ptr noundef %124) #16
  %125 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef %124, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null) #15, !range !117
  call void @mul_m4_v3(ptr noundef nonnull %120, ptr noundef %124) #16
  %126 = add nuw nsw i64 %123, 1
  %127 = icmp eq i64 %126, %121
  br i1 %127, label %148, label %122, !llvm.loop !121

128:                                              ; preds = %111
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %18, align 16, !tbaa !52
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %9, align 16, !tbaa !52
  %129 = icmp sgt i32 %5, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 2
  %132 = zext nneg i32 %5 to i64
  br label %137

133:                                              ; preds = %137
  br i1 %129, label %134, label %148

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.CurveDeform, ptr %9, i64 0, i32 3
  %136 = zext nneg i32 %5 to i64
  br label %142

137:                                              ; preds = %130, %137
  %138 = phi i64 [ 0, %130 ], [ %140, %137 ]
  %139 = getelementptr inbounds [3 x float], ptr %4, i64 %138
  call void @mul_m4_v3(ptr noundef nonnull %131, ptr noundef %139) #16
  call void @minmax_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %19, ptr noundef %139) #16
  %140 = add nuw nsw i64 %138, 1
  %141 = icmp eq i64 %140, %132
  br i1 %141, label %133, label %137, !llvm.loop !122

142:                                              ; preds = %134, %142
  %143 = phi i64 [ 0, %134 ], [ %146, %142 ]
  %144 = getelementptr inbounds [3 x float], ptr %4, i64 %143
  %145 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef %144, i16 noundef signext %7, ptr noundef nonnull %9, ptr noundef null) #15, !range !117
  call void @mul_m4_v3(ptr noundef nonnull %135, ptr noundef %144) #16
  %146 = add nuw nsw i64 %143, 1
  %147 = icmp eq i64 %146, %136
  br i1 %147, label %148, label %142, !llvm.loop !123

148:                                              ; preds = %122, %142, %128, %116, %133, %110, %8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %9) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_curve_deform(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %6 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %7 = getelementptr inbounds %struct.CurveDeform, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.CurveDeform, ptr %2, i64 0, i32 2
  %10 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  %11 = getelementptr inbounds %struct.CurveDeform, ptr %2, i64 0, i32 4
  tail call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %7) #16
  %12 = getelementptr inbounds %struct.CurveDeform, ptr %2, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i16 noundef signext %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #5 !PGOFuncName !127 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca float, align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %17 = icmp sgt i16 %3, 2
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #16
  %22 = load ptr, ptr %18, align 8, !tbaa !69
  br label %23

23:                                               ; preds = %21, %6
  %24 = phi ptr [ %22, %21 ], [ %19, %6 ]
  %25 = getelementptr inbounds %struct.CurveCache, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !128
  %27 = icmp eq ptr %26, null
  br i1 %27, label %113, label %28

28:                                               ; preds = %23
  br i1 %17, label %29, label %55

29:                                               ; preds = %28
  %30 = add nsw i16 %3, -3
  %31 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %32 = load i32, ptr %31, align 4, !tbaa !114
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  %35 = zext nneg i16 %30 to i64
  %36 = getelementptr inbounds float, ptr %2, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !52
  br i1 %34, label %47, label %38

38:                                               ; preds = %29
  %39 = fneg float %37
  %40 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 1, i64 %35
  %41 = load float, ptr %40, align 4, !tbaa !52
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %35
  %44 = load float, ptr %43, align 4, !tbaa !52
  %45 = fsub float %41, %44
  %46 = fdiv float %42, %45
  br label %83

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 1, i64 %35
  %49 = load float, ptr %48, align 4, !tbaa !52
  %50 = fsub float %37, %49
  %51 = fneg float %50
  %52 = getelementptr inbounds %struct.Path, ptr %26, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !130
  %54 = fdiv float %51, %53
  br label %83

55:                                               ; preds = %28
  %56 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = sext i16 %3 to i64
  %62 = getelementptr inbounds float, ptr %2, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !52
  %64 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %61
  %65 = load float, ptr %64, align 4, !tbaa !52
  %66 = fsub float %63, %65
  %67 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 1, i64 %61
  %68 = load float, ptr %67, align 4, !tbaa !52
  %69 = fsub float %68, %65
  %70 = fdiv float %66, %69
  br label %83

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.Path, ptr %26, i64 0, i32 2
  %73 = load float, ptr %72, align 4, !tbaa !130
  %74 = fcmp ogt float %73, 0x3E80000000000000
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = sext i16 %3 to i64
  %77 = getelementptr inbounds float, ptr %2, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !52
  %79 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %76
  %80 = load float, ptr %79, align 4, !tbaa !52
  %81 = fsub float %78, %80
  %82 = fdiv float %81, %73
  br label %83

83:                                               ; preds = %71, %60, %75, %38, %47
  %84 = phi float [ %46, %38 ], [ %54, %47 ], [ %70, %60 ], [ %82, %75 ], [ 0.000000e+00, %71 ]
  %85 = phi i16 [ %30, %38 ], [ %30, %47 ], [ %3, %60 ], [ %3, %75 ], [ %3, %71 ]
  %86 = call fastcc zeroext i8 @where_on_path_deform(ptr noundef nonnull %1, float noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #15, !range !117
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  %89 = getelementptr inbounds %struct.CurveDeform, ptr %4, i64 0, i32 5
  %90 = load i32, ptr %89, align 4, !tbaa !125
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %8) #15
  %93 = add nsw i32 %90, -1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %94
  store float 0.000000e+00, ptr %95, align 4, !tbaa !52
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %13) #15
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef nonnull %13) #16
  call void @mul_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  br label %96

96:                                               ; preds = %92, %88
  call void @copy_qt_qt(ptr noundef nonnull %11, ptr noundef nonnull %9) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %2) #15
  %97 = and i16 %3, -3
  %98 = icmp eq i16 %97, 0
  %99 = zext i1 %98 to i16
  call void @quat_apply_track(ptr noundef nonnull %11, i16 noundef signext %3, i16 noundef signext %99) #16
  call void @vec_apply_track(ptr noundef nonnull %12, i16 noundef signext %3) #16
  %100 = sext i16 %85 to i64
  %101 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %100
  store float 0.000000e+00, ptr %101, align 4, !tbaa !52
  %102 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 23
  %103 = load i32, ptr %102, align 4, !tbaa !114
  %104 = and i32 %103, 4096
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %96
  %107 = load float, ptr %10, align 4, !tbaa !52
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %107) #15
  br label %108

108:                                              ; preds = %106, %96
  %109 = call float @normalize_qt(ptr noundef nonnull %11) #16
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %7) #15
  %110 = icmp eq ptr %5, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void @copy_qt_qt(ptr noundef nonnull %5, ptr noundef nonnull %11) #16
  br label %112

112:                                              ; preds = %111, %108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  br label %113

113:                                              ; preds = %83, %23, %112
  %114 = phi i8 [ 1, %112 ], [ 0, %23 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i8 %114
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @curve_deform_vector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = alloca %struct.CurveDeform, align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !76
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @unit_m3(ptr noundef %5) #16
  br label %28

15:                                               ; preds = %7
  call fastcc void @init_curve_deform(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8) #15
  %16 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 5
  store i32 %6, ptr %16, align 4, !tbaa !125
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %3) #15
  %17 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef %3) #15
  %18 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef %4) #16
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 57
  %20 = load i16, ptr %19, align 4, !tbaa !132
  %21 = call fastcc zeroext i8 @calc_curve_deform(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %4, i16 noundef signext %20, ptr noundef nonnull %8, ptr noundef nonnull %9) #15, !range !117
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #14
  call void @quat_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %24 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 4
  call void @mul_m3_m3m3(ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %24) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #14
  br label %26

25:                                               ; preds = %15
  call void @unit_m3(ptr noundef %5) #16
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %struct.CurveDeform, ptr %8, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %27, ptr noundef %4) #16
  br label %28

28:                                               ; preds = %26, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #14
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @object_deform_mball(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !76
  %9 = icmp eq i16 %8, 22
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !134
  %13 = icmp eq i16 %12, 4
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %24, %17 ], [ %15, %14 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !133
  %20 = getelementptr inbounds %struct.DispList, ptr %18, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.DispList, ptr %18, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !135
  tail call void @lattice_deform_verts(ptr noundef %19, ptr noundef nonnull %0, ptr noundef null, ptr noundef %21, i32 noundef %23, ptr noundef null, float noundef 1.000000e+00) #15
  %24 = load ptr, ptr %18, align 8, !tbaa !55
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !136

26:                                               ; preds = %17, %14, %2, %6, %10
  %27 = phi i8 [ 0, %10 ], [ 0, %6 ], [ 0, %2 ], [ 1, %14 ], [ 1, %17 ]
  ret i8 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @outside_lattice(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !56
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %179, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i16 %8, 1
  %10 = add nsw i16 %8, -1
  %11 = sitofp i16 %10 to float
  %12 = fdiv float 1.000000e+00, %11
  %13 = select i1 %9, float %12, float 0.000000e+00
  %14 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !43
  %16 = icmp sgt i16 %15, 1
  %17 = add nsw i16 %15, -1
  %18 = sitofp i16 %17 to float
  %19 = fdiv float 1.000000e+00, %18
  %20 = select i1 %16, float %19, float 0.000000e+00
  %21 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %22 = load i16, ptr %21, align 4, !tbaa !45
  %23 = icmp sgt i16 %22, 1
  %24 = add nsw i16 %22, -1
  %25 = sitofp i16 %24 to float
  %26 = fdiv float 1.000000e+00, %25
  %27 = select i1 %23, float %26, float 0.000000e+00
  %28 = icmp sgt i16 %22, 0
  br i1 %28, label %29, label %217

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %29, %169
  %33 = phi i16 [ %170, %169 ], [ %22, %29 ]
  %34 = phi i16 [ %171, %169 ], [ %15, %29 ]
  %35 = phi i16 [ %172, %169 ], [ %8, %29 ]
  %36 = phi i16 [ %173, %169 ], [ %8, %29 ]
  %37 = phi i16 [ %174, %169 ], [ %15, %29 ]
  %38 = phi ptr [ %175, %169 ], [ %31, %29 ]
  %39 = phi i32 [ %176, %169 ], [ 0, %29 ]
  %40 = icmp sgt i16 %37, 0
  br i1 %40, label %41, label %169

41:                                               ; preds = %32
  %42 = icmp eq i32 %39, 0
  %43 = sitofp i32 %39 to float
  %44 = fmul float %27, %43
  %45 = fsub float 1.000000e+00, %44
  br label %46

46:                                               ; preds = %41, %159
  %47 = phi i16 [ %34, %41 ], [ %160, %159 ]
  %48 = phi i16 [ %35, %41 ], [ %161, %159 ]
  %49 = phi i16 [ %36, %41 ], [ %162, %159 ]
  %50 = phi ptr [ %38, %41 ], [ %163, %159 ]
  %51 = phi i32 [ 0, %41 ], [ %164, %159 ]
  %52 = icmp sgt i16 %49, 0
  br i1 %52, label %53, label %159

53:                                               ; preds = %46
  %54 = zext nneg i16 %49 to i32
  %55 = icmp eq i32 %51, 0
  %56 = sitofp i32 %51 to float
  %57 = fmul float %20, %56
  %58 = fsub float 1.000000e+00, %57
  br label %59

59:                                               ; preds = %53, %151
  %60 = phi i16 [ %48, %53 ], [ %152, %151 ]
  %61 = phi i32 [ %54, %53 ], [ %155, %151 ]
  %62 = phi ptr [ %50, %53 ], [ %154, %151 ]
  %63 = phi i32 [ 0, %53 ], [ %153, %151 ]
  %64 = icmp eq i32 %63, 0
  %65 = or i1 %55, %64
  %66 = or i1 %42, %65
  %67 = add nsw i32 %61, -1
  %68 = icmp eq i32 %63, %67
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %151, label %70

70:                                               ; preds = %59
  %71 = load i16, ptr %14, align 2, !tbaa !43
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = icmp eq i32 %51, %73
  br i1 %74, label %151, label %75

75:                                               ; preds = %70
  %76 = load i16, ptr %21, align 4, !tbaa !45
  %77 = sext i16 %76 to i32
  %78 = add nsw i32 %77, -1
  %79 = icmp eq i32 %39, %78
  br i1 %79, label %151, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.BPoint, ptr %62, i64 0, i32 4
  store i16 1, ptr %81, align 2, !tbaa !49
  %82 = getelementptr inbounds %struct.BPoint, ptr %62, i64 0, i32 3
  %83 = load i16, ptr %82, align 4, !tbaa !47
  %84 = and i16 %83, -2
  store i16 %84, ptr %82, align 4, !tbaa !47
  %85 = tail call fastcc ptr @latt_bp(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %51, i32 noundef %39) #15
  %86 = tail call fastcc ptr @latt_bp(ptr noundef nonnull %0, i32 noundef %67, i32 noundef %51, i32 noundef %39) #15
  %87 = sitofp i32 %63 to float
  %88 = fmul float %13, %87
  %89 = fsub float 1.000000e+00, %88
  %90 = load float, ptr %85, align 4, !tbaa !52
  %91 = load float, ptr %86, align 4, !tbaa !52
  %92 = fmul float %88, %91
  %93 = tail call float @llvm.fmuladd.f32(float %89, float %90, float %92)
  store float %93, ptr %62, align 4, !tbaa !52
  %94 = getelementptr inbounds [4 x float], ptr %85, i64 0, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !52
  %96 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !52
  %98 = fmul float %88, %97
  %99 = tail call float @llvm.fmuladd.f32(float %89, float %95, float %98)
  %100 = getelementptr inbounds [4 x float], ptr %62, i64 0, i64 1
  store float %99, ptr %100, align 4, !tbaa !52
  %101 = getelementptr inbounds [4 x float], ptr %85, i64 0, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !52
  %103 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !52
  %105 = fmul float %88, %104
  %106 = tail call float @llvm.fmuladd.f32(float %89, float %102, float %105)
  %107 = getelementptr inbounds [4 x float], ptr %62, i64 0, i64 2
  store float %106, ptr %107, align 4, !tbaa !52
  %108 = tail call fastcc ptr @latt_bp(ptr noundef nonnull %0, i32 noundef %63, i32 noundef 0, i32 noundef %39) #15
  %109 = tail call fastcc ptr @latt_bp(ptr noundef nonnull %0, i32 noundef %63, i32 noundef %73, i32 noundef %39) #15
  %110 = load float, ptr %108, align 4, !tbaa !52
  %111 = load float, ptr %109, align 4, !tbaa !52
  %112 = fmul float %57, %111
  %113 = tail call float @llvm.fmuladd.f32(float %58, float %110, float %112)
  %114 = fadd float %93, %113
  store float %114, ptr %62, align 4, !tbaa !52
  %115 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !52
  %117 = getelementptr inbounds [4 x float], ptr %109, i64 0, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !52
  %119 = fmul float %57, %118
  %120 = tail call float @llvm.fmuladd.f32(float %58, float %116, float %119)
  %121 = fadd float %99, %120
  store float %121, ptr %100, align 4, !tbaa !52
  %122 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !52
  %124 = getelementptr inbounds [4 x float], ptr %109, i64 0, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !52
  %126 = fmul float %57, %125
  %127 = tail call float @llvm.fmuladd.f32(float %58, float %123, float %126)
  %128 = fadd float %106, %127
  store float %128, ptr %107, align 4, !tbaa !52
  %129 = tail call fastcc ptr @latt_bp(ptr noundef nonnull %0, i32 noundef %63, i32 noundef %51, i32 noundef 0) #15
  %130 = tail call fastcc ptr @latt_bp(ptr noundef nonnull %0, i32 noundef %63, i32 noundef %51, i32 noundef %78) #15
  %131 = load float, ptr %129, align 4, !tbaa !52
  %132 = load float, ptr %130, align 4, !tbaa !52
  %133 = fmul float %44, %132
  %134 = tail call float @llvm.fmuladd.f32(float %45, float %131, float %133)
  %135 = fadd float %114, %134
  store float %135, ptr %62, align 4, !tbaa !52
  %136 = getelementptr inbounds [4 x float], ptr %129, i64 0, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !52
  %138 = getelementptr inbounds [4 x float], ptr %130, i64 0, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !52
  %140 = fmul float %44, %139
  %141 = tail call float @llvm.fmuladd.f32(float %45, float %137, float %140)
  %142 = fadd float %121, %141
  store float %142, ptr %100, align 4, !tbaa !52
  %143 = getelementptr inbounds [4 x float], ptr %129, i64 0, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !52
  %145 = getelementptr inbounds [4 x float], ptr %130, i64 0, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !52
  %147 = fmul float %44, %146
  %148 = tail call float @llvm.fmuladd.f32(float %45, float %144, float %147)
  %149 = fadd float %128, %148
  store float %149, ptr %107, align 4, !tbaa !52
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %62, float noundef 0x3FD5555560000000) #15
  %150 = load i16, ptr %7, align 8, !tbaa !34
  br label %151

151:                                              ; preds = %80, %75, %70, %59
  %152 = phi i16 [ %150, %80 ], [ %60, %75 ], [ %60, %70 ], [ %60, %59 ]
  %153 = add nuw nsw i32 %63, 1
  %154 = getelementptr inbounds %struct.BPoint, ptr %62, i64 1
  %155 = sext i16 %152 to i32
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %59, label %157, !llvm.loop !137

157:                                              ; preds = %151
  %158 = load i16, ptr %14, align 2, !tbaa !43
  br label %159

159:                                              ; preds = %157, %46
  %160 = phi i16 [ %47, %46 ], [ %158, %157 ]
  %161 = phi i16 [ %48, %46 ], [ %152, %157 ]
  %162 = phi i16 [ %49, %46 ], [ %152, %157 ]
  %163 = phi ptr [ %50, %46 ], [ %154, %157 ]
  %164 = add nuw nsw i32 %51, 1
  %165 = sext i16 %160 to i32
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %46, label %167, !llvm.loop !138

167:                                              ; preds = %159
  %168 = load i16, ptr %21, align 4, !tbaa !45
  br label %169

169:                                              ; preds = %167, %32
  %170 = phi i16 [ %33, %32 ], [ %168, %167 ]
  %171 = phi i16 [ %34, %32 ], [ %160, %167 ]
  %172 = phi i16 [ %35, %32 ], [ %161, %167 ]
  %173 = phi i16 [ %36, %32 ], [ %162, %167 ]
  %174 = phi i16 [ %37, %32 ], [ %160, %167 ]
  %175 = phi ptr [ %38, %32 ], [ %163, %167 ]
  %176 = add nuw nsw i32 %39, 1
  %177 = sext i16 %170 to i32
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %32, label %217, !llvm.loop !139

179:                                              ; preds = %1
  %180 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %181 = load i16, ptr %180, align 4, !tbaa !45
  %182 = sext i16 %181 to i32
  %183 = icmp sgt i16 %181, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %188 = load i16, ptr %187, align 2, !tbaa !43
  %189 = sext i16 %188 to i32
  %190 = icmp sgt i16 %188, 0
  %191 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  br label %192

192:                                              ; preds = %184, %213
  %193 = phi ptr [ %186, %184 ], [ %214, %213 ]
  %194 = phi i32 [ 0, %184 ], [ %215, %213 ]
  br i1 %190, label %195, label %213

195:                                              ; preds = %192
  %196 = load i16, ptr %191, align 8, !tbaa !34
  %197 = sext i16 %196 to i32
  %198 = icmp sgt i16 %196, 0
  br label %199

199:                                              ; preds = %195, %209
  %200 = phi ptr [ %193, %195 ], [ %210, %209 ]
  %201 = phi i32 [ 0, %195 ], [ %211, %209 ]
  br i1 %198, label %202, label %209

202:                                              ; preds = %199, %202
  %203 = phi ptr [ %207, %202 ], [ %200, %199 ]
  %204 = phi i32 [ %206, %202 ], [ 0, %199 ]
  %205 = getelementptr inbounds %struct.BPoint, ptr %203, i64 0, i32 4
  store i16 0, ptr %205, align 2, !tbaa !49
  %206 = add nuw nsw i32 %204, 1
  %207 = getelementptr inbounds %struct.BPoint, ptr %203, i64 1
  %208 = icmp eq i32 %206, %197
  br i1 %208, label %209, label %202, !llvm.loop !140

209:                                              ; preds = %202, %199
  %210 = phi ptr [ %200, %199 ], [ %207, %202 ]
  %211 = add nuw nsw i32 %201, 1
  %212 = icmp eq i32 %211, %189
  br i1 %212, label %213, label %199, !llvm.loop !141

213:                                              ; preds = %209, %192
  %214 = phi ptr [ %193, %192 ], [ %210, %209 ]
  %215 = add nuw nsw i32 %194, 1
  %216 = icmp eq i32 %215, %182
  br i1 %216, label %217, label %192, !llvm.loop !142

217:                                              ; preds = %169, %213, %6, %179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @latt_bp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !143 {
  %5 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #15
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.BPoint, ptr %6, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !144 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !52
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_lattice_vertexcos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !92
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
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %24 = sext i32 %22 to i64
  %25 = mul nsw i64 %24, 12
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.6) #16
  %27 = icmp sgt i32 %22, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %30 = zext nneg i32 %22 to i64
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ 0, %28 ], [ %36, %31 ]
  %33 = getelementptr inbounds [3 x float], ptr %26, i64 %32
  %34 = load ptr, ptr %29, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.BPoint, ptr %34, i64 %32
  tail call fastcc void @copy_v3_v3(ptr noundef %33, ptr noundef %35) #15
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %38, label %31, !llvm.loop !145

38:                                               ; preds = %31, %10
  ret ptr %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_lattice_vertexcos_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !80
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
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 21
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 0, %17 ], [ %25, %20 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.BPoint, ptr %22, i64 %21
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 %21
  tail call fastcc void @copy_v3_v3(ptr noundef %23, ptr noundef %24) #15
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %19
  br i1 %26, label %27, label %20, !llvm.loop !146

27:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lattice_modifiers_calc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.VirtualModifierData, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #14
  %7 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp ne ptr %9, null
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  call void @BKE_displist_free(ptr noundef nonnull %12) #16
  br label %18

15:                                               ; preds = %2
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %17 = call ptr %16(i64 noundef 56, ptr noundef nonnull @.str.7) #16
  store ptr %17, ptr %11, align 8, !tbaa !69
  br label %18

18:                                               ; preds = %15, %14
  %19 = icmp eq ptr %7, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %18, %55
  %21 = phi ptr [ %57, %55 ], [ %7, %18 ]
  %22 = phi ptr [ %56, %55 ], [ null, %18 ]
  %23 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !147
  %25 = call ptr @modifierType_getInfo(i32 noundef %24) #16
  %26 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 7
  store ptr %0, ptr %26, align 8, !tbaa !149
  %27 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !150
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %20
  %32 = and i32 %28, 4
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %10, %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %25, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !151
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call zeroext i8 %37(ptr noundef nonnull %21, i32 noundef 0) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %25, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !153
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = icmp eq ptr %22, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call ptr @BKE_lattice_vertexcos_get(ptr noundef %1, ptr noundef nonnull %4) #15
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %22, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %25, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !154
  %54 = load i32, ptr %4, align 4, !tbaa !44
  call void %53(ptr noundef nonnull %21, ptr noundef %1, ptr noundef null, ptr noundef %51, i32 noundef %54, i32 noundef 0) #16
  br label %55

55:                                               ; preds = %42, %39, %31, %20, %50
  %56 = phi ptr [ %51, %50 ], [ %22, %20 ], [ %22, %31 ], [ %22, %39 ], [ %22, %42 ]
  %57 = load ptr, ptr %21, align 8, !tbaa !155
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %20, !llvm.loop !156

59:                                               ; preds = %55
  %60 = icmp eq ptr %56, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %18, %59
  %62 = call ptr @BKE_lattice_vertexcos_get(ptr noundef %1, ptr noundef nonnull %4) #15
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi ptr [ %56, %59 ], [ %62, %61 ]
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %66 = call ptr %65(i64 noundef 72, ptr noundef nonnull @.str.8) #16
  %67 = getelementptr inbounds %struct.DispList, ptr %66, i64 0, i32 2
  store i16 7, ptr %67, align 8, !tbaa !157
  %68 = getelementptr inbounds %struct.DispList, ptr %66, i64 0, i32 4
  store i32 1, ptr %68, align 4, !tbaa !158
  %69 = load i32, ptr %4, align 4, !tbaa !44
  %70 = getelementptr inbounds %struct.DispList, ptr %66, i64 0, i32 5
  store i32 %69, ptr %70, align 8, !tbaa !135
  %71 = getelementptr inbounds %struct.DispList, ptr %66, i64 0, i32 8
  store ptr %64, ptr %71, align 8, !tbaa !102
  %72 = load ptr, ptr %11, align 8, !tbaa !69
  call void @BLI_addtail(ptr noundef %72, ptr noundef %66) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_lattice_active_point_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !92
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 14
  %10 = load i32, ptr %9, align 4, !tbaa !74
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_lattice_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !92
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
  tail call fastcc void @zero_v3(ptr noundef %1) #15
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 21
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %29, %25 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.BPoint, ptr %27, i64 %26
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef %28) #15
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, %24
  br i1 %30, label %31, label %25, !llvm.loop !159

31:                                               ; preds = %25, %8
  %32 = sitofp i32 %20 to float
  %33 = fdiv float 1.000000e+00, %32
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %33) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !160 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !52
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !161 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lattice_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !92
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
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %29) #16
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %25
  br i1 %31, label %32, label %26, !llvm.loop !162

32:                                               ; preds = %26, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lattice_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 8, !tbaa !52
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !52
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %6, align 8, !tbaa !52
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !52
  call void @BKE_lattice_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %21) #16
  %23 = getelementptr inbounds %struct.BPoint, ptr %21, i64 1
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %19, !llvm.loop !163

25:                                               ; preds = %19, %3
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Key, ptr %29, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %38

35:                                               ; preds = %46, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !55
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38, !llvm.loop !164

38:                                               ; preds = %31, %35
  %39 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %40 = getelementptr inbounds %struct.KeyBlock, ptr %39, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !165
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %35, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.KeyBlock, ptr %39, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !167
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %50, %46 ], [ %45, %43 ]
  %48 = phi i32 [ %49, %46 ], [ %41, %43 ]
  %49 = add nsw i32 %48, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %47) #16
  %50 = getelementptr inbounds float, ptr %47, i64 3
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %35, label %46, !llvm.loop !168

52:                                               ; preds = %35, %31, %27, %25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = zext nneg i32 %14 to i64
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %26, %22 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.BPoint, ptr %24, i64 %23
  tail call fastcc void @add_v3_v3(ptr noundef %25, ptr noundef %1) #15
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %21
  br i1 %27, label %28, label %22, !llvm.loop !169

28:                                               ; preds = %22, %3
  %29 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = icmp ne ptr %30, null
  %32 = select i1 %31, i1 %18, i1 false
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = zext nneg i32 %14 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %42, %35 ]
  %37 = load ptr, ptr %29, align 8, !tbaa !91
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct.Lattice, ptr %38, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.BPoint, ptr %40, i64 %36
  tail call fastcc void @add_v3_v3(ptr noundef %41, ptr noundef %1) #15
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %35, !llvm.loop !170

44:                                               ; preds = %35, %28
  %45 = icmp eq i8 %2, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Key, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !55
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %57

54:                                               ; preds = %65, %57
  %55 = load ptr, ptr %58, align 8, !tbaa !55
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57, !llvm.loop !171

57:                                               ; preds = %50, %54
  %58 = phi ptr [ %55, %54 ], [ %52, %50 ]
  %59 = getelementptr inbounds %struct.KeyBlock, ptr %58, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !165
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %54, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.KeyBlock, ptr %58, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !167
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %69, %65 ], [ %64, %62 ]
  %67 = phi i32 [ %68, %65 ], [ %60, %62 ]
  %68 = add nsw i32 %67, -1
  tail call fastcc void @add_v3_v3(ptr noundef %66, ptr noundef %1) #15
  %69 = getelementptr inbounds float, ptr %66, i64 3
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %54, label %65, !llvm.loop !172

71:                                               ; preds = %54, %50, %46, %44
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @where_on_path_deform(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 !PGOFuncName !173 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.CurveCache, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !174
  %12 = getelementptr inbounds %struct.BevList, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %84, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.BevList, ptr %11, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = fcmp olt float %1, 0.000000e+00
  %21 = fcmp ogt float %1, 1.000000e+00
  %22 = select i1 %21, float 1.000000e+00, float %1
  %23 = select i1 %20, float 0.000000e+00, float %22
  br label %24

24:                                               ; preds = %15, %19
  %25 = phi float [ %23, %19 ], [ %1, %15 ]
  %26 = tail call i32 @where_on_path(ptr noundef nonnull %0, float noundef %25, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #16
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %18, %27
  %29 = xor i1 %27, true
  %30 = zext i1 %29 to i8
  br i1 %28, label %84, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %8, align 8, !tbaa !69
  %33 = getelementptr inbounds %struct.CurveCache, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %35 = fcmp olt float %1, 0.000000e+00
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load ptr, ptr %34, align 8, !tbaa !175
  %38 = getelementptr inbounds %struct.PathPoint, ptr %37, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %38, ptr noundef %37) #15
  %39 = getelementptr inbounds %struct.Path, ptr %34, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !176
  %41 = sitofp i32 %40 to float
  %42 = fmul float %41, %1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %42) #15
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #15
  %43 = icmp eq ptr %4, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %34, align 8, !tbaa !175
  %46 = getelementptr inbounds %struct.PathPoint, ptr %45, i64 0, i32 1
  tail call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %46) #16
  br label %47

47:                                               ; preds = %44, %36
  %48 = icmp eq ptr %5, null
  br i1 %48, label %83, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %34, align 8, !tbaa !175
  %51 = getelementptr inbounds %struct.PathPoint, ptr %50, i64 0, i32 2
  br label %80

52:                                               ; preds = %31
  %53 = fcmp ogt float %1, 1.000000e+00
  br i1 %53, label %54, label %83

54:                                               ; preds = %52
  %55 = load ptr, ptr %34, align 8, !tbaa !175
  %56 = getelementptr inbounds %struct.Path, ptr %34, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !176
  %58 = sext i32 %57 to i64
  %59 = getelementptr %struct.PathPoint, ptr %55, i64 %58
  %60 = getelementptr %struct.PathPoint, ptr %59, i64 -1
  %61 = getelementptr %struct.PathPoint, ptr %59, i64 -2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %60, ptr noundef %61) #15
  %62 = fadd float %1, -1.000000e+00
  %63 = sitofp i32 %57 to float
  %64 = fmul float %62, %63
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %64) #15
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #15
  %65 = icmp eq ptr %4, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %54
  %67 = load ptr, ptr %34, align 8, !tbaa !175
  %68 = load i32, ptr %56, align 8, !tbaa !176
  %69 = sext i32 %68 to i64
  %70 = getelementptr %struct.PathPoint, ptr %67, i64 %69
  %71 = getelementptr %struct.PathPoint, ptr %70, i64 -1, i32 1
  tail call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef %71) #16
  br label %72

72:                                               ; preds = %66, %54
  %73 = icmp eq ptr %5, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr %34, align 8, !tbaa !175
  %76 = load i32, ptr %56, align 8, !tbaa !176
  %77 = sext i32 %76 to i64
  %78 = getelementptr %struct.PathPoint, ptr %75, i64 %77
  %79 = getelementptr %struct.PathPoint, ptr %78, i64 -1, i32 2
  br label %80

80:                                               ; preds = %49, %74
  %81 = phi ptr [ %79, %74 ], [ %51, %49 ]
  %82 = load float, ptr %81, align 4, !tbaa !177
  store float %82, ptr %5, align 4, !tbaa !52
  br label %83

83:                                               ; preds = %80, %52, %72, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %84

84:                                               ; preds = %24, %83, %6
  %85 = phi i8 [ 0, %6 ], [ 1, %83 ], [ %30, %24 ]
  ret i8 %85
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !179 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @quat_apply_track(ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @vec_apply_track(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !180 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !181 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !182 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !183 {
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
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !184 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }

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
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!42, !42, i64 0}
!53 = !{!35, !37, i64 200}
!54 = distinct !{!54, !51}
!55 = !{!37, !37, i64 0}
!56 = !{!35, !40, i64 134}
!57 = !{!35, !42, i64 152}
!58 = !{!35, !42, i64 164}
!59 = !{!35, !42, i64 156}
!60 = !{!35, !42, i64 168}
!61 = !{!35, !42, i64 160}
!62 = !{!35, !42, i64 172}
!63 = distinct !{!63, !51}
!64 = distinct !{!64, !51}
!65 = distinct !{!65, !51}
!66 = !{!35, !38, i64 144}
!67 = !{!35, !38, i64 145}
!68 = !{!35, !38, i64 146}
!69 = !{!70, !37, i64 1280}
!70 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !71, i64 312, !37, i64 360, !72, i64 368, !72, i64 384, !72, i64 400, !72, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !72, i64 1056, !72, i64 1072, !72, i64 1088, !72, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !72, i64 1176, !72, i64 1192, !72, i64 1208, !72, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !73, i64 1304, !73, i64 1312, !41, i64 1320, !41, i64 1324, !72, i64 1328, !72, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !72, i64 1400, !37, i64 1416}
!71 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!72 = !{!"ListBase", !37, i64 0, !37, i64 8}
!73 = !{!"long", !38, i64 0}
!74 = !{!35, !41, i64 148}
!75 = distinct !{!75, !51}
!76 = !{!70, !40, i64 136}
!77 = !{!78, !37, i64 1320}
!78 = !{!"DerivedMesh", !79, i64 0, !79, i64 200, !79, i64 400, !79, i64 600, !79, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!79 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!80 = !{!70, !37, i64 296}
!81 = !{!82, !37, i64 248}
!82 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !79, i64 280, !79, i64 480, !79, i64 680, !79, i64 880, !79, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !42, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!83 = !{!38, !38, i64 0}
!84 = !{!78, !37, i64 1288}
!85 = distinct !{!85, !51}
!86 = distinct !{!86, !51}
!87 = !{!"lattice.c:copy_v3_v3"}
!88 = !{!35, !37, i64 192}
!89 = !{!90, !37, i64 200}
!90 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !72, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !41, i64 220}
!91 = !{!35, !37, i64 272}
!92 = !{!93, !37, i64 0}
!93 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!94 = !{!35, !37, i64 120}
!95 = !{!96, !37, i64 0}
!96 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !72, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!97 = !{!35, !37, i64 24}
!98 = !{!35, !41, i64 100}
!99 = !{!70, !37, i64 24}
!100 = distinct !{!100, !51}
!101 = distinct !{!101, !51}
!102 = !{!103, !37, i64 32}
!103 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = distinct !{!106, !51}
!107 = !{!108, !37, i64 8}
!108 = !{!"LatticeDeformData", !37, i64 0, !37, i64 8, !38, i64 16}
!109 = !{!108, !37, i64 0}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = !{!"lattice.c:madd_v3_v3fl"}
!114 = !{!115, !41, i64 268}
!115 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !72, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !42, i64 252, !42, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !116, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!116 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!117 = !{i8 0, i8 2}
!118 = distinct !{!118, !51}
!119 = distinct !{!119, !51}
!120 = distinct !{!120, !51}
!121 = distinct !{!121, !51}
!122 = distinct !{!122, !51}
!123 = distinct !{!123, !51}
!124 = !{!"lattice.c:init_curve_deform"}
!125 = !{!126, !41, i64 188}
!126 = !{!"", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 88, !38, i64 152, !41, i64 188}
!127 = !{!"lattice.c:calc_curve_deform"}
!128 = !{!129, !37, i64 48}
!129 = !{!"CurveCache", !72, i64 0, !72, i64 16, !72, i64 32, !37, i64 48}
!130 = !{!131, !42, i64 12}
!131 = !{!"Path", !37, i64 0, !41, i64 8, !42, i64 12}
!132 = !{!70, !40, i64 956}
!133 = !{!70, !37, i64 216}
!134 = !{!70, !40, i64 138}
!135 = !{!103, !41, i64 24}
!136 = distinct !{!136, !51}
!137 = distinct !{!137, !51}
!138 = distinct !{!138, !51}
!139 = distinct !{!139, !51}
!140 = distinct !{!140, !51}
!141 = distinct !{!141, !51}
!142 = distinct !{!142, !51}
!143 = !{!"lattice.c:latt_bp"}
!144 = !{!"lattice.c:mul_v3_fl"}
!145 = distinct !{!145, !51}
!146 = distinct !{!146, !51}
!147 = !{!148, !41, i64 16}
!148 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!149 = !{!148, !37, i64 96}
!150 = !{!148, !41, i64 20}
!151 = !{!152, !37, i64 160}
!152 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!153 = !{!152, !41, i64 68}
!154 = !{!152, !37, i64 88}
!155 = !{!148, !37, i64 0}
!156 = distinct !{!156, !51}
!157 = !{!103, !40, i64 16}
!158 = !{!103, !41, i64 20}
!159 = distinct !{!159, !51}
!160 = !{!"lattice.c:zero_v3"}
!161 = !{!"lattice.c:add_v3_v3"}
!162 = distinct !{!162, !51}
!163 = distinct !{!163, !51}
!164 = distinct !{!164, !51}
!165 = !{!166, !41, i64 32}
!166 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !42, i64 176, !42, i64 180}
!167 = !{!166, !37, i64 40}
!168 = distinct !{!168, !51}
!169 = distinct !{!169, !51}
!170 = distinct !{!170, !51}
!171 = distinct !{!171, !51}
!172 = distinct !{!172, !51}
!173 = !{!"lattice.c:where_on_path_deform"}
!174 = !{!129, !37, i64 16}
!175 = !{!131, !37, i64 0}
!176 = !{!131, !41, i64 8}
!177 = !{!178, !42, i64 32}
!178 = !{!"PathPoint", !38, i64 0, !38, i64 16, !42, i64 32, !42, i64 36}
!179 = !{!"lattice.c:normalize_v3"}
!180 = !{!"lattice.c:add_v3_v3v3"}
!181 = !{!"lattice.c:sub_v3_v3v3"}
!182 = !{!"lattice.c:normalize_v3_v3"}
!183 = !{!"lattice.c:dot_v3v3"}
!184 = !{!"lattice.c:mul_v3_v3fl"}
