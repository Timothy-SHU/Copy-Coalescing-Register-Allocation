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
@switch.table.ED_gplayer_snap_frames = private unnamed_addr constant [4 x ptr] [ptr @snap_gpf_cframe, ptr @snap_gpf_nearest, ptr @snap_gpf_nearestsec, ptr @snap_gpf_nearmarker], align 8

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call signext i16 %2(ptr noundef nonnull %9, ptr noundef %1) #7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !38

14:                                               ; preds = %7, %11, %3
  %15 = phi i8 [ 0, %3 ], [ 0, %7 ], [ 1, %11 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %17 = load i32, ptr %16, align 4, !tbaa !40
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str) #7
  %23 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !44
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 2
  store float %25, ptr %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !48
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %22) #7
  br label %32

32:                                               ; preds = %15, %20
  %33 = load ptr, ptr %14, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !49

35:                                               ; preds = %32, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !50

14:                                               ; preds = %5, %9, %1
  %15 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  ret i8 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_gpencil_select_frames(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  tail call fastcc void @gpframe_select(ptr noundef nonnull %9, i16 noundef signext %1) #8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !51

12:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gpframe_select(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #4 !PGOFuncName !52 {
  switch i16 %1, label %15 [
    i16 2, label %3
    i16 4, label %7
    i16 8, label %11
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = or i32 %5, 2
  store i32 %6, ptr %4, align 4, !tbaa !40
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = and i32 %9, -3
  store i32 %10, ptr %8, align 4, !tbaa !40
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = xor i32 %13, 2
  store i32 %14, ptr %12, align 4, !tbaa !40
  br label %15

15:                                               ; preds = %2, %11, %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_gplayer_frame_select_set(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @ED_gpencil_select_frames(ptr noundef nonnull %0, i16 noundef signext %1) #8
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_select_frame(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef nonnull %0, i32 noundef %1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @gpframe_select(ptr noundef nonnull %6, i16 noundef signext %2) #8
  br label %9

9:                                                ; preds = %5, %8, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_gpencil_layer_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_gplayer_frames_select_border(ptr noundef readonly %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = fcmp olt float %1, %2
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi ptr [ %8, %10 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = sitofp i32 %15 to float
  br i1 %11, label %17, label %21

17:                                               ; preds = %12
  %18 = fcmp ogt float %16, %1
  %19 = fcmp olt float %16, %2
  %20 = and i1 %18, %19
  br i1 %20, label %25, label %26

21:                                               ; preds = %12
  %22 = fcmp ogt float %16, %2
  %23 = fcmp olt float %16, %1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  tail call fastcc void @gpframe_select(ptr noundef nonnull %13, i16 noundef signext %3) #8
  br label %26

26:                                               ; preds = %25, %17, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !53

29:                                               ; preds = %26, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef nonnull %0, ptr noundef nonnull %9) #7
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

; Function Attrs: optsize
declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @gpencil_frame_duplicate(ptr noundef nonnull %8) #7
  %16 = load i32, ptr %10, align 4, !tbaa !40
  %17 = and i32 %16, -3
  store i32 %17, ptr %10, align 4, !tbaa !40
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %15) #7
  br label %18

18:                                               ; preds = %7, %14
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !59

20:                                               ; preds = %18, %3, %1
  ret void
}

; Function Attrs: optsize
declare ptr @gpencil_frame_duplicate(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gplayer_snap_frames(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = add i16 %2, -1
  %5 = icmp ult i16 %4, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds [4 x ptr], ptr @switch.table.ED_gplayer_snap_frames, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call zeroext i8 @ED_gplayer_frames_looper(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #8, !range !60
  br label %11

11:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef signext i16 @snap_gpf_nearest(ptr nocapture readnone %0, ptr nocapture readnone %1) #5 !PGOFuncName !61 {
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_gpf_cframe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  store i32 %9, ptr %10, align 8, !tbaa !44
  br label %11

11:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @snap_gpf_nearmarker(ptr nocapture noundef %0, ptr noundef %1) #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 24
  %9 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = sitofp i32 %10 to float
  %12 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %8, float noundef %11) #7
  store i32 %12, ptr %9, align 8, !tbaa !44
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_gpf_nearestsec(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 55
  %9 = load i16, ptr %8, align 4, !tbaa !86
  %10 = sitofp i16 %9 to double
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 65
  %12 = load float, ptr %11, align 4, !tbaa !87
  %13 = fpext float %12 to double
  %14 = fdiv double %10, %13
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, %15
  %20 = fadd float %19, 5.000000e-01
  %21 = tail call float @llvm.floor.f32(float %20)
  %22 = fmul float %21, %15
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %16, align 8, !tbaa !44
  br label %24

24:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !43, i64 36}
!41 = !{!"bGPDframe", !35, i64 0, !35, i64 8, !42, i64 16, !43, i64 32, !43, i64 36}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"int", !36, i64 0}
!44 = !{!41, !43, i64 32}
!45 = !{!46, !47, i64 16}
!46 = !{!"CfraElem", !35, i64 0, !35, i64 8, !47, i64 16, !43, i64 20}
!47 = !{!"float", !36, i64 0}
!48 = !{!46, !43, i64 20}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!"editaction_gpencil.c:gpframe_select"}
!53 = distinct !{!53, !39}
!54 = !{!55, !35, i64 16}
!55 = !{!"bGPDlayer", !35, i64 0, !35, i64 8, !42, i64 16, !35, i64 32, !43, i64 40, !56, i64 44, !56, i64 46, !36, i64 48, !36, i64 64}
!56 = !{!"short", !36, i64 0}
!57 = !{!41, !35, i64 0}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = !{i8 0, i8 2}
!61 = !{!"editaction_gpencil.c:snap_gpf_nearest"}
!62 = !{!"editaction_gpencil.c:snap_gpf_cframe"}
!63 = !{!64, !43, i64 680}
!64 = !{!"Scene", !65, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !56, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !66, i64 280, !75, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !56, i64 4376, !56, i64 4378, !43, i64 4380, !42, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !35, i64 4608, !81, i64 4616, !35, i64 4640, !82, i64 4648, !82, i64 4656, !68, i64 4664, !69, i64 4824, !83, i64 4888, !35, i64 4952}
!65 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !56, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!66 = !{!"RenderData", !67, i64 0, !35, i64 248, !35, i64 256, !70, i64 264, !71, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !47, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !56, i64 432, !56, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !56, i64 456, !56, i64 458, !56, i64 460, !56, i64 462, !56, i64 464, !56, i64 466, !43, i64 468, !56, i64 472, !56, i64 474, !56, i64 476, !56, i64 478, !56, i64 480, !56, i64 482, !43, i64 484, !43, i64 488, !56, i64 492, !56, i64 494, !43, i64 496, !43, i64 500, !56, i64 504, !56, i64 506, !56, i64 508, !56, i64 510, !56, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !56, i64 528, !56, i64 530, !56, i64 532, !56, i64 534, !56, i64 536, !56, i64 538, !56, i64 540, !56, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !42, i64 592, !56, i64 608, !56, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !43, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !56, i64 648, !56, i64 650, !56, i64 652, !56, i64 654, !56, i64 656, !56, i64 658, !47, i64 660, !47, i64 664, !56, i64 668, !56, i64 670, !47, i64 672, !47, i64 676, !36, i64 680, !43, i64 1704, !56, i64 1708, !56, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !56, i64 2524, !56, i64 2526, !47, i64 2528, !47, i64 2532, !56, i64 2536, !56, i64 2538, !47, i64 2540, !56, i64 2544, !56, i64 2546, !43, i64 2548, !56, i64 2552, !56, i64 2554, !56, i64 2556, !56, i64 2558, !47, i64 2560, !47, i64 2564, !35, i64 2568, !43, i64 2576, !47, i64 2580, !36, i64 2584, !74, i64 2616, !43, i64 3976, !43, i64 3980}
!67 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !56, i64 8, !56, i64 10, !47, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !47, i64 136, !47, i64 140, !35, i64 144, !35, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!70 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !56, i64 48, !56, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!71 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !47, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64}
!72 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!73 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!74 = !{!"BakeData", !67, i64 0, !36, i64 248, !56, i64 1272, !56, i64 1274, !56, i64 1276, !56, i64 1278, !47, i64 1280, !47, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!75 = !{!"AudioData", !43, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !43, i64 16, !56, i64 20, !56, i64 22, !47, i64 24, !47, i64 28}
!76 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!77 = !{!"GameData", !76, i64 0, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !56, i64 32, !36, i64 34, !78, i64 40, !56, i64 64, !56, i64 66, !47, i64 68, !79, i64 72, !47, i64 128, !47, i64 132, !43, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !56, i64 156, !56, i64 158, !56, i64 160, !56, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!78 = !{!"GameDome", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !47, i64 8, !47, i64 12, !35, i64 16}
!79 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !43, i64 40, !47, i64 44, !47, i64 48, !56, i64 52, !56, i64 54}
!80 = !{!"UnitSettings", !47, i64 0, !36, i64 4, !36, i64 5, !56, i64 6}
!81 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!82 = !{!"long", !36, i64 0}
!83 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!84 = !{!"editaction_gpencil.c:snap_gpf_nearmarker"}
!85 = !{!"editaction_gpencil.c:snap_gpf_nearestsec"}
!86 = !{!64, !56, i64 820}
!87 = !{!64, !47, i64 900}
