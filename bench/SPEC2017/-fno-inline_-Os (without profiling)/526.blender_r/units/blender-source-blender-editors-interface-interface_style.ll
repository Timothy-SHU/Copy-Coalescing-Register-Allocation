; ModuleID = 'blender/source/blender/editors/interface/interface_style.c'
source_filename = "blender/source/blender/editors/interface/interface_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiFont = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16 }

@U = external global %struct.UserDef, align 8
@UI_GetStyleDraw._style = internal global %struct.uiStyle zeroinitializer, align 8
@datatoc_bmonofont_ttf_size = external local_unnamed_addr global i32, align 4
@datatoc_bmonofont_ttf = external global [0 x i8], align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"ui font\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@datatoc_bfont_ttf = external global [0 x i8], align 1
@datatoc_bfont_ttf_size = external local_unnamed_addr global i32, align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: error, no fonts available\0A\00", align 1
@__func__.uiStyleInit = private unnamed_addr constant [12 x i8] c"uiStyleInit\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Default Style\00", align 1
@blf_mono_font = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"monospace\00", align 1
@blf_mono_font_render = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"new style\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiStyleFontDrawExt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  tail call void @uiStyleFontSet(ptr noundef %0) #11
  %7 = load i16, ptr %0, align 4, !tbaa !5
  %8 = sext i16 %7 to i32
  %9 = tail call float @BLF_ascender(i32 noundef %8) #12
  %10 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #11
  %11 = sitofp i32 %10 to float
  %12 = fsub float %11, %9
  %13 = fmul float %12, 5.000000e-01
  %14 = tail call float @llvm.ceil.f32(float %13)
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  %17 = load i16, ptr %16, align 2, !tbaa !11
  switch i16 %17, label %40 [
    i16 1, label %18
    i16 2, label %29
  ]

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #11
  %20 = sitofp i32 %19 to float
  %21 = load i16, ptr %0, align 4, !tbaa !5
  %22 = sext i16 %21 to i32
  %23 = tail call float @BLF_width(i32 noundef %22, ptr noundef %2, i64 noundef %3) #12
  %24 = fsub float %20, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = tail call float @llvm.floor.f32(float %25)
  %27 = fptosi float %26 to i32
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 2)
  br label %40

29:                                               ; preds = %6
  %30 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #11
  %31 = sitofp i32 %30 to float
  %32 = load i16, ptr %0, align 4, !tbaa !5
  %33 = sext i16 %32 to i32
  %34 = tail call float @BLF_width(i32 noundef %33, ptr noundef %2, i64 noundef %3) #12
  %35 = fsub float %31, %34
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %37 = sitofp i16 %36 to float
  %38 = tail call float @llvm.fmuladd.f32(float %37, float 0xBFB99999A0000000, float %35)
  %39 = fptosi float %38 to i32
  br label %40

40:                                               ; preds = %6, %29, %18
  %41 = phi i32 [ %28, %18 ], [ %39, %29 ], [ 0, %6 ]
  %42 = load i16, ptr %0, align 4, !tbaa !5
  %43 = sext i16 %42 to i32
  %44 = load i32, ptr %1, align 4, !tbaa !19
  %45 = add nsw i32 %44, -2
  %46 = sitofp i32 %45 to float
  %47 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !21
  %49 = add nsw i32 %48, -4
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !22
  %53 = add nsw i32 %52, 1
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !23
  %57 = add nsw i32 %56, 4
  %58 = sitofp i32 %57 to float
  tail call void @BLF_clipping(i32 noundef %43, float noundef %46, float noundef %50, float noundef %54, float noundef %58) #12
  %59 = load i16, ptr %0, align 4, !tbaa !5
  %60 = sext i16 %59 to i32
  tail call void @BLF_enable(i32 noundef %60, i32 noundef 2) #12
  %61 = load i16, ptr %0, align 4, !tbaa !5
  %62 = sext i16 %61 to i32
  %63 = load i32, ptr %1, align 4, !tbaa !19
  %64 = add nsw i32 %63, %41
  %65 = sitofp i32 %64 to float
  %66 = load i32, ptr %47, align 4, !tbaa !21
  %67 = add nsw i32 %66, %15
  %68 = sitofp i32 %67 to float
  tail call void @BLF_position(i32 noundef %62, float noundef %65, float noundef %68, float noundef 0.000000e+00) #12
  %69 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 6
  %70 = load i16, ptr %69, align 4, !tbaa !24
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %40
  %73 = load i16, ptr %0, align 4, !tbaa !5
  %74 = sext i16 %73 to i32
  tail call void @BLF_enable(i32 noundef %74, i32 noundef 4) #12
  %75 = load i16, ptr %0, align 4, !tbaa !5
  %76 = sext i16 %75 to i32
  %77 = load i16, ptr %69, align 4, !tbaa !24
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 11
  %80 = load float, ptr %79, align 4, !tbaa !25
  %81 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 10
  %82 = load float, ptr %81, align 4, !tbaa !26
  tail call void @BLF_shadow(i32 noundef %76, i32 noundef %78, float noundef %80, float noundef %80, float noundef %80, float noundef %82) #12
  %83 = load i16, ptr %0, align 4, !tbaa !5
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 7
  %86 = load i16, ptr %85, align 2, !tbaa !27
  %87 = sext i16 %86 to i32
  %88 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 8
  %89 = load i16, ptr %88, align 4, !tbaa !28
  %90 = sext i16 %89 to i32
  tail call void @BLF_shadow_offset(i32 noundef %84, i32 noundef %87, i32 noundef %90) #12
  br label %91

91:                                               ; preds = %72, %40
  %92 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %93 = load i16, ptr %92, align 4, !tbaa !29
  %94 = icmp eq i16 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i16, ptr %0, align 4, !tbaa !5
  %97 = sext i16 %96 to i32
  tail call void @BLF_enable(i32 noundef %97, i32 noundef 8) #12
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i16, ptr %0, align 4, !tbaa !5
  %100 = sext i16 %99 to i32
  tail call void @BLF_draw(i32 noundef %100, ptr noundef %2, i64 noundef %3) #12
  %101 = load i16, ptr %0, align 4, !tbaa !5
  %102 = sext i16 %101 to i32
  tail call void @BLF_disable(i32 noundef %102, i32 noundef 2) #12
  %103 = load i16, ptr %69, align 4, !tbaa !24
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i16, ptr %0, align 4, !tbaa !5
  %107 = sext i16 %106 to i32
  tail call void @BLF_disable(i32 noundef %107, i32 noundef 4) #12
  br label %108

108:                                              ; preds = %105, %98
  %109 = load i16, ptr %92, align 4, !tbaa !29
  %110 = icmp eq i16 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i16, ptr %0, align 4, !tbaa !5
  %113 = sext i16 %112 to i32
  tail call void @BLF_disable(i32 noundef %113, i32 noundef 8) #12
  br label %114

114:                                              ; preds = %111, %108
  %115 = sitofp i32 %41 to float
  store float %115, ptr %4, align 4, !tbaa !30
  %116 = sitofp i32 %15 to float
  store float %116, ptr %5, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiStyleFontSet(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 4, !tbaa !5
  %3 = sext i16 %2 to i32
  %4 = tail call fastcc ptr @uifont_to_blfont(i32 noundef %3) #11
  %5 = getelementptr inbounds %struct.uiFont, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !31
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !33
  %10 = sitofp i16 %9 to float
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %12 = fmul float %11, %10
  %13 = fptosi float %12 to i32
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  tail call void @BLF_size(i32 noundef %7, i32 noundef %13, i32 noundef %14) #12
  ret void
}

; Function Attrs: optsize
declare float @BLF_ascender(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !21
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !22
  %4 = load i32, ptr %0, align 4, !tbaa !19
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare void @BLF_clipping(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_shadow(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_shadow_offset(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiStyleFontDraw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @uiStyleFontDrawExt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiStyleFontDrawRotated(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @uiStyleFontSet(ptr noundef %0) #11
  %4 = load i16, ptr %0, align 4, !tbaa !5
  %5 = sext i16 %4 to i32
  %6 = tail call float @BLF_ascender(i32 noundef %5) #12
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #11
  %8 = sitofp i32 %7 to float
  %9 = fsub float %8, %6
  %10 = fmul float %9, 5.000000e-01
  %11 = tail call float @llvm.ceil.f32(float %10)
  %12 = fptosi float %11 to i32
  %13 = sitofp i32 %12 to float
  %14 = fadd float %6, %13
  %15 = fptosi float %14 to i32
  %16 = load i16, ptr %0, align 4, !tbaa !5
  %17 = sext i16 %16 to i32
  %18 = tail call float @BLF_width(i32 noundef %17, ptr noundef %2, i64 noundef 1024) #12
  %19 = fadd float %18, 5.000000e+00
  %20 = fptosi float %19 to i32
  %21 = load i32, ptr %1, align 4, !tbaa !19
  %22 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #11
  %23 = sub nsw i32 %21, %22
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !21
  %26 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #11
  %27 = load i16, ptr %0, align 4, !tbaa !5
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %23, -1
  %30 = sitofp i32 %29 to float
  %31 = add i32 %25, -4
  %32 = add i32 %26, %20
  %33 = add i32 %32, %15
  %34 = sub i32 %31, %33
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !22
  %38 = add nsw i32 %37, 1
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !23
  %42 = add nsw i32 %41, 4
  %43 = sitofp i32 %42 to float
  tail call void @BLF_clipping(i32 noundef %28, float noundef %30, float noundef %35, float noundef %39, float noundef %43) #12
  %44 = load i16, ptr %0, align 4, !tbaa !5
  %45 = sext i16 %44 to i32
  tail call void @BLF_enable(i32 noundef %45, i32 noundef 2) #12
  %46 = load i16, ptr %0, align 4, !tbaa !5
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %23, %15
  %49 = sitofp i32 %48 to float
  %50 = sub nsw i32 %25, %20
  %51 = sitofp i32 %50 to float
  tail call void @BLF_position(i32 noundef %47, float noundef %49, float noundef %51, float noundef 0.000000e+00) #12
  %52 = load i16, ptr %0, align 4, !tbaa !5
  %53 = sext i16 %52 to i32
  tail call void @BLF_enable(i32 noundef %53, i32 noundef 1) #12
  %54 = load i16, ptr %0, align 4, !tbaa !5
  %55 = sext i16 %54 to i32
  tail call void @BLF_rotation(i32 noundef %55, float noundef 0x3FF921FB60000000) #12
  %56 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 6
  %57 = load i16, ptr %56, align 4, !tbaa !24
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %3
  %60 = load i16, ptr %0, align 4, !tbaa !5
  %61 = sext i16 %60 to i32
  tail call void @BLF_enable(i32 noundef %61, i32 noundef 4) #12
  %62 = load i16, ptr %0, align 4, !tbaa !5
  %63 = sext i16 %62 to i32
  %64 = load i16, ptr %56, align 4, !tbaa !24
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 11
  %67 = load float, ptr %66, align 4, !tbaa !25
  %68 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 10
  %69 = load float, ptr %68, align 4, !tbaa !26
  tail call void @BLF_shadow(i32 noundef %63, i32 noundef %65, float noundef %67, float noundef %67, float noundef %67, float noundef %69) #12
  %70 = load i16, ptr %0, align 4, !tbaa !5
  %71 = sext i16 %70 to i32
  %72 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 7
  %73 = load i16, ptr %72, align 2, !tbaa !27
  %74 = sext i16 %73 to i32
  %75 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 8
  %76 = load i16, ptr %75, align 4, !tbaa !28
  %77 = sext i16 %76 to i32
  tail call void @BLF_shadow_offset(i32 noundef %71, i32 noundef %74, i32 noundef %77) #12
  br label %78

78:                                               ; preds = %59, %3
  %79 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %80 = load i16, ptr %79, align 4, !tbaa !29
  %81 = icmp eq i16 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i16, ptr %0, align 4, !tbaa !5
  %84 = sext i16 %83 to i32
  tail call void @BLF_enable(i32 noundef %84, i32 noundef 8) #12
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i16, ptr %0, align 4, !tbaa !5
  %87 = sext i16 %86 to i32
  tail call void @BLF_draw(i32 noundef %87, ptr noundef %2, i64 noundef 1024) #12
  %88 = load i16, ptr %0, align 4, !tbaa !5
  %89 = sext i16 %88 to i32
  tail call void @BLF_disable(i32 noundef %89, i32 noundef 1) #12
  %90 = load i16, ptr %0, align 4, !tbaa !5
  %91 = sext i16 %90 to i32
  tail call void @BLF_disable(i32 noundef %91, i32 noundef 2) #12
  %92 = load i16, ptr %56, align 4, !tbaa !24
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i16, ptr %0, align 4, !tbaa !5
  %96 = sext i16 %95 to i32
  tail call void @BLF_disable(i32 noundef %96, i32 noundef 4) #12
  br label %97

97:                                               ; preds = %94, %85
  %98 = load i16, ptr %79, align 4, !tbaa !29
  %99 = icmp eq i16 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i16, ptr %0, align 4, !tbaa !5
  %102 = sext i16 %101 to i32
  tail call void @BLF_disable(i32 noundef %102, i32 noundef 8) #12
  br label %103

103:                                              ; preds = %100, %97
  ret void
}

; Function Attrs: optsize
declare void @BLF_rotation(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @UI_GetStyle() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @UI_GetStyleDraw() local_unnamed_addr #6 {
  %1 = tail call ptr @UI_GetStyle() #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @UI_GetStyleDraw._style, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !tbaa.struct !36
  %2 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  %4 = sitofp i32 %3 to float
  %5 = fmul float %2, %4
  %6 = fdiv float %5, 7.200000e+01
  %7 = load <2 x i16>, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 3, i32 7), align 2, !tbaa !39
  %8 = sitofp <2 x i16> %7 to <2 x float>
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %10, %8
  %12 = fptosi <2 x float> %11 to <2 x i16>
  store <2 x i16> %12, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 3, i32 7), align 2, !tbaa !39
  %13 = load <2 x i16>, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 4, i32 7), align 2, !tbaa !39
  %14 = sitofp <2 x i16> %13 to <2 x float>
  %15 = fmul <2 x float> %10, %14
  %16 = fptosi <2 x float> %15 to <2 x i16>
  store <2 x i16> %16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 4, i32 7), align 2, !tbaa !39
  %17 = load <2 x i16>, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 5, i32 7), align 2, !tbaa !39
  %18 = sitofp <2 x i16> %17 to <2 x float>
  %19 = fmul <2 x float> %10, %18
  %20 = fptosi <2 x float> %19 to <2 x i16>
  store <2 x i16> %20, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 5, i32 7), align 2, !tbaa !39
  %21 = load <4 x i16>, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 10), align 8, !tbaa !39
  %22 = sitofp <4 x i16> %21 to <4 x float>
  %23 = insertelement <4 x float> poison, float %6, i64 0
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %25 = fmul <4 x float> %24, %22
  %26 = fptosi <4 x float> %25 to <4 x i16>
  store <4 x i16> %26, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 10), align 8, !tbaa !39
  %27 = load <2 x i16>, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 14), align 8, !tbaa !39
  %28 = sitofp <2 x i16> %27 to <2 x float>
  %29 = fmul <2 x float> %10, %28
  %30 = fptosi <2 x float> %29 to <2 x i16>
  store <2 x i16> %30, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 14), align 8, !tbaa !39
  %31 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 16), align 4, !tbaa !40
  %32 = sitofp i16 %31 to float
  %33 = fmul float %6, %32
  %34 = fptosi float %33 to i16
  store i16 %34, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 16), align 4, !tbaa !40
  ret ptr @UI_GetStyleDraw._style
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @UI_GetStringWidth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @UI_GetStyle() #11
  %3 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  %4 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !29
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i16, ptr %3, align 4, !tbaa !5
  %9 = sext i16 %8 to i32
  tail call void @BLF_enable(i32 noundef %9, i32 noundef 8) #12
  br label %10

10:                                               ; preds = %7, %1
  tail call void @uiStyleFontSet(ptr noundef nonnull %3) #11
  %11 = load i16, ptr %3, align 4, !tbaa !5
  %12 = sext i16 %11 to i32
  %13 = tail call float @BLF_width(i32 noundef %12, ptr noundef %0, i64 noundef 1024) #12
  %14 = load i16, ptr %4, align 4, !tbaa !29
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i16, ptr %3, align 4, !tbaa !5
  %18 = sext i16 %17 to i32
  tail call void @BLF_disable(i32 noundef %18, i32 noundef 8) #12
  br label %19

19:                                               ; preds = %16, %10
  %20 = fptosi float %13 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_DrawString(float noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @UI_GetStyle() #11
  %5 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 6, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !42
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i16, ptr %5, align 8, !tbaa !43
  %11 = sext i16 %10 to i32
  tail call void @BLF_enable(i32 noundef %11, i32 noundef 8) #12
  br label %12

12:                                               ; preds = %9, %3
  tail call void @uiStyleFontSet(ptr noundef nonnull %5) #11
  %13 = load i16, ptr %5, align 8, !tbaa !43
  %14 = sext i16 %13 to i32
  tail call void @BLF_position(i32 noundef %14, float noundef %0, float noundef %1, float noundef 0.000000e+00) #12
  %15 = load i16, ptr %5, align 8, !tbaa !43
  %16 = sext i16 %15 to i32
  tail call void @BLF_draw(i32 noundef %16, ptr noundef %2, i64 noundef 1024) #12
  %17 = load i16, ptr %6, align 4, !tbaa !42
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i16, ptr %5, align 8, !tbaa !43
  %21 = sext i16 %20 to i32
  tail call void @BLF_disable(i32 noundef %21, i32 noundef 8) #12
  br label %22

22:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiStyleInit() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8, !tbaa !44
  %2 = load i32, ptr @datatoc_bmonofont_ttf_size, align 4, !tbaa !45
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = icmp slt i32 %3, 48
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i32 %3, 144
  br i1 %8, label %9, label %11

9:                                                ; preds = %7, %5, %0
  %10 = phi i32 [ 72, %0 ], [ 48, %5 ], [ 144, %7 ]
  store i32 %10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  br label %11

11:                                               ; preds = %9, %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.uiFont, ptr %15, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !31
  %18 = sext i16 %17 to i32
  tail call void @BLF_unload_id(i32 noundef %18) #12
  %19 = load ptr, ptr %15, align 8, !tbaa !37
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !46

21:                                               ; preds = %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %11, %21
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %26 = tail call ptr %25(i64 noundef 1048, ptr noundef nonnull @.str) #12
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), ptr noundef %26) #12
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %22, %21 ]
  %29 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 102), align 8, !tbaa !38
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %struct.uiFont, ptr %28, i64 0, i32 2
  %32 = select i1 %30, ptr @.str.1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 102)
  %33 = select i1 %30, i16 0, i16 2
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %31, ptr noundef nonnull %32, i64 noundef 1024) #12
  %35 = getelementptr inbounds %struct.uiFont, ptr %28, i64 0, i32 4
  store i16 %33, ptr %35, align 2
  %36 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !37
  %37 = icmp eq ptr %36, null
  br i1 %37, label %92, label %38

38:                                               ; preds = %27, %89
  %39 = phi ptr [ %90, %89 ], [ %36, %27 ]
  %40 = getelementptr inbounds %struct.uiFont, ptr %39, i64 0, i32 4
  %41 = load i16, ptr %40, align 2, !tbaa !49
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds %struct.uiFont, ptr %39, i64 0, i32 3
  br i1 %42, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, ptr @datatoc_bfont_ttf_size, align 4, !tbaa !45
  %46 = tail call i32 @BLF_load_mem(ptr noundef nonnull @.str.1, ptr noundef nonnull @datatoc_bfont_ttf, i32 noundef %45) #12
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %43, align 8, !tbaa !31
  br label %61

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.uiFont, ptr %39, i64 0, i32 2
  %50 = tail call i32 @BLF_load(ptr noundef nonnull %49) #12
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %43, align 8, !tbaa !31
  %52 = shl i32 %50, 16
  %53 = icmp eq i32 %52, -65536
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, ptr @datatoc_bfont_ttf_size, align 4, !tbaa !45
  %56 = tail call i32 @BLF_load_mem(ptr noundef nonnull @.str.1, ptr noundef nonnull @datatoc_bfont_ttf, i32 noundef %55) #12
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %43, align 8, !tbaa !31
  br label %61

58:                                               ; preds = %48
  %59 = ashr exact i32 %52, 16
  tail call void @BLF_default_set(i32 noundef %59) #12
  %60 = load i16, ptr %43, align 8, !tbaa !31
  br label %61

61:                                               ; preds = %54, %58, %44
  %62 = phi i16 [ %57, %54 ], [ %60, %58 ], [ %47, %44 ]
  %63 = icmp eq i16 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !50
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %64
  %69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.uiStyleInit) #11
  br label %89

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.uiFont, ptr %39, i64 0, i32 3
  %72 = sext i16 %62 to i32
  %73 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %74 = fmul float %73, 1.100000e+01
  %75 = fptosi float %74 to i32
  %76 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  tail call void @BLF_size(i32 noundef %72, i32 noundef %75, i32 noundef %76) #12
  %77 = load i16, ptr %71, align 8, !tbaa !31
  %78 = sext i16 %77 to i32
  %79 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %80 = fmul float %79, 1.200000e+01
  %81 = fptosi float %80 to i32
  %82 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  tail call void @BLF_size(i32 noundef %78, i32 noundef %81, i32 noundef %82) #12
  %83 = load i16, ptr %71, align 8, !tbaa !31
  %84 = sext i16 %83 to i32
  %85 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %86 = fmul float %85, 1.400000e+01
  %87 = fptosi float %86 to i32
  %88 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !35
  tail call void @BLF_size(i32 noundef %84, i32 noundef %87, i32 noundef %88) #12
  br label %89

89:                                               ; preds = %70, %68, %64
  %90 = load ptr, ptr %39, align 8, !tbaa !37
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %38, !llvm.loop !52

92:                                               ; preds = %89, %27
  %93 = icmp eq ptr %1, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call fastcc void @ui_style_new() #11
  br label %95

95:                                               ; preds = %94, %92
  %96 = load i32, ptr @blf_mono_font, align 4, !tbaa !45
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = tail call i32 @BLF_load_mem_unique(ptr noundef nonnull @.str.4, ptr noundef nonnull @datatoc_bmonofont_ttf, i32 noundef %2) #12
  store i32 %99, ptr @blf_mono_font, align 4, !tbaa !45
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i32 [ %99, %98 ], [ %96, %95 ]
  %102 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %103 = fmul float %102, 1.200000e+01
  %104 = fptosi float %103 to i32
  tail call void @BLF_size(i32 noundef %101, i32 noundef %104, i32 noundef 72) #12
  %105 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !45
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = tail call i32 @BLF_load_mem_unique(ptr noundef nonnull @.str.4, ptr noundef nonnull @datatoc_bmonofont_ttf, i32 noundef %2) #12
  store i32 %108, ptr @blf_mono_font_render, align 4, !tbaa !45
  br label %109

109:                                              ; preds = %107, %100
  %110 = phi i32 [ %108, %107 ], [ %105, %100 ]
  %111 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %112 = fmul float %111, 1.200000e+01
  %113 = fptosi float %112 to i32
  tail call void @BLF_size(i32 noundef %110, i32 noundef %113, i32 noundef 72) #12
  ret void
}

; Function Attrs: optsize
declare void @BLF_unload_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLF_load_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLF_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_default_set(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_style_new() unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %2 = tail call ptr %1(i64 noundef 232, ptr noundef nonnull @.str.5) #12
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 2
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i64 noundef 64) #12
  %5 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 7
  store float 1.000000e+00, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3
  store i16 0, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3, i32 1
  store i16 12, ptr %7, align 2, !tbaa !55
  %8 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3, i32 2
  store i16 1, ptr %8, align 4, !tbaa !56
  %9 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3, i32 6
  store i16 1, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3, i32 7
  store i16 0, ptr %10, align 2, !tbaa !58
  %11 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3, i32 8
  store i16 -1, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 3, i32 10
  store <2 x float> <float 0x3FC3333340000000, float 1.000000e+00>, ptr %12, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4
  store i16 0, ptr %13, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4, i32 1
  store i16 12, ptr %14, align 2, !tbaa !61
  %15 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4, i32 2
  store i16 1, ptr %15, align 4, !tbaa !62
  %16 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4, i32 6
  store i16 3, ptr %16, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4, i32 7
  store i16 0, ptr %17, align 2, !tbaa !64
  %18 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4, i32 8
  store i16 -1, ptr %18, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 4, i32 10
  store float 2.500000e-01, ptr %19, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  store i16 0, ptr %20, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5, i32 1
  store i16 11, ptr %21, align 2, !tbaa !68
  %22 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5, i32 2
  store i16 1, ptr %22, align 4, !tbaa !69
  %23 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5, i32 6
  store i16 3, ptr %23, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5, i32 7
  store i16 0, ptr %24, align 2, !tbaa !71
  %25 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5, i32 8
  store i16 -1, ptr %25, align 4, !tbaa !72
  %26 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5, i32 10
  store <2 x float> <float 0x3FC3333340000000, float 1.000000e+00>, ptr %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  store i16 0, ptr %27, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6, i32 1
  store i16 11, ptr %28, align 2, !tbaa !73
  %29 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6, i32 2
  store i16 1, ptr %29, align 4, !tbaa !42
  %30 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6, i32 10
  store float 2.500000e-01, ptr %30, align 8, !tbaa !74
  %31 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 10
  store <4 x i16> <i16 8, i16 5, i16 5, i16 8>, ptr %31, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 14
  store i16 2, ptr %32, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 15
  store i16 8, ptr %33, align 2, !tbaa !76
  %34 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 16
  store i16 4, ptr %34, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare i32 @BLF_load_mem_unique(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @uifont_to_blfont(i32 noundef %0) unnamed_addr #9 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiFont, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 2, !tbaa !49
  %9 = sext i16 %8 to i32
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %13, label %2, !llvm.loop !77

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !48
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ %4, %6 ]
  ret ptr %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"uiFontStyle", !7, i64 0, !7, i64 2, !7, i64 4, !8, i64 6, !7, i64 12, !7, i64 14, !7, i64 16, !7, i64 18, !7, i64 20, !7, i64 22, !10, i64 24, !10, i64 28}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!6, !7, i64 22}
!12 = !{!13, !7, i64 8948}
!13 = !{!"UserDef", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !14, i64 8468, !7, i64 8472, !7, i64 8474, !7, i64 8476, !7, i64 8478, !7, i64 8480, !7, i64 8482, !14, i64 8484, !14, i64 8488, !14, i64 8492, !7, i64 8496, !7, i64 8498, !14, i64 8500, !14, i64 8504, !14, i64 8508, !14, i64 8512, !14, i64 8516, !14, i64 8520, !14, i64 8524, !7, i64 8528, !7, i64 8530, !7, i64 8532, !7, i64 8534, !15, i64 8536, !15, i64 8552, !15, i64 8568, !15, i64 8584, !15, i64 8600, !15, i64 8616, !15, i64 8632, !8, i64 8648, !7, i64 8712, !7, i64 8714, !7, i64 8716, !7, i64 8718, !7, i64 8720, !7, i64 8722, !7, i64 8724, !7, i64 8726, !8, i64 8728, !7, i64 8896, !7, i64 8898, !7, i64 8900, !7, i64 8902, !7, i64 8904, !7, i64 8906, !7, i64 8908, !7, i64 8910, !14, i64 8912, !14, i64 8916, !7, i64 8920, !7, i64 8922, !7, i64 8924, !7, i64 8926, !7, i64 8928, !7, i64 8930, !7, i64 8932, !7, i64 8934, !7, i64 8936, !7, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !7, i64 8944, !7, i64 8946, !7, i64 8948, !7, i64 8950, !7, i64 8952, !7, i64 8954, !10, i64 8956, !10, i64 8960, !14, i64 8964, !7, i64 8968, !7, i64 8970, !10, i64 8972, !7, i64 8976, !7, i64 8978, !7, i64 8980, !7, i64 8982, !17, i64 8984, !8, i64 9760, !8, i64 9772, !7, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !14, i64 10896, !14, i64 10900, !10, i64 10904, !10, i64 10908, !14, i64 10912, !7, i64 10916, !7, i64 10918, !7, i64 10920, !7, i64 10922, !7, i64 10924, !7, i64 10926, !18, i64 10928}
!14 = !{!"int", !8, i64 0}
!15 = !{!"ListBase", !16, i64 0, !16, i64 8}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"ColorBand", !7, i64 0, !7, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!18 = !{!"WalkNavigation", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !8, i64 26}
!19 = !{!20, !14, i64 0}
!20 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!21 = !{!20, !14, i64 8}
!22 = !{!20, !14, i64 4}
!23 = !{!20, !14, i64 12}
!24 = !{!6, !7, i64 16}
!25 = !{!6, !10, i64 28}
!26 = !{!6, !10, i64 24}
!27 = !{!6, !7, i64 18}
!28 = !{!6, !7, i64 20}
!29 = !{!6, !7, i64 4}
!30 = !{!10, !10, i64 0}
!31 = !{!32, !7, i64 1040}
!32 = !{!"uiFont", !16, i64 0, !16, i64 8, !8, i64 16, !7, i64 1040, !7, i64 1042, !7, i64 1044, !7, i64 1046}
!33 = !{!6, !7, i64 2}
!34 = !{!13, !10, i64 10908}
!35 = !{!13, !14, i64 8524}
!36 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 64, !38, i64 80, i64 2, !39, i64 82, i64 2, !39, i64 84, i64 2, !39, i64 86, i64 6, !38, i64 92, i64 2, !39, i64 94, i64 2, !39, i64 96, i64 2, !39, i64 98, i64 2, !39, i64 100, i64 2, !39, i64 102, i64 2, !39, i64 104, i64 4, !30, i64 108, i64 4, !30, i64 112, i64 2, !39, i64 114, i64 2, !39, i64 116, i64 2, !39, i64 118, i64 6, !38, i64 124, i64 2, !39, i64 126, i64 2, !39, i64 128, i64 2, !39, i64 130, i64 2, !39, i64 132, i64 2, !39, i64 134, i64 2, !39, i64 136, i64 4, !30, i64 140, i64 4, !30, i64 144, i64 2, !39, i64 146, i64 2, !39, i64 148, i64 2, !39, i64 150, i64 6, !38, i64 156, i64 2, !39, i64 158, i64 2, !39, i64 160, i64 2, !39, i64 162, i64 2, !39, i64 164, i64 2, !39, i64 166, i64 2, !39, i64 168, i64 4, !30, i64 172, i64 4, !30, i64 176, i64 2, !39, i64 178, i64 2, !39, i64 180, i64 2, !39, i64 182, i64 6, !38, i64 188, i64 2, !39, i64 190, i64 2, !39, i64 192, i64 2, !39, i64 194, i64 2, !39, i64 196, i64 2, !39, i64 198, i64 2, !39, i64 200, i64 4, !30, i64 204, i64 4, !30, i64 208, i64 4, !30, i64 212, i64 2, !39, i64 214, i64 2, !39, i64 216, i64 2, !39, i64 218, i64 2, !39, i64 220, i64 2, !39, i64 222, i64 2, !39, i64 224, i64 2, !39, i64 226, i64 2, !39, i64 228, i64 2, !39, i64 230, i64 2, !39}
!37 = !{!16, !16, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !7, i64 228}
!41 = !{!"uiStyle", !16, i64 0, !16, i64 8, !8, i64 16, !6, i64 80, !6, i64 112, !6, i64 144, !6, i64 176, !10, i64 208, !7, i64 212, !7, i64 214, !7, i64 216, !7, i64 218, !7, i64 220, !7, i64 222, !7, i64 224, !7, i64 226, !7, i64 228, !7, i64 230}
!42 = !{!41, !7, i64 180}
!43 = !{!41, !7, i64 176}
!44 = !{!13, !16, i64 8568}
!45 = !{!14, !14, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!13, !16, i64 8552}
!49 = !{!32, !7, i64 1042}
!50 = !{!51, !14, i64 2100}
!51 = !{!"Global", !16, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !15, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !7, i64 2084, !7, i64 2086, !7, i64 2088, !8, i64 2090, !7, i64 2092, !14, i64 2096, !14, i64 2100, !8, i64 2104, !14, i64 2108, !14, i64 2112, !8, i64 2116}
!52 = distinct !{!52, !47}
!53 = !{!41, !10, i64 208}
!54 = !{!41, !7, i64 80}
!55 = !{!41, !7, i64 82}
!56 = !{!41, !7, i64 84}
!57 = !{!41, !7, i64 96}
!58 = !{!41, !7, i64 98}
!59 = !{!41, !7, i64 100}
!60 = !{!41, !7, i64 112}
!61 = !{!41, !7, i64 114}
!62 = !{!41, !7, i64 116}
!63 = !{!41, !7, i64 128}
!64 = !{!41, !7, i64 130}
!65 = !{!41, !7, i64 132}
!66 = !{!41, !10, i64 136}
!67 = !{!41, !7, i64 144}
!68 = !{!41, !7, i64 146}
!69 = !{!41, !7, i64 148}
!70 = !{!41, !7, i64 160}
!71 = !{!41, !7, i64 162}
!72 = !{!41, !7, i64 164}
!73 = !{!41, !7, i64 178}
!74 = !{!41, !10, i64 200}
!75 = !{!41, !7, i64 224}
!76 = !{!41, !7, i64 226}
!77 = distinct !{!77, !47}
