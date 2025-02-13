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
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call signext i16 %2(ptr noundef nonnull %9, ptr noundef %1) #7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !9

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
  %9 = load ptr, ptr %8, align 8, !tbaa !5
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
  %17 = load i32, ptr %16, align 4, !tbaa !11
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str) #7
  %23 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 2
  store float %25, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !19
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %22) #7
  br label %32

32:                                               ; preds = %15, %20
  %33 = load ptr, ptr %14, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !20

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
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !21

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
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  tail call fastcc void @gpframe_select(ptr noundef nonnull %9, i16 noundef signext %1) #8
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !22

12:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gpframe_select(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #4 {
  switch i16 %1, label %15 [
    i16 2, label %3
    i16 4, label %7
    i16 8, label %11
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = or i32 %5, 2
  store i32 %6, ptr %4, align 4, !tbaa !11
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = and i32 %9, -3
  store i32 %10, ptr %8, align 4, !tbaa !11
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = xor i32 %13, 2
  store i32 %14, ptr %12, align 4, !tbaa !11
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
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = fcmp olt float %1, %2
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi ptr [ %8, %10 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !15
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
  %27 = load ptr, ptr %13, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !23

29:                                               ; preds = %26, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_gplayer_frames_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %18
  %8 = phi i8 [ %19, %18 ], [ 0, %3 ]
  %9 = phi ptr [ %10, %18 ], [ %5, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !11
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
  br i1 %20, label %21, label %7, !llvm.loop !28

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
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %9, %18 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @gpencil_frame_duplicate(ptr noundef nonnull %8) #7
  %16 = load i32, ptr %10, align 4, !tbaa !11
  %17 = and i32 %16, -3
  store i32 %17, ptr %10, align 4, !tbaa !11
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %15) #7
  br label %18

18:                                               ; preds = %7, %14
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !29

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
  %10 = tail call zeroext i8 @ED_gplayer_frames_looper(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #8, !range !30
  br label %11

11:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef signext i16 @snap_gpf_nearest(ptr nocapture readnone %0, ptr nocapture readnone %1) #5 {
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_gpf_cframe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  store i32 %9, ptr %10, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @snap_gpf_nearmarker(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 24
  %9 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = sitofp i32 %10 to float
  %12 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %8, float noundef %11) #7
  store i32 %12, ptr %9, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_gpf_nearestsec(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 55
  %9 = load i16, ptr %8, align 4, !tbaa !52
  %10 = sitofp i16 %9 to double
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 65
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = fpext float %12 to double
  %14 = fdiv double %10, %13
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !15
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, %15
  %20 = fadd float %19, 5.000000e-01
  %21 = tail call float @llvm.floor.f32(float %20)
  %22 = fmul float %21, %15
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %16, align 8, !tbaa !15
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !14, i64 36}
!12 = !{!"bGPDframe", !6, i64 0, !6, i64 8, !13, i64 16, !14, i64 32, !14, i64 36}
!13 = !{!"ListBase", !6, i64 0, !6, i64 8}
!14 = !{!"int", !7, i64 0}
!15 = !{!12, !14, i64 32}
!16 = !{!17, !18, i64 16}
!17 = !{!"CfraElem", !6, i64 0, !6, i64 8, !18, i64 16, !14, i64 20}
!18 = !{!"float", !7, i64 0}
!19 = !{!17, !14, i64 20}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = !{!25, !6, i64 16}
!25 = !{!"bGPDlayer", !6, i64 0, !6, i64 8, !13, i64 16, !6, i64 32, !14, i64 40, !26, i64 44, !26, i64 46, !7, i64 48, !7, i64 64}
!26 = !{!"short", !7, i64 0}
!27 = !{!12, !6, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = !{i8 0, i8 2}
!31 = !{!32, !14, i64 680}
!32 = !{!"Scene", !33, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !13, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !14, i64 232, !14, i64 236, !14, i64 240, !26, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !34, i64 280, !43, i64 4264, !13, i64 4296, !13, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !26, i64 4376, !26, i64 4378, !14, i64 4380, !13, i64 4384, !44, i64 4400, !45, i64 4416, !48, i64 4600, !6, i64 4608, !49, i64 4616, !6, i64 4640, !50, i64 4648, !50, i64 4656, !36, i64 4664, !37, i64 4824, !51, i64 4888, !6, i64 4952}
!33 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !26, i64 98, !14, i64 100, !14, i64 104, !14, i64 108, !6, i64 112}
!34 = !{!"RenderData", !35, i64 0, !6, i64 248, !6, i64 256, !38, i64 264, !39, i64 328, !14, i64 400, !14, i64 404, !14, i64 408, !18, i64 412, !14, i64 416, !14, i64 420, !14, i64 424, !14, i64 428, !26, i64 432, !26, i64 434, !18, i64 436, !18, i64 440, !18, i64 444, !18, i64 448, !18, i64 452, !26, i64 456, !26, i64 458, !26, i64 460, !26, i64 462, !26, i64 464, !26, i64 466, !14, i64 468, !26, i64 472, !26, i64 474, !26, i64 476, !26, i64 478, !26, i64 480, !26, i64 482, !14, i64 484, !14, i64 488, !26, i64 492, !26, i64 494, !14, i64 496, !14, i64 500, !26, i64 504, !26, i64 506, !26, i64 508, !26, i64 510, !26, i64 512, !7, i64 514, !7, i64 515, !14, i64 516, !14, i64 520, !14, i64 524, !26, i64 528, !26, i64 530, !26, i64 532, !26, i64 534, !26, i64 536, !26, i64 538, !26, i64 540, !26, i64 542, !40, i64 544, !40, i64 560, !41, i64 576, !13, i64 592, !26, i64 608, !26, i64 610, !18, i64 612, !18, i64 616, !18, i64 620, !18, i64 624, !14, i64 628, !18, i64 632, !18, i64 636, !18, i64 640, !18, i64 644, !26, i64 648, !26, i64 650, !26, i64 652, !26, i64 654, !26, i64 656, !26, i64 658, !18, i64 660, !18, i64 664, !26, i64 668, !26, i64 670, !18, i64 672, !18, i64 676, !7, i64 680, !14, i64 1704, !26, i64 1708, !26, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !14, i64 2520, !26, i64 2524, !26, i64 2526, !18, i64 2528, !18, i64 2532, !26, i64 2536, !26, i64 2538, !18, i64 2540, !26, i64 2544, !26, i64 2546, !14, i64 2548, !26, i64 2552, !26, i64 2554, !26, i64 2556, !26, i64 2558, !18, i64 2560, !18, i64 2564, !6, i64 2568, !14, i64 2576, !18, i64 2580, !7, i64 2584, !42, i64 2616, !14, i64 3976, !14, i64 3980}
!35 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !26, i64 8, !26, i64 10, !18, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !36, i64 24, !37, i64 184}
!36 = !{!"ColorManagedViewSettings", !14, i64 0, !14, i64 4, !7, i64 8, !7, i64 72, !18, i64 136, !18, i64 140, !6, i64 144, !6, i64 152}
!37 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!38 = !{!"QuicktimeCodecSettings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !26, i64 48, !26, i64 50, !14, i64 52, !14, i64 56, !14, i64 60}
!39 = !{!"FFMpegCodecData", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !18, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !6, i64 64}
!40 = !{!"rctf", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!41 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!42 = !{!"BakeData", !35, i64 0, !7, i64 248, !26, i64 1272, !26, i64 1274, !26, i64 1276, !26, i64 1278, !18, i64 1280, !18, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!43 = !{!"AudioData", !14, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !14, i64 16, !26, i64 20, !26, i64 22, !18, i64 24, !18, i64 28}
!44 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!45 = !{!"GameData", !44, i64 0, !26, i64 16, !26, i64 18, !26, i64 20, !26, i64 22, !26, i64 24, !26, i64 26, !26, i64 28, !26, i64 30, !26, i64 32, !7, i64 34, !46, i64 40, !26, i64 64, !26, i64 66, !18, i64 68, !47, i64 72, !18, i64 128, !18, i64 132, !14, i64 136, !26, i64 140, !26, i64 142, !26, i64 144, !26, i64 146, !26, i64 148, !26, i64 150, !26, i64 152, !26, i64 154, !26, i64 156, !26, i64 158, !26, i64 160, !26, i64 162, !18, i64 164, !18, i64 168, !18, i64 172, !18, i64 176, !18, i64 180}
!46 = !{!"GameDome", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6, !18, i64 8, !18, i64 12, !6, i64 16}
!47 = !{!"RecastData", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !14, i64 40, !18, i64 44, !18, i64 48, !26, i64 52, !26, i64 54}
!48 = !{!"UnitSettings", !18, i64 0, !7, i64 4, !7, i64 5, !26, i64 6}
!49 = !{!"PhysicsSettings", !7, i64 0, !14, i64 12, !14, i64 16, !14, i64 20}
!50 = !{!"long", !7, i64 0}
!51 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!52 = !{!32, !26, i64 820}
!53 = !{!32, !18, i64 900}
