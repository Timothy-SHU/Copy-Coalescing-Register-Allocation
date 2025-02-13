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

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @icon_free(ptr noundef %0) #0 !PGOFuncName !40 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Icon, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %0, align 8, !tbaa !44
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_previewimg_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 56, ptr noundef nonnull @.str.1) #4
  %3 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 2, i64 0
  store <4 x i16> <i16 1, i16 1, i16 0, i16 0>, ptr %3, align 2, !tbaa !45
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_previewimg_freefunc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %16
  %4 = phi i1 [ false, %16 ], [ true, %1 ]
  %5 = phi i64 [ 1, %16 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %10(ptr noundef nonnull %7) #4
  store ptr null, ptr %6, align 8, !tbaa !38
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 5, i64 %5
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @GPU_texture_free(ptr noundef nonnull %13) #4
  br label %16

16:                                               ; preds = %11, %15
  br i1 %4, label %3, label %17, !llvm.loop !46

17:                                               ; preds = %16
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %18(ptr noundef nonnull %0) #4
  br label %19

19:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: optsize
declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_previewimg_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @BKE_previewimg_freefunc(ptr noundef nonnull %4) #5
  store ptr null, ptr %0, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %6, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_previewimg_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %5 = tail call ptr %4(ptr noundef nonnull %0) #4
  br label %6

6:                                                ; preds = %3, %15
  %7 = phi i1 [ true, %3 ], [ false, %15 ]
  %8 = phi i64 [ 0, %3 ], [ 1, %15 ]
  %9 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %14 = tail call ptr %13(ptr noundef nonnull %10) #4
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ null, %6 ]
  %17 = getelementptr inbounds %struct.PreviewImage, ptr %5, i64 0, i32 4, i64 %8
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.PreviewImage, ptr %5, i64 0, i32 5, i64 %8
  store ptr null, ptr %18, align 8, !tbaa !38
  br i1 %7, label %6, label %19, !llvm.loop !48

19:                                               ; preds = %15, %1
  %20 = phi ptr [ null, %1 ], [ %5, %15 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_previewimg_free_id(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !45
  switch i16 %3, label %18 [
    i16 16717, label %4
    i16 17748, label %6
    i16 20311, label %8
    i16 16716, label %10
    i16 19785, label %12
    i16 21058, label %14
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  br label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 7
  br label %16

16:                                               ; preds = %4, %8, %12, %14, %10, %6
  %17 = phi ptr [ %7, %6 ], [ %11, %10 ], [ %15, %14 ], [ %13, %12 ], [ %9, %8 ], [ %5, %4 ]
  tail call void @BKE_previewimg_free(ptr noundef nonnull %17) #5
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_previewimg_get(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !45
  switch i16 %3, label %40 [
    i16 16717, label %4
    i16 17748, label %10
    i16 20311, label %16
    i16 16716, label %22
    i16 19785, label %28
    i16 21058, label %34
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_previewimg_create() #5
  store ptr %9, ptr %5, align 8, !tbaa !49
  br label %40

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_previewimg_create() #5
  store ptr %15, ptr %11, align 8, !tbaa !56
  br label %40

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = tail call ptr @BKE_previewimg_create() #5
  store ptr %21, ptr %17, align 8, !tbaa !59
  br label %40

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = tail call ptr @BKE_previewimg_create() #5
  store ptr %27, ptr %23, align 8, !tbaa !61
  br label %40

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = tail call ptr @BKE_previewimg_create() #5
  store ptr %33, ptr %29, align 8, !tbaa !63
  br label %40

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call ptr @BKE_previewimg_create() #5
  store ptr %39, ptr %35, align 8, !tbaa !66
  br label %40

40:                                               ; preds = %34, %38, %28, %32, %22, %26, %16, %20, %10, %14, %4, %8, %1
  %41 = phi ptr [ null, %1 ], [ %9, %8 ], [ %6, %4 ], [ %15, %14 ], [ %12, %10 ], [ %21, %20 ], [ %18, %16 ], [ %27, %26 ], [ %24, %22 ], [ %33, %32 ], [ %30, %28 ], [ %39, %38 ], [ %36, %34 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_icon_changed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %8 = sext i32 %0 to i64
  %9 = inttoptr i64 %8 to ptr
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %9) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Icon, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = tail call ptr @BKE_previewimg_get(ptr noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.PreviewImage, ptr %15, i64 0, i32 2, i64 0
  store i16 1, ptr %18, align 2, !tbaa !45
  %19 = getelementptr inbounds %struct.PreviewImage, ptr %15, i64 0, i32 3, i64 0
  %20 = getelementptr inbounds %struct.PreviewImage, ptr %15, i64 0, i32 2, i64 1
  store i16 1, ptr %20, align 2, !tbaa !45
  %21 = load <2 x i16>, ptr %19, align 2, !tbaa !45
  %22 = add <2 x i16> %21, <i16 1, i16 1>
  store <2 x i16> %22, ptr %19, align 2, !tbaa !45
  br label %23

23:                                               ; preds = %17, %6, %12, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_icon_getid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @get_next_free_id() #5
  store i32 %11, ptr %7, align 8, !tbaa !71
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

15:                                               ; preds = %10
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %17 = tail call ptr %16(i64 noundef 32, ptr noundef nonnull @.str.3) #4
  %18 = getelementptr inbounds %struct.Icon, ptr %17, i64 0, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.Icon, ptr %17, i64 0, i32 2
  store i16 %20, ptr %21, align 8, !tbaa !72
  store ptr null, ptr %17, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.Icon, ptr %17, i64 0, i32 3
  store ptr null, ptr %22, align 8, !tbaa !41
  %23 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %24 = load i32, ptr %7, align 8, !tbaa !71
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %23, ptr noundef %26, ptr noundef nonnull %17) #4
  %27 = load i32, ptr %7, align 8, !tbaa !71
  br label %28

28:                                               ; preds = %6, %1, %15, %13
  %29 = phi i32 [ %27, %15 ], [ 0, %13 ], [ 0, %1 ], [ %8, %6 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_next_free_id() unnamed_addr #0 !PGOFuncName !73 {
  %1 = load i32, ptr @gFirstIconId, align 4, !tbaa !34
  %2 = load i32, ptr @gNextIconId, align 4, !tbaa !34
  %3 = icmp slt i32 %2, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = sext i32 %1 to i64
  br label %8

6:                                                ; preds = %0
  %7 = add nsw i32 %2, 1
  store i32 %7, ptr @gNextIconId, align 4, !tbaa !34
  br label %22

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %5, %4 ], [ %18, %8 ]
  %10 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %11 = inttoptr i64 %9 to ptr
  %12 = tail call ptr @BLI_ghash_lookup(ptr noundef %10, ptr noundef %11) #4
  %13 = icmp ne ptr %12, null
  %14 = load i32, ptr @gFirstIconId, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp sge i64 %9, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = add i64 %9, 1
  br i1 %17, label %8, label %19, !llvm.loop !74

19:                                               ; preds = %8
  %20 = trunc i64 %9 to i32
  %21 = select i1 %16, i32 %20, i32 0
  br label %22

22:                                               ; preds = %19, %6
  %23 = phi i32 [ %2, %6 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_icon_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %3 = sext i32 %0 to i64
  %4 = inttoptr i64 %3 to ptr
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %2, ptr noundef %4) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0) #5
  br label %9

9:                                                ; preds = %1, %7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_icon_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %4 = sext i32 %0 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %3, ptr noundef %5) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %0) #5
  br label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr @gIcons, align 8, !tbaa !38
  tail call void @BLI_ghash_insert(ptr noundef %11, ptr noundef %5, ptr noundef %1) #4
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_icon_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @gIcons, align 8, !tbaa !38
  %7 = sext i32 %3 to i64
  %8 = inttoptr i64 %7 to ptr
  %9 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %6, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull @icon_free) #4
  store i32 0, ptr %2, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!"icons.c:icon_free"}
!41 = !{!42, !39, i64 24}
!42 = !{!"Icon", !39, i64 0, !39, i64 8, !43, i64 16, !39, i64 24}
!43 = !{!"short", !36, i64 0}
!44 = !{!42, !39, i64 0}
!45 = !{!43, !43, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = !{!50, !39, i64 792}
!50 = !{!"Material", !51, i64 0, !39, i64 120, !43, i64 128, !43, i64 130, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !53, i64 224, !54, i64 312, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !52, i64 348, !52, i64 352, !43, i64 356, !43, i64 358, !43, i64 360, !36, i64 362, !36, i64 363, !52, i64 364, !52, i64 368, !43, i64 372, !43, i64 374, !52, i64 376, !52, i64 380, !52, i64 384, !52, i64 388, !43, i64 392, !43, i64 394, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !43, i64 412, !43, i64 414, !43, i64 416, !43, i64 418, !52, i64 420, !52, i64 424, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !52, i64 456, !36, i64 460, !52, i64 524, !52, i64 528, !52, i64 532, !35, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !43, i64 544, !43, i64 546, !43, i64 548, !36, i64 550, !36, i64 551, !43, i64 552, !43, i64 554, !52, i64 556, !52, i64 560, !36, i64 564, !52, i64 580, !52, i64 584, !43, i64 588, !43, i64 590, !39, i64 592, !39, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !43, i64 612, !43, i64 614, !52, i64 616, !52, i64 620, !36, i64 624, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !52, i64 800, !52, i64 804, !52, i64 808, !52, i64 812, !52, i64 816, !43, i64 820, !43, i64 822, !36, i64 824, !36, i64 836, !52, i64 848, !52, i64 852, !52, i64 856, !52, i64 860, !52, i64 864, !52, i64 868, !52, i64 872, !43, i64 876, !43, i64 878, !35, i64 880, !43, i64 884, !43, i64 886, !36, i64 888, !43, i64 904, !43, i64 906, !43, i64 908, !43, i64 910, !43, i64 912, !36, i64 914, !39, i64 920, !55, i64 928}
!51 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !43, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !39, i64 112}
!52 = !{!"float", !36, i64 0}
!53 = !{!"VolumeSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !52, i64 52, !52, i64 56, !52, i64 60, !43, i64 64, !43, i64 66, !43, i64 68, !43, i64 70, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84}
!54 = !{!"GameSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!55 = !{!"ListBase", !39, i64 0, !39, i64 8}
!56 = !{!57, !39, i64 376}
!57 = !{!"Tex", !51, i64 0, !39, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !35, i64 252, !35, i64 256, !43, i64 260, !43, i64 262, !43, i64 264, !43, i64 266, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !58, i64 296, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !39, i64 368, !39, i64 376, !39, i64 384, !39, i64 392, !39, i64 400, !36, i64 408, !36, i64 409}
!58 = !{!"ImageUser", !39, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !43, i64 28, !43, i64 30, !43, i64 32, !43, i64 34, !35, i64 36}
!59 = !{!60, !39, i64 512}
!60 = !{!"World", !51, i64 0, !39, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !43, i64 200, !43, i64 202, !43, i64 204, !43, i64 206, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !43, i64 264, !43, i64 266, !43, i64 268, !43, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !43, i64 288, !43, i64 290, !43, i64 292, !43, i64 294, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !43, i64 324, !43, i64 326, !43, i64 328, !43, i64 330, !43, i64 332, !43, i64 334, !39, i64 336, !39, i64 344, !39, i64 352, !36, i64 360, !43, i64 504, !43, i64 506, !36, i64 508, !39, i64 512, !39, i64 520}
!61 = !{!62, !39, i64 504}
!62 = !{!"Lamp", !51, i64 0, !39, i64 120, !43, i64 128, !43, i64 130, !35, i64 132, !43, i64 136, !43, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !39, i64 200, !43, i64 208, !43, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !43, i64 240, !43, i64 242, !43, i64 244, !43, i64 246, !36, i64 248, !36, i64 249, !43, i64 250, !43, i64 252, !43, i64 254, !43, i64 256, !43, i64 258, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !43, i64 276, !43, i64 278, !43, i64 280, !43, i64 282, !43, i64 284, !43, i64 286, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !43, i64 340, !36, i64 342, !39, i64 344, !36, i64 352, !43, i64 496, !43, i64 498, !36, i64 500, !39, i64 504, !39, i64 512}
!63 = !{!64, !39, i64 1288}
!64 = !{!"Image", !51, i64 0, !36, i64 120, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !36, i64 1176, !43, i64 1240, !43, i64 1242, !43, i64 1244, !43, i64 1246, !43, i64 1248, !43, i64 1250, !35, i64 1252, !43, i64 1256, !43, i64 1258, !43, i64 1260, !43, i64 1262, !43, i64 1264, !43, i64 1266, !35, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !52, i64 1296, !35, i64 1300, !43, i64 1304, !43, i64 1306, !35, i64 1308, !35, i64 1312, !36, i64 1316, !36, i64 1317, !43, i64 1318, !36, i64 1320, !52, i64 1336, !52, i64 1340, !65, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!65 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!66 = !{!67, !39, i64 792}
!67 = !{!"Brush", !51, i64 0, !68, i64 120, !39, i64 144, !69, i64 152, !69, i64 464, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !36, i64 816, !52, i64 1840, !43, i64 1844, !43, i64 1846, !52, i64 1848, !35, i64 1852, !35, i64 1856, !35, i64 1860, !52, i64 1864, !35, i64 1868, !35, i64 1872, !35, i64 1876, !35, i64 1880, !52, i64 1884, !52, i64 1888, !36, i64 1892, !52, i64 1904, !36, i64 1908, !35, i64 1920, !52, i64 1924, !52, i64 1928, !35, i64 1932, !35, i64 1936, !35, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !52, i64 1948, !52, i64 1952, !52, i64 1956, !52, i64 1960, !52, i64 1964, !35, i64 1968, !35, i64 1972, !35, i64 1976, !52, i64 1980, !52, i64 1984, !35, i64 1988, !35, i64 1992, !52, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!68 = !{!"BrushClone", !39, i64 0, !36, i64 8, !52, i64 16, !52, i64 20}
!69 = !{!"MTex", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !39, i64 8, !39, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !52, i64 116, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !43, i64 130, !36, i64 132, !36, i64 133, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308}
!70 = !{!42, !39, i64 8}
!71 = !{!51, !35, i64 104}
!72 = !{!42, !43, i64 16}
!73 = !{!"icons.c:get_next_free_id"}
!74 = distinct !{!74, !47}
