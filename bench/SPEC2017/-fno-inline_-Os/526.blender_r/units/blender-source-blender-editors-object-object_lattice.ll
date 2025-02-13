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
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.anon = type { ptr, float, i32, [2 x float] }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %13(ptr noundef nonnull %10) #14
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
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %16, i32 noundef %29) #14
  br label %30

30:                                               ; preds = %18, %14
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %31(ptr noundef nonnull %8) #14
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %33 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void %32(ptr noundef %33) #14
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_defvert_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_editLatt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @free_editLatt(ptr noundef %0) #15
  %4 = tail call ptr @BKE_keyblock_from_object(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BKE_key_convert_to_lattice(ptr noundef nonnull %4, ptr noundef %3) #14
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %9 = tail call ptr %8(i64 noundef 16, ptr noundef nonnull @.str) #14
  %10 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  store ptr %9, ptr %10, align 8, !tbaa !46
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %12 = tail call ptr %11(ptr noundef %3) #14
  %13 = load ptr, ptr %10, align 8, !tbaa !46
  store ptr %12, ptr %13, align 8, !tbaa !48
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = tail call ptr %14(ptr noundef %16) #14
  %18 = load ptr, ptr %10, align 8, !tbaa !46
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.Lattice, ptr %19, i64 0, i32 21
  store ptr %17, ptr %20, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !53
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !54
  %30 = sext i16 %29 to i32
  %31 = mul nsw i32 %30, %27
  %32 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  %33 = load i16, ptr %32, align 4, !tbaa !55
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %31, %34
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %37 = sext i32 %35 to i64
  %38 = shl nsw i64 %37, 4
  %39 = tail call ptr %36(i64 noundef %38, ptr noundef nonnull @.str.1) #14
  %40 = load ptr, ptr %10, align 8, !tbaa !46
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.Lattice, ptr %41, i64 0, i32 24
  store ptr %39, ptr %42, align 8, !tbaa !52
  %43 = load ptr, ptr %21, align 8, !tbaa !52
  tail call void @BKE_defvert_array_copy(ptr noundef %39, ptr noundef %43, i32 noundef %35) #14
  br label %44

44:                                               ; preds = %24, %7
  %45 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %50 = load i16, ptr %49, align 2, !tbaa !57
  %51 = sext i16 %50 to i32
  %52 = load ptr, ptr %10, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.EditLatt, ptr %52, i64 0, i32 1
  store i32 %51, ptr %53, align 8, !tbaa !58
  br label %54

54:                                               ; preds = %48, %44
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_convert_to_lattice(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_defvert_array_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @load_editLatt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.EditLatt, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 6
  %14 = add nsw i32 %8, -1
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %13, i32 noundef %14) #14
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
  tail call void %31(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %30, %10
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %34 = load ptr, ptr %11, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.Key, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !61
  %37 = mul nsw i32 %36, %26
  %38 = sext i32 %37 to i64
  %39 = tail call ptr %33(i64 noundef %38, ptr noundef nonnull @.str.2) #14
  store ptr %39, ptr %27, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 8
  store i32 %26, ptr %40, align 8, !tbaa !63
  %41 = icmp eq i32 %26, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i32 [ %49, %45 ], [ %26, %42 ]
  %47 = phi ptr [ %50, %45 ], [ %39, %42 ]
  %48 = phi ptr [ %51, %45 ], [ %44, %42 ]
  %49 = add nsw i32 %46, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %47, ptr noundef %48) #15
  %50 = getelementptr inbounds float, ptr %47, i64 3
  %51 = getelementptr inbounds %struct.BPoint, ptr %48, i64 1
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %76, label %45, !llvm.loop !64

53:                                               ; preds = %1
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 21
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  tail call void %54(ptr noundef %56) #14
  %57 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = tail call ptr %57(ptr noundef %59) #14
  store ptr %60, ptr %55, align 8, !tbaa !50
  %61 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 2
  %62 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %63 = load <4 x i16>, ptr %61, align 8, !tbaa !66
  store <4 x i16> %63, ptr %62, align 8, !tbaa !66
  %64 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 10
  %65 = load i8, ptr %64, align 8, !tbaa !67
  %66 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 10
  store i8 %65, ptr %66, align 8, !tbaa !67
  %67 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 11
  %68 = load i8, ptr %67, align 1, !tbaa !68
  %69 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 11
  store i8 %68, ptr %69, align 1, !tbaa !68
  %70 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 12
  %71 = load i8, ptr %70, align 2, !tbaa !69
  %72 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 12
  store i8 %71, ptr %72, align 2, !tbaa !69
  %73 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 14
  %74 = load i32, ptr %73, align 4, !tbaa !70
  %75 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 14
  store i32 %74, ptr %75, align 4, !tbaa !70
  br label %76

76:                                               ; preds = %45, %32, %53
  %77 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 24
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = icmp eq ptr %78, null
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %82 = load i16, ptr %81, align 8, !tbaa !53
  %83 = sext i16 %82 to i32
  %84 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !54
  %86 = sext i16 %85 to i32
  %87 = mul nsw i32 %86, %83
  %88 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !55
  %90 = sext i16 %89 to i32
  %91 = mul nsw i32 %87, %90
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %78, i32 noundef %91) #14
  store ptr null, ptr %77, align 8, !tbaa !52
  br label %92

92:                                               ; preds = %80, %76
  %93 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 24
  %94 = load ptr, ptr %93, align 8, !tbaa !52
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96

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
  %108 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %109 = sext i32 %107 to i64
  %110 = shl nsw i64 %109, 4
  %111 = tail call ptr %108(i64 noundef %110, ptr noundef nonnull @.str.1) #14
  store ptr %111, ptr %77, align 8, !tbaa !52
  %112 = load ptr, ptr %93, align 8, !tbaa !52
  tail call void @BKE_defvert_array_copy(ptr noundef %111, ptr noundef %112, i32 noundef %107) #14
  br label %113

113:                                              ; preds = %96, %92
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !71 {
  %3 = load float, ptr %1, align 4, !tbaa !72
  store float %3, ptr %0, align 4, !tbaa !72
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !72
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !72
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.6, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+02) #14
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !82 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.6) #14
  %12 = fdiv float %11, 1.000000e+02
  %13 = load ptr, ptr %9, align 8, !tbaa !83
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.44) #14
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !53
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !54
  %22 = sext i16 %21 to i32
  %23 = mul nsw i32 %22, %19
  %24 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !55
  %26 = sext i16 %25 to i32
  %27 = mul nsw i32 %23, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  br label %32

32:                                               ; preds = %29, %43
  %33 = phi i32 [ %35, %43 ], [ %27, %29 ]
  %34 = phi ptr [ %44, %43 ], [ %31, %29 ]
  %35 = add nsw i32 %33, -1
  %36 = getelementptr inbounds %struct.BPoint, ptr %34, i64 0, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !85
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = tail call float @BLI_frand() #14
  %41 = fcmp olt float %40, %12
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call fastcc void @bpoint_select_set(ptr noundef nonnull %34, i8 noundef zeroext %16) #15
  br label %43

43:                                               ; preds = %39, %42, %32
  %44 = getelementptr inbounds %struct.BPoint, ptr %34, i64 1
  %45 = icmp eq i32 %35, 0
  br i1 %45, label %46, label %32, !llvm.loop !87

46:                                               ; preds = %43, %2
  br i1 %15, label %49, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 14
  store i32 -1, ptr %48, align 4, !tbaa !70
  br label %49

49:                                               ; preds = %47, %46
  %50 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %50) #14
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editlattice(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @object_axis_unsigned_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #14
  %10 = load ptr, ptr %7, align 8, !tbaa !81
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !88 {
  %3 = alloca [3 x i8], align 1
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.15) #14
  %13 = load ptr, ptr %10, align 8, !tbaa !83
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.12) #14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #16
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
  store i8 1, ptr %27, align 1, !tbaa !89
  %28 = and i32 %12, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 14
  store i32 -1, ptr %31, align 4, !tbaa !70
  br label %32

32:                                               ; preds = %30, %2
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %34 = ashr i32 %25, 5
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call ptr %33(i64 noundef %37, ptr noundef nonnull @__func__.lattice_select_mirror_exec) #14
  tail call void @BKE_lattice_bitmap_from_flag(ptr noundef nonnull %9, ptr noundef %38, i16 noundef signext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %39 = icmp sgt i32 %25, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %32
  %41 = load i8, ptr %3, align 1, !tbaa !89
  %42 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !89
  %44 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !89
  %46 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 21
  %47 = zext nneg i32 %25 to i64
  br label %48

48:                                               ; preds = %40, %74
  %49 = phi i64 [ 0, %40 ], [ %75, %74 ]
  %50 = trunc i64 %49 to i32
  %51 = tail call i32 @BKE_lattice_index_flip(ptr noundef nonnull %9, i32 noundef %50, i8 noundef zeroext %41, i8 noundef zeroext %43, i8 noundef zeroext %45) #14
  %52 = load ptr, ptr %46, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.BPoint, ptr %52, i64 %49, i32 4
  %54 = load i16, ptr %53, align 2, !tbaa !85
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = ashr i32 %51, 5
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %38, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !90
  %61 = and i32 %51, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.BPoint, ptr %52, i64 %49, i32 3
  %67 = load i16, ptr %66, align 4, !tbaa !91
  %68 = or i16 %67, 1
  store i16 %68, ptr %66, align 4, !tbaa !91
  br label %74

69:                                               ; preds = %56
  br i1 %29, label %70, label %74

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.BPoint, ptr %52, i64 %49, i32 3
  %72 = load i16, ptr %71, align 4, !tbaa !91
  %73 = and i16 %72, -2
  store i16 %73, ptr %71, align 4, !tbaa !91
  br label %74

74:                                               ; preds = %65, %70, %69, %48
  %75 = add nuw nsw i64 %49, 1
  %76 = icmp eq i64 %75, %47
  br i1 %76, label %77, label %48, !llvm.loop !92

77:                                               ; preds = %74, %32
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %78(ptr noundef %38) #14
  %79 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %79) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #16
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @LATTICE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !93 {
  tail call fastcc void @lattice_select_more_less(ptr noundef %0, i8 noundef zeroext 1) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @LATTICE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !94 {
  tail call fastcc void @lattice_select_more_less(ptr noundef %0, i8 noundef zeroext 0) #15
  ret i32 4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_setflagsLatt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
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
  store i32 -1, ptr %21, align 4, !tbaa !70
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
  %30 = load i16, ptr %29, align 2, !tbaa !85
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  store i16 %24, ptr %33, align 4, !tbaa !91
  br label %34

34:                                               ; preds = %32, %25
  %35 = getelementptr inbounds %struct.BPoint, ptr %27, i64 1
  %36 = icmp eq i32 %28, 0
  br i1 %36, label %37, label %25, !llvm.loop !95

37:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !96 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.44) #14
  switch i32 %8, label %79 [
    i32 0, label %9
    i32 1, label %77
    i32 2, label %43
    i32 3, label %44
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !53
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !54
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, %15
  %20 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !55
  %22 = sext i16 %21 to i32
  %23 = mul nsw i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  br label %28

28:                                               ; preds = %25, %40
  %29 = phi i32 [ %31, %40 ], [ %23, %25 ]
  %30 = phi ptr [ %41, %40 ], [ %27, %25 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.BPoint, ptr %30, i64 0, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !85
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.BPoint, ptr %30, i64 0, i32 3
  %37 = load i16, ptr %36, align 4, !tbaa !91
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %28
  %41 = getelementptr inbounds %struct.BPoint, ptr %30, i64 1
  %42 = icmp eq i32 %31, 0
  br i1 %42, label %77, label %28, !llvm.loop !97

43:                                               ; preds = %35, %2
  br label %77

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 21
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 2
  %51 = load i16, ptr %50, align 8, !tbaa !53
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !54
  %55 = sext i16 %54 to i32
  %56 = mul nsw i32 %55, %52
  %57 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 4
  %58 = load i16, ptr %57, align 4, !tbaa !55
  %59 = sext i16 %58 to i32
  %60 = mul nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.Lattice, ptr %47, i64 0, i32 14
  store i32 -1, ptr %61, align 4, !tbaa !70
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %44, %74
  %64 = phi i32 [ %66, %74 ], [ %60, %44 ]
  %65 = phi ptr [ %75, %74 ], [ %49, %44 ]
  %66 = add nsw i32 %64, -1
  %67 = getelementptr inbounds %struct.BPoint, ptr %65, i64 0, i32 4
  %68 = load i16, ptr %67, align 2, !tbaa !85
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.BPoint, ptr %65, i64 0, i32 3
  %72 = load i16, ptr %71, align 4, !tbaa !91
  %73 = xor i16 %72, 1
  store i16 %73, ptr %71, align 4, !tbaa !91
  br label %74

74:                                               ; preds = %70, %63
  %75 = getelementptr inbounds %struct.BPoint, ptr %65, i64 1
  %76 = icmp eq i32 %66, 0
  br i1 %76, label %79, label %63, !llvm.loop !98

77:                                               ; preds = %40, %2, %9, %43
  %78 = phi i32 [ 0, %43 ], [ 1, %9 ], [ %8, %2 ], [ 1, %40 ]
  tail call void @ED_setflagsLatt(ptr noundef %3, i32 noundef %78) #15
  br label %79

79:                                               ; preds = %74, %77, %44, %2
  %80 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %80) #14
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_select_ungrouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !99 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %10 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %9) #15, !range !100
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 24
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.45) #14
  br label %63

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.15) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @ED_setflagsLatt(ptr noundef nonnull %3, i32 noundef 0) #15
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !53
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !54
  %31 = sext i16 %30 to i32
  %32 = mul nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !55
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %32, %35
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = load ptr, ptr %13, align 8, !tbaa !52
  br label %42

42:                                               ; preds = %38, %56
  %43 = phi i32 [ %57, %56 ], [ 0, %38 ]
  %44 = phi ptr [ %58, %56 ], [ %40, %38 ]
  %45 = phi ptr [ %59, %56 ], [ %41, %38 ]
  %46 = getelementptr inbounds %struct.BPoint, ptr %44, i64 0, i32 4
  %47 = load i16, ptr %46, align 2, !tbaa !85
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load ptr, ptr %45, align 8, !tbaa !102
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.BPoint, ptr %44, i64 0, i32 3
  %54 = load i16, ptr %53, align 4, !tbaa !91
  %55 = or i16 %54, 1
  store i16 %55, ptr %53, align 4, !tbaa !91
  br label %56

56:                                               ; preds = %42, %52, %49
  %57 = add nuw nsw i32 %43, 1
  %58 = getelementptr inbounds %struct.BPoint, ptr %44, i64 1
  %59 = getelementptr inbounds %struct.MDeformVert, ptr %45, i64 1
  %60 = icmp eq i32 %57, %36
  br i1 %60, label %61, label %42, !llvm.loop !104

61:                                               ; preds = %56, %25
  %62 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %62) #14
  br label %63

63:                                               ; preds = %61, %16
  %64 = phi i32 [ 2, %16 ], [ 4, %61 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @LATTICE_OT_make_regular(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_regular_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !105 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
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
  %12 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
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
  tail call void @BKE_lattice_resize(ptr noundef %17, i32 noundef %21, i32 noundef %24, i32 noundef %27, ptr noundef null) #14
  tail call void @DAG_id_tag_update(ptr noundef nonnull %18, i16 noundef signext 2) #14
  %28 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %29) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @make_regular_poll(ptr noundef %0) #0 !PGOFuncName !106 {
  %2 = tail call i32 @ED_operator_editlattice(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !107
  %10 = icmp eq i16 %9, 22
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %4, %7, %1
  %13 = phi i32 [ 1, %1 ], [ 0, %4 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LATTICE_OT_flip(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lattice_flip_exec, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @LATTICE_OT_flip.flip_items, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #14
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lattice_flip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !110 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.12) #14
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
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %6) #15
  br label %122

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
  %38 = zext nneg i32 %6 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ 0, %35 ], [ %46, %39 ]
  %41 = phi ptr [ %37, %35 ], [ %47, %39 ]
  %42 = phi float [ 0.000000e+00, %35 ], [ %45, %39 ]
  %43 = getelementptr inbounds [4 x float], ptr %41, i64 0, i64 %38
  %44 = load float, ptr %43, align 4, !tbaa !72
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %33, float %42)
  %46 = add nuw nsw i32 %40, 1
  %47 = getelementptr inbounds %struct.BPoint, ptr %41, i64 1
  %48 = icmp eq i32 %46, %22
  br i1 %48, label %49, label %39, !llvm.loop !111

49:                                               ; preds = %39, %31, %27
  %50 = phi float [ 0.000000e+00, %27 ], [ 0.000000e+00, %31 ], [ %45, %39 ]
  switch i32 %6, label %120 [
    i32 0, label %65
    i32 1, label %58
    i32 2, label %51
  ]

51:                                               ; preds = %49
  %52 = icmp sgt i16 %16, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %51
  %54 = icmp sgt i16 %13, 0
  %55 = sdiv i32 %20, 2
  %56 = icmp sgt i16 %19, 1
  %57 = tail call i32 @llvm.smax.i32(i32 %55, i32 1)
  br label %104

58:                                               ; preds = %49
  %59 = icmp sgt i16 %19, 0
  br i1 %59, label %60, label %120

60:                                               ; preds = %58
  %61 = icmp sgt i16 %13, 0
  %62 = sdiv i32 %17, 2
  %63 = icmp sgt i16 %16, 1
  %64 = tail call i32 @llvm.smax.i32(i32 %62, i32 1)
  br label %88

65:                                               ; preds = %49
  %66 = icmp sgt i16 %19, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %65
  %68 = icmp sgt i16 %16, 0
  %69 = sdiv i32 %14, 2
  %70 = icmp sgt i16 %13, 1
  %71 = tail call i32 @llvm.smax.i32(i32 %69, i32 1)
  br label %72

72:                                               ; preds = %67, %85
  %73 = phi i32 [ 0, %67 ], [ %86, %85 ]
  br i1 %68, label %74, label %85

74:                                               ; preds = %72, %82
  %75 = phi i32 [ %83, %82 ], [ 0, %72 ]
  br i1 %70, label %76, label %80

76:                                               ; preds = %74, %76
  %77 = phi i32 [ %78, %76 ], [ 0, %74 ]
  tail call fastcc void @lattice_swap_point_pairs(ptr noundef %11, i32 noundef %77, i32 noundef %75, i32 noundef %73, float noundef %50, i32 noundef 0) #15
  %78 = add nuw nsw i32 %77, 1
  %79 = icmp eq i32 %78, %71
  br i1 %79, label %80, label %76, !llvm.loop !112

80:                                               ; preds = %76, %74
  br i1 %30, label %82, label %81

81:                                               ; preds = %80
  tail call fastcc void @lattice_flip_point_value(ptr noundef %11, i32 noundef %69, i32 noundef %75, i32 noundef %73, float noundef %50, i32 noundef 0) #15
  br label %82

82:                                               ; preds = %80, %81
  %83 = add nuw nsw i32 %75, 1
  %84 = icmp eq i32 %83, %17
  br i1 %84, label %85, label %74, !llvm.loop !113

85:                                               ; preds = %82, %72
  %86 = add nuw nsw i32 %73, 1
  %87 = icmp eq i32 %86, %20
  br i1 %87, label %120, label %72, !llvm.loop !114

88:                                               ; preds = %60, %101
  %89 = phi i32 [ 0, %60 ], [ %102, %101 ]
  br i1 %61, label %90, label %101

90:                                               ; preds = %88, %98
  %91 = phi i32 [ %99, %98 ], [ 0, %88 ]
  br i1 %63, label %92, label %96

92:                                               ; preds = %90, %92
  %93 = phi i32 [ %94, %92 ], [ 0, %90 ]
  tail call fastcc void @lattice_swap_point_pairs(ptr noundef %11, i32 noundef %91, i32 noundef %93, i32 noundef %89, float noundef %50, i32 noundef 1) #15
  %94 = add nuw nsw i32 %93, 1
  %95 = icmp eq i32 %94, %64
  br i1 %95, label %96, label %92, !llvm.loop !115

96:                                               ; preds = %92, %90
  br i1 %30, label %98, label %97

97:                                               ; preds = %96
  tail call fastcc void @lattice_flip_point_value(ptr noundef %11, i32 noundef %91, i32 noundef %62, i32 noundef %89, float noundef %50, i32 noundef 1) #15
  br label %98

98:                                               ; preds = %96, %97
  %99 = add nuw nsw i32 %91, 1
  %100 = icmp eq i32 %99, %14
  br i1 %100, label %101, label %90, !llvm.loop !116

101:                                              ; preds = %98, %88
  %102 = add nuw nsw i32 %89, 1
  %103 = icmp eq i32 %102, %20
  br i1 %103, label %120, label %88, !llvm.loop !117

104:                                              ; preds = %53, %117
  %105 = phi i32 [ 0, %53 ], [ %118, %117 ]
  br i1 %54, label %106, label %117

106:                                              ; preds = %104, %114
  %107 = phi i32 [ %115, %114 ], [ 0, %104 ]
  br i1 %56, label %108, label %112

108:                                              ; preds = %106, %108
  %109 = phi i32 [ %110, %108 ], [ 0, %106 ]
  tail call fastcc void @lattice_swap_point_pairs(ptr noundef %11, i32 noundef %107, i32 noundef %105, i32 noundef %109, float noundef %50, i32 noundef 2) #15
  %110 = add nuw nsw i32 %109, 1
  %111 = icmp eq i32 %110, %57
  br i1 %111, label %112, label %108, !llvm.loop !118

112:                                              ; preds = %108, %106
  br i1 %30, label %114, label %113

113:                                              ; preds = %112
  tail call fastcc void @lattice_flip_point_value(ptr noundef %11, i32 noundef %107, i32 noundef %105, i32 noundef %55, float noundef %50, i32 noundef 2) #15
  br label %114

114:                                              ; preds = %112, %113
  %115 = add nuw nsw i32 %107, 1
  %116 = icmp eq i32 %115, %14
  br i1 %116, label %117, label %106, !llvm.loop !119

117:                                              ; preds = %114, %104
  %118 = add nuw nsw i32 %105, 1
  %119 = icmp eq i32 %118, %17
  br i1 %119, label %120, label %104, !llvm.loop !120

120:                                              ; preds = %117, %101, %85, %51, %58, %65, %49
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #14
  %121 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %121) #14
  br label %122

122:                                              ; preds = %120, %25
  %123 = phi i32 [ 2, %25 ], [ 4, %120 ]
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @mouse_lattice(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = call fastcc ptr @findnearestLattvert(ptr noundef nonnull %6, ptr noundef %1) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %5
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %16
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.BPoint, ptr %14, i64 0, i32 3
  %22 = load i16, ptr %21, align 4, !tbaa !91
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 4, !tbaa !91
  br label %46

24:                                               ; preds = %18
  %25 = icmp eq i8 %4, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !tbaa !121
  call void @ED_setflagsLatt(ptr noundef %27, i32 noundef 0) #15
  br label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.BPoint, ptr %14, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !91
  %31 = xor i16 %30, 1
  store i16 %31, ptr %29, align 4, !tbaa !91
  %32 = and i16 %30, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %46

34:                                               ; preds = %16, %26
  %35 = getelementptr inbounds %struct.BPoint, ptr %14, i64 0, i32 3
  %36 = load i16, ptr %35, align 4, !tbaa !91
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 4, !tbaa !91
  br label %38

38:                                               ; preds = %34, %28
  %39 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = ptrtoint ptr %14 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 36
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %28, %20, %38
  %47 = phi i32 [ %45, %38 ], [ -1, %20 ], [ -1, %28 ]
  %48 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 14
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %7, align 8, !tbaa !121
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %51) #14
  br label %52

52:                                               ; preds = %5, %46
  %53 = phi i8 [ 1, %46 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret i8 %53
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @findnearestLattvert(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !123 {
  %3 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %4 = tail call float @ED_view3d_select_dist_px() #14
  %5 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store float %4, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !126
  %7 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 3
  %8 = load <2 x i32>, ptr %1, align 4, !tbaa !90
  %9 = sitofp <2 x i32> %8 to <2 x float>
  store <2 x float> %9, ptr %7, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %11, ptr noundef %13) #14
  call void @lattice_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @findnearestLattvert__doClosest, ptr noundef nonnull %3, i32 noundef 7) #14
  %14 = load ptr, ptr %3, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret ptr %14
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_push_lattice(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_editlatt, ptr noundef nonnull @free_undoLatt, ptr noundef nonnull @undoLatt_to_editLatt, ptr noundef nonnull @editLatt_to_undoLatt, ptr noundef nonnull @validate_undoLatt) #14
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @get_editlatt(ptr noundef %0) #0 !PGOFuncName !129 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !107
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_undoLatt(ptr noundef %0) #0 !PGOFuncName !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %5(ptr noundef nonnull %2) #14
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %7(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @undoLatt_to_editLatt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 !PGOFuncName !133 {
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
  %16 = load ptr, ptr %0, align 8, !tbaa !131
  %17 = shl nsw i64 %7, 32
  %18 = mul nsw i64 %17, %10
  %19 = mul i64 %18, %13
  %20 = ashr exact i64 %19, 32
  %21 = mul nsw i64 %20, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %16, i64 %21, i1 false)
  %22 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !134
  %24 = load ptr, ptr %1, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 14
  store i32 %23, ptr %25, align 4, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @editLatt_to_undoLatt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !PGOFuncName !135 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.47) #14
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr %5(ptr noundef %8) #14
  store ptr %9, ptr %4, align 8, !tbaa !131
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !53
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !136
  %15 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !54
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !137
  %19 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !55
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !138
  %23 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 14
  %24 = load i32, ptr %23, align 4, !tbaa !70
  %25 = getelementptr inbounds %struct.UndoLattice, ptr %4, i64 0, i32 4
  store i32 %24, ptr %25, align 4, !tbaa !134
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @validate_undoLatt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !136
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !53
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !137
  %13 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !54
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.UndoLattice, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !138
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

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bpoint_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !140 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !85
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 4, !tbaa !91
  %11 = or i16 %10, 1
  store i16 %11, ptr %9, align 4, !tbaa !91
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !91
  %15 = and i16 %14, -2
  store i16 %15, ptr %13, align 4, !tbaa !91
  br label %16

16:                                               ; preds = %4, %8, %12
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BKE_lattice_bitmap_from_flag(ptr noundef, ptr noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_lattice_index_flip(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lattice_select_more_less(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !141 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
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
  store i32 -1, ptr %20, align 4, !tbaa !70
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %22 = ashr i32 %19, 5
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr %21(i64 noundef %25, ptr noundef nonnull @__func__.lattice_select_more_less) #14
  tail call void @BKE_lattice_bitmap_from_flag(ptr noundef %8, ptr noundef %26, i16 noundef signext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %27 = load i16, ptr %16, align 4, !tbaa !55
  %28 = icmp sgt i16 %27, 0
  br i1 %28, label %29, label %115

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = zext i8 %1 to i16
  %33 = icmp ne i8 %1, 0
  %34 = load i16, ptr %12, align 2, !tbaa !54
  %35 = zext i1 %33 to i16
  br label %36

36:                                               ; preds = %29, %108
  %37 = phi i16 [ %27, %29 ], [ %109, %108 ]
  %38 = phi i16 [ %34, %29 ], [ %110, %108 ]
  %39 = phi i16 [ %34, %29 ], [ %111, %108 ]
  %40 = phi ptr [ %31, %29 ], [ %112, %108 ]
  %41 = phi i32 [ 0, %29 ], [ %43, %108 ]
  %42 = icmp sgt i16 %39, 0
  %43 = add nuw nsw i32 %41, 1
  br i1 %42, label %44, label %108

44:                                               ; preds = %36
  %45 = add nsw i32 %41, -1
  %46 = load i16, ptr %9, align 8, !tbaa !53
  br label %47

47:                                               ; preds = %44, %100
  %48 = phi i16 [ %38, %44 ], [ %101, %100 ]
  %49 = phi i16 [ %46, %44 ], [ %102, %100 ]
  %50 = phi ptr [ %40, %44 ], [ %103, %100 ]
  %51 = phi i32 [ 0, %44 ], [ %53, %100 ]
  %52 = icmp sgt i16 %49, 0
  %53 = add nuw nsw i32 %51, 1
  br i1 %52, label %54, label %100

54:                                               ; preds = %47
  %55 = add nsw i32 %51, -1
  br label %56

56:                                               ; preds = %54, %92
  %57 = phi ptr [ %50, %54 ], [ %93, %92 ]
  %58 = phi i32 [ 0, %54 ], [ %94, %92 ]
  %59 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 4
  %60 = load i16, ptr %59, align 2, !tbaa !85
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 3
  %64 = load i16, ptr %63, align 4, !tbaa !91
  %65 = and i16 %64, 1
  %66 = xor i16 %65, %32
  %67 = icmp eq i16 %66, 1
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = add nuw nsw i32 %58, 1
  %70 = tail call fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef nonnull %8, ptr noundef %26, i32 noundef %69, i32 noundef %51, i32 noundef %41, i8 noundef zeroext %1) #15, !range !100
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = add nsw i32 %58, -1
  %74 = tail call fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef %8, ptr noundef %26, i32 noundef %73, i32 noundef %51, i32 noundef %41, i8 noundef zeroext %1) #15, !range !100
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = tail call fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef %8, ptr noundef %26, i32 noundef %58, i32 noundef %53, i32 noundef %41, i8 noundef zeroext %1) #15, !range !100
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = tail call fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef %8, ptr noundef %26, i32 noundef %58, i32 noundef %55, i32 noundef %41, i8 noundef zeroext %1) #15, !range !100
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = tail call fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef %8, ptr noundef %26, i32 noundef %58, i32 noundef %51, i32 noundef %43, i8 noundef zeroext %1) #15, !range !100
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = tail call fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef %8, ptr noundef %26, i32 noundef %58, i32 noundef %51, i32 noundef %45, i8 noundef zeroext %1) #15, !range !100
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85, %82, %79, %76, %72, %68
  %89 = load i16, ptr %63, align 4, !tbaa !91
  %90 = and i16 %89, -2
  %91 = or disjoint i16 %90, %35
  store i16 %91, ptr %63, align 4, !tbaa !91
  br label %92

92:                                               ; preds = %88, %85, %62, %56
  %93 = getelementptr inbounds %struct.BPoint, ptr %57, i64 1
  %94 = add nuw nsw i32 %58, 1
  %95 = load i16, ptr %9, align 8, !tbaa !53
  %96 = sext i16 %95 to i32
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %56, label %98, !llvm.loop !142

98:                                               ; preds = %92
  %99 = load i16, ptr %12, align 2, !tbaa !54
  br label %100

100:                                              ; preds = %47, %98
  %101 = phi i16 [ %99, %98 ], [ %48, %47 ]
  %102 = phi i16 [ %95, %98 ], [ %49, %47 ]
  %103 = phi ptr [ %93, %98 ], [ %50, %47 ]
  %104 = sext i16 %101 to i32
  %105 = icmp slt i32 %53, %104
  br i1 %105, label %47, label %106, !llvm.loop !143

106:                                              ; preds = %100
  %107 = load i16, ptr %16, align 4, !tbaa !55
  br label %108

108:                                              ; preds = %36, %106
  %109 = phi i16 [ %107, %106 ], [ %37, %36 ]
  %110 = phi i16 [ %101, %106 ], [ %38, %36 ]
  %111 = phi i16 [ %101, %106 ], [ %39, %36 ]
  %112 = phi ptr [ %103, %106 ], [ %40, %36 ]
  %113 = sext i16 %109 to i32
  %114 = icmp slt i32 %43, %113
  br i1 %114, label %36, label %115, !llvm.loop !144

115:                                              ; preds = %108, %2
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %116(ptr noundef %26) #14
  %117 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %117) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @lattice_test_bitmap_uvw(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !145 {
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !53
  %11 = sext i16 %10 to i32
  %12 = icmp sle i32 %11, %2
  %13 = icmp slt i32 %3, 0
  %14 = or i1 %13, %12
  br i1 %14, label %46, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !54
  %18 = sext i16 %17 to i32
  %19 = icmp sle i32 %18, %3
  %20 = icmp slt i32 %4, 0
  %21 = or i1 %20, %19
  br i1 %21, label %46, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !55
  %25 = sext i16 %24 to i32
  %26 = icmp sgt i32 %25, %4
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  %29 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %31, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !85
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = ashr i32 %28, 5
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %1, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !90
  %40 = and i32 %28, 31
  %41 = lshr i32 %39, %40
  %42 = and i32 %41, 1
  %43 = zext nneg i8 %5 to i32
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %35, %27, %6, %8, %15, %22
  %47 = phi i8 [ 0, %22 ], [ 0, %15 ], [ 0, %8 ], [ 0, %6 ], [ %45, %35 ], [ 0, %27 ]
  ret i8 %47
}

; Function Attrs: optsize
declare i32 @BKE_lattice_index_from_uvw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !146 {
  %2 = load ptr, ptr %0, align 8, !tbaa !147
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_resize(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lattice_swap_point_pairs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !148 {
  switch i32 %5, label %25 [
    i32 0, label %7
    i32 1, label %13
    i32 2, label %19
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !53
  %10 = sext i16 %9 to i32
  %11 = xor i32 %1, -1
  %12 = add i32 %10, %11
  br label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !54
  %16 = sext i16 %15 to i32
  %17 = xor i32 %2, -1
  %18 = add i32 %16, %17
  br label %26

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !55
  %22 = sext i16 %21 to i32
  %23 = xor i32 %3, -1
  %24 = add i32 %22, %23
  br label %26

25:                                               ; preds = %6
  unreachable

26:                                               ; preds = %19, %13, %7
  %27 = phi i32 [ %2, %19 ], [ %18, %13 ], [ %2, %7 ]
  %28 = phi i32 [ %1, %19 ], [ %1, %13 ], [ %12, %7 ]
  %29 = phi i32 [ %24, %19 ], [ %3, %13 ], [ %3, %7 ]
  %30 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.BPoint, ptr %31, i64 %33
  %35 = load ptr, ptr %30, align 8, !tbaa !50
  %36 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %27, i32 noundef %29) #14
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.BPoint, ptr %35, i64 %37
  tail call fastcc void @swap_v3_v3(ptr noundef %34, ptr noundef %38) #15
  tail call fastcc void @lattice_flip_point_value(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) #15
  tail call fastcc void @lattice_flip_point_value(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %27, i32 noundef %29, float noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lattice_flip_point_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !149 {
  %7 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.BPoint, ptr %8, i64 %10
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !72
  %15 = fsub float %4, %14
  %16 = fadd float %15, %4
  store float %16, ptr %13, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !150 {
  %3 = load float, ptr %0, align 4, !tbaa !72
  %4 = load float, ptr %1, align 4, !tbaa !72
  store float %4, ptr %0, align 4, !tbaa !72
  store float %3, ptr %1, align 4, !tbaa !72
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !72
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !72
  store float %8, ptr %5, align 4, !tbaa !72
  store float %6, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !72
  store float %12, ptr %9, align 4, !tbaa !72
  store float %10, ptr %11, align 4, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lattice_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestLattvert__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 !PGOFuncName !151 {
  %4 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 3
  %5 = tail call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %4, ptr noundef %2) #15
  %6 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !91
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !126
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = fadd float %5, 5.000000e+00
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = phi float [ %15, %14 ], [ %5, %10 ], [ %5, %3 ]
  %18 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !124
  %20 = fcmp olt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store float %17, ptr %18, align 8, !tbaa !124
  store ptr %1, ptr %0, align 8, !tbaa !128
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !152 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #15
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !153 {
  %4 = load float, ptr %1, align 4, !tbaa !72
  %5 = load float, ptr %2, align 4, !tbaa !72
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !72
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !72
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !154 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !72
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!40, !40, i64 0}
!67 = !{!47, !38, i64 144}
!68 = !{!47, !38, i64 145}
!69 = !{!47, !38, i64 146}
!70 = !{!47, !41, i64 148}
!71 = !{!"object_lattice.c:copy_v3_v3"}
!72 = !{!44, !44, i64 0}
!73 = !{!74, !37, i64 0}
!74 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !75, i64 152, !40, i64 184}
!75 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!76 = !{!74, !37, i64 24}
!77 = !{!74, !37, i64 8}
!78 = !{!74, !37, i64 32}
!79 = !{!74, !37, i64 72}
!80 = !{!74, !40, i64 184}
!81 = !{!74, !37, i64 88}
!82 = !{!"object_lattice.c:lattice_select_random_exec"}
!83 = !{!84, !37, i64 112}
!84 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!85 = !{!86, !40, i64 26}
!86 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!87 = distinct !{!87, !65}
!88 = !{!"object_lattice.c:lattice_select_mirror_exec"}
!89 = !{!38, !38, i64 0}
!90 = !{!41, !41, i64 0}
!91 = !{!86, !40, i64 24}
!92 = distinct !{!92, !65}
!93 = !{!"object_lattice.c:lattice_select_more_exec"}
!94 = !{!"object_lattice.c:lattice_select_less_exec"}
!95 = distinct !{!95, !65}
!96 = !{!"object_lattice.c:lattice_select_all_exec"}
!97 = distinct !{!97, !65}
!98 = distinct !{!98, !65}
!99 = !{!"object_lattice.c:lattice_select_ungrouped_exec"}
!100 = !{i8 0, i8 2}
!101 = !{!84, !37, i64 120}
!102 = !{!103, !37, i64 0}
!103 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!104 = distinct !{!104, !65}
!105 = !{!"object_lattice.c:make_regular_exec"}
!106 = !{!"object_lattice.c:make_regular_poll"}
!107 = !{!35, !40, i64 136}
!108 = !{!74, !37, i64 48}
!109 = !{!74, !37, i64 104}
!110 = !{!"object_lattice.c:lattice_flip_exec"}
!111 = distinct !{!111, !65}
!112 = distinct !{!112, !65}
!113 = distinct !{!113, !65}
!114 = distinct !{!114, !65}
!115 = distinct !{!115, !65}
!116 = distinct !{!116, !65}
!117 = distinct !{!117, !65}
!118 = distinct !{!118, !65}
!119 = distinct !{!119, !65}
!120 = distinct !{!120, !65}
!121 = !{!122, !37, i64 16}
!122 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!123 = !{!"object_lattice.c:findnearestLattvert"}
!124 = !{!125, !44, i64 8}
!125 = !{!"", !37, i64 0, !44, i64 8, !41, i64 12, !38, i64 16}
!126 = !{!125, !41, i64 12}
!127 = !{!122, !37, i64 40}
!128 = !{!125, !37, i64 0}
!129 = !{!"object_lattice.c:get_editlatt"}
!130 = !{!"object_lattice.c:free_undoLatt"}
!131 = !{!132, !37, i64 0}
!132 = !{!"UndoLattice", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!133 = !{!"object_lattice.c:undoLatt_to_editLatt"}
!134 = !{!132, !41, i64 20}
!135 = !{!"object_lattice.c:editLatt_to_undoLatt"}
!136 = !{!132, !41, i64 8}
!137 = !{!132, !41, i64 12}
!138 = !{!132, !41, i64 16}
!139 = !{!"object_lattice.c:validate_undoLatt"}
!140 = !{!"object_lattice.c:bpoint_select_set"}
!141 = !{!"object_lattice.c:lattice_select_more_less"}
!142 = distinct !{!142, !65}
!143 = distinct !{!143, !65}
!144 = distinct !{!144, !65}
!145 = !{!"object_lattice.c:lattice_test_bitmap_uvw"}
!146 = !{!"object_lattice.c:BLI_listbase_is_empty"}
!147 = !{!43, !37, i64 0}
!148 = !{!"object_lattice.c:lattice_swap_point_pairs"}
!149 = !{!"object_lattice.c:lattice_flip_point_value"}
!150 = !{!"object_lattice.c:swap_v3_v3"}
!151 = !{!"object_lattice.c:findnearestLattvert__doClosest"}
!152 = !{!"object_lattice.c:len_manhattan_v2v2"}
!153 = !{!"object_lattice.c:sub_v2_v2v2"}
!154 = !{!"object_lattice.c:len_manhattan_v2"}
