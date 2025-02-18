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

; Function Attrs: nounwind uwtable
define dso_local void @wm_subwindows_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #7
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @wm_subwindow_get_id(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmSubWindow, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !42
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_size_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2
  %16 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = load i32, ptr %15, align 4, !tbaa !50
  %19 = add i32 %17, 1
  %20 = sub i32 %19, %18
  store i32 %20, ptr %2, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = add i32 %22, 1
  %26 = sub i32 %25, %24
  store i32 %26, ptr %3, align 4, !tbaa !51
  br label %27

27:                                               ; preds = %6, %14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_origin_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !54
  store i32 %16, ptr %2, align 4, !tbaa !51
  %17 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !55
  store i32 %18, ptr %3, align 4, !tbaa !51
  br label %19

19:                                               ; preds = %6, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_subwindow_matrix_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5, !llvm.loop !46

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 18
  %17 = load i16, ptr %16, align 2, !tbaa !57
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %11, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2
  %22 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !49
  %24 = load i32, ptr %21, align 4, !tbaa !50
  %25 = add i32 %23, 1
  %26 = sub i32 %25, %24
  %27 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = add i32 %28, 1
  %32 = sub i32 %31, %30
  %33 = sitofp i32 %26 to float
  %34 = fadd float %33, -3.750000e-01
  %35 = sitofp i32 %32 to float
  %36 = fadd float %35, -3.750000e-01
  tail call void @orthographic_m4(ptr noundef %2, float noundef -3.750000e-01, float noundef %34, float noundef -3.750000e-01, float noundef %36, float noundef -1.000000e+02, float noundef 1.000000e+02) #7
  br label %38

37:                                               ; preds = %13
  tail call void @glGetFloatv(i32 noundef 2983, ptr noundef %2) #7
  br label %38

38:                                               ; preds = %5, %37, %20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_rect_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5, !llvm.loop !46

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !60
  br label %15

15:                                               ; preds = %5, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_subwindow_rect_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5, !llvm.loop !46

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !60
  br label %15

15:                                               ; preds = %5, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @wm_subwindow_open(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %14, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %13, %6 ], [ 1, %2 ]
  %9 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp sgt i32 %8, %10
  %12 = add nsw i32 %10, 1
  %13 = select i1 %11, i32 %8, i32 %12
  %14 = load ptr, ptr %7, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !61

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 1, %2 ], [ %13, %6 ]
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %19 = tail call ptr %18(i64 noundef 40, ptr noundef nonnull @.str) #7
  %20 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  store ptr %19, ptr %20, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.wmSubWindow, ptr %19, i64 0, i32 3
  store i32 %17, ptr %21, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.wmSubWindow, ptr %19, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !60
  tail call void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %17, ptr noundef null, i8 noundef zeroext 1)
  %23 = getelementptr inbounds %struct.wmSubWindow, ptr %19, i64 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = load i32, ptr %22, align 4, !tbaa !50
  %26 = add i32 %24, 1
  %27 = sub i32 %26, %25
  %28 = getelementptr inbounds %struct.wmSubWindow, ptr %19, i64 0, i32 2, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !52
  %30 = getelementptr inbounds %struct.wmSubWindow, ptr %19, i64 0, i32 2, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = add i32 %29, 1
  %33 = sub i32 %32, %31
  %34 = sitofp i32 %27 to float
  %35 = sitofp i32 %33 to float
  %36 = fadd float %34, -3.750000e-01
  %37 = fadd float %35, -3.750000e-01
  %38 = fcmp oeq float %36, -3.750000e-01
  %39 = fadd float %36, 1.000000e+00
  %40 = select i1 %38, float %39, float %36
  %41 = fcmp oeq float %37, -3.750000e-01
  %42 = fadd float %37, 1.000000e+00
  %43 = select i1 %41, float %42, float %37
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %44 = fpext float %40 to double
  %45 = fpext float %43 to double
  tail call void @glOrtho(double noundef -3.750000e-01, double noundef %44, double noundef -3.750000e-01, double noundef %45, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  tail call void @glLoadIdentity() #7
  %46 = load i32, ptr %21, align 8, !tbaa !42
  ret i32 %46
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @wmSubWindowSet(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %1, ptr noundef null, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wmOrtho2_pixelspace(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fadd float %0, -3.750000e-01
  %4 = fadd float %1, -3.750000e-01
  %5 = fcmp oeq float %3, -3.750000e-01
  %6 = fadd float %3, 1.000000e+00
  %7 = select i1 %5, float %6, float %3
  %8 = fcmp oeq float %4, -3.750000e-01
  %9 = fadd float %4, 1.000000e+00
  %10 = select i1 %8, float %9, float %4
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %11 = fpext float %7 to double
  %12 = fpext float %10 to double
  tail call void @glOrtho(double noundef -3.750000e-01, double noundef %11, double noundef -3.750000e-01, double noundef %12, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  ret void
}

declare void @glLoadIdentity() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wm_subwindow_close(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmSubWindow, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !46

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %16, %12
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %6) #7
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %18(ptr noundef nonnull %6) #7
  br label %21

19:                                               ; preds = %4
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.wm_subwindow_close, i32 noundef %1)
  br label %21

21:                                               ; preds = %19, %17
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @wm_subwindow_position(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5, !llvm.loop !46

13:                                               ; preds = %9
  %14 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #7
  %15 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #7
  %16 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !60
  %17 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !62
  %19 = icmp sgt i32 %18, %14
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 %14, ptr %17, align 4, !tbaa !62
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = icmp sgt i32 %23, %15
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 %15, ptr %22, align 4, !tbaa !63
  br label %26

26:                                               ; preds = %25, %21
  tail call void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %1, ptr noundef null, i8 noundef zeroext 1)
  %27 = load i32, ptr %17, align 4, !tbaa !49
  %28 = load i32, ptr %16, align 4, !tbaa !50
  %29 = add i32 %27, 1
  %30 = sub i32 %29, %28
  %31 = load i32, ptr %22, align 4, !tbaa !52
  %32 = getelementptr inbounds %struct.wmSubWindow, ptr %7, i64 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = add i32 %31, 1
  %35 = sub i32 %34, %33
  %36 = sitofp i32 %30 to float
  %37 = sitofp i32 %35 to float
  %38 = fadd float %36, -3.750000e-01
  %39 = fadd float %37, -3.750000e-01
  %40 = fcmp oeq float %38, -3.750000e-01
  %41 = fadd float %38, 1.000000e+00
  %42 = select i1 %40, float %41, float %38
  %43 = fcmp oeq float %39, -3.750000e-01
  %44 = fadd float %39, 1.000000e+00
  %45 = select i1 %43, float %44, float %39
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %46 = fpext float %42 to double
  %47 = fpext float %45 to double
  tail call void @glOrtho(double noundef -3.750000e-01, double noundef %46, double noundef -3.750000e-01, double noundef %47, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  br label %50

48:                                               ; preds = %5
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.wm_subwindow_position, i32 noundef %1)
  br label %50

50:                                               ; preds = %48, %26
  ret void
}

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 30
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !46

14:                                               ; preds = %10
  store ptr %8, ptr @_curswin, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 22
  store ptr %8, ptr %15, align 8, !tbaa !34
  store ptr %0, ptr @_curwindow, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2
  %17 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = load i32, ptr %16, align 4, !tbaa !50
  %20 = sub nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.wmSubWindow, ptr %8, i64 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sub nsw i32 %23, %25
  %27 = add nsw i32 %26, 1
  tail call void @glViewport(i32 noundef %19, i32 noundef %25, i32 noundef %21, i32 noundef %27) #7
  %28 = icmp eq ptr %2, null
  br i1 %28, label %45, label %31

29:                                               ; preds = %6
  store ptr %8, ptr @_curswin, align 8, !tbaa !45
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.wmSubWindowScissorSet, i32 noundef %1)
  br label %64

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !49
  %34 = load i32, ptr %2, align 4, !tbaa !50
  %35 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = icmp ne i8 %3, 0
  %40 = zext i1 %39 to i32
  %41 = add i32 %33, %40
  %42 = sub i32 %41, %34
  %43 = add i32 %36, %40
  %44 = sub i32 %43, %38
  tail call void @glScissor(i32 noundef %34, i32 noundef %38, i32 noundef %42, i32 noundef %44) #7
  br label %51

45:                                               ; preds = %14
  %46 = load ptr, ptr @_curswin, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.wmSubWindow, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.wmSubWindow, ptr %46, i64 0, i32 2, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !55
  tail call void @glScissor(i32 noundef %48, i32 noundef %50, i32 noundef %21, i32 noundef %27) #7
  br label %51

51:                                               ; preds = %45, %31
  %52 = sitofp i32 %21 to float
  %53 = sitofp i32 %27 to float
  %54 = fadd float %52, -3.750000e-01
  %55 = fadd float %53, -3.750000e-01
  %56 = fcmp oeq float %54, -3.750000e-01
  %57 = fadd float %54, 1.000000e+00
  %58 = select i1 %56, float %57, float %54
  %59 = fcmp oeq float %55, -3.750000e-01
  %60 = fadd float %55, 1.000000e+00
  %61 = select i1 %59, float %60, float %55
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %62 = fpext float %58 to double
  %63 = fpext float %61 to double
  tail call void @glOrtho(double noundef -3.750000e-01, double noundef %62, double noundef -3.750000e-01, double noundef %63, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  tail call void @glLoadIdentity() #7
  tail call void @glFlush() #7
  br label %64

64:                                               ; preds = %51, %29
  ret void
}

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glFlush() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wmFrustum(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %7 = fpext float %0 to double
  %8 = fpext float %1 to double
  %9 = fpext float %2 to double
  %10 = fpext float %3 to double
  %11 = fpext float %4 to double
  %12 = fpext float %5 to double
  tail call void @glFrustum(double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  ret void
}

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #1

declare void @glFrustum(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wmOrtho(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %7 = fpext float %0 to double
  %8 = fpext float %1 to double
  %9 = fpext float %2 to double
  %10 = fpext float %3 to double
  %11 = fpext float %4 to double
  %12 = fpext float %5 to double
  tail call void @glOrtho(double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  ret void
}

declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wmOrtho2(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fcmp oeq float %0, %1
  %6 = fadd float %1, 1.000000e+00
  %7 = select i1 %5, float %6, float %1
  %8 = fcmp oeq float %2, %3
  %9 = fadd float %3, 1.000000e+00
  %10 = select i1 %8, float %9, float %3
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %11 = fpext float %0 to double
  %12 = fpext float %7 to double
  %13 = fpext float %2 to double
  %14 = fpext float %10 to double
  tail call void @glOrtho(double noundef %11, double noundef %12, double noundef %13, double noundef %14, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wmOrtho2_region_pixelspace(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !64
  %4 = sext i16 %3 to i32
  %5 = add nsw i32 %4, 1
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !69
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, 1
  %11 = sitofp i32 %10 to float
  %12 = fadd float %6, -3.750000e-01
  %13 = fadd float %11, -3.750000e-01
  %14 = fcmp oeq float %12, -3.750000e-01
  %15 = fadd float %12, 1.000000e+00
  %16 = select i1 %14, float %15, float %12
  %17 = fcmp oeq float %13, -3.750000e-01
  %18 = fadd float %13, 1.000000e+00
  %19 = select i1 %17, float %18, float %13
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %20 = fpext float %16 to double
  %21 = fpext float %19 to double
  tail call void @glOrtho(double noundef -3.750000e-01, double noundef %20, double noundef -3.750000e-01, double noundef %21, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wmOrtho2_region_ui(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !64
  %4 = sitofp i16 %3 to float
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %6 = load i16, ptr %5, align 2, !tbaa !69
  %7 = sitofp i16 %6 to float
  %8 = fadd float %4, 0xBF847AE140000000
  %9 = fadd float %7, 0xBF847AE140000000
  %10 = fcmp oeq float %8, 0xBF847AE140000000
  %11 = fadd float %8, 1.000000e+00
  %12 = select i1 %10, float %11, float %8
  %13 = fcmp oeq float %9, 0xBF847AE140000000
  %14 = fadd float %9, 1.000000e+00
  %15 = select i1 %13, float %14, float %9
  tail call void @glMatrixMode(i32 noundef 5889) #7
  tail call void @glLoadIdentity() #7
  %16 = fpext float %12 to double
  %17 = fpext float %15 to double
  tail call void @glOrtho(double noundef 0xBF847AE140000000, double noundef %16, double noundef 0xBF847AE140000000, double noundef %17, double noundef -1.000000e+02, double noundef 1.000000e+02) #7
  tail call void @glMatrixMode(i32 noundef 5888) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @index_to_framebuffer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @GPU_color_depth() #7
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

declare i32 @GPU_color_depth() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_framebuffer_index_set(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @index_to_framebuffer(i32 noundef %0)
  tail call void @cpack(i32 noundef %2) #7
  ret void
}

declare void @cpack(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_framebuffer_to_index(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @GPU_color_depth() #7
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

declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!34 = !{!35, !36, i64 144}
!35 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !40, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!43, !40, i64 32}
!43 = !{!"wmSubWindow", !36, i64 0, !36, i64 8, !44, i64 16, !40, i64 32}
!44 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!45 = !{!36, !36, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!44, !40, i64 4}
!50 = !{!44, !40, i64 0}
!51 = !{!40, !40, i64 0}
!52 = !{!44, !40, i64 12}
!53 = !{!44, !40, i64 8}
!54 = !{!43, !40, i64 16}
!55 = !{!43, !40, i64 24}
!56 = !{!35, !36, i64 24}
!57 = !{!58, !39, i64 226}
!58 = !{!"bScreen", !59, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !36, i64 184, !36, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!60 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51}
!61 = distinct !{!61, !47, !48}
!62 = !{!43, !40, i64 20}
!63 = !{!43, !40, i64 28}
!64 = !{!65, !39, i64 208}
!65 = !{!"ARegion", !36, i64 0, !36, i64 8, !66, i64 16, !44, i64 176, !44, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !68, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!66 = !{!"View2D", !67, i64 0, !67, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !68, i64 96, !68, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!67 = !{!"rctf", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!68 = !{!"float", !37, i64 0}
!69 = !{!65, !39, i64 210}
