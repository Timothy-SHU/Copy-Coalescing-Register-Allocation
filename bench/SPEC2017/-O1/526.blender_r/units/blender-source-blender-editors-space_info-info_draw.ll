; ModuleID = 'blender/source/blender/editors/space_info/info_draw.c'
source_filename = "blender/source/blender/editors/space_info/info_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.TextViewContext = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }
%struct.Link = type { ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @info_text_pick(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.TextViewContext, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  store i32 %3, ptr %8, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %9 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 8
  store ptr @report_textview_begin, ptr %9, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 9
  store ptr @report_textview_end, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 12
  store ptr @report_textview_step, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 13
  store ptr @report_textview_line_get, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 14
  store ptr @report_textview_line_color, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 15
  store ptr null, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 10
  store ptr %0, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 11
  store ptr %2, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 1
  store i32 0, ptr %17, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !50
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !51
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !58
  %21 = sitofp i32 %20 to float
  %22 = fmul float %19, %21
  %23 = fdiv float %22, 7.200000e+01
  %24 = fmul float %23, 1.400000e+01
  %25 = fptosi float %24 to i32
  store i32 %25, ptr %5, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %27 = load float, ptr %26, align 8, !tbaa !60
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 6
  store i32 %28, ptr %29, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !65
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 7
  store i32 %32, ptr %33, align 4, !tbaa !66
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %35 = load i16, ptr %34, align 8, !tbaa !67
  %36 = sitofp i16 %35 to float
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %38 = sitofp i16 %37 to float
  %39 = tail call float @llvm.fmuladd.f32(float %38, float 0xBFEB333340000000, float %36)
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !70
  %42 = call i32 @textview_draw(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #8
  %43 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret ptr %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @info_textview_height(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.TextViewContext, align 8
  %5 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 9223372034707292159, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 8
  store ptr @report_textview_begin, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 9
  store ptr @report_textview_end, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 12
  store ptr @report_textview_step, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 13
  store ptr @report_textview_line_get, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 14
  store ptr @report_textview_line_color, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 15
  store ptr null, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 10
  store ptr %0, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 11
  store ptr %2, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !49
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !50
  %16 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !51
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !58
  %18 = sitofp i32 %17 to float
  %19 = fmul float %16, %18
  %20 = fdiv float %19, 7.200000e+01
  %21 = fmul float %20, 1.400000e+01
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %4, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !60
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 6
  store i32 %25, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !65
  %29 = fptosi float %28 to i32
  %30 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 7
  store i32 %29, ptr %30, align 4, !tbaa !66
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %32 = load i16, ptr %31, align 8, !tbaa !67
  %33 = sitofp i16 %32 to float
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %35 = sitofp i16 %34 to float
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 0xBFEB333340000000, float %33)
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 5
  store i32 %37, ptr %38, align 4, !tbaa !70
  %39 = call i32 @textview_draw(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local void @info_textview_main(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.TextViewContext, align 8
  %5 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 9223372034707292159, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 8
  store ptr @report_textview_begin, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 9
  store ptr @report_textview_end, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 12
  store ptr @report_textview_step, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 13
  store ptr @report_textview_line_get, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 14
  store ptr @report_textview_line_color, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 15
  store ptr null, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 10
  store ptr %0, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 11
  store ptr %2, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !49
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !50
  %16 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !51
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !58
  %18 = sitofp i32 %17 to float
  %19 = fmul float %16, %18
  %20 = fdiv float %19, 7.200000e+01
  %21 = fmul float %20, 1.400000e+01
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %4, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !60
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 6
  store i32 %25, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !65
  %29 = fptosi float %28 to i32
  %30 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 7
  store i32 %29, ptr %30, align 4, !tbaa !66
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %32 = load i16, ptr %31, align 8, !tbaa !67
  %33 = sitofp i16 %32 to float
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %35 = sitofp i16 %34 to float
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 0xBFEB333340000000, float %33)
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 5
  store i32 %37, ptr %38, align 4, !tbaa !70
  %39 = call i32 @textview_draw(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_textview_begin(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !51
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !58
  %6 = sitofp i32 %5 to float
  %7 = fmul float %4, %6
  %8 = fdiv float %7, 7.200000e+01
  %9 = fmul float %8, 1.400000e+01
  %10 = fptosi float %9 to i32
  store i32 %10, ptr %0, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  store ptr %14, ptr %15, align 8, !tbaa !73
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 20
  store i32 0, ptr %16, align 4, !tbaa !74
  %17 = load ptr, ptr %15, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = tail call i32 @info_report_mask(ptr noundef %21) #8
  %23 = load ptr, ptr %15, align 8, !tbaa !73
  %24 = icmp eq ptr %23, null
  br i1 %24, label %64, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Report, ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !75
  %28 = sext i16 %27 to i32
  %29 = and i32 %22, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %43

31:                                               ; preds = %37
  %32 = getelementptr inbounds %struct.Report, ptr %40, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !75
  %34 = sext i16 %33 to i32
  %35 = and i32 %22, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42, !llvm.loop !77

37:                                               ; preds = %25, %31
  %38 = phi ptr [ %40, %31 ], [ %23, %25 ]
  %39 = getelementptr inbounds %struct.Link, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = icmp eq ptr %40, null
  br i1 %41, label %63, label %31, !llvm.loop !77

42:                                               ; preds = %31
  store ptr %40, ptr %15, align 8, !tbaa !73
  br label %43

43:                                               ; preds = %42, %25
  %44 = phi i1 [ %24, %25 ], [ %41, %42 ]
  %45 = phi ptr [ %23, %25 ], [ %40, %42 ]
  br i1 %44, label %64, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  store i32 0, ptr %47, align 4, !tbaa !82
  %48 = getelementptr inbounds %struct.Report, ptr %45, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !83
  %50 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %49, i32 noundef 10) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = ptrtoint ptr %50 to i64
  %54 = ptrtoint ptr %49 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  br label %60

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.Report, ptr %45, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !84
  br label %60

60:                                               ; preds = %52, %57
  %61 = phi i32 [ %59, %57 ], [ %56, %52 ]
  %62 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 19
  store i32 %61, ptr %62, align 8, !tbaa !85
  br label %64

63:                                               ; preds = %37
  store ptr %40, ptr %15, align 8, !tbaa !73
  br label %64

64:                                               ; preds = %63, %60, %19, %1, %43
  %65 = phi i32 [ 0, %43 ], [ 0, %1 ], [ 0, %19 ], [ 1, %60 ], [ 0, %63 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @report_textview_end(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_textview_step(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.Report, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !84
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %57, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  store ptr %11, ptr %2, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = tail call i32 @info_report_mask(ptr noundef %15) #8
  %17 = load ptr, ptr %2, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %74, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Report, ptr %17, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !75
  %22 = sext i16 %21 to i32
  %23 = and i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %37

25:                                               ; preds = %31
  %26 = getelementptr inbounds %struct.Report, ptr %34, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !75
  %28 = sext i16 %27 to i32
  %29 = and i32 %16, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36, !llvm.loop !77

31:                                               ; preds = %19, %25
  %32 = phi ptr [ %34, %25 ], [ %17, %19 ]
  %33 = getelementptr inbounds %struct.Link, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = icmp eq ptr %34, null
  br i1 %35, label %73, label %25, !llvm.loop !77

36:                                               ; preds = %25
  store ptr %34, ptr %2, align 8, !tbaa !73
  br label %37

37:                                               ; preds = %36, %19
  %38 = phi i1 [ %18, %19 ], [ %35, %36 ]
  %39 = phi ptr [ %17, %19 ], [ %34, %36 ]
  br i1 %38, label %74, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 20
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !74
  %44 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  store i32 0, ptr %44, align 4, !tbaa !82
  %45 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !83
  %47 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %46, i32 noundef 10) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = ptrtoint ptr %47 to i64
  %51 = ptrtoint ptr %46 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  br label %71

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !84
  br label %71

57:                                               ; preds = %1
  %58 = add nsw i32 %7, 1
  %59 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  store i32 %58, ptr %59, align 4, !tbaa !82
  %60 = getelementptr inbounds %struct.Report, ptr %3, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds i8, ptr %61, i64 %62
  %64 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %63, i32 noundef 10) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = ptrtoint ptr %64 to i64
  %68 = ptrtoint ptr %61 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %57, %49, %54, %66
  %72 = phi i32 [ %70, %66 ], [ %56, %54 ], [ %53, %49 ], [ %5, %57 ]
  store i32 %72, ptr %6, align 8, !tbaa !85
  br label %74

73:                                               ; preds = %31
  store ptr %34, ptr %2, align 8, !tbaa !73
  br label %74

74:                                               ; preds = %73, %71, %13, %9, %37
  %75 = phi i32 [ 0, %37 ], [ 0, %9 ], [ 0, %13 ], [ 1, %71 ], [ 0, %73 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @report_textview_line_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.Report, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  store ptr %11, ptr %1, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = sub nsw i32 %13, %9
  store i32 %14, ptr %2, align 4, !tbaa !38
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_textview_line_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = getelementptr inbounds %struct.Report, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Report, ptr %5, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !75
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 480
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = and i32 %15, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = and i32 %15, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 3, i32 191
  %28 = select i1 %26, i32 2, i32 190
  br label %29

29:                                               ; preds = %3, %12, %18, %21, %24
  %30 = phi i32 [ 183, %3 ], [ 185, %12 ], [ 187, %18 ], [ 189, %21 ], [ %27, %24 ]
  %31 = phi i32 [ 182, %3 ], [ 184, %12 ], [ 186, %18 ], [ 188, %21 ], [ %28, %24 ]
  %32 = srem i32 %7, 2
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 -6, i32 0
  tail call void @UI_GetThemeColorShade3ubv(i32 noundef %31, i32 noundef %35, ptr noundef %2) #8
  tail call void @UI_GetThemeColor3ubv(i32 noundef %30, ptr noundef %1) #8
  ret i32 3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare i32 @textview_draw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #6

declare void @glClear(i32 noundef) local_unnamed_addr #6

declare i32 @info_report_mask(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 32}
!41 = !{!"TextViewContext", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116}
!42 = !{!41, !35, i64 40}
!43 = !{!41, !35, i64 64}
!44 = !{!41, !35, i64 72}
!45 = !{!41, !35, i64 80}
!46 = !{!41, !35, i64 88}
!47 = !{!41, !35, i64 48}
!48 = !{!41, !35, i64 56}
!49 = !{!41, !39, i64 4}
!50 = !{!41, !39, i64 8}
!51 = !{!52, !55, i64 10908}
!52 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !53, i64 8472, !53, i64 8474, !53, i64 8476, !53, i64 8478, !53, i64 8480, !53, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !53, i64 8496, !53, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !53, i64 8528, !53, i64 8530, !53, i64 8532, !53, i64 8534, !54, i64 8536, !54, i64 8552, !54, i64 8568, !54, i64 8584, !54, i64 8600, !54, i64 8616, !54, i64 8632, !36, i64 8648, !53, i64 8712, !53, i64 8714, !53, i64 8716, !53, i64 8718, !53, i64 8720, !53, i64 8722, !53, i64 8724, !53, i64 8726, !36, i64 8728, !53, i64 8896, !53, i64 8898, !53, i64 8900, !53, i64 8902, !53, i64 8904, !53, i64 8906, !53, i64 8908, !53, i64 8910, !39, i64 8912, !39, i64 8916, !53, i64 8920, !53, i64 8922, !53, i64 8924, !53, i64 8926, !53, i64 8928, !53, i64 8930, !53, i64 8932, !53, i64 8934, !53, i64 8936, !53, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !53, i64 8944, !53, i64 8946, !53, i64 8948, !53, i64 8950, !53, i64 8952, !53, i64 8954, !55, i64 8956, !55, i64 8960, !39, i64 8964, !53, i64 8968, !53, i64 8970, !55, i64 8972, !53, i64 8976, !53, i64 8978, !53, i64 8980, !53, i64 8982, !56, i64 8984, !36, i64 9760, !36, i64 9772, !53, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !55, i64 10904, !55, i64 10908, !39, i64 10912, !53, i64 10916, !53, i64 10918, !53, i64 10920, !53, i64 10922, !53, i64 10924, !53, i64 10926, !57, i64 10928}
!53 = !{!"short", !36, i64 0}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = !{!"float", !36, i64 0}
!56 = !{!"ColorBand", !53, i64 0, !53, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!57 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !53, i64 24, !36, i64 26}
!58 = !{!52, !39, i64 8524}
!59 = !{!41, !39, i64 0}
!60 = !{!61, !55, i64 24}
!61 = !{!"View2D", !62, i64 0, !62, i64 16, !63, i64 32, !63, i64 48, !63, i64 64, !36, i64 80, !36, i64 88, !55, i64 96, !55, i64 100, !53, i64 104, !53, i64 106, !53, i64 108, !53, i64 110, !53, i64 112, !53, i64 114, !53, i64 116, !53, i64 118, !53, i64 120, !53, i64 122, !53, i64 124, !53, i64 126, !35, i64 128, !39, i64 136, !39, i64 140, !35, i64 144, !35, i64 152}
!62 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!63 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!64 = !{!41, !39, i64 24}
!65 = !{!61, !55, i64 28}
!66 = !{!41, !39, i64 28}
!67 = !{!68, !53, i64 208}
!68 = !{!"ARegion", !35, i64 0, !35, i64 8, !61, i64 16, !63, i64 176, !63, i64 192, !53, i64 208, !53, i64 210, !53, i64 212, !53, i64 214, !53, i64 216, !53, i64 218, !55, i64 220, !53, i64 224, !53, i64 226, !53, i64 228, !53, i64 230, !53, i64 232, !53, i64 234, !53, i64 236, !53, i64 238, !35, i64 240, !54, i64 248, !54, i64 264, !54, i64 280, !54, i64 296, !54, i64 312, !54, i64 328, !54, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!69 = !{!52, !53, i64 8948}
!70 = !{!41, !39, i64 20}
!71 = !{!72, !35, i64 8}
!72 = !{!"ReportList", !54, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32}
!73 = !{!41, !35, i64 96}
!74 = !{!41, !39, i64 116}
!75 = !{!76, !53, i64 16}
!76 = !{!"Report", !35, i64 0, !35, i64 8, !53, i64 16, !53, i64 18, !39, i64 20, !35, i64 24, !35, i64 32}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!81, !35, i64 8}
!81 = !{!"Link", !35, i64 0, !35, i64 8}
!82 = !{!41, !39, i64 108}
!83 = !{!76, !35, i64 32}
!84 = !{!76, !39, i64 20}
!85 = !{!41, !39, i64 112}
!86 = !{!76, !53, i64 18}
