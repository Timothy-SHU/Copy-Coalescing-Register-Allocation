; ModuleID = 'blender/source/blender/editors/animation/anim_draw.c'
source_filename = "blender/source/blender/editors/animation/anim_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
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
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@__const.draw_cfra_number.numstr = private unnamed_addr constant [32 x i8] c"    t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_draw_cfra(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 15
  %10 = load float, ptr %9, align 4, !tbaa !33
  %11 = fmul float %10, %8
  store float %11, ptr %4, align 4, !tbaa !34
  tail call void @UI_ThemeColor(i32 noundef 49) #9
  %12 = zext i16 %2 to i32
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, float 2.000000e+00, float 3.000000e+00
  tail call void @glLineWidth(float noundef %15) #9
  tail call void @glBegin(i32 noundef 3) #9
  %16 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !35
  %18 = fadd float %17, -5.000000e+02
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %4) #9
  %20 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !37
  store float %21, ptr %19, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %4) #9
  call void @glEnd() #9
  call void @glLineWidth(float noundef 1.000000e+00) #9
  %22 = and i32 %12, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @UI_view2d_view_orthoSpecial(ptr noundef %25, ptr noundef nonnull %1, i8 noundef zeroext 1) #9
  %26 = load float, ptr %4, align 4, !tbaa !34
  %27 = trunc i16 %2 to i8
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 1
  call fastcc void @draw_cfra_number(ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef %26, i8 noundef zeroext %29) #11
  br label %30

30:                                               ; preds = %24, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_cfra_number(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) @__const.draw_cfra_number.numstr, i64 32, i1 false)
  call void @UI_view2d_scale_get(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %8 = load float, ptr %5, align 4, !tbaa !34
  %9 = fdiv float 1.000000e+00, %8
  call void @glScalef(float noundef %9, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %10 = icmp eq i8 %3, 0
  %11 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 4
  br i1 %10, label %26, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = fpext float %14 to double
  %16 = fpext float %2 to double
  %17 = fmul double %16, %15
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %19 = load i16, ptr %18, align 4, !tbaa !39
  %20 = sitofp i16 %19 to double
  %21 = fdiv double %17, %20
  %22 = fptrunc double %21 to float
  %23 = fdiv double %20, %15
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 17), align 2, !tbaa !40
  %25 = call i64 @BLI_timecode_string_from_time(ptr noundef nonnull %11, i64 noundef 28, i32 noundef 0, float noundef %22, double noundef %23, i16 noundef signext %24) #9
  br label %28

26:                                               ; preds = %4
  %27 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %11, i64 noundef 28, i32 noundef 1, float noundef %2) #9
  br label %28

28:                                               ; preds = %26, %12
  %29 = call i32 @UI_GetStringWidth(ptr noundef nonnull %7) #9
  %30 = load float, ptr %5, align 4, !tbaa !34
  %31 = fmul float %30, %2
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %33 = sitofp i16 %32 to float
  %34 = fmul float %33, 0x3FECCCCCC0000000
  call void @UI_ThemeColorShade(i32 noundef 49, i32 noundef 0) #9
  %35 = shl i32 %29, 16
  %36 = add i32 %35, -65536
  %37 = ashr exact i32 %36, 16
  %38 = sitofp i32 %37 to float
  %39 = fadd float %31, %38
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %41 = sitofp i16 %40 to float
  %42 = call float @llvm.fmuladd.f32(float %41, float 7.500000e-01, float %34)
  call void @glRectf(float noundef %31, float noundef %34, float noundef %39, float noundef %42) #9
  call void @UI_ThemeColor(i32 noundef 3) #9
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %44 = sitofp i16 %43 to float
  %45 = call float @llvm.fmuladd.f32(float %44, float -2.500000e-01, float %31)
  %46 = call float @llvm.fmuladd.f32(float %44, float 0x3FC3333340000000, float %34)
  call void @UI_DrawString(float noundef %45, float noundef %46, ptr noundef nonnull %7) #9
  %47 = load float, ptr %5, align 4, !tbaa !34
  call void @glScalef(float noundef %47, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_draw_previewrange(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %6 = load i16, ptr %5, align 8, !tbaa !45
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #9
  %10 = load i16, ptr %5, align 8, !tbaa !45
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %18 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %19 = select i1 %12, ptr %18, ptr %17
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = add nsw i32 %20, %2
  %22 = icmp slt i32 %16, %21
  %23 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %24 = load float, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !35
  br i1 %22, label %27, label %42

27:                                               ; preds = %9
  %28 = sitofp i32 %16 to float
  %29 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !37
  tail call void @glRectf(float noundef %24, float noundef %26, float noundef %28, float noundef %30) #9
  %31 = load i16, ptr %5, align 8, !tbaa !45
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  %34 = select i1 %33, ptr %18, ptr %17
  %35 = load i32, ptr %34, align 4, !tbaa !46
  %36 = add nsw i32 %35, %2
  %37 = sitofp i32 %36 to float
  %38 = load float, ptr %25, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !48
  %41 = load float, ptr %29, align 4, !tbaa !37
  tail call void @glRectf(float noundef %37, float noundef %38, float noundef %40, float noundef %41) #9
  br label %47

42:                                               ; preds = %9
  %43 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !48
  %45 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !37
  tail call void @glRectf(float noundef %24, float noundef %26, float noundef %44, float noundef %46) #9
  br label %47

47:                                               ; preds = %42, %27
  tail call void @glDisable(i32 noundef 3042) #9
  br label %48

48:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ANIM_nla_mapping_get(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = icmp eq ptr %1, null
  %8 = or i1 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_nla_mapping_apply_fcurve(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !51
  %7 = zext i8 %3 to i32
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !53
  %9 = icmp eq i8 %2, 0
  %10 = select i1 %9, ptr @bezt_nlamapping_apply, ptr @bezt_nlamapping_restore
  %11 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %1, ptr noundef null, ptr noundef nonnull %10, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @bezt_nlamapping_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %10, i16 noundef signext 1) #9
  store float %11, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %13, i16 noundef signext 1) #9
  store float %14, ptr %12, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %17, i16 noundef signext 1) #9
  store float %18, ptr %16, align 4, !tbaa !34
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @bezt_nlamapping_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %10, i16 noundef signext 2) #9
  store float %11, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %13, i16 noundef signext 2) #9
  store float %14, ptr %12, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %17, i16 noundef signext 2) #9
  store float %18, ptr %16, align 4, !tbaa !34
  ret i16 0
}

; Function Attrs: optsize
declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @ANIM_get_normalization_flags(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  %12 = trunc i32 %9 to i16
  %13 = lshr i16 %12, 9
  %14 = and i16 %13, 96
  %15 = select i1 %11, i16 0, i16 %14
  br label %16

16:                                               ; preds = %1, %7
  %17 = phi i16 [ %15, %7 ], [ 0, %1 ]
  ret i16 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ANIM_unit_mapping_get_factor(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = zext i16 %3 to i32
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call fastcc float @normalzation_factor_get(ptr noundef %2, i16 noundef signext %3) #11
  br label %41

13:                                               ; preds = %4
  %14 = icmp ne ptr %1, null
  %15 = icmp ne ptr %2, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %6) #9
  %22 = load ptr, ptr %18, align 8, !tbaa !60
  %23 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %6, ptr noundef %22, ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8, !tbaa !62
  %27 = call i32 @RNA_property_subtype(ptr noundef %26) #9
  %28 = and i32 %27, 16711680
  %29 = icmp eq i32 %28, 327680
  %30 = icmp ne ptr %0, null
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38, i32 2
  %34 = load i8, ptr %33, align 1, !tbaa !63
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %32, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br label %41

37:                                               ; preds = %32
  %38 = and i32 %8, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, float 0x404CA5DC20000000, float 0x3F91DF46A0000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br label %41

41:                                               ; preds = %13, %17, %36, %37, %11
  %42 = phi float [ %12, %11 ], [ %40, %37 ], [ 1.000000e+00, %36 ], [ 1.000000e+00, %17 ], [ 1.000000e+00, %13 ]
  ret float %42
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @normalzation_factor_get(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #5 {
  %3 = zext i16 %1 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 15
  %8 = load float, ptr %7, align 8, !tbaa !64
  %9 = fdiv float 1.000000e+00, %8
  br label %56

10:                                               ; preds = %2
  %11 = and i32 %3, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 15
  %15 = load float, ptr %14, align 8, !tbaa !64
  br label %56

16:                                               ; preds = %10
  %17 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !65
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 15
  br i1 %19, label %23, label %21

21:                                               ; preds = %16
  %22 = load float, ptr %20, align 8, !tbaa !64
  br label %56

23:                                               ; preds = %16
  store float 1.000000e+00, ptr %20, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %27, %31
  %32 = phi float [ %46, %31 ], [ 0xC7EFFFFFE0000000, %27 ]
  %33 = phi i32 [ %47, %31 ], [ 0, %27 ]
  %34 = phi ptr [ %48, %31 ], [ %25, %27 ]
  %35 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = tail call fastcc float @max_ff(float noundef %32, float noundef %37) #11
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %34, i64 0, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = tail call fastcc float @max_ff(float noundef %38, float noundef %41) #11
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %34, i64 0, i64 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = tail call fastcc float @max_ff(float noundef %42, float noundef %45) #11
  %47 = add nuw nsw i32 %33, 1
  %48 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 1
  %49 = icmp eq i32 %47, %29
  br i1 %49, label %50, label %31, !llvm.loop !69

50:                                               ; preds = %31
  %51 = fcmp ogt float %46, 0x3E80000000000000
  %52 = fdiv float 1.000000e+00, %46
  %53 = select i1 %51, float %52, float 1.000000e+00
  br label %54

54:                                               ; preds = %50, %23
  %55 = phi float [ %53, %50 ], [ 1.000000e+00, %23 ]
  store float %55, ptr %20, align 8, !tbaa !64
  br label %56

56:                                               ; preds = %27, %54, %21, %13, %6
  %57 = phi float [ %9, %6 ], [ %15, %13 ], [ %22, %21 ], [ %55, %54 ], [ 1.000000e+00, %27 ]
  ret float %57
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_timecode_string_from_time(ptr noundef, i64 noundef, i32 noundef, float noundef, double noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_timecode_string_from_time_simple(ptr noundef, i64 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #8 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 680}
!6 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !14, i64 280, !24, i64 4264, !13, i64 4296, !13, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !13, i64 4384, !25, i64 4400, !26, i64 4416, !29, i64 4600, !8, i64 4608, !30, i64 4616, !8, i64 4640, !31, i64 4648, !31, i64 4656, !17, i64 4664, !18, i64 4824, !32, i64 4888, !8, i64 4952}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"ListBase", !8, i64 0, !8, i64 8}
!14 = !{!"RenderData", !15, i64 0, !8, i64 248, !8, i64 256, !19, i64 264, !20, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !16, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !21, i64 544, !21, i64 560, !22, i64 576, !13, i64 592, !11, i64 608, !11, i64 610, !16, i64 612, !16, i64 616, !16, i64 620, !16, i64 624, !12, i64 628, !16, i64 632, !16, i64 636, !16, i64 640, !16, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !16, i64 660, !16, i64 664, !11, i64 668, !11, i64 670, !16, i64 672, !16, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !16, i64 2528, !16, i64 2532, !11, i64 2536, !11, i64 2538, !16, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !16, i64 2560, !16, i64 2564, !8, i64 2568, !12, i64 2576, !16, i64 2580, !9, i64 2584, !23, i64 2616, !12, i64 3976, !12, i64 3980}
!15 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !16, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !17, i64 24, !18, i64 184}
!16 = !{!"float", !9, i64 0}
!17 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !16, i64 136, !16, i64 140, !8, i64 144, !8, i64 152}
!18 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!19 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!20 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !16, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!21 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!22 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!23 = !{!"BakeData", !15, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !16, i64 1280, !16, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!24 = !{!"AudioData", !12, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !16, i64 24, !16, i64 28}
!25 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!26 = !{!"GameData", !25, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !27, i64 40, !11, i64 64, !11, i64 66, !16, i64 68, !28, i64 72, !16, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180}
!27 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !16, i64 8, !16, i64 12, !8, i64 16}
!28 = !{!"RecastData", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !12, i64 40, !16, i64 44, !16, i64 48, !11, i64 52, !11, i64 54}
!29 = !{!"UnitSettings", !16, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!30 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!31 = !{!"long", !9, i64 0}
!32 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!33 = !{!6, !16, i64 716}
!34 = !{!16, !16, i64 0}
!35 = !{!36, !16, i64 24}
!36 = !{!"View2D", !21, i64 0, !21, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !9, i64 80, !9, i64 88, !16, i64 96, !16, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !8, i64 128, !12, i64 136, !12, i64 140, !8, i64 144, !8, i64 152}
!37 = !{!36, !16, i64 28}
!38 = !{!6, !16, i64 900}
!39 = !{!6, !11, i64 820}
!40 = !{!41, !11, i64 8474}
!41 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 788, !9, i64 1556, !9, i64 2580, !9, i64 3348, !9, i64 4116, !9, i64 4884, !9, i64 5652, !9, i64 6420, !9, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !13, i64 8536, !13, i64 8552, !13, i64 8568, !13, i64 8584, !13, i64 8600, !13, i64 8616, !13, i64 8632, !9, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !9, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !9, i64 8940, !9, i64 8941, !9, i64 8942, !9, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !16, i64 8956, !16, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !16, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !42, i64 8984, !9, i64 9760, !9, i64 9772, !11, i64 9788, !9, i64 9790, !9, i64 9791, !9, i64 9792, !9, i64 9872, !12, i64 10896, !12, i64 10900, !16, i64 10904, !16, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !43, i64 10928}
!42 = !{!"ColorBand", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8}
!43 = !{!"WalkNavigation", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !11, i64 24, !9, i64 26}
!44 = !{!41, !11, i64 8948}
!45 = !{!6, !11, i64 712}
!46 = !{!12, !12, i64 0}
!47 = !{!36, !16, i64 16}
!48 = !{!36, !16, i64 20}
!49 = !{!50, !8, i64 56}
!50 = !{!"bAnimListElem", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !11, i64 36, !11, i64 38, !8, i64 40, !8, i64 48, !8, i64 56}
!51 = !{!52, !8, i64 24}
!52 = !{!"KeyframeEditData", !13, i64 0, !8, i64 16, !8, i64 24, !16, i64 32, !16, i64 36, !12, i64 40, !12, i64 44, !8, i64 48, !12, i64 56, !11, i64 60, !11, i64 62}
!53 = !{!52, !12, i64 40}
!54 = !{!55, !8, i64 24}
!55 = !{!"bAnimContext", !8, i64 0, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!56 = !{!57, !12, i64 32}
!57 = !{!"SpaceLink", !8, i64 0, !8, i64 8, !13, i64 16, !12, i64 32, !16, i64 36, !9, i64 40}
!58 = !{!59, !12, i64 244}
!59 = !{!"SpaceIpo", !8, i64 0, !8, i64 8, !13, i64 16, !12, i64 32, !16, i64 36, !9, i64 40, !36, i64 56, !8, i64 216, !13, i64 224, !11, i64 240, !11, i64 242, !12, i64 244, !16, i64 248, !12, i64 252}
!60 = !{!61, !8, i64 80}
!61 = !{!"FCurve", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !13, i64 32, !8, i64 48, !8, i64 56, !12, i64 64, !16, i64 68, !11, i64 72, !11, i64 74, !12, i64 76, !8, i64 80, !12, i64 88, !9, i64 92, !16, i64 104, !16, i64 108}
!62 = !{!8, !8, i64 0}
!63 = !{!6, !9, i64 4605}
!64 = !{!61, !16, i64 104}
!65 = !{!66, !11, i64 2084}
!66 = !{!"Global", !8, i64 0, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 2057, !9, i64 2058, !13, i64 2064, !9, i64 2080, !9, i64 2081, !9, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !9, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !9, i64 2104, !12, i64 2108, !12, i64 2112, !9, i64 2116}
!67 = !{!61, !8, i64 48}
!68 = !{!61, !12, i64 64}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
