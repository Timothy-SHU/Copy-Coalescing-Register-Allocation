; ModuleID = 'blender/source/blender/windowmanager/intern/wm_subwindow.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_subwindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.wmSubWindow = type { ptr, ptr, %struct.rcti, i32 }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"swinopen\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Internal error, bad winid: %d\0A\00", align 1
@__func__.wm_subwindow_close = private unnamed_addr constant [19 x i8] c"wm_subwindow_close\00", align 1
@__func__.wm_subwindow_position = private unnamed_addr constant [22 x i8] c"wm_subwindow_position\00", align 1
@_curswin = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s %d: doesn't exist\0A\00", align 1
@__func__.wmSubWindowScissorSet = private unnamed_addr constant [22 x i8] c"wmSubWindowScissorSet\00", align 1
@_curwindow = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_subwindows_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @wm_subwindow_get_id(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmSubWindow, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !13
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_size_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @wm_swin_size_get(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @swin_from_swinid(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmSubWindow, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !17

12:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @wm_swin_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.wmSubWindow, ptr %0, i64 0, i32 2
  %5 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #11
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %1, align 4, !tbaa !19
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #11
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_origin_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @wm_swin_origin_get(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @wm_swin_origin_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.wmSubWindow, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !20
  store i32 %5, ptr %1, align 4, !tbaa !19
  %6 = getelementptr inbounds %struct.wmSubWindow, ptr %0, i64 0, i32 2, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !21
  store i32 %7, ptr %2, align 4, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_subwindow_matrix_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @wm_swin_matrix_get(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #11
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_swin_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmSubWindow, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !23
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call fastcc void @wm_swin_size_get(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %15 = load i32, ptr %4, align 4, !tbaa !19
  %16 = sitofp i32 %15 to float
  %17 = fadd float %16, -3.750000e-01
  %18 = load i32, ptr %5, align 4, !tbaa !19
  %19 = sitofp i32 %18 to float
  %20 = fadd float %19, -3.750000e-01
  tail call void @orthographic_m4(ptr noundef %2, float noundef -3.750000e-01, float noundef %17, float noundef -3.750000e-01, float noundef %20, float noundef -1.000000e+02, float noundef 1.000000e+02) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %22

21:                                               ; preds = %3
  tail call void @glGetFloatv(i32 noundef 2983, ptr noundef %2) #10
  br label %22

22:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_rect_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @wm_swin_rect_get(ptr noundef nonnull %4, ptr noundef %2) #11
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @wm_swin_rect_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.wmSubWindow, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_rect_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @wm_swin_rect_set(ptr noundef nonnull %4, ptr noundef %2) #11
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @wm_swin_rect_set(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.wmSubWindow, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @wm_subwindow_open(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %15, %8 ], [ 1, %2 ]
  %11 = getelementptr inbounds %struct.wmSubWindow, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp sgt i32 %10, %12
  %14 = add nsw i32 %12, 1
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = load ptr, ptr %9, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !27

18:                                               ; preds = %8, %2
  %19 = phi i32 [ 1, %2 ], [ %15, %8 ]
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %21 = tail call ptr %20(i64 noundef 40, ptr noundef nonnull @.str) #10
  %22 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  store ptr %21, ptr %22, align 8, !tbaa !5
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %21) #10
  %23 = getelementptr inbounds %struct.wmSubWindow, ptr %21, i64 0, i32 3
  store i32 %19, ptr %23, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.wmSubWindow, ptr %21, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %19) #11
  call fastcc void @wm_swin_size_get(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %25 = load i32, ptr %3, align 4, !tbaa !19
  %26 = sitofp i32 %25 to float
  %27 = load i32, ptr %4, align 4, !tbaa !19
  %28 = sitofp i32 %27 to float
  tail call void @wmOrtho2_pixelspace(float noundef %26, float noundef %28) #11
  tail call void @glLoadIdentity() #10
  %29 = load i32, ptr %23, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %29
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmSubWindowSet(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %1, ptr noundef null, i8 noundef zeroext 1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmOrtho2_pixelspace(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wmOrtho2_offset(float noundef %0, float noundef %1, float noundef -3.750000e-01) #11
  ret void
}

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_subwindow_close(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %3, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store ptr null, ptr %6, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %3) #10
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %12(ptr noundef nonnull %3) #10
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.wm_subwindow_close, i32 noundef %1) #11
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_subwindow_position(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #10
  %10 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = getelementptr inbounds %struct.wmSubWindow, ptr %6, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  %12 = getelementptr inbounds %struct.wmSubWindow, ptr %6, i64 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !28
  %14 = icmp sgt i32 %13, %9
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 %9, ptr %12, align 4, !tbaa !28
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.wmSubWindow, ptr %6, i64 0, i32 2, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = icmp sgt i32 %18, %10
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 %10, ptr %17, align 4, !tbaa !29
  br label %21

21:                                               ; preds = %20, %16
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %1) #11
  call fastcc void @wm_swin_size_get(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %22 = load i32, ptr %4, align 4, !tbaa !19
  %23 = sitofp i32 %22 to float
  %24 = load i32, ptr %5, align 4, !tbaa !19
  %25 = sitofp i32 %24 to float
  tail call void @wmOrtho2_pixelspace(float noundef %23, float noundef %25) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %28

26:                                               ; preds = %3
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.wm_subwindow_position, i32 noundef %1) #11
  br label %28

28:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @swin_from_swinid(ptr noundef %0, i32 noundef %1) #11
  store ptr %5, ptr @_curswin, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.wmSubWindowScissorSet, i32 noundef %1) #11
  br label %39

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  store ptr %5, ptr %10, align 8, !tbaa !5
  store ptr %0, ptr @_curwindow, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.wmSubWindow, ptr %5, i64 0, i32 2
  %12 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %11) #11
  %13 = add nsw i32 %12, 1
  %14 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %11) #11
  %15 = add nsw i32 %14, 1
  %16 = load i32, ptr %11, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.wmSubWindow, ptr %5, i64 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !21
  tail call void @glViewport(i32 noundef %16, i32 noundef %18, i32 noundef %13, i32 noundef %15) #10
  %19 = icmp eq ptr %2, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %9
  %21 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #11
  %22 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #11
  %23 = icmp ne i8 %3, 0
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %21, %24
  %26 = add nsw i32 %22, %24
  %27 = load i32, ptr %2, align 4, !tbaa !30
  %28 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !31
  tail call void @glScissor(i32 noundef %27, i32 noundef %29, i32 noundef %25, i32 noundef %26) #10
  br label %36

30:                                               ; preds = %9
  %31 = load ptr, ptr @_curswin, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.wmSubWindow, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !20
  %34 = getelementptr inbounds %struct.wmSubWindow, ptr %31, i64 0, i32 2, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !21
  tail call void @glScissor(i32 noundef %33, i32 noundef %35, i32 noundef %13, i32 noundef %15) #10
  br label %36

36:                                               ; preds = %30, %20
  %37 = sitofp i32 %13 to float
  %38 = sitofp i32 %15 to float
  tail call void @wmOrtho2_pixelspace(float noundef %37, float noundef %38) #11
  tail call void @glLoadIdentity() #10
  tail call void @glFlush() #10
  br label %39

39:                                               ; preds = %36, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !32
  %4 = load i32, ptr %0, align 4, !tbaa !30
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !31
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glFlush() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmFrustum(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  tail call void @glMatrixMode(i32 noundef 5889) #10
  tail call void @glLoadIdentity() #10
  %7 = fpext float %0 to double
  %8 = fpext float %1 to double
  %9 = fpext float %2 to double
  %10 = fpext float %3 to double
  %11 = fpext float %4 to double
  %12 = fpext float %5 to double
  tail call void @glFrustum(double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12) #10
  tail call void @glMatrixMode(i32 noundef 5888) #10
  ret void
}

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glFrustum(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmOrtho(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  tail call void @glMatrixMode(i32 noundef 5889) #10
  tail call void @glLoadIdentity() #10
  %7 = fpext float %0 to double
  %8 = fpext float %1 to double
  %9 = fpext float %2 to double
  %10 = fpext float %3 to double
  %11 = fpext float %4 to double
  %12 = fpext float %5 to double
  tail call void @glOrtho(double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12) #10
  tail call void @glMatrixMode(i32 noundef 5888) #10
  ret void
}

; Function Attrs: optsize
declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmOrtho2(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fcmp oeq float %0, %1
  %6 = fadd float %1, 1.000000e+00
  %7 = select i1 %5, float %6, float %1
  %8 = fcmp oeq float %2, %3
  %9 = fadd float %3, 1.000000e+00
  %10 = select i1 %8, float %9, float %3
  tail call void @wmOrtho(float noundef %0, float noundef %7, float noundef %2, float noundef %10, float noundef -1.000000e+02, float noundef 1.000000e+02) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmOrtho2_region_pixelspace(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !34
  %4 = sext i16 %3 to i32
  %5 = add nsw i32 %4, 1
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !39
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, 1
  %11 = sitofp i32 %10 to float
  tail call fastcc void @wmOrtho2_offset(float noundef %6, float noundef %11, float noundef -3.750000e-01) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wmOrtho2_offset(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = fadd float %0, %2
  %5 = fadd float %1, %2
  tail call void @wmOrtho2(float noundef %2, float noundef %4, float noundef %2, float noundef %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wmOrtho2_region_ui(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !34
  %4 = sitofp i16 %3 to float
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %6 = load i16, ptr %5, align 2, !tbaa !39
  %7 = sitofp i16 %6 to float
  tail call fastcc void @wmOrtho2_offset(float noundef %4, float noundef %7, float noundef 0xBF847AE140000000) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @index_to_framebuffer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @GPU_color_depth() #10
  switch i32 %2, label %33 [
    i32 8, label %3
    i32 12, label %13
    i32 15, label %23
    i32 16, label %23
    i32 24, label %43
  ]

3:                                                ; preds = %1
  %4 = shl i32 %0, 18
  %5 = and i32 %4, 12582912
  %6 = shl i32 %0, 12
  %7 = and i32 %6, 49152
  %8 = shl i32 %0, 6
  %9 = and i32 %8, 192
  %10 = or disjoint i32 %7, %5
  %11 = or disjoint i32 %10, %9
  %12 = or disjoint i32 %11, 4144959
  br label %43

13:                                               ; preds = %1
  %14 = shl i32 %0, 12
  %15 = and i32 %14, 15728640
  %16 = shl i32 %0, 8
  %17 = and i32 %16, 61440
  %18 = shl i32 %0, 4
  %19 = and i32 %18, 240
  %20 = or disjoint i32 %17, %15
  %21 = or disjoint i32 %20, %19
  %22 = or disjoint i32 %21, 986895
  br label %43

23:                                               ; preds = %1, %1
  %24 = shl i32 %0, 9
  %25 = and i32 %24, 16252928
  %26 = shl i32 %0, 6
  %27 = and i32 %26, 63488
  %28 = shl i32 %0, 3
  %29 = and i32 %28, 248
  %30 = or disjoint i32 %27, %25
  %31 = or disjoint i32 %30, %29
  %32 = or disjoint i32 %31, 460551
  br label %43

33:                                               ; preds = %1
  %34 = shl i32 %0, 6
  %35 = and i32 %34, 16515072
  %36 = shl i32 %0, 4
  %37 = and i32 %36, 64512
  %38 = shl i32 %0, 2
  %39 = and i32 %38, 252
  %40 = or disjoint i32 %37, %35
  %41 = or disjoint i32 %40, %39
  %42 = or disjoint i32 %41, 197379
  br label %43

43:                                               ; preds = %33, %1, %23, %13, %3
  %44 = phi i32 [ %42, %33 ], [ %0, %1 ], [ %32, %23 ], [ %22, %13 ], [ %12, %3 ]
  ret i32 %44
}

; Function Attrs: optsize
declare i32 @GPU_color_depth() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_framebuffer_index_set(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @index_to_framebuffer(i32 noundef %0) #11
  tail call void @cpack(i32 noundef %2) #10
  ret void
}

; Function Attrs: optsize
declare void @cpack(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_framebuffer_to_index(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @GPU_color_depth() #10
  switch i32 %4, label %34 [
    i32 8, label %5
    i32 12, label %14
    i32 15, label %23
    i32 16, label %23
    i32 24, label %32
  ]

5:                                                ; preds = %3
  %6 = lshr i32 %0, 18
  %7 = and i32 %6, 48
  %8 = lshr i32 %0, 12
  %9 = and i32 %8, 12
  %10 = or disjoint i32 %7, %9
  %11 = lshr i32 %0, 6
  %12 = and i32 %11, 3
  %13 = or disjoint i32 %10, %12
  br label %43

14:                                               ; preds = %3
  %15 = lshr i32 %0, 12
  %16 = and i32 %15, 3840
  %17 = lshr i32 %0, 8
  %18 = and i32 %17, 240
  %19 = or disjoint i32 %16, %18
  %20 = lshr i32 %0, 4
  %21 = and i32 %20, 15
  %22 = or disjoint i32 %19, %21
  br label %43

23:                                               ; preds = %3, %3
  %24 = lshr i32 %0, 9
  %25 = and i32 %24, 31744
  %26 = lshr i32 %0, 6
  %27 = and i32 %26, 992
  %28 = or disjoint i32 %25, %27
  %29 = lshr i32 %0, 3
  %30 = and i32 %29, 31
  %31 = or disjoint i32 %28, %30
  br label %43

32:                                               ; preds = %3
  %33 = and i32 %0, 16777215
  br label %43

34:                                               ; preds = %3
  %35 = lshr i32 %0, 6
  %36 = and i32 %35, 258048
  %37 = lshr i32 %0, 4
  %38 = and i32 %37, 4032
  %39 = or disjoint i32 %36, %38
  %40 = lshr i32 %0, 2
  %41 = and i32 %40, 63
  %42 = or disjoint i32 %39, %41
  br label %43

43:                                               ; preds = %1, %34, %32, %23, %14, %5
  %44 = phi i32 [ %42, %34 ], [ %33, %32 ], [ %31, %23 ], [ %22, %14 ], [ %13, %5 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: optsize
declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 144}
!6 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !11, i64 128, !10, i64 132, !10, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !11, i64 160, !11, i64 164, !7, i64 168, !12, i64 176, !12, i64 192, !12, i64 208, !12, i64 224, !12, i64 240}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!"ListBase", !7, i64 0, !7, i64 8}
!13 = !{!14, !11, i64 32}
!14 = !{!"wmSubWindow", !7, i64 0, !7, i64 8, !15, i64 16, !11, i64 32}
!15 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !11, i64 0}
!20 = !{!14, !11, i64 16}
!21 = !{!14, !11, i64 24}
!22 = !{!6, !7, i64 24}
!23 = !{!24, !10, i64 226}
!24 = !{!"bScreen", !25, i64 0, !12, i64 120, !12, i64 136, !12, i64 152, !12, i64 168, !7, i64 184, !7, i64 192, !11, i64 200, !11, i64 204, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !10, i64 220, !10, i64 222, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !7, i64 232, !7, i64 240}
!25 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!26 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19}
!27 = distinct !{!27, !18}
!28 = !{!14, !11, i64 20}
!29 = !{!14, !11, i64 28}
!30 = !{!15, !11, i64 0}
!31 = !{!15, !11, i64 8}
!32 = !{!15, !11, i64 4}
!33 = !{!15, !11, i64 12}
!34 = !{!35, !10, i64 208}
!35 = !{!"ARegion", !7, i64 0, !7, i64 8, !36, i64 16, !15, i64 176, !15, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !38, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !7, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!36 = !{!"View2D", !37, i64 0, !37, i64 16, !15, i64 32, !15, i64 48, !15, i64 64, !8, i64 80, !8, i64 88, !38, i64 96, !38, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!37 = !{!"rctf", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12}
!38 = !{!"float", !8, i64 0}
!39 = !{!35, !10, i64 210}
