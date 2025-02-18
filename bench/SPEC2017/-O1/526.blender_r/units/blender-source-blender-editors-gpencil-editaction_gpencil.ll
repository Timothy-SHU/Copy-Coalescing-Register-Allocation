; ModuleID = 'blender/source/blender/editors/gpencil/editaction_gpencil.c'
source_filename = "blender/source/blender/editors/gpencil/editaction_gpencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"CfraElem\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_gplayer_frames_looper(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call signext i16 %2(ptr noundef nonnull %9, ptr noundef %1) #5
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !38

14:                                               ; preds = %7, %11, %3
  %15 = phi i8 [ 0, %3 ], [ 1, %11 ], [ 0, %7 ]
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_gplayer_make_cfra_list(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %2, 0
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi ptr [ %9, %11 ], [ %33, %32 ]
  br i1 %12, label %20, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str) #5
  %23 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 2
  store float %25, ptr %26, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !49
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %22) #5
  br label %32

32:                                               ; preds = %15, %20
  %33 = load ptr, ptr %14, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !50

35:                                               ; preds = %32, %7, %3
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_gplayer_frame_select_check(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !51

14:                                               ; preds = %5, %9, %1
  %15 = phi i8 [ 0, %1 ], [ 1, %9 ], [ 0, %5 ]
  ret i8 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_gpencil_select_frames(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %4 ]
  switch i16 %1, label %22 [
    i16 2, label %10
    i16 4, label %14
    i16 8, label %18
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = or i32 %12, 2
  store i32 %13, ptr %11, align 4, !tbaa !41
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = and i32 %16, -3
  store i32 %17, ptr %15, align 4, !tbaa !41
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = xor i32 %20, 2
  store i32 %21, ptr %19, align 4, !tbaa !41
  br label %22

22:                                               ; preds = %8, %10, %14, %18
  %23 = load ptr, ptr %9, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !52

25:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_gplayer_frame_select_set(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %4 ]
  switch i16 %1, label %22 [
    i16 2, label %10
    i16 4, label %14
    i16 8, label %18
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = or i32 %12, 2
  store i32 %13, ptr %11, align 4, !tbaa !41
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = and i32 %16, -3
  store i32 %17, ptr %15, align 4, !tbaa !41
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = xor i32 %20, 2
  store i32 %21, ptr %19, align 4, !tbaa !41
  br label %22

22:                                               ; preds = %18, %14, %10, %8
  %23 = load ptr, ptr %9, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !52

25:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_select_frame(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef nonnull %0, i32 noundef %1) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  switch i16 %2, label %21 [
    i16 2, label %9
    i16 4, label %13
    i16 8, label %17
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = or i32 %11, 2
  store i32 %12, ptr %10, align 4, !tbaa !41
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %6, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = and i32 %15, -3
  store i32 %16, ptr %14, align 4, !tbaa !41
  br label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.bGPDframe, ptr %6, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = xor i32 %19, 2
  store i32 %20, ptr %18, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %17, %13, %9, %8, %5, %3
  ret void
}

declare ptr @BKE_gpencil_layer_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_gplayer_frames_select_border(ptr noundef readonly %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = fcmp olt float %1, %2
  br label %12

12:                                               ; preds = %10, %38
  %13 = phi ptr [ %8, %10 ], [ %39, %38 ]
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = sitofp i32 %15 to float
  br i1 %11, label %17, label %21

17:                                               ; preds = %12
  %18 = fcmp ogt float %16, %1
  %19 = fcmp olt float %16, %2
  %20 = and i1 %18, %19
  br i1 %20, label %25, label %38

21:                                               ; preds = %12
  %22 = fcmp ogt float %16, %2
  %23 = fcmp olt float %16, %1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21, %17
  switch i16 %3, label %38 [
    i16 2, label %26
    i16 4, label %30
    i16 8, label %34
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = or i32 %28, 2
  store i32 %29, ptr %27, align 4, !tbaa !41
  br label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !41
  %33 = and i32 %32, -3
  store i32 %33, ptr %31, align 4, !tbaa !41
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = xor i32 %36, 2
  store i32 %37, ptr %35, align 4, !tbaa !41
  br label %38

38:                                               ; preds = %34, %30, %26, %25, %17, %21
  %39 = load ptr, ptr %13, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %12, !llvm.loop !53

41:                                               ; preds = %38, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_gplayer_frames_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %18
  %8 = phi i8 [ %19, %18 ], [ 0, %3 ]
  %9 = phi ptr [ %10, %18 ], [ %5, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef nonnull %0, ptr noundef nonnull %9) #5
  %17 = or i8 %16, %8
  br label %18

18:                                               ; preds = %7, %15
  %19 = phi i8 [ %17, %15 ], [ %8, %7 ]
  %20 = icmp eq ptr %10, null
  br i1 %20, label %21, label %7, !llvm.loop !58

21:                                               ; preds = %18, %3, %1
  %22 = phi i8 [ 0, %1 ], [ 0, %3 ], [ %19, %18 ]
  ret i8 %22
}

declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_gplayer_frames_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %9, %18 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @gpencil_frame_duplicate(ptr noundef nonnull %8) #5
  %16 = load i32, ptr %10, align 4, !tbaa !41
  %17 = and i32 %16, -3
  store i32 %17, ptr %10, align 4, !tbaa !41
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %15) #5
  br label %18

18:                                               ; preds = %7, %14
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !59

20:                                               ; preds = %18, %3, %1
  ret void
}

declare ptr @gpencil_frame_duplicate(ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_gplayer_snap_frames(ptr noundef readonly %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  switch i16 %2, label %79 [
    i16 3, label %46
    i16 1, label %4
    i16 4, label %24
  ]

4:                                                ; preds = %3
  %5 = icmp eq ptr %0, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %8, %10 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %11, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %12, %18
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %79, label %12, !llvm.loop !38

24:                                               ; preds = %3
  %25 = icmp eq ptr %0, null
  br i1 %25, label %79, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %79, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 24
  br label %32

32:                                               ; preds = %30, %43
  %33 = phi ptr [ %28, %30 ], [ %44, %43 ]
  %34 = getelementptr inbounds %struct.bGPDframe, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !41
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.bGPDframe, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !45
  %41 = sitofp i32 %40 to float
  %42 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %31, float noundef %41) #5
  store i32 %42, ptr %39, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %32, %38
  %44 = load ptr, ptr %33, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %79, label %32, !llvm.loop !38

46:                                               ; preds = %3
  %47 = icmp eq ptr %0, null
  br i1 %47, label %79, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 55
  %54 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 65
  br label %55

55:                                               ; preds = %52, %76
  %56 = phi ptr [ %50, %52 ], [ %77, %76 ]
  %57 = getelementptr inbounds %struct.bGPDframe, ptr %56, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !41
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %55
  %62 = load i16, ptr %53, align 4, !tbaa !81
  %63 = sitofp i16 %62 to double
  %64 = load float, ptr %54, align 4, !tbaa !82
  %65 = fpext float %64 to double
  %66 = fdiv double %63, %65
  %67 = fptrunc double %66 to float
  %68 = getelementptr inbounds %struct.bGPDframe, ptr %56, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !45
  %70 = sitofp i32 %69 to float
  %71 = fdiv float %70, %67
  %72 = fadd float %71, 5.000000e-01
  %73 = tail call float @llvm.floor.f32(float %72)
  %74 = fmul float %73, %67
  %75 = fptosi float %74 to i32
  store i32 %75, ptr %68, align 8, !tbaa !45
  br label %76

76:                                               ; preds = %55, %61
  %77 = load ptr, ptr %56, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %55, !llvm.loop !38

79:                                               ; preds = %43, %21, %76, %48, %26, %6, %46, %24, %4, %3
  ret void
}

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !44, i64 36}
!42 = !{!"bGPDframe", !35, i64 0, !35, i64 8, !43, i64 16, !44, i64 32, !44, i64 36}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!"int", !36, i64 0}
!45 = !{!42, !44, i64 32}
!46 = !{!47, !48, i64 16}
!47 = !{!"CfraElem", !35, i64 0, !35, i64 8, !48, i64 16, !44, i64 20}
!48 = !{!"float", !36, i64 0}
!49 = !{!47, !44, i64 20}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = !{!55, !35, i64 16}
!55 = !{!"bGPDlayer", !35, i64 0, !35, i64 8, !43, i64 16, !35, i64 32, !44, i64 40, !56, i64 44, !56, i64 46, !36, i64 48, !36, i64 64}
!56 = !{!"short", !36, i64 0}
!57 = !{!42, !35, i64 0}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39, !40}
!60 = !{!61, !44, i64 680}
!61 = !{!"Scene", !62, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !56, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !63, i64 280, !72, i64 4264, !43, i64 4296, !43, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !56, i64 4376, !56, i64 4378, !44, i64 4380, !43, i64 4384, !73, i64 4400, !74, i64 4416, !77, i64 4600, !35, i64 4608, !78, i64 4616, !35, i64 4640, !79, i64 4648, !79, i64 4656, !65, i64 4664, !66, i64 4824, !80, i64 4888, !35, i64 4952}
!62 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !56, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!63 = !{!"RenderData", !64, i64 0, !35, i64 248, !35, i64 256, !67, i64 264, !68, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !48, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !56, i64 432, !56, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !56, i64 456, !56, i64 458, !56, i64 460, !56, i64 462, !56, i64 464, !56, i64 466, !44, i64 468, !56, i64 472, !56, i64 474, !56, i64 476, !56, i64 478, !56, i64 480, !56, i64 482, !44, i64 484, !44, i64 488, !56, i64 492, !56, i64 494, !44, i64 496, !44, i64 500, !56, i64 504, !56, i64 506, !56, i64 508, !56, i64 510, !56, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !56, i64 528, !56, i64 530, !56, i64 532, !56, i64 534, !56, i64 536, !56, i64 538, !56, i64 540, !56, i64 542, !69, i64 544, !69, i64 560, !70, i64 576, !43, i64 592, !56, i64 608, !56, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !44, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !56, i64 648, !56, i64 650, !56, i64 652, !56, i64 654, !56, i64 656, !56, i64 658, !48, i64 660, !48, i64 664, !56, i64 668, !56, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !44, i64 1704, !56, i64 1708, !56, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !56, i64 2524, !56, i64 2526, !48, i64 2528, !48, i64 2532, !56, i64 2536, !56, i64 2538, !48, i64 2540, !56, i64 2544, !56, i64 2546, !44, i64 2548, !56, i64 2552, !56, i64 2554, !56, i64 2556, !56, i64 2558, !48, i64 2560, !48, i64 2564, !35, i64 2568, !44, i64 2576, !48, i64 2580, !36, i64 2584, !71, i64 2616, !44, i64 3976, !44, i64 3980}
!64 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !56, i64 8, !56, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !65, i64 24, !66, i64 184}
!65 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!66 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!67 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !56, i64 48, !56, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!68 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !48, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!69 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!70 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!71 = !{!"BakeData", !64, i64 0, !36, i64 248, !56, i64 1272, !56, i64 1274, !56, i64 1276, !56, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!72 = !{!"AudioData", !44, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !44, i64 16, !56, i64 20, !56, i64 22, !48, i64 24, !48, i64 28}
!73 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!74 = !{!"GameData", !73, i64 0, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !56, i64 32, !36, i64 34, !75, i64 40, !56, i64 64, !56, i64 66, !48, i64 68, !76, i64 72, !48, i64 128, !48, i64 132, !44, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !56, i64 156, !56, i64 158, !56, i64 160, !56, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!75 = !{!"GameDome", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !48, i64 8, !48, i64 12, !35, i64 16}
!76 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !44, i64 40, !48, i64 44, !48, i64 48, !56, i64 52, !56, i64 54}
!77 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !56, i64 6}
!78 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!79 = !{!"long", !36, i64 0}
!80 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!81 = !{!61, !56, i64 820}
!82 = !{!61, !48, i64 900}
