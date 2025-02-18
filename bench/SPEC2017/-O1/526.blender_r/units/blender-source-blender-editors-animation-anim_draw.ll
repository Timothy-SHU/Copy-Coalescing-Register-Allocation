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

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_draw_cfra(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 15
  %13 = load float, ptr %12, align 4, !tbaa !62
  %14 = fmul float %13, %11
  store float %14, ptr %7, align 4, !tbaa !63
  tail call void @UI_ThemeColor(i32 noundef 49) #7
  %15 = zext i16 %2 to i32
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, float 2.000000e+00, float 3.000000e+00
  tail call void @glLineWidth(float noundef %18) #7
  tail call void @glBegin(i32 noundef 3) #7
  %19 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %20 = load float, ptr %19, align 8, !tbaa !64
  %21 = fadd float %20, -5.000000e+02
  %22 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %21, ptr %22, align 4, !tbaa !63
  call void @glVertex2fv(ptr noundef nonnull %7) #7
  %23 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !66
  store float %24, ptr %22, align 4, !tbaa !63
  call void @glVertex2fv(ptr noundef nonnull %7) #7
  call void @glEnd() #7
  call void @glLineWidth(float noundef 1.000000e+00) #7
  %25 = and i32 %15, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %3
  %28 = call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @UI_view2d_view_orthoSpecial(ptr noundef %28, ptr noundef %1, i8 noundef zeroext 1) #7
  %29 = load float, ptr %7, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) @__const.draw_cfra_number.numstr, i64 32, i1 false)
  call void @UI_view2d_scale_get(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %30 = load float, ptr %4, align 4, !tbaa !63
  %31 = fdiv float 1.000000e+00, %30
  call void @glScalef(float noundef %31, float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  %32 = and i16 %2, 2
  %33 = icmp eq i16 %32, 0
  %34 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 4
  br i1 %33, label %49, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 65
  %37 = load float, ptr %36, align 4, !tbaa !67
  %38 = fpext float %37 to double
  %39 = fpext float %29 to double
  %40 = fmul double %39, %38
  %41 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 55
  %42 = load i16, ptr %41, align 4, !tbaa !68
  %43 = sitofp i16 %42 to double
  %44 = fdiv double %40, %43
  %45 = fptrunc double %44 to float
  %46 = fdiv double %43, %38
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 17), align 2, !tbaa !69
  %48 = call i64 @BLI_timecode_string_from_time(ptr noundef nonnull %34, i64 noundef 28, i32 noundef 0, float noundef %45, double noundef %46, i16 noundef signext %47) #7
  br label %51

49:                                               ; preds = %27
  %50 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %34, i64 noundef 28, i32 noundef 1, float noundef %29) #7
  br label %51

51:                                               ; preds = %35, %49
  %52 = call i32 @UI_GetStringWidth(ptr noundef nonnull %6) #7
  %53 = load float, ptr %4, align 4, !tbaa !63
  %54 = fmul float %29, %53
  %55 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !73
  %56 = sitofp i16 %55 to float
  %57 = fmul float %56, 0x3FECCCCCC0000000
  call void @UI_ThemeColorShade(i32 noundef 49, i32 noundef 0) #7
  %58 = shl i32 %52, 16
  %59 = add i32 %58, -65536
  %60 = ashr exact i32 %59, 16
  %61 = sitofp i32 %60 to float
  %62 = fadd float %54, %61
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !73
  %64 = sitofp i16 %63 to float
  %65 = call float @llvm.fmuladd.f32(float %64, float 7.500000e-01, float %57)
  call void @glRectf(float noundef %54, float noundef %57, float noundef %62, float noundef %65) #7
  call void @UI_ThemeColor(i32 noundef 3) #7
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !73
  %67 = sitofp i16 %66 to float
  %68 = call float @llvm.fmuladd.f32(float %67, float -2.500000e-01, float %54)
  %69 = call float @llvm.fmuladd.f32(float %67, float 0x3FC3333340000000, float %57)
  call void @UI_DrawString(float noundef %68, float noundef %69, ptr noundef nonnull %6) #7
  %70 = load float, ptr %4, align 4, !tbaa !63
  call void @glScalef(float noundef %70, float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %71

71:                                               ; preds = %51, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_draw_previewrange(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %6 = load i16, ptr %5, align 8, !tbaa !74
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  tail call void @glEnable(i32 noundef 3042) #7
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #7
  %10 = load i16, ptr %5, align 8, !tbaa !74
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load i32, ptr %15, align 4, !tbaa !75
  %17 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %18 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %19 = select i1 %12, ptr %18, ptr %17
  %20 = load i32, ptr %19, align 4, !tbaa !75
  %21 = add nsw i32 %20, %2
  %22 = icmp slt i32 %16, %21
  %23 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %24 = load float, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !64
  br i1 %22, label %27, label %42

27:                                               ; preds = %9
  %28 = sitofp i32 %16 to float
  %29 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !66
  tail call void @glRectf(float noundef %24, float noundef %26, float noundef %28, float noundef %30) #7
  %31 = load i16, ptr %5, align 8, !tbaa !74
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  %34 = select i1 %33, ptr %18, ptr %17
  %35 = load i32, ptr %34, align 4, !tbaa !75
  %36 = add nsw i32 %35, %2
  %37 = sitofp i32 %36 to float
  %38 = load float, ptr %25, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !77
  %41 = load float, ptr %29, align 4, !tbaa !66
  tail call void @glRectf(float noundef %37, float noundef %38, float noundef %40, float noundef %41) #7
  br label %47

42:                                               ; preds = %9
  %43 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !77
  %45 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !66
  tail call void @glRectf(float noundef %24, float noundef %26, float noundef %44, float noundef %46) #7
  br label %47

47:                                               ; preds = %42, %27
  tail call void @glDisable(i32 noundef 3042) #7
  br label %48

48:                                               ; preds = %47, %3
  ret void
}

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
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
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_nla_mapping_apply_fcurve(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !80
  %7 = zext i8 %3 to i32
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !82
  %9 = icmp eq i8 %2, 0
  %10 = select i1 %9, ptr @bezt_nlamapping_apply, ptr @bezt_nlamapping_restore
  %11 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %1, ptr noundef null, ptr noundef nonnull %10, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal noundef signext i16 @bezt_nlamapping_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load float, ptr %1, align 4, !tbaa !63
  %11 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %10, i16 noundef signext 1) #7
  store float %11, ptr %1, align 4, !tbaa !63
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !63
  %14 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %13, i16 noundef signext 1) #7
  store float %14, ptr %12, align 4, !tbaa !63
  br label %15

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !63
  %18 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %17, i16 noundef signext 1) #7
  store float %18, ptr %16, align 4, !tbaa !63
  ret i16 0
}

; Function Attrs: nounwind uwtable
define internal noundef signext i16 @bezt_nlamapping_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load float, ptr %1, align 4, !tbaa !63
  %11 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %10, i16 noundef signext 2) #7
  store float %11, ptr %1, align 4, !tbaa !63
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !63
  %14 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %13, i16 noundef signext 2) #7
  store float %14, ptr %12, align 4, !tbaa !63
  br label %15

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !63
  %18 = tail call float @BKE_nla_tweakedit_remap(ptr noundef %4, float noundef %17, i16 noundef signext 2) #7
  store float %18, ptr %16, align 4, !tbaa !63
  ret i16 0
}

declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @ANIM_get_normalization_flags(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !87
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

; Function Attrs: nounwind uwtable
define dso_local float @ANIM_unit_mapping_get_factor(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = zext i16 %3 to i32
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %4
  %12 = and i32 %8, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 15
  %16 = load float, ptr %15, align 8, !tbaa !89
  %17 = fdiv float 1.000000e+00, %16
  br label %100

18:                                               ; preds = %11
  %19 = and i32 %8, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 15
  %23 = load float, ptr %22, align 8, !tbaa !89
  br label %100

24:                                               ; preds = %18
  %25 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !91
  %26 = and i16 %25, 8
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 15
  br i1 %27, label %31, label %29

29:                                               ; preds = %24
  %30 = load float, ptr %28, align 8, !tbaa !89
  br label %100

31:                                               ; preds = %24
  store float 1.000000e+00, ptr %28, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  %34 = icmp eq ptr %33, null
  br i1 %34, label %67, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !94
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %35, %39
  %40 = phi float [ %57, %39 ], [ 0xC7EFFFFFE0000000, %35 ]
  %41 = phi i32 [ %58, %39 ], [ 0, %35 ]
  %42 = phi ptr [ %59, %39 ], [ %33, %35 ]
  %43 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !63
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ogt float %40, %45
  %47 = select i1 %46, float %40, float %45
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !63
  %50 = tail call float @llvm.fabs.f32(float %49)
  %51 = fcmp ogt float %47, %50
  %52 = select i1 %51, float %47, float %50
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !63
  %55 = tail call float @llvm.fabs.f32(float %54)
  %56 = fcmp ogt float %52, %55
  %57 = select i1 %56, float %52, float %55
  %58 = add nuw nsw i32 %41, 1
  %59 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 1
  %60 = icmp eq i32 %58, %37
  br i1 %60, label %61, label %39, !llvm.loop !95

61:                                               ; preds = %39
  %62 = fcmp ogt float %57, 0x3E80000000000000
  %63 = fdiv float 1.000000e+00, %57
  %64 = select i1 %62, float %63, float 1.000000e+00
  br label %65

65:                                               ; preds = %61, %35
  %66 = phi float [ %64, %61 ], [ 1.000000e+00, %35 ]
  br i1 %38, label %100, label %67

67:                                               ; preds = %65, %31
  %68 = phi float [ %66, %65 ], [ 1.000000e+00, %31 ]
  store float %68, ptr %28, align 8, !tbaa !89
  br label %100

69:                                               ; preds = %4
  %70 = icmp ne ptr %1, null
  %71 = icmp ne ptr %2, null
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !98
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %6) #7
  %78 = load ptr, ptr %74, align 8, !tbaa !98
  %79 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %6, ptr noundef %78, ptr noundef nonnull %5, ptr noundef nonnull %7) #7
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %7, align 8, !tbaa !99
  %83 = call i32 @RNA_property_subtype(ptr noundef %82) #7
  %84 = and i32 %83, 16711680
  %85 = icmp eq i32 %84, 327680
  %86 = icmp ne ptr %0, null
  %87 = and i1 %86, %85
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38, i32 2
  %90 = load i8, ptr %89, align 1, !tbaa !100
  %91 = icmp eq i8 %90, 2
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = and i32 %8, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, float 0x404CA5DC20000000, float 0x3F91DF46A0000000
  br label %96

96:                                               ; preds = %77, %88, %81, %92
  %97 = phi float [ %95, %92 ], [ undef, %81 ], [ undef, %88 ], [ undef, %77 ]
  %98 = phi i1 [ false, %92 ], [ true, %81 ], [ true, %88 ], [ true, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %73, %69
  br label %100

100:                                              ; preds = %67, %65, %29, %21, %14, %96, %99
  %101 = phi float [ %97, %96 ], [ 1.000000e+00, %99 ], [ %17, %14 ], [ %23, %21 ], [ %30, %29 ], [ %68, %67 ], [ 1.000000e+00, %65 ]
  ret float %101
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i64 @BLI_timecode_string_from_time(ptr noundef, i64 noundef, i32 noundef, float noundef, double noundef, i16 noundef signext) local_unnamed_addr #2

declare i64 @BLI_timecode_string_from_time_simple(ptr noundef, i64 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !41, i64 680}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!35, !45, i64 716}
!63 = !{!45, !45, i64 0}
!64 = !{!65, !45, i64 24}
!65 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !38, i64 80, !38, i64 88, !45, i64 96, !45, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!66 = !{!65, !45, i64 28}
!67 = !{!35, !45, i64 900}
!68 = !{!35, !40, i64 820}
!69 = !{!70, !40, i64 8474}
!70 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !45, i64 8956, !45, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !45, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !71, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !45, i64 10904, !45, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !72, i64 10928}
!71 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!72 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !40, i64 24, !38, i64 26}
!73 = !{!70, !40, i64 8948}
!74 = !{!35, !40, i64 712}
!75 = !{!41, !41, i64 0}
!76 = !{!65, !45, i64 16}
!77 = !{!65, !45, i64 20}
!78 = !{!79, !37, i64 56}
!79 = !{!"bAnimListElem", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !40, i64 36, !40, i64 38, !37, i64 40, !37, i64 48, !37, i64 56}
!80 = !{!81, !37, i64 24}
!81 = !{!"KeyframeEditData", !42, i64 0, !37, i64 16, !37, i64 24, !45, i64 32, !45, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !41, i64 56, !40, i64 60, !40, i64 62}
!82 = !{!81, !41, i64 40}
!83 = !{!84, !37, i64 24}
!84 = !{!"bAnimContext", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!85 = !{!86, !41, i64 32}
!86 = !{!"SpaceLink", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !45, i64 36, !38, i64 40}
!87 = !{!88, !41, i64 244}
!88 = !{!"SpaceIpo", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !45, i64 36, !38, i64 40, !65, i64 56, !37, i64 216, !42, i64 224, !40, i64 240, !40, i64 242, !41, i64 244, !45, i64 248, !41, i64 252}
!89 = !{!90, !45, i64 104}
!90 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !45, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !45, i64 104, !45, i64 108}
!91 = !{!92, !40, i64 2084}
!92 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!93 = !{!90, !37, i64 48}
!94 = !{!90, !41, i64 64}
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!90, !37, i64 80}
!99 = !{!37, !37, i64 0}
!100 = !{!35, !38, i64 4605}
