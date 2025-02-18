; ModuleID = 'blender/source/blender/editors/object/object_lattice.c'
source_filename = "blender/source/blender/editors/object/object_lattice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.EditLatt = type { ptr, i32, [4 x i8] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.anon = type { ptr, float, i32, [2 x float] }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.UndoLattice = type { ptr, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, float, i32, [2 x float] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"editlatt\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Lattice MDeformVert\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"actkey->data\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Select Random\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Randomly select UVW control points\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"LATTICE_OT_select_random\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Percentage of elements to select randomly\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Select Mirror\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Select mirrored lattice points\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"LATTICE_OT_select_mirror\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@object_axis_unsigned_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"Select vertex directly linked to already selected ones\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"LATTICE_OT_select_more\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"Deselect vertices at the boundary of each selection region\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"LATTICE_OT_select_less\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Change selection of all UVW control points\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"LATTICE_OT_select_all\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Select Ungrouped\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"LATTICE_OT_select_ungrouped\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Select vertices without a group\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Make Regular\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"Set UVW control points a uniform distance apart\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"LATTICE_OT_make_regular\00", align 1
@LATTICE_OT_flip.flip_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.14 }, %struct.EnumPropertyItem { i32 1, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.14 }, %struct.EnumPropertyItem { i32 2, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.14 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"U (X) Axis\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"V (Y) Axis\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"W (Z) Axis\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Flip (Distortion Free)\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"Mirror all control points without inverting the lattice deform\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"LATTICE_OT_flip\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"Flip Axis\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"Coordinates along this axis get flipped\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@__func__.lattice_select_mirror_exec = private unnamed_addr constant [27 x i8] c"lattice_select_mirror_exec\00", align 1
@__func__.lattice_select_more_less = private unnamed_addr constant [25 x i8] c"lattice_select_more_less\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"No weights/vertex groups on object\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"lattice_flip(): Unknown flipping axis (%d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"UndoLattice\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @free_editLatt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %13(ptr noundef nonnull %10) #13
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !53
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !54
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %24, %21
  %26 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %27 = load i16, ptr %26, align 4, !tbaa !55
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %25, %28
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %16, i32 noundef %29) #13
  br label %30

30:                                               ; preds = %18, %14
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %31(ptr noundef %8) #13
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %33 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void %32(ptr noundef %33) #13
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_defvert_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @make_editLatt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %13(ptr noundef nonnull %10) #13
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !53
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !54
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %24, %21
  %26 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %27 = load i16, ptr %26, align 4, !tbaa !55
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %25, %28
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %16, i32 noundef %29) #13
  br label %30

30:                                               ; preds = %18, %14
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %31(ptr noundef %8) #13
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %33 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void %32(ptr noundef %33) #13
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %1, %30
  %35 = tail call ptr @BKE_keyblock_from_object(ptr noundef %0) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @BKE_key_convert_to_lattice(ptr noundef nonnull %35, ptr noundef %3) #13
  br label %38

38:                                               ; preds = %37, %34
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %40 = tail call ptr %39(i64 noundef 16, ptr noundef nonnull @.str) #13
  store ptr %40, ptr %4, align 8, !tbaa !46
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %42 = tail call ptr %41(ptr noundef %3) #13
  %43 = load ptr, ptr %4, align 8, !tbaa !46
  store ptr %42, ptr %43, align 8, !tbaa !48
  %44 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %45 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 21
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = tail call ptr %44(ptr noundef %46) #13
  %48 = load ptr, ptr %4, align 8, !tbaa !46
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.Lattice, ptr %49, i64 0, i32 21
  store ptr %47, ptr %50, align 8, !tbaa !50
  %51 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 24
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %56 = load i16, ptr %55, align 8, !tbaa !53
  %57 = sext i16 %56 to i32
  %58 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  %59 = load i16, ptr %58, align 2, !tbaa !54
  %60 = sext i16 %59 to i32
  %61 = mul nsw i32 %60, %57
  %62 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  %63 = load i16, ptr %62, align 4, !tbaa !55
  %64 = sext i16 %63 to i32
  %65 = mul nsw i32 %61, %64
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %67 = sext i32 %65 to i64
  %68 = shl nsw i64 %67, 4
  %69 = tail call ptr %66(i64 noundef %68, ptr noundef nonnull @.str.1) #13
  %70 = load ptr, ptr %4, align 8, !tbaa !46
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds %struct.Lattice, ptr %71, i64 0, i32 24
  store ptr %69, ptr %72, align 8, !tbaa !52
  %73 = load ptr, ptr %51, align 8, !tbaa !52
  tail call void @BKE_defvert_array_copy(ptr noundef %69, ptr noundef %73, i32 noundef %65) #13
  br label %74

74:                                               ; preds = %54, %38
  %75 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %76 = load ptr, ptr %75, align 8, !tbaa !56
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %80 = load i16, ptr %79, align 2, !tbaa !57
  %81 = sext i16 %80 to i32
  %82 = load ptr, ptr %4, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.EditLatt, ptr %82, i64 0, i32 1
  store i32 %81, ptr %83, align 8, !tbaa !58
  br label %84

84:                                               ; preds = %78, %74
  ret void
}

declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_key_convert_to_lattice(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_defvert_array_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @load_editLatt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.EditLatt, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 6
  %14 = add nsw i32 %8, -1
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %13, i32 noundef %14) #13
  %16 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !53
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %21, %18
  %23 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !55
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %10
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %31(ptr noundef nonnull %28) #13
  br label %32

32:                                               ; preds = %30, %10
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %34 = load ptr, ptr %11, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.Key, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !61
  %37 = mul nsw i32 %36, %26
  %38 = sext i32 %37 to i64
  %39 = tail call ptr %33(i64 noundef %38, ptr noundef nonnull @.str.2) #13
  store ptr %39, ptr %27, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 8
  store i32 %26, ptr %40, align 8, !tbaa !63
  %41 = icmp eq i32 %26, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i32 [ %49, %45 ], [ %26, %42 ]
  %47 = phi ptr [ %57, %45 ], [ %39, %42 ]
  %48 = phi ptr [ %58, %45 ], [ %44, %42 ]
  %49 = add nsw i32 %46, -1
  %50 = load float, ptr %48, align 4, !tbaa !64
  store float %50, ptr %47, align 4, !tbaa !64
  %51 = getelementptr inbounds float, ptr %48, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !64
  %53 = getelementptr inbounds float, ptr %47, i64 1
  store float %52, ptr %53, align 4, !tbaa !64
  %54 = getelementptr inbounds float, ptr %48, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !64
  %56 = getelementptr inbounds float, ptr %47, i64 2
  store float %55, ptr %56, align 4, !tbaa !64
  %57 = getelementptr inbounds float, ptr %47, i64 3
  %58 = getelementptr inbounds %struct.BPoint, ptr %48, i64 1
  %59 = icmp eq i32 %49, 0
  br i1 %59, label %92, label %45, !llvm.loop !65

60:                                               ; preds = %1
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %62 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 21
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  tail call void %61(ptr noundef %63) #13
  %64 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %65 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  %67 = tail call ptr %64(ptr noundef %66) #13
  store ptr %67, ptr %62, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 5
  %69 = load i16, ptr %68, align 2, !tbaa !68
  %70 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 5
  store i16 %69, ptr %70, align 2, !tbaa !68
  %71 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 2
  %72 = load i16, ptr %71, align 8, !tbaa !53
  %73 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  store i16 %72, ptr %73, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 3
  %75 = load i16, ptr %74, align 2, !tbaa !54
  %76 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  store i16 %75, ptr %76, align 2, !tbaa !54
  %77 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !55
  %79 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  store i16 %78, ptr %79, align 4, !tbaa !55
  %80 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 10
  %81 = load i8, ptr %80, align 8, !tbaa !69
  %82 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 10
  store i8 %81, ptr %82, align 8, !tbaa !69
  %83 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 11
  %84 = load i8, ptr %83, align 1, !tbaa !70
  %85 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 11
  store i8 %84, ptr %85, align 1, !tbaa !70
  %86 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 12
  %87 = load i8, ptr %86, align 2, !tbaa !71
  %88 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 12
  store i8 %87, ptr %88, align 2, !tbaa !71
  %89 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 14
  %90 = load i32, ptr %89, align 4, !tbaa !72
  %91 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 14
  store i32 %90, ptr %91, align 4, !tbaa !72
  br label %92

92:                                               ; preds = %45, %32, %60
  %93 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 24
  %94 = load ptr, ptr %93, align 8, !tbaa !52
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %98 = load i16, ptr %97, align 8, !tbaa !53
  %99 = sext i16 %98 to i32
  %100 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  %101 = load i16, ptr %100, align 2, !tbaa !54
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %102, %99
  %104 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  %105 = load i16, ptr %104, align 4, !tbaa !55
  %106 = sext i16 %105 to i32
  %107 = mul nsw i32 %103, %106
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %94, i32 noundef %107) #13
  store ptr null, ptr %93, align 8, !tbaa !52
  br label %108

108:                                              ; preds = %96, %92
  %109 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 24
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = icmp eq ptr %110, null
  br i1 %111, label %129, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %114 = load i16, ptr %113, align 8, !tbaa !53
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  %117 = load i16, ptr %116, align 2, !tbaa !54
  %118 = sext i16 %117 to i32
  %119 = mul nsw i32 %118, %115
  %120 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  %121 = load i16, ptr %120, align 4, !tbaa !55
  %122 = sext i16 %121 to i32
  %123 = mul nsw i32 %119, %122
  %124 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %125 = sext i32 %123 to i64
  %126 = shl nsw i64 %125, 4
  %127 = tail call ptr %124(i64 noundef %126, ptr noundef nonnull @.str.1) #13
  store ptr %127, ptr %93, align 8, !tbaa !52
  %128 = load ptr, ptr %109, align 8, !tbaa !52
  tail call void @BKE_defvert_array_copy(ptr noundef %127, ptr noundef %128, i32 noundef %123) #13
  br label %129

129:                                              ; preds = %112, %108
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @LATTICE_OT_select_random(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_select_random_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.6, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+02) #13
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.6) #13
  %12 = fdiv float %11, 1.000000e+02
  %13 = load ptr, ptr %9, align 8, !tbaa !82
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.44) #13
  %15 = icmp eq i32 %14, 1
  %16 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !53
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %21, %18
  %23 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !55
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  br label %31

31:                                               ; preds = %28, %53
  %32 = phi i32 [ %34, %53 ], [ %26, %28 ]
  %33 = phi ptr [ %54, %53 ], [ %30, %28 ]
  %34 = add nsw i32 %32, -1
  %35 = getelementptr inbounds %struct.BPoint, ptr %33, i64 0, i32 4
  %36 = load i16, ptr %35, align 2, !tbaa !84
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = tail call float @BLI_frand() #13
  %40 = fcmp olt float %39, %12
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  br i1 %15, label %42, label %49

42:                                               ; preds = %41
  %43 = load i16, ptr %35, align 2, !tbaa !84
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.BPoint, ptr %33, i64 0, i32 3
  %47 = load i16, ptr %46, align 4, !tbaa !86
  %48 = or i16 %47, 1
  store i16 %48, ptr %46, align 4, !tbaa !86
  br label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.BPoint, ptr %33, i64 0, i32 3
  %51 = load i16, ptr %50, align 4, !tbaa !86
  %52 = and i16 %51, -2
  store i16 %52, ptr %50, align 4, !tbaa !86
  br label %53

53:                                               ; preds = %49, %45, %42, %38, %31
  %54 = getelementptr inbounds %struct.BPoint, ptr %33, i64 1
  %55 = icmp eq i32 %34, 0
  br i1 %55, label %56, label %31, !llvm.loop !87

56:                                               ; preds = %53, %2
  br i1 %15, label %59, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 14
  store i32 -1, ptr %58, align 4, !tbaa !72
  br label %59

59:                                               ; preds = %57, %56
  %60 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %60) #13
  ret i32 4
}

declare i32 @ED_operator_editlattice(ptr noundef) #2

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @LATTICE_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_select_mirror_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @object_axis_unsigned_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !81
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.15) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !82
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.12) #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false)
  %15 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !53
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !54
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !55
  %24 = sext i16 %23 to i32
  %25 = mul i32 %21, %24
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 %26
  store i8 1, ptr %27, align 1, !tbaa !88
  %28 = and i32 %12, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 14
  store i32 -1, ptr %31, align 4, !tbaa !72
  br label %32

32:                                               ; preds = %30, %2
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %34 = ashr i32 %25, 5
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call ptr %33(i64 noundef %37, ptr noundef nonnull @__func__.lattice_select_mirror_exec) #13
  tail call void @BKE_lattice_bitmap_from_flag(ptr noundef %9, ptr noundef %38, i16 noundef signext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %39 = icmp sgt i32 %25, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %32
  %41 = load i8, ptr %3, align 1, !tbaa !88
  %42 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !88
  %44 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !88
  %46 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 21
  %47 = zext nneg i32 %25 to i64
  br label %48

48:                                               ; preds = %40, %74
  %49 = phi i64 [ 0, %40 ], [ %75, %74 ]
  %50 = trunc i64 %49 to i32
  %51 = tail call i32 @BKE_lattice_index_flip(ptr noundef %9, i32 noundef %50, i8 noundef zeroext %41, i8 noundef zeroext %43, i8 noundef zeroext %45) #13
  %52 = load ptr, ptr %46, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.BPoint, ptr %52, i64 %49, i32 4
  %54 = load i16, ptr %53, align 2, !tbaa !84
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = ashr i32 %51, 5
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %38, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !89
  %61 = and i32 %51, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.BPoint, ptr %52, i64 %49, i32 3
  %67 = load i16, ptr %66, align 4, !tbaa !86
  %68 = or i16 %67, 1
  store i16 %68, ptr %66, align 4, !tbaa !86
  br label %74

69:                                               ; preds = %56
  br i1 %29, label %70, label %74

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.BPoint, ptr %52, i64 %49, i32 3
  %72 = load i16, ptr %71, align 4, !tbaa !86
  %73 = and i16 %72, -2
  store i16 %73, ptr %71, align 4, !tbaa !86
  br label %74

74:                                               ; preds = %65, %70, %69, %48
  %75 = add nuw nsw i64 %49, 1
  %76 = icmp eq i64 %75, %47
  br i1 %76, label %77, label %48, !llvm.loop !90

77:                                               ; preds = %74, %32
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %78(ptr noundef %38) #13
  %79 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %79) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LATTICE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_select_more_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @lattice_select_more_less(ptr noundef %0, i8 noundef zeroext 1)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LATTICE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_select_less_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @lattice_select_more_less(ptr noundef %0, i8 noundef zeroext 0)
  ret i32 4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_setflagsLatt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !53
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !54
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, %12
  %17 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 4
  %18 = load i16, ptr %17, align 4, !tbaa !55
  %19 = sext i16 %18 to i32
  %20 = mul nsw i32 %16, %19
  %21 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 14
  store i32 -1, ptr %21, align 4, !tbaa !72
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = trunc i32 %1 to i16
  br label %25

25:                                               ; preds = %23, %34
  %26 = phi i32 [ %20, %23 ], [ %28, %34 ]
  %27 = phi ptr [ %9, %23 ], [ %35, %34 ]
  %28 = add nsw i32 %26, -1
  %29 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 4
  %30 = load i16, ptr %29, align 2, !tbaa !84
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  store i16 %24, ptr %33, align 4, !tbaa !86
  br label %34

34:                                               ; preds = %32, %25
  %35 = getelementptr inbounds %struct.BPoint, ptr %27, i64 1
  %36 = icmp eq i32 %28, 0
  br i1 %36, label %37, label %25, !llvm.loop !91

37:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LATTICE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_select_all_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.44) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !53
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !54
  %19 = sext i16 %18 to i32
  %20 = mul nsw i32 %19, %16
  %21 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 4
  %22 = load i16, ptr %21, align 4, !tbaa !55
  %23 = sext i16 %22 to i32
  %24 = mul nsw i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 21
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  br label %29

29:                                               ; preds = %26, %41
  %30 = phi i32 [ %32, %41 ], [ %24, %26 ]
  %31 = phi ptr [ %42, %41 ], [ %28, %26 ]
  %32 = add nsw i32 %30, -1
  %33 = getelementptr inbounds %struct.BPoint, ptr %31, i64 0, i32 4
  %34 = load i16, ptr %33, align 2, !tbaa !84
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.BPoint, ptr %31, i64 0, i32 3
  %38 = load i16, ptr %37, align 4, !tbaa !86
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %29
  %42 = getelementptr inbounds %struct.BPoint, ptr %31, i64 1
  %43 = icmp eq i32 %32, 0
  br i1 %43, label %44, label %29, !llvm.loop !92

44:                                               ; preds = %41, %36, %10, %2
  %45 = phi i32 [ %8, %2 ], [ 1, %10 ], [ 2, %36 ], [ 1, %41 ]
  switch i32 %45, label %143 [
    i32 1, label %46
    i32 2, label %78
    i32 3, label %110
  ]

46:                                               ; preds = %44
  %47 = load ptr, ptr %4, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 26
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.Lattice, ptr %50, i64 0, i32 21
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.Lattice, ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 8, !tbaa !53
  %55 = sext i16 %54 to i32
  %56 = getelementptr inbounds %struct.Lattice, ptr %50, i64 0, i32 3
  %57 = load i16, ptr %56, align 2, !tbaa !54
  %58 = sext i16 %57 to i32
  %59 = mul nsw i32 %58, %55
  %60 = getelementptr inbounds %struct.Lattice, ptr %50, i64 0, i32 4
  %61 = load i16, ptr %60, align 4, !tbaa !55
  %62 = sext i16 %61 to i32
  %63 = mul nsw i32 %59, %62
  %64 = getelementptr inbounds %struct.Lattice, ptr %50, i64 0, i32 14
  store i32 -1, ptr %64, align 4, !tbaa !72
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %143, label %66

66:                                               ; preds = %46, %75
  %67 = phi i32 [ %69, %75 ], [ %63, %46 ]
  %68 = phi ptr [ %76, %75 ], [ %52, %46 ]
  %69 = add nsw i32 %67, -1
  %70 = getelementptr inbounds %struct.BPoint, ptr %68, i64 0, i32 4
  %71 = load i16, ptr %70, align 2, !tbaa !84
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.BPoint, ptr %68, i64 0, i32 3
  store i16 1, ptr %74, align 4, !tbaa !86
  br label %75

75:                                               ; preds = %73, %66
  %76 = getelementptr inbounds %struct.BPoint, ptr %68, i64 1
  %77 = icmp eq i32 %69, 0
  br i1 %77, label %143, label %66, !llvm.loop !91

78:                                               ; preds = %44
  %79 = load ptr, ptr %4, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.Lattice, ptr %79, i64 0, i32 26
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.Lattice, ptr %82, i64 0, i32 21
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = getelementptr inbounds %struct.Lattice, ptr %82, i64 0, i32 2
  %86 = load i16, ptr %85, align 8, !tbaa !53
  %87 = sext i16 %86 to i32
  %88 = getelementptr inbounds %struct.Lattice, ptr %82, i64 0, i32 3
  %89 = load i16, ptr %88, align 2, !tbaa !54
  %90 = sext i16 %89 to i32
  %91 = mul nsw i32 %90, %87
  %92 = getelementptr inbounds %struct.Lattice, ptr %82, i64 0, i32 4
  %93 = load i16, ptr %92, align 4, !tbaa !55
  %94 = sext i16 %93 to i32
  %95 = mul nsw i32 %91, %94
  %96 = getelementptr inbounds %struct.Lattice, ptr %82, i64 0, i32 14
  store i32 -1, ptr %96, align 4, !tbaa !72
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %143, label %98

98:                                               ; preds = %78, %107
  %99 = phi i32 [ %101, %107 ], [ %95, %78 ]
  %100 = phi ptr [ %108, %107 ], [ %84, %78 ]
  %101 = add nsw i32 %99, -1
  %102 = getelementptr inbounds %struct.BPoint, ptr %100, i64 0, i32 4
  %103 = load i16, ptr %102, align 2, !tbaa !84
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.BPoint, ptr %100, i64 0, i32 3
  store i16 0, ptr %106, align 4, !tbaa !86
  br label %107

107:                                              ; preds = %105, %98
  %108 = getelementptr inbounds %struct.BPoint, ptr %100, i64 1
  %109 = icmp eq i32 %101, 0
  br i1 %109, label %143, label %98, !llvm.loop !91

110:                                              ; preds = %44
  %111 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = load ptr, ptr %112, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.Lattice, ptr %113, i64 0, i32 21
  %115 = load ptr, ptr %114, align 8, !tbaa !50
  %116 = getelementptr inbounds %struct.Lattice, ptr %113, i64 0, i32 2
  %117 = load i16, ptr %116, align 8, !tbaa !53
  %118 = sext i16 %117 to i32
  %119 = getelementptr inbounds %struct.Lattice, ptr %113, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !54
  %121 = sext i16 %120 to i32
  %122 = mul nsw i32 %121, %118
  %123 = getelementptr inbounds %struct.Lattice, ptr %113, i64 0, i32 4
  %124 = load i16, ptr %123, align 4, !tbaa !55
  %125 = sext i16 %124 to i32
  %126 = mul nsw i32 %122, %125
  %127 = getelementptr inbounds %struct.Lattice, ptr %113, i64 0, i32 14
  store i32 -1, ptr %127, align 4, !tbaa !72
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %110, %140
  %130 = phi i32 [ %132, %140 ], [ %126, %110 ]
  %131 = phi ptr [ %141, %140 ], [ %115, %110 ]
  %132 = add nsw i32 %130, -1
  %133 = getelementptr inbounds %struct.BPoint, ptr %131, i64 0, i32 4
  %134 = load i16, ptr %133, align 2, !tbaa !84
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.BPoint, ptr %131, i64 0, i32 3
  %138 = load i16, ptr %137, align 4, !tbaa !86
  %139 = xor i16 %138, 1
  store i16 %139, ptr %137, align 4, !tbaa !86
  br label %140

140:                                              ; preds = %136, %129
  %141 = getelementptr inbounds %struct.BPoint, ptr %131, i64 1
  %142 = icmp eq i32 %132, 0
  br i1 %142, label %143, label %129, !llvm.loop !93

143:                                              ; preds = %140, %107, %75, %110, %78, %46, %44
  %144 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %144) #13
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @LATTICE_OT_select_ungrouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !77
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_select_ungrouped_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_select_ungrouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 24
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.45) #13
  br label %94

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.15) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 26
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !53
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !54
  %36 = sext i16 %35 to i32
  %37 = mul nsw i32 %36, %33
  %38 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !55
  %40 = sext i16 %39 to i32
  %41 = mul nsw i32 %37, %40
  %42 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 14
  store i32 -1, ptr %42, align 4, !tbaa !72
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %24, %53
  %45 = phi i32 [ %47, %53 ], [ %41, %24 ]
  %46 = phi ptr [ %54, %53 ], [ %30, %24 ]
  %47 = add nsw i32 %45, -1
  %48 = getelementptr inbounds %struct.BPoint, ptr %46, i64 0, i32 4
  %49 = load i16, ptr %48, align 2, !tbaa !84
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.BPoint, ptr %46, i64 0, i32 3
  store i16 0, ptr %52, align 4, !tbaa !86
  br label %53

53:                                               ; preds = %51, %44
  %54 = getelementptr inbounds %struct.BPoint, ptr %46, i64 1
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %56, label %44, !llvm.loop !91

56:                                               ; preds = %53, %24, %19
  %57 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !53
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !54
  %62 = sext i16 %61 to i32
  %63 = mul nsw i32 %62, %59
  %64 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %65 = load i16, ptr %64, align 4, !tbaa !55
  %66 = sext i16 %65 to i32
  %67 = mul nsw i32 %63, %66
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %71 = load ptr, ptr %70, align 8, !tbaa !50
  %72 = load ptr, ptr %13, align 8, !tbaa !52
  br label %73

73:                                               ; preds = %69, %87
  %74 = phi i32 [ %88, %87 ], [ 0, %69 ]
  %75 = phi ptr [ %89, %87 ], [ %71, %69 ]
  %76 = phi ptr [ %90, %87 ], [ %72, %69 ]
  %77 = getelementptr inbounds %struct.BPoint, ptr %75, i64 0, i32 4
  %78 = load i16, ptr %77, align 2, !tbaa !84
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load ptr, ptr %76, align 8, !tbaa !96
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.BPoint, ptr %75, i64 0, i32 3
  %85 = load i16, ptr %84, align 4, !tbaa !86
  %86 = or i16 %85, 1
  store i16 %86, ptr %84, align 4, !tbaa !86
  br label %87

87:                                               ; preds = %73, %83, %80
  %88 = add nuw nsw i32 %74, 1
  %89 = getelementptr inbounds %struct.BPoint, ptr %75, i64 1
  %90 = getelementptr inbounds %struct.MDeformVert, ptr %76, i64 1
  %91 = icmp eq i32 %88, %67
  br i1 %91, label %92, label %73, !llvm.loop !98

92:                                               ; preds = %87, %56
  %93 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %93) #13
  br label %94

94:                                               ; preds = %92, %16
  %95 = phi i32 [ 2, %16 ], [ 4, %92 ]
  ret i32 %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LATTICE_OT_make_regular(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_regular_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @make_regular_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_regular_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  br label %15

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %14, %11 ], [ %7, %5 ]
  %17 = phi ptr [ %14, %11 ], [ %10, %5 ]
  %18 = phi ptr [ %12, %11 ], [ %3, %5 ]
  %19 = getelementptr inbounds %struct.Lattice, ptr %16, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !53
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.Lattice, ptr %16, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !54
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.Lattice, ptr %16, i64 0, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !55
  %27 = sext i16 %26 to i32
  tail call void @BKE_lattice_resize(ptr noundef %17, i32 noundef %21, i32 noundef %24, i32 noundef %27, ptr noundef null) #13
  tail call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 2) #13
  %28 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %29) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @make_regular_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_editlattice(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !99
  %10 = icmp eq i16 %9, 22
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %4, %7, %1
  %13 = phi i32 [ 1, %1 ], [ 0, %4 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @LATTICE_OT_flip(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_flip_exec, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @LATTICE_OT_flip.flip_items, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #13
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !101
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @lattice_flip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.12) #13
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !53
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !54
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 4
  %19 = load i16, ptr %18, align 4, !tbaa !55
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %17, %14
  %22 = mul i32 %21, %20
  switch i32 %6, label %25 [
    i32 0, label %27
    i32 1, label %23
    i32 2, label %24
  ]

23:                                               ; preds = %2
  br label %27

24:                                               ; preds = %2
  br label %27

25:                                               ; preds = %2
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %6)
  br label %257

27:                                               ; preds = %2, %24, %23
  %28 = phi i16 [ %19, %24 ], [ %16, %23 ], [ %13, %2 ]
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = sitofp i32 %22 to float
  %33 = fdiv float 1.000000e+00, %32
  %34 = icmp sgt i32 %22, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = zext i32 %6 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ 0, %35 ], [ %46, %39 ]
  %41 = phi ptr [ %37, %35 ], [ %47, %39 ]
  %42 = phi float [ 0.000000e+00, %35 ], [ %45, %39 ]
  %43 = getelementptr inbounds [4 x float], ptr %41, i64 0, i64 %38
  %44 = load float, ptr %43, align 4, !tbaa !64
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %33, float %42)
  %46 = add nuw nsw i32 %40, 1
  %47 = getelementptr inbounds %struct.BPoint, ptr %41, i64 1
  %48 = icmp eq i32 %46, %22
  br i1 %48, label %49, label %39, !llvm.loop !102

49:                                               ; preds = %39, %31, %27
  %50 = phi float [ 0.000000e+00, %27 ], [ 0.000000e+00, %31 ], [ %45, %39 ]
  switch i32 %6, label %255 [
    i32 0, label %69
    i32 1, label %60
    i32 2, label %51
  ]

51:                                               ; preds = %49
  %52 = icmp sgt i16 %16, 0
  br i1 %52, label %53, label %255

53:                                               ; preds = %51
  %54 = icmp sgt i16 %13, 0
  %55 = sdiv i32 %20, 2
  %56 = icmp sgt i16 %19, 1
  %57 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %58 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %59 = tail call i32 @llvm.smax.i32(i32 %55, i32 1)
  br label %196

60:                                               ; preds = %49
  %61 = icmp sgt i16 %19, 0
  br i1 %61, label %62, label %255

62:                                               ; preds = %60
  %63 = icmp sgt i16 %13, 0
  %64 = sdiv i32 %17, 2
  %65 = icmp sgt i16 %16, 1
  %66 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %67 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %68 = tail call i32 @llvm.smax.i32(i32 %64, i32 1)
  br label %137

69:                                               ; preds = %49
  %70 = icmp sgt i16 %19, 0
  br i1 %70, label %71, label %255

71:                                               ; preds = %69
  %72 = icmp sgt i16 %16, 0
  %73 = sdiv i32 %14, 2
  %74 = icmp sgt i16 %13, 1
  %75 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %76 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 21
  %77 = tail call i32 @llvm.smax.i32(i32 %73, i32 1)
  br label %78

78:                                               ; preds = %71, %134
  %79 = phi i32 [ 0, %71 ], [ %135, %134 ]
  br i1 %72, label %80, label %134

80:                                               ; preds = %78, %131
  %81 = phi i32 [ %132, %131 ], [ 0, %78 ]
  br i1 %74, label %82, label %122

82:                                               ; preds = %80, %82
  %83 = phi i32 [ %120, %82 ], [ 0, %80 ]
  %84 = load i16, ptr %12, align 8, !tbaa !53
  %85 = sext i16 %84 to i32
  %86 = xor i32 %83, -1
  %87 = add i32 %85, %86
  %88 = load ptr, ptr %75, align 8, !tbaa !50
  %89 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %83, i32 noundef %81, i32 noundef %79) #13
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.BPoint, ptr %88, i64 %90
  %92 = load ptr, ptr %75, align 8, !tbaa !50
  %93 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %87, i32 noundef %81, i32 noundef %79) #13
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.BPoint, ptr %92, i64 %94
  %96 = load float, ptr %91, align 4, !tbaa !64
  %97 = load float, ptr %95, align 4, !tbaa !64
  store float %97, ptr %91, align 4, !tbaa !64
  store float %96, ptr %95, align 4, !tbaa !64
  %98 = getelementptr inbounds float, ptr %91, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !64
  %100 = getelementptr inbounds float, ptr %95, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !64
  store float %101, ptr %98, align 4, !tbaa !64
  store float %99, ptr %100, align 4, !tbaa !64
  %102 = getelementptr inbounds float, ptr %91, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !64
  %104 = getelementptr inbounds float, ptr %95, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !64
  store float %105, ptr %102, align 4, !tbaa !64
  store float %103, ptr %104, align 4, !tbaa !64
  %106 = load ptr, ptr %75, align 8, !tbaa !50
  %107 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %83, i32 noundef %81, i32 noundef %79) #13
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.BPoint, ptr %106, i64 %108
  %110 = load float, ptr %109, align 4, !tbaa !64
  %111 = fsub float %50, %110
  %112 = fadd float %50, %111
  store float %112, ptr %109, align 4, !tbaa !64
  %113 = load ptr, ptr %75, align 8, !tbaa !50
  %114 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %87, i32 noundef %81, i32 noundef %79) #13
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.BPoint, ptr %113, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !64
  %118 = fsub float %50, %117
  %119 = fadd float %50, %118
  store float %119, ptr %116, align 4, !tbaa !64
  %120 = add nuw nsw i32 %83, 1
  %121 = icmp eq i32 %120, %77
  br i1 %121, label %122, label %82, !llvm.loop !103

122:                                              ; preds = %82, %80
  br i1 %30, label %131, label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %76, align 8, !tbaa !50
  %125 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %73, i32 noundef %81, i32 noundef %79) #13
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.BPoint, ptr %124, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !64
  %129 = fsub float %50, %128
  %130 = fadd float %50, %129
  store float %130, ptr %127, align 4, !tbaa !64
  br label %131

131:                                              ; preds = %122, %123
  %132 = add nuw nsw i32 %81, 1
  %133 = icmp eq i32 %132, %17
  br i1 %133, label %134, label %80, !llvm.loop !104

134:                                              ; preds = %131, %78
  %135 = add nuw nsw i32 %79, 1
  %136 = icmp eq i32 %135, %20
  br i1 %136, label %255, label %78, !llvm.loop !105

137:                                              ; preds = %62, %193
  %138 = phi i32 [ 0, %62 ], [ %194, %193 ]
  br i1 %63, label %139, label %193

139:                                              ; preds = %137, %190
  %140 = phi i32 [ %191, %190 ], [ 0, %137 ]
  br i1 %65, label %141, label %181

141:                                              ; preds = %139, %141
  %142 = phi i32 [ %179, %141 ], [ 0, %139 ]
  %143 = load i16, ptr %15, align 2, !tbaa !54
  %144 = sext i16 %143 to i32
  %145 = xor i32 %142, -1
  %146 = add i32 %144, %145
  %147 = load ptr, ptr %66, align 8, !tbaa !50
  %148 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %140, i32 noundef %142, i32 noundef %138) #13
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.BPoint, ptr %147, i64 %149
  %151 = load ptr, ptr %66, align 8, !tbaa !50
  %152 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %140, i32 noundef %146, i32 noundef %138) #13
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.BPoint, ptr %151, i64 %153
  %155 = load float, ptr %150, align 4, !tbaa !64
  %156 = load float, ptr %154, align 4, !tbaa !64
  store float %156, ptr %150, align 4, !tbaa !64
  store float %155, ptr %154, align 4, !tbaa !64
  %157 = getelementptr inbounds float, ptr %150, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !64
  %159 = getelementptr inbounds float, ptr %154, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !64
  store float %160, ptr %157, align 4, !tbaa !64
  store float %158, ptr %159, align 4, !tbaa !64
  %161 = getelementptr inbounds float, ptr %150, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !64
  %163 = getelementptr inbounds float, ptr %154, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !64
  store float %164, ptr %161, align 4, !tbaa !64
  store float %162, ptr %163, align 4, !tbaa !64
  %165 = load ptr, ptr %66, align 8, !tbaa !50
  %166 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %140, i32 noundef %142, i32 noundef %138) #13
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.BPoint, ptr %165, i64 %167, i32 0, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !64
  %170 = fsub float %50, %169
  %171 = fadd float %50, %170
  store float %171, ptr %168, align 4, !tbaa !64
  %172 = load ptr, ptr %66, align 8, !tbaa !50
  %173 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %140, i32 noundef %146, i32 noundef %138) #13
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.BPoint, ptr %172, i64 %174, i32 0, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !64
  %177 = fsub float %50, %176
  %178 = fadd float %50, %177
  store float %178, ptr %175, align 4, !tbaa !64
  %179 = add nuw nsw i32 %142, 1
  %180 = icmp eq i32 %179, %68
  br i1 %180, label %181, label %141, !llvm.loop !106

181:                                              ; preds = %141, %139
  br i1 %30, label %190, label %182

182:                                              ; preds = %181
  %183 = load ptr, ptr %67, align 8, !tbaa !50
  %184 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %140, i32 noundef %64, i32 noundef %138) #13
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.BPoint, ptr %183, i64 %185, i32 0, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !64
  %188 = fsub float %50, %187
  %189 = fadd float %50, %188
  store float %189, ptr %186, align 4, !tbaa !64
  br label %190

190:                                              ; preds = %181, %182
  %191 = add nuw nsw i32 %140, 1
  %192 = icmp eq i32 %191, %14
  br i1 %192, label %193, label %139, !llvm.loop !107

193:                                              ; preds = %190, %137
  %194 = add nuw nsw i32 %138, 1
  %195 = icmp eq i32 %194, %20
  br i1 %195, label %255, label %137, !llvm.loop !108

196:                                              ; preds = %53, %252
  %197 = phi i32 [ 0, %53 ], [ %253, %252 ]
  br i1 %54, label %198, label %252

198:                                              ; preds = %196, %249
  %199 = phi i32 [ %250, %249 ], [ 0, %196 ]
  br i1 %56, label %200, label %240

200:                                              ; preds = %198, %200
  %201 = phi i32 [ %238, %200 ], [ 0, %198 ]
  %202 = load i16, ptr %18, align 4, !tbaa !55
  %203 = sext i16 %202 to i32
  %204 = xor i32 %201, -1
  %205 = add i32 %203, %204
  %206 = load ptr, ptr %57, align 8, !tbaa !50
  %207 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %199, i32 noundef %197, i32 noundef %201) #13
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.BPoint, ptr %206, i64 %208
  %210 = load ptr, ptr %57, align 8, !tbaa !50
  %211 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %199, i32 noundef %197, i32 noundef %205) #13
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.BPoint, ptr %210, i64 %212
  %214 = load float, ptr %209, align 4, !tbaa !64
  %215 = load float, ptr %213, align 4, !tbaa !64
  store float %215, ptr %209, align 4, !tbaa !64
  store float %214, ptr %213, align 4, !tbaa !64
  %216 = getelementptr inbounds float, ptr %209, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !64
  %218 = getelementptr inbounds float, ptr %213, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !64
  store float %219, ptr %216, align 4, !tbaa !64
  store float %217, ptr %218, align 4, !tbaa !64
  %220 = getelementptr inbounds float, ptr %209, i64 2
  %221 = load float, ptr %220, align 4, !tbaa !64
  %222 = getelementptr inbounds float, ptr %213, i64 2
  %223 = load float, ptr %222, align 4, !tbaa !64
  store float %223, ptr %220, align 4, !tbaa !64
  store float %221, ptr %222, align 4, !tbaa !64
  %224 = load ptr, ptr %57, align 8, !tbaa !50
  %225 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %199, i32 noundef %197, i32 noundef %201) #13
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.BPoint, ptr %224, i64 %226, i32 0, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !64
  %229 = fsub float %50, %228
  %230 = fadd float %50, %229
  store float %230, ptr %227, align 4, !tbaa !64
  %231 = load ptr, ptr %57, align 8, !tbaa !50
  %232 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %199, i32 noundef %197, i32 noundef %205) #13
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.BPoint, ptr %231, i64 %233, i32 0, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !64
  %236 = fsub float %50, %235
  %237 = fadd float %50, %236
  store float %237, ptr %234, align 4, !tbaa !64
  %238 = add nuw nsw i32 %201, 1
  %239 = icmp eq i32 %238, %59
  br i1 %239, label %240, label %200, !llvm.loop !109

240:                                              ; preds = %200, %198
  br i1 %30, label %249, label %241

241:                                              ; preds = %240
  %242 = load ptr, ptr %58, align 8, !tbaa !50
  %243 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %11, i32 noundef %199, i32 noundef %197, i32 noundef %55) #13
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.BPoint, ptr %242, i64 %244, i32 0, i64 2
  %246 = load float, ptr %245, align 4, !tbaa !64
  %247 = fsub float %50, %246
  %248 = fadd float %50, %247
  store float %248, ptr %245, align 4, !tbaa !64
  br label %249

249:                                              ; preds = %240, %241
  %250 = add nuw nsw i32 %199, 1
  %251 = icmp eq i32 %250, %14
  br i1 %251, label %252, label %198, !llvm.loop !110

252:                                              ; preds = %249, %196
  %253 = add nuw nsw i32 %197, 1
  %254 = icmp eq i32 %253, %17
  br i1 %254, label %255, label %196, !llvm.loop !111

255:                                              ; preds = %252, %193, %134, %51, %60, %69, %49
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  %256 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %256) #13
  br label %257

257:                                              ; preds = %255, %25
  %258 = phi i32 [ 2, %25 ], [ 4, %255 ]
  ret i32 %258
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @mouse_lattice(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.anon, align 8
  %7 = alloca %struct.ViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %15 = call float @ED_view3d_select_dist_px() #13
  %16 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store float %15, ptr %16, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 2
  store i32 1, ptr %17, align 4, !tbaa !116
  %18 = load i32, ptr %1, align 4, !tbaa !89
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 3
  store float %19, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds i32, ptr %1, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !89
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 3, i64 1
  store float %23, ptr %24, align 4, !tbaa !64
  %25 = load ptr, ptr %8, align 8, !tbaa !112
  %26 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  call void @ED_view3d_init_mats_rv3d(ptr noundef %25, ptr noundef %27) #13
  call void @lattice_foreachScreenVert(ptr noundef nonnull %7, ptr noundef nonnull @findnearestLattvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #13
  %28 = load ptr, ptr %6, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %105, label %30

30:                                               ; preds = %5
  %31 = icmp eq i8 %2, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.BPoint, ptr %28, i64 0, i32 3
  %34 = load i16, ptr %33, align 4, !tbaa !86
  %35 = or i16 %34, 1
  store i16 %35, ptr %33, align 4, !tbaa !86
  br label %86

36:                                               ; preds = %30
  %37 = icmp eq i8 %3, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.BPoint, ptr %28, i64 0, i32 3
  %40 = load i16, ptr %39, align 4, !tbaa !86
  %41 = and i16 %40, -2
  store i16 %41, ptr %39, align 4, !tbaa !86
  br label %86

42:                                               ; preds = %36
  %43 = icmp eq i8 %4, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.BPoint, ptr %28, i64 0, i32 3
  %46 = load i16, ptr %45, align 4, !tbaa !86
  %47 = xor i16 %46, 1
  store i16 %47, ptr %45, align 4, !tbaa !86
  br label %86

48:                                               ; preds = %42
  %49 = load ptr, ptr %8, align 8, !tbaa !112
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 26
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.Lattice, ptr %54, i64 0, i32 21
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = getelementptr inbounds %struct.Lattice, ptr %54, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !53
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds %struct.Lattice, ptr %54, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !54
  %62 = sext i16 %61 to i32
  %63 = mul nsw i32 %62, %59
  %64 = getelementptr inbounds %struct.Lattice, ptr %54, i64 0, i32 4
  %65 = load i16, ptr %64, align 4, !tbaa !55
  %66 = sext i16 %65 to i32
  %67 = mul nsw i32 %63, %66
  %68 = getelementptr inbounds %struct.Lattice, ptr %54, i64 0, i32 14
  store i32 -1, ptr %68, align 4, !tbaa !72
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %48, %79
  %71 = phi i32 [ %73, %79 ], [ %67, %48 ]
  %72 = phi ptr [ %80, %79 ], [ %56, %48 ]
  %73 = add nsw i32 %71, -1
  %74 = getelementptr inbounds %struct.BPoint, ptr %72, i64 0, i32 4
  %75 = load i16, ptr %74, align 2, !tbaa !84
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.BPoint, ptr %72, i64 0, i32 3
  store i16 0, ptr %78, align 4, !tbaa !86
  br label %79

79:                                               ; preds = %77, %70
  %80 = getelementptr inbounds %struct.BPoint, ptr %72, i64 1
  %81 = icmp eq i32 %73, 0
  br i1 %81, label %82, label %70, !llvm.loop !91

82:                                               ; preds = %79, %48
  %83 = getelementptr inbounds %struct.BPoint, ptr %28, i64 0, i32 3
  %84 = load i16, ptr %83, align 4, !tbaa !86
  %85 = or i16 %84, 1
  store i16 %85, ptr %83, align 4, !tbaa !86
  br label %86

86:                                               ; preds = %38, %82, %44, %32
  %87 = getelementptr inbounds %struct.BPoint, ptr %28, i64 0, i32 3
  %88 = load i16, ptr %87, align 4, !tbaa !86
  %89 = and i16 %88, 1
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 21
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = ptrtoint ptr %28 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 36
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %86, %91
  %100 = phi i32 [ %98, %91 ], [ -1, %86 ]
  %101 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 14
  store i32 %100, ptr %101, align 4, !tbaa !72
  %102 = load ptr, ptr %8, align 8, !tbaa !112
  %103 = getelementptr inbounds %struct.Object, ptr %102, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %104) #13
  br label %105

105:                                              ; preds = %5, %99
  %106 = phi i8 [ 1, %99 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  ret i8 %106
}

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @undo_push_lattice(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_editlatt, ptr noundef nonnull @free_undoLatt, ptr noundef nonnull @undoLatt_to_editLatt, ptr noundef nonnull @editLatt_to_undoLatt, ptr noundef nonnull @validate_undoLatt) #13
  ret void
}

declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @get_editlatt(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !99
  %7 = icmp eq i16 %6, 22
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @free_undoLatt(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !119
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %5(ptr noundef nonnull %2) #13
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %7(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @undoLatt_to_editLatt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !53
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !55
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = load ptr, ptr %0, align 8, !tbaa !119
  %17 = shl nsw i64 %7, 32
  %18 = mul nsw i64 %17, %10
  %19 = mul i64 %18, %13
  %20 = ashr exact i64 %19, 32
  %21 = mul nsw i64 %20, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %16, i64 %21, i1 false)
  %22 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !121
  %24 = load ptr, ptr %1, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 14
  store i32 %23, ptr %25, align 4, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @editLatt_to_undoLatt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.47) #13
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr %5(ptr noundef %8) #13
  store ptr %9, ptr %4, align 8, !tbaa !119
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !53
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !122
  %15 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !54
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !123
  %19 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !55
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !124
  %23 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 14
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 4
  store i32 %24, ptr %25, align 4, !tbaa !121
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @validate_undoLatt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !122
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !53
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !123
  %13 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !54
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !55
  %22 = sext i16 %21 to i32
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %17, %10, %2
  %26 = phi i32 [ 0, %10 ], [ 0, %2 ], [ %24, %17 ]
  ret i32 %26
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_frand() local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @BKE_lattice_bitmap_from_flag(ptr noundef, ptr noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_lattice_index_flip(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lattice_select_more_less(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !53
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !54
  %14 = sext i16 %13 to i32
  %15 = mul nsw i32 %14, %11
  %16 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !55
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %15, %18
  %20 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 14
  store i32 -1, ptr %20, align 4, !tbaa !72
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %22 = ashr i32 %19, 5
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr %21(i64 noundef %25, ptr noundef nonnull @__func__.lattice_select_more_less) #13
  tail call void @BKE_lattice_bitmap_from_flag(ptr noundef %8, ptr noundef %26, i16 noundef signext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %27 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %28 = load i16, ptr %16, align 4, !tbaa !55
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %30, label %291

30:                                               ; preds = %2
  %31 = load ptr, ptr %27, align 8, !tbaa !50
  %32 = zext i8 %1 to i16
  %33 = zext nneg i8 %1 to i32
  %34 = zext nneg i8 %1 to i32
  %35 = zext nneg i8 %1 to i32
  %36 = zext nneg i8 %1 to i32
  %37 = zext nneg i8 %1 to i32
  %38 = zext nneg i8 %1 to i32
  %39 = icmp ne i8 %1, 0
  %40 = zext i1 %39 to i16
  br label %41

41:                                               ; preds = %30, %285
  %42 = phi ptr [ %31, %30 ], [ %286, %285 ]
  %43 = phi i32 [ 0, %30 ], [ %287, %285 ]
  %44 = load i16, ptr %12, align 2, !tbaa !54
  %45 = icmp sgt i16 %44, 0
  br i1 %45, label %46, label %285

46:                                               ; preds = %41
  %47 = add nuw nsw i32 %43, 1
  %48 = add nsw i32 %43, -1
  %49 = icmp eq i32 %43, 0
  br label %50

50:                                               ; preds = %46, %279
  %51 = phi ptr [ %42, %46 ], [ %280, %279 ]
  %52 = phi i32 [ 0, %46 ], [ %281, %279 ]
  %53 = load i16, ptr %9, align 8, !tbaa !53
  %54 = icmp sgt i16 %53, 0
  br i1 %54, label %55, label %279

55:                                               ; preds = %50
  %56 = zext nneg i16 %53 to i32
  %57 = add nuw nsw i32 %52, 1
  %58 = add nsw i32 %52, -1
  %59 = icmp eq i32 %52, 0
  br label %60

60:                                               ; preds = %55, %273
  %61 = phi i32 [ %56, %55 ], [ %277, %273 ]
  %62 = phi ptr [ %51, %55 ], [ %274, %273 ]
  %63 = phi i32 [ 0, %55 ], [ %275, %273 ]
  %64 = getelementptr inbounds %struct.BPoint, ptr %62, i64 0, i32 4
  %65 = load i16, ptr %64, align 2, !tbaa !84
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %273

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.BPoint, ptr %62, i64 0, i32 3
  %69 = load i16, ptr %68, align 4, !tbaa !86
  %70 = and i16 %69, 1
  %71 = xor i16 %70, %32
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %73, label %273

73:                                               ; preds = %67
  %74 = add nuw nsw i32 %63, 1
  %75 = icmp slt i32 %74, %61
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load i16, ptr %12, align 2, !tbaa !54
  %78 = sext i16 %77 to i32
  %79 = icmp slt i32 %52, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i16, ptr %16, align 4, !tbaa !55
  %82 = sext i16 %81 to i32
  %83 = icmp slt i32 %43, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %8, i32 noundef %74, i32 noundef %52, i32 noundef %43) #13
  %86 = load ptr, ptr %27, align 8, !tbaa !50
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.BPoint, ptr %86, i64 %87, i32 4
  %89 = load i16, ptr %88, align 2, !tbaa !84
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = ashr i32 %85, 5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %26, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !89
  %96 = and i32 %85, 31
  %97 = lshr i32 %95, %96
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, %33
  %100 = zext i1 %99 to i8
  br label %101

101:                                              ; preds = %73, %76, %80, %84, %91
  %102 = phi i8 [ 0, %80 ], [ 0, %76 ], [ 0, %73 ], [ %100, %91 ], [ 0, %84 ]
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %269

104:                                              ; preds = %101
  %105 = add nsw i32 %63, -1
  %106 = icmp eq i32 %63, 0
  br i1 %106, label %136, label %107

107:                                              ; preds = %104
  %108 = load i16, ptr %9, align 8, !tbaa !53
  %109 = sext i16 %108 to i32
  %110 = icmp sgt i32 %63, %109
  br i1 %110, label %136, label %111

111:                                              ; preds = %107
  %112 = load i16, ptr %12, align 2, !tbaa !54
  %113 = sext i16 %112 to i32
  %114 = icmp slt i32 %52, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = load i16, ptr %16, align 4, !tbaa !55
  %117 = sext i16 %116 to i32
  %118 = icmp slt i32 %43, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %8, i32 noundef %105, i32 noundef %52, i32 noundef %43) #13
  %121 = load ptr, ptr %27, align 8, !tbaa !50
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.BPoint, ptr %121, i64 %122, i32 4
  %124 = load i16, ptr %123, align 2, !tbaa !84
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %119
  %127 = ashr i32 %120, 5
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, ptr %26, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !89
  %131 = and i32 %120, 31
  %132 = lshr i32 %130, %131
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, %34
  %135 = zext i1 %134 to i8
  br label %136

136:                                              ; preds = %104, %107, %111, %115, %119, %126
  %137 = phi i8 [ 0, %115 ], [ 0, %111 ], [ 0, %107 ], [ 0, %104 ], [ %135, %126 ], [ 0, %119 ]
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %269

139:                                              ; preds = %136
  %140 = load i16, ptr %9, align 8, !tbaa !53
  %141 = sext i16 %140 to i32
  %142 = icmp slt i32 %63, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %139
  %144 = load i16, ptr %12, align 2, !tbaa !54
  %145 = sext i16 %144 to i32
  %146 = icmp slt i32 %57, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %143
  %148 = load i16, ptr %16, align 4, !tbaa !55
  %149 = sext i16 %148 to i32
  %150 = icmp slt i32 %43, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %147
  %152 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %8, i32 noundef %63, i32 noundef %57, i32 noundef %43) #13
  %153 = load ptr, ptr %27, align 8, !tbaa !50
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds %struct.BPoint, ptr %153, i64 %154, i32 4
  %156 = load i16, ptr %155, align 2, !tbaa !84
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = ashr i32 %152, 5
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %26, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !89
  %163 = and i32 %152, 31
  %164 = lshr i32 %162, %163
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, %35
  %167 = zext i1 %166 to i8
  br label %168

168:                                              ; preds = %139, %143, %147, %151, %158
  %169 = phi i8 [ 0, %147 ], [ 0, %143 ], [ 0, %139 ], [ %167, %158 ], [ 0, %151 ]
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %269

171:                                              ; preds = %168
  %172 = load i16, ptr %9, align 8, !tbaa !53
  %173 = sext i16 %172 to i32
  %174 = icmp sge i32 %63, %173
  %175 = or i1 %59, %174
  br i1 %175, label %201, label %176

176:                                              ; preds = %171
  %177 = load i16, ptr %12, align 2, !tbaa !54
  %178 = sext i16 %177 to i32
  %179 = icmp sgt i32 %52, %178
  br i1 %179, label %201, label %180

180:                                              ; preds = %176
  %181 = load i16, ptr %16, align 4, !tbaa !55
  %182 = sext i16 %181 to i32
  %183 = icmp slt i32 %43, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %8, i32 noundef %63, i32 noundef %58, i32 noundef %43) #13
  %186 = load ptr, ptr %27, align 8, !tbaa !50
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds %struct.BPoint, ptr %186, i64 %187, i32 4
  %189 = load i16, ptr %188, align 2, !tbaa !84
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = ashr i32 %185, 5
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, ptr %26, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !89
  %196 = and i32 %185, 31
  %197 = lshr i32 %195, %196
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, %36
  %200 = zext i1 %199 to i8
  br label %201

201:                                              ; preds = %171, %176, %180, %184, %191
  %202 = phi i8 [ 0, %180 ], [ 0, %176 ], [ 0, %171 ], [ %200, %191 ], [ 0, %184 ]
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %269

204:                                              ; preds = %201
  %205 = load i16, ptr %9, align 8, !tbaa !53
  %206 = sext i16 %205 to i32
  %207 = icmp slt i32 %63, %206
  br i1 %207, label %208, label %233

208:                                              ; preds = %204
  %209 = load i16, ptr %12, align 2, !tbaa !54
  %210 = sext i16 %209 to i32
  %211 = icmp slt i32 %52, %210
  br i1 %211, label %212, label %233

212:                                              ; preds = %208
  %213 = load i16, ptr %16, align 4, !tbaa !55
  %214 = sext i16 %213 to i32
  %215 = icmp slt i32 %47, %214
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %8, i32 noundef %63, i32 noundef %52, i32 noundef %47) #13
  %218 = load ptr, ptr %27, align 8, !tbaa !50
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds %struct.BPoint, ptr %218, i64 %219, i32 4
  %221 = load i16, ptr %220, align 2, !tbaa !84
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %216
  %224 = ashr i32 %217, 5
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %26, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !89
  %228 = and i32 %217, 31
  %229 = lshr i32 %227, %228
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, %37
  %232 = zext i1 %231 to i8
  br label %233

233:                                              ; preds = %204, %208, %212, %216, %223
  %234 = phi i8 [ 0, %212 ], [ 0, %208 ], [ 0, %204 ], [ %232, %223 ], [ 0, %216 ]
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %269

236:                                              ; preds = %233
  %237 = load i16, ptr %9, align 8, !tbaa !53
  %238 = sext i16 %237 to i32
  %239 = icmp slt i32 %63, %238
  br i1 %239, label %240, label %266

240:                                              ; preds = %236
  %241 = load i16, ptr %12, align 2, !tbaa !54
  %242 = sext i16 %241 to i32
  %243 = icmp sge i32 %52, %242
  %244 = or i1 %49, %243
  br i1 %244, label %266, label %245

245:                                              ; preds = %240
  %246 = load i16, ptr %16, align 4, !tbaa !55
  %247 = sext i16 %246 to i32
  %248 = icmp sgt i32 %43, %247
  br i1 %248, label %266, label %249

249:                                              ; preds = %245
  %250 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %8, i32 noundef %63, i32 noundef %52, i32 noundef %48) #13
  %251 = load ptr, ptr %27, align 8, !tbaa !50
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds %struct.BPoint, ptr %251, i64 %252, i32 4
  %254 = load i16, ptr %253, align 2, !tbaa !84
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %249
  %257 = ashr i32 %250, 5
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, ptr %26, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !89
  %261 = and i32 %250, 31
  %262 = lshr i32 %260, %261
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, %38
  %265 = zext i1 %264 to i8
  br label %266

266:                                              ; preds = %236, %240, %245, %249, %256
  %267 = phi i8 [ 0, %245 ], [ 0, %240 ], [ 0, %236 ], [ %265, %256 ], [ 0, %249 ]
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %266, %233, %201, %168, %136, %101
  %270 = load i16, ptr %68, align 4, !tbaa !86
  %271 = and i16 %270, -2
  %272 = or disjoint i16 %271, %40
  store i16 %272, ptr %68, align 4, !tbaa !86
  br label %273

273:                                              ; preds = %269, %266, %67, %60
  %274 = getelementptr inbounds %struct.BPoint, ptr %62, i64 1
  %275 = add nuw nsw i32 %63, 1
  %276 = load i16, ptr %9, align 8, !tbaa !53
  %277 = sext i16 %276 to i32
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %60, label %279, !llvm.loop !125

279:                                              ; preds = %273, %50
  %280 = phi ptr [ %51, %50 ], [ %274, %273 ]
  %281 = add nuw nsw i32 %52, 1
  %282 = load i16, ptr %12, align 2, !tbaa !54
  %283 = sext i16 %282 to i32
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %50, label %285, !llvm.loop !126

285:                                              ; preds = %279, %41
  %286 = phi ptr [ %42, %41 ], [ %280, %279 ]
  %287 = add nuw nsw i32 %43, 1
  %288 = load i16, ptr %16, align 4, !tbaa !55
  %289 = sext i16 %288 to i32
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %41, label %291, !llvm.loop !127

291:                                              ; preds = %285, %2
  %292 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %292(ptr noundef %26) #13
  %293 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %293) #13
  ret void
}

declare i32 @BKE_lattice_index_from_uvw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_lattice_resize(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lattice_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestLattvert__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #10 {
  %4 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 3
  %5 = load float, ptr %2, align 4, !tbaa !64
  %6 = load float, ptr %4, align 4, !tbaa !64
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = fsub float %9, %11
  %13 = tail call float @llvm.fabs.f32(float %7)
  %14 = tail call float @llvm.fabs.f32(float %12)
  %15 = fadd float %13, %14
  %16 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %17 = load i16, ptr %16, align 4, !tbaa !86
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !116
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = fadd float %15, 5.000000e+00
  br label %26

26:                                               ; preds = %24, %20, %3
  %27 = phi float [ %25, %24 ], [ %15, %20 ], [ %15, %3 ]
  %28 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %29 = load float, ptr %28, align 8, !tbaa !114
  %30 = fcmp olt float %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store float %27, ptr %28, align 8, !tbaa !114
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %32

32:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !37, i64 296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 272}
!47 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!48 = !{!49, !37, i64 0}
!49 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!50 = !{!47, !37, i64 176}
!51 = !{!37, !37, i64 0}
!52 = !{!47, !37, i64 200}
!53 = !{!47, !40, i64 128}
!54 = !{!47, !40, i64 130}
!55 = !{!47, !40, i64 132}
!56 = !{!47, !37, i64 192}
!57 = !{!35, !40, i64 1266}
!58 = !{!49, !41, i64 8}
!59 = !{!60, !37, i64 40}
!60 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !44, i64 176, !44, i64 180}
!61 = !{!62, !41, i64 168}
!62 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !43, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!63 = !{!60, !41, i64 32}
!64 = !{!44, !44, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!47, !40, i64 134}
!69 = !{!47, !38, i64 144}
!70 = !{!47, !38, i64 145}
!71 = !{!47, !38, i64 146}
!72 = !{!47, !41, i64 148}
!73 = !{!74, !37, i64 0}
!74 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !75, i64 152, !40, i64 184}
!75 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!76 = !{!74, !37, i64 24}
!77 = !{!74, !37, i64 8}
!78 = !{!74, !37, i64 32}
!79 = !{!74, !37, i64 72}
!80 = !{!74, !40, i64 184}
!81 = !{!74, !37, i64 88}
!82 = !{!83, !37, i64 112}
!83 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!84 = !{!85, !40, i64 26}
!85 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!86 = !{!85, !40, i64 24}
!87 = distinct !{!87, !66, !67}
!88 = !{!38, !38, i64 0}
!89 = !{!41, !41, i64 0}
!90 = distinct !{!90, !66, !67}
!91 = distinct !{!91, !66, !67}
!92 = distinct !{!92, !66, !67}
!93 = distinct !{!93, !66, !67}
!94 = !{!43, !37, i64 0}
!95 = !{!83, !37, i64 120}
!96 = !{!97, !37, i64 0}
!97 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!98 = distinct !{!98, !66, !67}
!99 = !{!35, !40, i64 136}
!100 = !{!74, !37, i64 48}
!101 = !{!74, !37, i64 104}
!102 = distinct !{!102, !66, !67}
!103 = distinct !{!103, !66, !67}
!104 = distinct !{!104, !66, !67}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = distinct !{!107, !66, !67}
!108 = distinct !{!108, !66, !67}
!109 = distinct !{!109, !66, !67}
!110 = distinct !{!110, !66, !67}
!111 = distinct !{!111, !66, !67}
!112 = !{!113, !37, i64 16}
!113 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!114 = !{!115, !44, i64 8}
!115 = !{!"", !37, i64 0, !44, i64 8, !41, i64 12, !38, i64 16}
!116 = !{!115, !41, i64 12}
!117 = !{!113, !37, i64 40}
!118 = !{!115, !37, i64 0}
!119 = !{!120, !37, i64 0}
!120 = !{!"UndoLattice", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!121 = !{!120, !41, i64 20}
!122 = !{!120, !41, i64 8}
!123 = !{!120, !41, i64 12}
!124 = !{!120, !41, i64 16}
!125 = distinct !{!125, !66, !67}
!126 = distinct !{!126, !66, !67}
!127 = distinct !{!127, !66, !67}
