; ModuleID = 'blender/source/blender/blenkernel/intern/icons.c'
source_filename = "blender/source/blender/blenkernel/intern/icons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Icon = type { ptr, ptr, i16, ptr }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@gNextIconId = internal unnamed_addr global i32 1, align 4
@gFirstIconId = internal unnamed_addr global i32 1, align 4
@gIcons = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"icons_init gh\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"img_prv\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"texicon\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"BKE_icon_get: Internal error, no icon for icon ID: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"BKE_icon_set: Internal error, icon already set: %d\0A\00", align 1
@str = private unnamed_addr constant [48 x i8] c"BKE_icon_getid: Internal error - not enough IDs\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_icons_init(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @gNextIconId, align 4, !tbaa !34
  store i32 %0, ptr @gFirstIconId, align 4, !tbaa !34
  %2 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str) #4
  store ptr %5, ptr @gIcons, align 8, !tbaa !38
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_icons_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @BLI_ghash_free(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @icon_free) #4
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @gIcons, align 8, !tbaa !38
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @icon_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Icon, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %0, align 8, !tbaa !43
  br i1 %6, label %9, label %8

8:                                                ; preds = %3
  tail call void %5(ptr noundef %7) #4
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %7, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %12(ptr noundef nonnull %7) #4
  br label %13

13:                                               ; preds = %9, %11, %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %14(ptr noundef nonnull %0) #4
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_previewimg_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ 0, %0 ], [ %7, %3 ]
  %5 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 2, i64 %4
  store i16 1, ptr %5, align 2, !tbaa !44
  %6 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 3, i64 %4
  store i16 0, ptr %6, align 2, !tbaa !44
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %3, label %9, !llvm.loop !45

9:                                                ; preds = %3
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_previewimg_freefunc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1, %15
  %4 = phi i64 [ %16, %15 ], [ 0, %1 ]
  %5 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %9(ptr noundef nonnull %6) #4
  store ptr null, ptr %5, align 8, !tbaa !38
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 5, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #4
  br label %15

15:                                               ; preds = %10, %14
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %3, label %18, !llvm.loop !48

18:                                               ; preds = %15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %19(ptr noundef nonnull %0) #4
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_previewimg_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %3, %18
  %7 = phi i64 [ %19, %18 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.PreviewImage, ptr %4, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %12(ptr noundef nonnull %9) #4
  store ptr null, ptr %8, align 8, !tbaa !38
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.PreviewImage, ptr %4, i64 0, i32 5, i64 %7
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @GPU_texture_free(ptr noundef nonnull %15) #4
  br label %18

18:                                               ; preds = %17, %13
  %19 = add nuw nsw i64 %7, 1
  %20 = icmp eq i64 %7, 0
  br i1 %20, label %6, label %21, !llvm.loop !48

21:                                               ; preds = %18
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %22(ptr noundef nonnull %4) #4
  store ptr null, ptr %0, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %21, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_previewimg_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %5 = tail call ptr %4(ptr noundef nonnull %0) #4
  br label %6

6:                                                ; preds = %3, %14
  %7 = phi i64 [ 0, %3 ], [ %18, %14 ]
  %8 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %13 = tail call ptr %12(ptr noundef nonnull %9) #4
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %13, %11 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.PreviewImage, ptr %5, i64 0, i32 4, i64 %7
  store ptr %15, ptr %16, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.PreviewImage, ptr %5, i64 0, i32 5, i64 %7
  store ptr null, ptr %17, align 8, !tbaa !38
  %18 = add nuw nsw i64 %7, 1
  %19 = icmp eq i64 %7, 0
  br i1 %19, label %6, label %20, !llvm.loop !49

20:                                               ; preds = %14, %1
  %21 = phi ptr [ null, %1 ], [ %5, %14 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_previewimg_free_id(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !44
  switch i16 %3, label %122 [
    i16 16717, label %4
    i16 17748, label %23
    i16 20311, label %42
    i16 16716, label %61
    i16 19785, label %80
    i16 21058, label %99
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %122, label %8

8:                                                ; preds = %4, %20
  %9 = phi i64 [ %21, %20 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %6, i64 0, i32 4, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %14(ptr noundef nonnull %11) #4
  store ptr null, ptr %10, align 8, !tbaa !38
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds %struct.PreviewImage, ptr %6, i64 0, i32 5, i64 %9
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @GPU_texture_free(ptr noundef nonnull %17) #4
  br label %20

20:                                               ; preds = %19, %15
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %9, 0
  br i1 %22, label %8, label %118, !llvm.loop !48

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = icmp eq ptr %25, null
  br i1 %26, label %122, label %27

27:                                               ; preds = %23, %39
  %28 = phi i64 [ %40, %39 ], [ 0, %23 ]
  %29 = getelementptr inbounds %struct.PreviewImage, ptr %25, i64 0, i32 4, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %33(ptr noundef nonnull %30) #4
  store ptr null, ptr %29, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.PreviewImage, ptr %25, i64 0, i32 5, i64 %28
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @GPU_texture_free(ptr noundef nonnull %36) #4
  br label %39

39:                                               ; preds = %38, %34
  %40 = add nuw nsw i64 %28, 1
  %41 = icmp eq i64 %28, 0
  br i1 %41, label %27, label %118, !llvm.loop !48

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = icmp eq ptr %44, null
  br i1 %45, label %122, label %46

46:                                               ; preds = %42, %58
  %47 = phi i64 [ %59, %58 ], [ 0, %42 ]
  %48 = getelementptr inbounds %struct.PreviewImage, ptr %44, i64 0, i32 4, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !38
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %52(ptr noundef nonnull %49) #4
  store ptr null, ptr %48, align 8, !tbaa !38
  br label %53

53:                                               ; preds = %51, %46
  %54 = getelementptr inbounds %struct.PreviewImage, ptr %44, i64 0, i32 5, i64 %47
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @GPU_texture_free(ptr noundef nonnull %55) #4
  br label %58

58:                                               ; preds = %57, %53
  %59 = add nuw nsw i64 %47, 1
  %60 = icmp eq i64 %47, 0
  br i1 %60, label %46, label %118, !llvm.loop !48

61:                                               ; preds = %1
  %62 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = icmp eq ptr %63, null
  br i1 %64, label %122, label %65

65:                                               ; preds = %61, %77
  %66 = phi i64 [ %78, %77 ], [ 0, %61 ]
  %67 = getelementptr inbounds %struct.PreviewImage, ptr %63, i64 0, i32 4, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %71(ptr noundef nonnull %68) #4
  store ptr null, ptr %67, align 8, !tbaa !38
  br label %72

72:                                               ; preds = %70, %65
  %73 = getelementptr inbounds %struct.PreviewImage, ptr %63, i64 0, i32 5, i64 %66
  %74 = load ptr, ptr %73, align 8, !tbaa !38
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @GPU_texture_free(ptr noundef nonnull %74) #4
  br label %77

77:                                               ; preds = %76, %72
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %66, 0
  br i1 %79, label %65, label %118, !llvm.loop !48

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = icmp eq ptr %82, null
  br i1 %83, label %122, label %84

84:                                               ; preds = %80, %96
  %85 = phi i64 [ %97, %96 ], [ 0, %80 ]
  %86 = getelementptr inbounds %struct.PreviewImage, ptr %82, i64 0, i32 4, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !38
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %90(ptr noundef nonnull %87) #4
  store ptr null, ptr %86, align 8, !tbaa !38
  br label %91

91:                                               ; preds = %89, %84
  %92 = getelementptr inbounds %struct.PreviewImage, ptr %82, i64 0, i32 5, i64 %85
  %93 = load ptr, ptr %92, align 8, !tbaa !38
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @GPU_texture_free(ptr noundef nonnull %93) #4
  br label %96

96:                                               ; preds = %95, %91
  %97 = add nuw nsw i64 %85, 1
  %98 = icmp eq i64 %85, 0
  br i1 %98, label %84, label %118, !llvm.loop !48

99:                                               ; preds = %1
  %100 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !38
  %102 = icmp eq ptr %101, null
  br i1 %102, label %122, label %103

103:                                              ; preds = %99, %115
  %104 = phi i64 [ %116, %115 ], [ 0, %99 ]
  %105 = getelementptr inbounds %struct.PreviewImage, ptr %101, i64 0, i32 4, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !38
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %109(ptr noundef nonnull %106) #4
  store ptr null, ptr %105, align 8, !tbaa !38
  br label %110

110:                                              ; preds = %108, %103
  %111 = getelementptr inbounds %struct.PreviewImage, ptr %101, i64 0, i32 5, i64 %104
  %112 = load ptr, ptr %111, align 8, !tbaa !38
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @GPU_texture_free(ptr noundef nonnull %112) #4
  br label %115

115:                                              ; preds = %114, %110
  %116 = add nuw nsw i64 %104, 1
  %117 = icmp eq i64 %104, 0
  br i1 %117, label %103, label %118, !llvm.loop !48

118:                                              ; preds = %115, %96, %77, %58, %39, %20
  %119 = phi ptr [ %6, %20 ], [ %25, %39 ], [ %44, %58 ], [ %63, %77 ], [ %82, %96 ], [ %101, %115 ]
  %120 = phi ptr [ %5, %20 ], [ %24, %39 ], [ %43, %58 ], [ %62, %77 ], [ %81, %96 ], [ %100, %115 ]
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %121(ptr noundef nonnull %119) #4
  store ptr null, ptr %120, align 8, !tbaa !38
  br label %122

122:                                              ; preds = %118, %99, %80, %61, %42, %23, %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_previewimg_get(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !44
  switch i16 %3, label %91 [
    i16 16717, label %4
    i16 17748, label %18
    i16 20311, label %32
    i16 16716, label %46
    i16 19785, label %60
    i16 21058, label %74
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %88

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %10 = tail call ptr %9(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %15, %11 ]
  %13 = getelementptr inbounds %struct.PreviewImage, ptr %10, i64 0, i32 2, i64 %12
  store i16 1, ptr %13, align 2, !tbaa !44
  %14 = getelementptr inbounds %struct.PreviewImage, ptr %10, i64 0, i32 3, i64 %12
  store i16 0, ptr %14, align 2, !tbaa !44
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %12, 0
  br i1 %16, label %11, label %17, !llvm.loop !45

17:                                               ; preds = %11
  store ptr %10, ptr %5, align 8, !tbaa !50
  br label %88

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %88

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %24 = tail call ptr %23(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %29, %25 ]
  %27 = getelementptr inbounds %struct.PreviewImage, ptr %24, i64 0, i32 2, i64 %26
  store i16 1, ptr %27, align 2, !tbaa !44
  %28 = getelementptr inbounds %struct.PreviewImage, ptr %24, i64 0, i32 3, i64 %26
  store i16 0, ptr %28, align 2, !tbaa !44
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %25, label %31, !llvm.loop !45

31:                                               ; preds = %25
  store ptr %24, ptr %19, align 8, !tbaa !57
  br label %88

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %38 = tail call ptr %37(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %43, %39 ]
  %41 = getelementptr inbounds %struct.PreviewImage, ptr %38, i64 0, i32 2, i64 %40
  store i16 1, ptr %41, align 2, !tbaa !44
  %42 = getelementptr inbounds %struct.PreviewImage, ptr %38, i64 0, i32 3, i64 %40
  store i16 0, ptr %42, align 2, !tbaa !44
  %43 = add nuw nsw i64 %40, 1
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %39, label %45, !llvm.loop !45

45:                                               ; preds = %39
  store ptr %38, ptr %33, align 8, !tbaa !60
  br label %88

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %52 = tail call ptr %51(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ 0, %50 ], [ %57, %53 ]
  %55 = getelementptr inbounds %struct.PreviewImage, ptr %52, i64 0, i32 2, i64 %54
  store i16 1, ptr %55, align 2, !tbaa !44
  %56 = getelementptr inbounds %struct.PreviewImage, ptr %52, i64 0, i32 3, i64 %54
  store i16 0, ptr %56, align 2, !tbaa !44
  %57 = add nuw nsw i64 %54, 1
  %58 = icmp eq i64 %54, 0
  br i1 %58, label %53, label %59, !llvm.loop !45

59:                                               ; preds = %53
  store ptr %52, ptr %47, align 8, !tbaa !62
  br label %88

60:                                               ; preds = %1
  %61 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %66 = tail call ptr %65(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %67

67:                                               ; preds = %64, %67
  %68 = phi i64 [ 0, %64 ], [ %71, %67 ]
  %69 = getelementptr inbounds %struct.PreviewImage, ptr %66, i64 0, i32 2, i64 %68
  store i16 1, ptr %69, align 2, !tbaa !44
  %70 = getelementptr inbounds %struct.PreviewImage, ptr %66, i64 0, i32 3, i64 %68
  store i16 0, ptr %70, align 2, !tbaa !44
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %68, 0
  br i1 %72, label %67, label %73, !llvm.loop !45

73:                                               ; preds = %67
  store ptr %66, ptr %61, align 8, !tbaa !64
  br label %88

74:                                               ; preds = %1
  %75 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !67
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %80 = tail call ptr %79(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ 0, %78 ], [ %85, %81 ]
  %83 = getelementptr inbounds %struct.PreviewImage, ptr %80, i64 0, i32 2, i64 %82
  store i16 1, ptr %83, align 2, !tbaa !44
  %84 = getelementptr inbounds %struct.PreviewImage, ptr %80, i64 0, i32 3, i64 %82
  store i16 0, ptr %84, align 2, !tbaa !44
  %85 = add nuw nsw i64 %82, 1
  %86 = icmp eq i64 %82, 0
  br i1 %86, label %81, label %87, !llvm.loop !45

87:                                               ; preds = %81
  store ptr %80, ptr %75, align 8, !tbaa !67
  br label %88

88:                                               ; preds = %74, %87, %60, %73, %46, %59, %32, %45, %18, %31, %4, %17
  %89 = phi ptr [ %5, %17 ], [ %5, %4 ], [ %19, %31 ], [ %19, %18 ], [ %33, %45 ], [ %33, %32 ], [ %47, %59 ], [ %47, %46 ], [ %61, %73 ], [ %61, %60 ], [ %75, %87 ], [ %75, %74 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  br label %91

91:                                               ; preds = %88, %1
  %92 = phi ptr [ null, %1 ], [ %90, %88 ]
  ret ptr %92
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_icon_changed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %8 = sext i32 %0 to i64
  %9 = inttoptr i64 %8 to ptr
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %9) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Icon, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = tail call ptr @BKE_previewimg_get(ptr noundef %14)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %17
  %18 = phi i64 [ %23, %17 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.PreviewImage, ptr %15, i64 0, i32 2, i64 %18
  store i16 1, ptr %19, align 2, !tbaa !44
  %20 = getelementptr inbounds %struct.PreviewImage, ptr %15, i64 0, i32 3, i64 %18
  %21 = load i16, ptr %20, align 2, !tbaa !44
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 2, !tbaa !44
  %23 = add nuw nsw i64 %18, 1
  %24 = icmp eq i64 %18, 0
  br i1 %24, label %17, label %25, !llvm.loop !72

25:                                               ; preds = %17, %6, %12, %1
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_icon_getid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %50, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !73
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load i32, ptr @gFirstIconId, align 4, !tbaa !34
  %12 = load i32, ptr @gNextIconId, align 4, !tbaa !34
  %13 = icmp slt i32 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = sext i32 %11 to i64
  br label %18

16:                                               ; preds = %10
  %17 = add nsw i32 %12, 1
  store i32 %17, ptr @gNextIconId, align 4, !tbaa !34
  br label %32

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %15, %14 ], [ %28, %18 ]
  %20 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %21 = inttoptr i64 %19 to ptr
  %22 = tail call ptr @BLI_ghash_lookup(ptr noundef %20, ptr noundef %21) #4
  %23 = icmp ne ptr %22, null
  %24 = load i32, ptr @gFirstIconId, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp sge i64 %19, %25
  %27 = select i1 %23, i1 %26, i1 false
  %28 = add i64 %19, 1
  br i1 %27, label %18, label %29, !llvm.loop !74

29:                                               ; preds = %18
  %30 = trunc i64 %19 to i32
  %31 = select i1 %26, i32 %30, i32 0
  br label %32

32:                                               ; preds = %16, %29
  %33 = phi i32 [ %12, %16 ], [ %31, %29 ]
  store i32 %33, ptr %7, align 8, !tbaa !73
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %50

37:                                               ; preds = %32
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %39 = tail call ptr %38(i64 noundef 32, ptr noundef nonnull @.str.3) #4
  %40 = getelementptr inbounds %struct.Icon, ptr %39, i64 0, i32 1
  store ptr %0, ptr %40, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %42 = load i16, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.Icon, ptr %39, i64 0, i32 2
  store i16 %42, ptr %43, align 8, !tbaa !75
  store ptr null, ptr %39, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.Icon, ptr %39, i64 0, i32 3
  store ptr null, ptr %44, align 8, !tbaa !40
  %45 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %46 = load i32, ptr %7, align 8, !tbaa !73
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %45, ptr noundef %48, ptr noundef nonnull %39) #4
  %49 = load i32, ptr %7, align 8, !tbaa !73
  br label %50

50:                                               ; preds = %6, %1, %37, %35
  %51 = phi i32 [ %49, %37 ], [ 0, %35 ], [ 0, %1 ], [ %8, %6 ]
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_icon_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %3 = sext i32 %0 to i64
  %4 = inttoptr i64 %3 to ptr
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %2, ptr noundef %4) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ null, %7 ], [ %5, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_icon_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %4 = sext i32 %0 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %3, ptr noundef %5) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %0)
  br label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr @gIcons, align 8, !tbaa !38
  tail call void @BLI_ghash_insert(ptr noundef %11, ptr noundef %5, ptr noundef %1) #4
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_icon_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %7 = sext i32 %3 to i64
  %8 = inttoptr i64 %7 to ptr
  %9 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %6, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull @icon_free) #4
  store i32 0, ptr %2, align 8, !tbaa !73
  br label %10

10:                                               ; preds = %1, %5
  ret void
}

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !39, i64 24}
!41 = !{!"Icon", !39, i64 0, !39, i64 8, !42, i64 16, !39, i64 24}
!42 = !{!"short", !36, i64 0}
!43 = !{!41, !39, i64 0}
!44 = !{!42, !42, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !46, !47}
!50 = !{!51, !39, i64 792}
!51 = !{!"Material", !52, i64 0, !39, i64 120, !42, i64 128, !42, i64 130, !53, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !53, i64 216, !53, i64 220, !54, i64 224, !55, i64 312, !53, i64 328, !53, i64 332, !53, i64 336, !53, i64 340, !53, i64 344, !53, i64 348, !53, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !53, i64 364, !53, i64 368, !42, i64 372, !42, i64 374, !53, i64 376, !53, i64 380, !53, i64 384, !53, i64 388, !42, i64 392, !42, i64 394, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !53, i64 420, !53, i64 424, !53, i64 428, !53, i64 432, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !53, i64 456, !36, i64 460, !53, i64 524, !53, i64 528, !53, i64 532, !35, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !53, i64 556, !53, i64 560, !36, i64 564, !53, i64 580, !53, i64 584, !42, i64 588, !42, i64 590, !39, i64 592, !39, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !53, i64 616, !53, i64 620, !36, i64 624, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !53, i64 800, !53, i64 804, !53, i64 808, !53, i64 812, !53, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !53, i64 848, !53, i64 852, !53, i64 856, !53, i64 860, !53, i64 864, !53, i64 868, !53, i64 872, !42, i64 876, !42, i64 878, !35, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !39, i64 920, !56, i64 928}
!52 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !42, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !39, i64 112}
!53 = !{!"float", !36, i64 0}
!54 = !{!"VolumeSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !53, i64 52, !53, i64 56, !53, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !53, i64 72, !53, i64 76, !53, i64 80, !53, i64 84}
!55 = !{!"GameSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!56 = !{!"ListBase", !39, i64 0, !39, i64 8}
!57 = !{!58, !39, i64 376}
!58 = !{!"Tex", !52, i64 0, !39, i64 120, !53, i64 128, !53, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !35, i64 252, !35, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !59, i64 296, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !39, i64 368, !39, i64 376, !39, i64 384, !39, i64 392, !39, i64 400, !36, i64 408, !36, i64 409}
!59 = !{!"ImageUser", !39, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !35, i64 36}
!60 = !{!61, !39, i64 512}
!61 = !{!"World", !52, i64 0, !39, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !53, i64 260, !42, i64 264, !42, i64 266, !42, i64 268, !42, i64 270, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !39, i64 336, !39, i64 344, !39, i64 352, !36, i64 360, !42, i64 504, !42, i64 506, !36, i64 508, !39, i64 512, !39, i64 520}
!62 = !{!63, !39, i64 504}
!63 = !{!"Lamp", !52, i64 0, !39, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !42, i64 136, !42, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !39, i64 200, !42, i64 208, !42, i64 210, !53, i64 212, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !36, i64 248, !36, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !53, i64 260, !53, i64 264, !53, i64 268, !53, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !53, i64 324, !53, i64 328, !53, i64 332, !53, i64 336, !42, i64 340, !36, i64 342, !39, i64 344, !36, i64 352, !42, i64 496, !42, i64 498, !36, i64 500, !39, i64 504, !39, i64 512}
!64 = !{!65, !39, i64 1288}
!65 = !{!"Image", !52, i64 0, !36, i64 120, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !36, i64 1176, !42, i64 1240, !42, i64 1242, !42, i64 1244, !42, i64 1246, !42, i64 1248, !42, i64 1250, !35, i64 1252, !42, i64 1256, !42, i64 1258, !42, i64 1260, !42, i64 1262, !42, i64 1264, !42, i64 1266, !35, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !53, i64 1296, !35, i64 1300, !42, i64 1304, !42, i64 1306, !35, i64 1308, !35, i64 1312, !36, i64 1316, !36, i64 1317, !42, i64 1318, !36, i64 1320, !53, i64 1336, !53, i64 1340, !66, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!66 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!67 = !{!68, !39, i64 792}
!68 = !{!"Brush", !52, i64 0, !69, i64 120, !39, i64 144, !70, i64 152, !70, i64 464, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !36, i64 816, !53, i64 1840, !42, i64 1844, !42, i64 1846, !53, i64 1848, !35, i64 1852, !35, i64 1856, !35, i64 1860, !53, i64 1864, !35, i64 1868, !35, i64 1872, !35, i64 1876, !35, i64 1880, !53, i64 1884, !53, i64 1888, !36, i64 1892, !53, i64 1904, !36, i64 1908, !35, i64 1920, !53, i64 1924, !53, i64 1928, !35, i64 1932, !35, i64 1936, !35, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !53, i64 1948, !53, i64 1952, !53, i64 1956, !53, i64 1960, !53, i64 1964, !35, i64 1968, !35, i64 1972, !35, i64 1976, !53, i64 1980, !53, i64 1984, !35, i64 1988, !35, i64 1992, !53, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!69 = !{!"BrushClone", !39, i64 0, !36, i64 8, !53, i64 16, !53, i64 20}
!70 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !39, i64 8, !39, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !53, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !53, i64 260, !53, i64 264, !53, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308}
!71 = !{!41, !39, i64 8}
!72 = distinct !{!72, !46, !47}
!73 = !{!52, !35, i64 104}
!74 = distinct !{!74, !46, !47}
!75 = !{!41, !42, i64 16}
