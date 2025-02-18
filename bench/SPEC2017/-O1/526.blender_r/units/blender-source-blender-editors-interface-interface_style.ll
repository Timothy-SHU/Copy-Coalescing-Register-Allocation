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
%struct.uiFont = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16 }
%struct.rcti = type { i32, i32, i32, i32 }

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

; Function Attrs: nounwind uwtable
define dso_local void @uiStyleFontDrawExt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load i16, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiFont, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !42
  %15 = icmp eq i16 %14, %7
  br i1 %15, label %18, label %8, !llvm.loop !44

16:                                               ; preds = %8
  %17 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !47
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %17, %16 ], [ %10, %12 ]
  %20 = getelementptr inbounds %struct.uiFont, ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !53
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !54
  %25 = sitofp i16 %24 to float
  %26 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %27 = fmul float %26, %25
  %28 = fptosi float %27 to i32
  %29 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %22, i32 noundef %28, i32 noundef %29) #9
  %30 = load i16, ptr %0, align 4, !tbaa !34
  %31 = sext i16 %30 to i32
  %32 = tail call float @BLF_ascender(i32 noundef %31) #9
  %33 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !57
  %35 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !59
  %37 = sub nsw i32 %34, %36
  %38 = sitofp i32 %37 to float
  %39 = fsub float %38, %32
  %40 = fmul float %39, 5.000000e-01
  %41 = tail call float @llvm.ceil.f32(float %40)
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  %44 = load i16, ptr %43, align 2, !tbaa !60
  switch i16 %44, label %73 [
    i16 1, label %45
    i16 2, label %59
  ]

45:                                               ; preds = %18
  %46 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !61
  %48 = load i32, ptr %1, align 4, !tbaa !62
  %49 = sub nsw i32 %47, %48
  %50 = sitofp i32 %49 to float
  %51 = load i16, ptr %0, align 4, !tbaa !34
  %52 = sext i16 %51 to i32
  %53 = tail call float @BLF_width(i32 noundef %52, ptr noundef %2, i64 noundef %3) #9
  %54 = fsub float %50, %53
  %55 = fmul float %54, 5.000000e-01
  %56 = tail call float @llvm.floor.f32(float %55)
  %57 = fptosi float %56 to i32
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 2)
  br label %73

59:                                               ; preds = %18
  %60 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !61
  %62 = load i32, ptr %1, align 4, !tbaa !62
  %63 = sub nsw i32 %61, %62
  %64 = sitofp i32 %63 to float
  %65 = load i16, ptr %0, align 4, !tbaa !34
  %66 = sext i16 %65 to i32
  %67 = tail call float @BLF_width(i32 noundef %66, ptr noundef %2, i64 noundef %3) #9
  %68 = fsub float %64, %67
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %70 = sitofp i16 %69 to float
  %71 = tail call float @llvm.fmuladd.f32(float %70, float 0xBFB99999A0000000, float %68)
  %72 = fptosi float %71 to i32
  br label %73

73:                                               ; preds = %18, %59, %45
  %74 = phi i32 [ %58, %45 ], [ %72, %59 ], [ 0, %18 ]
  %75 = load i16, ptr %0, align 4, !tbaa !34
  %76 = sext i16 %75 to i32
  %77 = load i32, ptr %1, align 4, !tbaa !62
  %78 = add nsw i32 %77, -2
  %79 = sitofp i32 %78 to float
  %80 = load i32, ptr %35, align 4, !tbaa !59
  %81 = add nsw i32 %80, -4
  %82 = sitofp i32 %81 to float
  %83 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !61
  %85 = add nsw i32 %84, 1
  %86 = sitofp i32 %85 to float
  %87 = load i32, ptr %33, align 4, !tbaa !57
  %88 = add nsw i32 %87, 4
  %89 = sitofp i32 %88 to float
  tail call void @BLF_clipping(i32 noundef %76, float noundef %79, float noundef %82, float noundef %86, float noundef %89) #9
  %90 = load i16, ptr %0, align 4, !tbaa !34
  %91 = sext i16 %90 to i32
  tail call void @BLF_enable(i32 noundef %91, i32 noundef 2) #9
  %92 = load i16, ptr %0, align 4, !tbaa !34
  %93 = sext i16 %92 to i32
  %94 = load i32, ptr %1, align 4, !tbaa !62
  %95 = add nsw i32 %94, %74
  %96 = sitofp i32 %95 to float
  %97 = load i32, ptr %35, align 4, !tbaa !59
  %98 = add nsw i32 %97, %42
  %99 = sitofp i32 %98 to float
  tail call void @BLF_position(i32 noundef %93, float noundef %96, float noundef %99, float noundef 0.000000e+00) #9
  %100 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 6
  %101 = load i16, ptr %100, align 4, !tbaa !64
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %73
  %104 = load i16, ptr %0, align 4, !tbaa !34
  %105 = sext i16 %104 to i32
  tail call void @BLF_enable(i32 noundef %105, i32 noundef 4) #9
  %106 = load i16, ptr %0, align 4, !tbaa !34
  %107 = sext i16 %106 to i32
  %108 = load i16, ptr %100, align 4, !tbaa !64
  %109 = sext i16 %108 to i32
  %110 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 11
  %111 = load float, ptr %110, align 4, !tbaa !65
  %112 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 10
  %113 = load float, ptr %112, align 4, !tbaa !66
  tail call void @BLF_shadow(i32 noundef %107, i32 noundef %109, float noundef %111, float noundef %111, float noundef %111, float noundef %113) #9
  %114 = load i16, ptr %0, align 4, !tbaa !34
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 7
  %117 = load i16, ptr %116, align 2, !tbaa !67
  %118 = sext i16 %117 to i32
  %119 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 8
  %120 = load i16, ptr %119, align 4, !tbaa !68
  %121 = sext i16 %120 to i32
  tail call void @BLF_shadow_offset(i32 noundef %115, i32 noundef %118, i32 noundef %121) #9
  br label %122

122:                                              ; preds = %103, %73
  %123 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %124 = load i16, ptr %123, align 4, !tbaa !69
  %125 = icmp eq i16 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i16, ptr %0, align 4, !tbaa !34
  %128 = sext i16 %127 to i32
  tail call void @BLF_enable(i32 noundef %128, i32 noundef 8) #9
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i16, ptr %0, align 4, !tbaa !34
  %131 = sext i16 %130 to i32
  tail call void @BLF_draw(i32 noundef %131, ptr noundef %2, i64 noundef %3) #9
  %132 = load i16, ptr %0, align 4, !tbaa !34
  %133 = sext i16 %132 to i32
  tail call void @BLF_disable(i32 noundef %133, i32 noundef 2) #9
  %134 = load i16, ptr %100, align 4, !tbaa !64
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load i16, ptr %0, align 4, !tbaa !34
  %138 = sext i16 %137 to i32
  tail call void @BLF_disable(i32 noundef %138, i32 noundef 4) #9
  br label %139

139:                                              ; preds = %136, %129
  %140 = load i16, ptr %123, align 4, !tbaa !69
  %141 = icmp eq i16 %140, 1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i16, ptr %0, align 4, !tbaa !34
  %144 = sext i16 %143 to i32
  tail call void @BLF_disable(i32 noundef %144, i32 noundef 8) #9
  br label %145

145:                                              ; preds = %142, %139
  %146 = sitofp i32 %74 to float
  store float %146, ptr %4, align 4, !tbaa !70
  %147 = sitofp i32 %42 to float
  store float %147, ptr %5, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uiStyleFontSet(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 4, !tbaa !34
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uiFont, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = icmp eq i16 %9, %2
  br i1 %10, label %13, label %3, !llvm.loop !44

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !47
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ %5, %7 ]
  %15 = getelementptr inbounds %struct.uiFont, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !53
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !54
  %20 = sitofp i16 %19 to float
  %21 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %22 = fmul float %21, %20
  %23 = fptosi float %22 to i32
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %17, i32 noundef %23, i32 noundef %24) #9
  ret void
}

declare float @BLF_ascender(i32 noundef) local_unnamed_addr #2

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @BLF_clipping(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_shadow(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_shadow_offset(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uiStyleFontDraw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @uiStyleFontDrawExt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiStyleFontDrawRotated(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %0, align 4, !tbaa !34
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiFont, ptr %7, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !42
  %12 = icmp eq i16 %11, %4
  br i1 %12, label %15, label %5, !llvm.loop !44

13:                                               ; preds = %5
  %14 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !47
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ %7, %9 ]
  %17 = getelementptr inbounds %struct.uiFont, ptr %16, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !53
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !54
  %22 = sitofp i16 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %24 = fmul float %23, %22
  %25 = fptosi float %24 to i32
  %26 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %19, i32 noundef %25, i32 noundef %26) #9
  %27 = load i16, ptr %0, align 4, !tbaa !34
  %28 = sext i16 %27 to i32
  %29 = tail call float @BLF_ascender(i32 noundef %28) #9
  %30 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !57
  %32 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = sub nsw i32 %31, %33
  %35 = sitofp i32 %34 to float
  %36 = fsub float %35, %29
  %37 = fmul float %36, 5.000000e-01
  %38 = tail call float @llvm.ceil.f32(float %37)
  %39 = fptosi float %38 to i32
  %40 = sitofp i32 %39 to float
  %41 = fadd float %29, %40
  %42 = fptosi float %41 to i32
  %43 = load i16, ptr %0, align 4, !tbaa !34
  %44 = sext i16 %43 to i32
  %45 = tail call float @BLF_width(i32 noundef %44, ptr noundef %2, i64 noundef 1024) #9
  %46 = fadd float %45, 5.000000e+00
  %47 = fptosi float %46 to i32
  %48 = load i32, ptr %1, align 4, !tbaa !62
  %49 = load i32, ptr %30, align 4, !tbaa !57
  %50 = load i32, ptr %32, align 4, !tbaa !59
  %51 = sub i32 %50, %49
  %52 = add i32 %51, %48
  %53 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !61
  %55 = load i16, ptr %0, align 4, !tbaa !34
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %52, -1
  %58 = sitofp i32 %57 to float
  %59 = add i32 %48, -4
  %60 = add i32 %59, %50
  %61 = add i32 %54, %47
  %62 = add i32 %61, %42
  %63 = sub i32 %60, %62
  %64 = sitofp i32 %63 to float
  %65 = add nsw i32 %54, 1
  %66 = sitofp i32 %65 to float
  %67 = add nsw i32 %49, 4
  %68 = sitofp i32 %67 to float
  tail call void @BLF_clipping(i32 noundef %56, float noundef %58, float noundef %64, float noundef %66, float noundef %68) #9
  %69 = load i16, ptr %0, align 4, !tbaa !34
  %70 = sext i16 %69 to i32
  tail call void @BLF_enable(i32 noundef %70, i32 noundef 2) #9
  %71 = load i16, ptr %0, align 4, !tbaa !34
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %52, %42
  %74 = sitofp i32 %73 to float
  %75 = sub nsw i32 %50, %47
  %76 = sitofp i32 %75 to float
  tail call void @BLF_position(i32 noundef %72, float noundef %74, float noundef %76, float noundef 0.000000e+00) #9
  %77 = load i16, ptr %0, align 4, !tbaa !34
  %78 = sext i16 %77 to i32
  tail call void @BLF_enable(i32 noundef %78, i32 noundef 1) #9
  %79 = load i16, ptr %0, align 4, !tbaa !34
  %80 = sext i16 %79 to i32
  tail call void @BLF_rotation(i32 noundef %80, float noundef 0x3FF921FB60000000) #9
  %81 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 6
  %82 = load i16, ptr %81, align 4, !tbaa !64
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %15
  %85 = load i16, ptr %0, align 4, !tbaa !34
  %86 = sext i16 %85 to i32
  tail call void @BLF_enable(i32 noundef %86, i32 noundef 4) #9
  %87 = load i16, ptr %0, align 4, !tbaa !34
  %88 = sext i16 %87 to i32
  %89 = load i16, ptr %81, align 4, !tbaa !64
  %90 = sext i16 %89 to i32
  %91 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 11
  %92 = load float, ptr %91, align 4, !tbaa !65
  %93 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 10
  %94 = load float, ptr %93, align 4, !tbaa !66
  tail call void @BLF_shadow(i32 noundef %88, i32 noundef %90, float noundef %92, float noundef %92, float noundef %92, float noundef %94) #9
  %95 = load i16, ptr %0, align 4, !tbaa !34
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 7
  %98 = load i16, ptr %97, align 2, !tbaa !67
  %99 = sext i16 %98 to i32
  %100 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 8
  %101 = load i16, ptr %100, align 4, !tbaa !68
  %102 = sext i16 %101 to i32
  tail call void @BLF_shadow_offset(i32 noundef %96, i32 noundef %99, i32 noundef %102) #9
  br label %103

103:                                              ; preds = %84, %15
  %104 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %105 = load i16, ptr %104, align 4, !tbaa !69
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i16, ptr %0, align 4, !tbaa !34
  %109 = sext i16 %108 to i32
  tail call void @BLF_enable(i32 noundef %109, i32 noundef 8) #9
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i16, ptr %0, align 4, !tbaa !34
  %112 = sext i16 %111 to i32
  tail call void @BLF_draw(i32 noundef %112, ptr noundef %2, i64 noundef 1024) #9
  %113 = load i16, ptr %0, align 4, !tbaa !34
  %114 = sext i16 %113 to i32
  tail call void @BLF_disable(i32 noundef %114, i32 noundef 1) #9
  %115 = load i16, ptr %0, align 4, !tbaa !34
  %116 = sext i16 %115 to i32
  tail call void @BLF_disable(i32 noundef %116, i32 noundef 2) #9
  %117 = load i16, ptr %81, align 4, !tbaa !64
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %110
  %120 = load i16, ptr %0, align 4, !tbaa !34
  %121 = sext i16 %120 to i32
  tail call void @BLF_disable(i32 noundef %121, i32 noundef 4) #9
  br label %122

122:                                              ; preds = %119, %110
  %123 = load i16, ptr %104, align 4, !tbaa !69
  %124 = icmp eq i16 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i16, ptr %0, align 4, !tbaa !34
  %127 = sext i16 %126 to i32
  tail call void @BLF_disable(i32 noundef %127, i32 noundef 8) #9
  br label %128

128:                                              ; preds = %125, %122
  ret void
}

declare void @BLF_rotation(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @UI_GetStyle() local_unnamed_addr #4 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @UI_GetStyleDraw() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @UI_GetStyleDraw._style, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !tbaa.struct !71
  %2 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  %4 = sitofp i32 %3 to float
  %5 = fmul float %2, %4
  %6 = fdiv float %5, 7.200000e+01
  %7 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 3, i32 7), align 2, !tbaa !74
  %8 = sitofp i16 %7 to float
  %9 = fmul float %6, %8
  %10 = fptosi float %9 to i16
  store i16 %10, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 3, i32 7), align 2, !tbaa !74
  %11 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 3, i32 8), align 4, !tbaa !76
  %12 = sitofp i16 %11 to float
  %13 = fmul float %6, %12
  %14 = fptosi float %13 to i16
  store i16 %14, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 3, i32 8), align 4, !tbaa !76
  %15 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 4, i32 7), align 2, !tbaa !77
  %16 = sitofp i16 %15 to float
  %17 = fmul float %6, %16
  %18 = fptosi float %17 to i16
  store i16 %18, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 4, i32 7), align 2, !tbaa !77
  %19 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 4, i32 8), align 4, !tbaa !78
  %20 = sitofp i16 %19 to float
  %21 = fmul float %6, %20
  %22 = fptosi float %21 to i16
  store i16 %22, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 4, i32 8), align 4, !tbaa !78
  %23 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 5, i32 7), align 2, !tbaa !79
  %24 = sitofp i16 %23 to float
  %25 = fmul float %6, %24
  %26 = fptosi float %25 to i16
  store i16 %26, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 5, i32 7), align 2, !tbaa !79
  %27 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 5, i32 8), align 4, !tbaa !80
  %28 = sitofp i16 %27 to float
  %29 = fmul float %6, %28
  %30 = fptosi float %29 to i16
  store i16 %30, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 5, i32 8), align 4, !tbaa !80
  %31 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 10), align 8, !tbaa !81
  %32 = sitofp i16 %31 to float
  %33 = fmul float %6, %32
  %34 = fptosi float %33 to i16
  store i16 %34, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 10), align 8, !tbaa !81
  %35 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 11), align 2, !tbaa !82
  %36 = sitofp i16 %35 to float
  %37 = fmul float %6, %36
  %38 = fptosi float %37 to i16
  store i16 %38, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 11), align 2, !tbaa !82
  %39 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 12), align 4, !tbaa !83
  %40 = sitofp i16 %39 to float
  %41 = fmul float %6, %40
  %42 = fptosi float %41 to i16
  store i16 %42, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 12), align 4, !tbaa !83
  %43 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 13), align 2, !tbaa !84
  %44 = sitofp i16 %43 to float
  %45 = fmul float %6, %44
  %46 = fptosi float %45 to i16
  store i16 %46, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 13), align 2, !tbaa !84
  %47 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 14), align 8, !tbaa !85
  %48 = sitofp i16 %47 to float
  %49 = fmul float %6, %48
  %50 = fptosi float %49 to i16
  store i16 %50, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 14), align 8, !tbaa !85
  %51 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 15), align 2, !tbaa !86
  %52 = sitofp i16 %51 to float
  %53 = fmul float %6, %52
  %54 = fptosi float %53 to i16
  store i16 %54, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 15), align 2, !tbaa !86
  %55 = load i16, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 16), align 4, !tbaa !87
  %56 = sitofp i16 %55 to float
  %57 = fmul float %6, %56
  %58 = fptosi float %57 to i16
  store i16 %58, ptr getelementptr inbounds (%struct.uiStyle, ptr @UI_GetStyleDraw._style, i64 0, i32 16), align 4, !tbaa !87
  ret ptr @UI_GetStyleDraw._style
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @UI_GetStringWidth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8
  %3 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  %4 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !69
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i16, ptr %3, align 4, !tbaa !34
  %9 = sext i16 %8 to i32
  tail call void @BLF_enable(i32 noundef %9, i32 noundef 8) #9
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i16, ptr %3, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uiFont, ptr %14, i64 0, i32 4
  %18 = load i16, ptr %17, align 2, !tbaa !42
  %19 = icmp eq i16 %18, %11
  br i1 %19, label %22, label %12, !llvm.loop !44

20:                                               ; preds = %12
  %21 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !47
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %21, %20 ], [ %14, %16 ]
  %24 = getelementptr inbounds %struct.uiFont, ptr %23, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !53
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !54
  %29 = sitofp i16 %28 to float
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %31 = fmul float %30, %29
  %32 = fptosi float %31 to i32
  %33 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %26, i32 noundef %32, i32 noundef %33) #9
  %34 = load i16, ptr %3, align 4, !tbaa !34
  %35 = sext i16 %34 to i32
  %36 = tail call float @BLF_width(i32 noundef %35, ptr noundef %0, i64 noundef 1024) #9
  %37 = load i16, ptr %4, align 4, !tbaa !69
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i16, ptr %3, align 4, !tbaa !34
  %41 = sext i16 %40 to i32
  tail call void @BLF_disable(i32 noundef %41, i32 noundef 8) #9
  br label %42

42:                                               ; preds = %39, %22
  %43 = fptosi float %36 to i32
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_DrawString(float noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8
  %5 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 6, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !88
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i16, ptr %5, align 8, !tbaa !89
  %11 = sext i16 %10 to i32
  tail call void @BLF_enable(i32 noundef %11, i32 noundef 8) #9
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i16, ptr %5, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiFont, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !42
  %21 = icmp eq i16 %20, %13
  br i1 %21, label %24, label %14, !llvm.loop !44

22:                                               ; preds = %14
  %23 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !47
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %23, %22 ], [ %16, %18 ]
  %26 = getelementptr inbounds %struct.uiFont, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !53
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 6, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !54
  %31 = sitofp i16 %30 to float
  %32 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %33 = fmul float %32, %31
  %34 = fptosi float %33 to i32
  %35 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %28, i32 noundef %34, i32 noundef %35) #9
  %36 = load i16, ptr %5, align 8, !tbaa !89
  %37 = sext i16 %36 to i32
  tail call void @BLF_position(i32 noundef %37, float noundef %0, float noundef %1, float noundef 0.000000e+00) #9
  %38 = load i16, ptr %5, align 8, !tbaa !89
  %39 = sext i16 %38 to i32
  tail call void @BLF_draw(i32 noundef %39, ptr noundef %2, i64 noundef 1024) #9
  %40 = load i16, ptr %6, align 4, !tbaa !88
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i16, ptr %5, align 8, !tbaa !89
  %44 = sext i16 %43 to i32
  tail call void @BLF_disable(i32 noundef %44, i32 noundef 8) #9
  br label %45

45:                                               ; preds = %42, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiStyleInit() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8, !tbaa !90
  %2 = load i32, ptr @datatoc_bmonofont_ttf_size, align 4, !tbaa !91
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 72, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  %8 = icmp slt i32 %7, 48
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = icmp sgt i32 %7, 144
  br i1 %10, label %11, label %13

11:                                               ; preds = %9, %6
  %12 = phi i32 [ 48, %6 ], [ 144, %9 ]
  store i32 %12, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  br label %13

13:                                               ; preds = %11, %9
  %14 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.uiFont, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !53
  %20 = sext i16 %19 to i32
  tail call void @BLF_unload_id(i32 noundef %20) #9
  %21 = load ptr, ptr %17, align 8, !tbaa !40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !llvm.loop !92

23:                                               ; preds = %16, %13
  %24 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %28 = tail call ptr %27(i64 noundef 1048, ptr noundef nonnull @.str) #9
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), ptr noundef %28) #9
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ %24, %23 ]
  %31 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 102), align 8, !tbaa !72
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.uiFont, ptr %30, i64 0, i32 2
  %34 = getelementptr inbounds %struct.uiFont, ptr %30, i64 0, i32 4
  %35 = select i1 %32, ptr @.str.1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 102)
  %36 = select i1 %32, i16 0, i16 2
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull %35, i64 noundef 1024) #9
  store i16 %36, ptr %34, align 2, !tbaa !42
  %38 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !40
  %39 = icmp eq ptr %38, null
  br i1 %39, label %93, label %40

40:                                               ; preds = %29, %90
  %41 = phi ptr [ %91, %90 ], [ %38, %29 ]
  %42 = getelementptr inbounds %struct.uiFont, ptr %41, i64 0, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !42
  %44 = icmp eq i16 %43, 0
  %45 = getelementptr inbounds %struct.uiFont, ptr %41, i64 0, i32 3
  br i1 %44, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, ptr @datatoc_bfont_ttf_size, align 4, !tbaa !91
  %48 = tail call i32 @BLF_load_mem(ptr noundef nonnull @.str.1, ptr noundef nonnull @datatoc_bfont_ttf, i32 noundef %47) #9
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %45, align 8, !tbaa !53
  br label %62

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.uiFont, ptr %41, i64 0, i32 2
  %52 = tail call i32 @BLF_load(ptr noundef nonnull %51) #9
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr %45, align 8, !tbaa !53
  %54 = shl i32 %52, 16
  %55 = icmp eq i32 %54, -65536
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, ptr @datatoc_bfont_ttf_size, align 4, !tbaa !91
  %58 = tail call i32 @BLF_load_mem(ptr noundef nonnull @.str.1, ptr noundef nonnull @datatoc_bfont_ttf, i32 noundef %57) #9
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr %45, align 8, !tbaa !53
  br label %62

60:                                               ; preds = %50
  %61 = ashr exact i32 %54, 16
  tail call void @BLF_default_set(i32 noundef %61) #9
  br label %62

62:                                               ; preds = %56, %60, %46
  %63 = getelementptr inbounds %struct.uiFont, ptr %41, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !53
  %65 = icmp eq i16 %64, -1
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.uiStyleInit)
  br label %90

72:                                               ; preds = %62
  %73 = sext i16 %64 to i32
  %74 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %75 = fmul float %74, 1.100000e+01
  %76 = fptosi float %75 to i32
  %77 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %73, i32 noundef %76, i32 noundef %77) #9
  %78 = load i16, ptr %63, align 8, !tbaa !53
  %79 = sext i16 %78 to i32
  %80 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %81 = fmul float %80, 1.200000e+01
  %82 = fptosi float %81 to i32
  %83 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %79, i32 noundef %82, i32 noundef %83) #9
  %84 = load i16, ptr %63, align 8, !tbaa !53
  %85 = sext i16 %84 to i32
  %86 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %87 = fmul float %86, 1.400000e+01
  %88 = fptosi float %87 to i32
  %89 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !56
  tail call void @BLF_size(i32 noundef %85, i32 noundef %88, i32 noundef %89) #9
  br label %90

90:                                               ; preds = %72, %70, %66
  %91 = load ptr, ptr %41, align 8, !tbaa !40
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %40, !llvm.loop !95

93:                                               ; preds = %90, %29
  %94 = icmp eq ptr %1, null
  br i1 %94, label %95, label %135

95:                                               ; preds = %93
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %97 = tail call ptr %96(i64 noundef 232, ptr noundef nonnull @.str.5) #9
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), ptr noundef %97) #9
  %98 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 2
  %99 = tail call ptr @BLI_strncpy(ptr noundef nonnull %98, ptr noundef nonnull @.str.3, i64 noundef 64) #9
  %100 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 7
  store float 1.000000e+00, ptr %100, align 8, !tbaa !96
  %101 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3
  store i16 0, ptr %101, align 8, !tbaa !97
  %102 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 1
  store i16 12, ptr %102, align 2, !tbaa !98
  %103 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 2
  store i16 1, ptr %103, align 4, !tbaa !99
  %104 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 6
  store i16 1, ptr %104, align 8, !tbaa !100
  %105 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 7
  store i16 0, ptr %105, align 2, !tbaa !74
  %106 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 8
  store i16 -1, ptr %106, align 4, !tbaa !76
  %107 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 10
  store float 0x3FC3333340000000, ptr %107, align 8, !tbaa !101
  %108 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 3, i32 11
  store float 1.000000e+00, ptr %108, align 4, !tbaa !102
  %109 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4
  store i16 0, ptr %109, align 8, !tbaa !103
  %110 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4, i32 1
  store i16 12, ptr %110, align 2, !tbaa !104
  %111 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4, i32 2
  store i16 1, ptr %111, align 4, !tbaa !105
  %112 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4, i32 6
  store i16 3, ptr %112, align 8, !tbaa !106
  %113 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4, i32 7
  store i16 0, ptr %113, align 2, !tbaa !77
  %114 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4, i32 8
  store i16 -1, ptr %114, align 4, !tbaa !78
  %115 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 4, i32 10
  store float 2.500000e-01, ptr %115, align 8, !tbaa !107
  %116 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5
  store i16 0, ptr %116, align 8, !tbaa !108
  %117 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 1
  store i16 11, ptr %117, align 2, !tbaa !109
  %118 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 2
  store i16 1, ptr %118, align 4, !tbaa !110
  %119 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 6
  store i16 3, ptr %119, align 8, !tbaa !111
  %120 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 7
  store i16 0, ptr %120, align 2, !tbaa !79
  %121 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 8
  store i16 -1, ptr %121, align 4, !tbaa !80
  %122 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 10
  store float 0x3FC3333340000000, ptr %122, align 8, !tbaa !112
  %123 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 5, i32 11
  store float 1.000000e+00, ptr %123, align 4, !tbaa !113
  %124 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 6
  store i16 0, ptr %124, align 8, !tbaa !89
  %125 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 6, i32 1
  store i16 11, ptr %125, align 2, !tbaa !114
  %126 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 6, i32 2
  store i16 1, ptr %126, align 4, !tbaa !88
  %127 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 6, i32 10
  store float 2.500000e-01, ptr %127, align 8, !tbaa !115
  %128 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 10
  store i16 8, ptr %128, align 8, !tbaa !81
  %129 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 11
  store i16 5, ptr %129, align 2, !tbaa !82
  %130 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 12
  store i16 5, ptr %130, align 4, !tbaa !83
  %131 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 13
  store i16 8, ptr %131, align 2, !tbaa !84
  %132 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 14
  store i16 2, ptr %132, align 8, !tbaa !85
  %133 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 15
  store i16 8, ptr %133, align 2, !tbaa !86
  %134 = getelementptr inbounds %struct.uiStyle, ptr %97, i64 0, i32 16
  store i16 4, ptr %134, align 4, !tbaa !87
  br label %135

135:                                              ; preds = %95, %93
  %136 = load i32, ptr @blf_mono_font, align 4, !tbaa !91
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = tail call i32 @BLF_load_mem_unique(ptr noundef nonnull @.str.4, ptr noundef nonnull @datatoc_bmonofont_ttf, i32 noundef %2) #9
  store i32 %139, ptr @blf_mono_font, align 4, !tbaa !91
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, ptr @blf_mono_font, align 4, !tbaa !91
  %142 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %143 = fmul float %142, 1.200000e+01
  %144 = fptosi float %143 to i32
  tail call void @BLF_size(i32 noundef %141, i32 noundef %144, i32 noundef 72) #9
  %145 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !91
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = tail call i32 @BLF_load_mem_unique(ptr noundef nonnull @.str.4, ptr noundef nonnull @datatoc_bmonofont_ttf, i32 noundef %2) #9
  store i32 %148, ptr @blf_mono_font_render, align 4, !tbaa !91
  br label %149

149:                                              ; preds = %147, %140
  %150 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !91
  %151 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !55
  %152 = fmul float %151, 1.200000e+01
  %153 = fptosi float %152 to i32
  tail call void @BLF_size(i32 noundef %150, i32 noundef %153, i32 noundef 72) #9
  ret void
}

declare void @BLF_unload_id(i32 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BLF_load_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLF_load(ptr noundef) local_unnamed_addr #2

declare void @BLF_default_set(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLF_load_mem_unique(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"uiFontStyle", !36, i64 0, !36, i64 2, !36, i64 4, !37, i64 6, !36, i64 12, !36, i64 14, !36, i64 16, !36, i64 18, !36, i64 20, !36, i64 22, !39, i64 24, !39, i64 28}
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!43, !36, i64 1042}
!43 = !{!"uiFont", !41, i64 0, !41, i64 8, !37, i64 16, !36, i64 1040, !36, i64 1042, !36, i64 1044, !36, i64 1046}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !41, i64 8552}
!48 = !{!"UserDef", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !49, i64 8468, !36, i64 8472, !36, i64 8474, !36, i64 8476, !36, i64 8478, !36, i64 8480, !36, i64 8482, !49, i64 8484, !49, i64 8488, !49, i64 8492, !36, i64 8496, !36, i64 8498, !49, i64 8500, !49, i64 8504, !49, i64 8508, !49, i64 8512, !49, i64 8516, !49, i64 8520, !49, i64 8524, !36, i64 8528, !36, i64 8530, !36, i64 8532, !36, i64 8534, !50, i64 8536, !50, i64 8552, !50, i64 8568, !50, i64 8584, !50, i64 8600, !50, i64 8616, !50, i64 8632, !37, i64 8648, !36, i64 8712, !36, i64 8714, !36, i64 8716, !36, i64 8718, !36, i64 8720, !36, i64 8722, !36, i64 8724, !36, i64 8726, !37, i64 8728, !36, i64 8896, !36, i64 8898, !36, i64 8900, !36, i64 8902, !36, i64 8904, !36, i64 8906, !36, i64 8908, !36, i64 8910, !49, i64 8912, !49, i64 8916, !36, i64 8920, !36, i64 8922, !36, i64 8924, !36, i64 8926, !36, i64 8928, !36, i64 8930, !36, i64 8932, !36, i64 8934, !36, i64 8936, !36, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !36, i64 8944, !36, i64 8946, !36, i64 8948, !36, i64 8950, !36, i64 8952, !36, i64 8954, !39, i64 8956, !39, i64 8960, !49, i64 8964, !36, i64 8968, !36, i64 8970, !39, i64 8972, !36, i64 8976, !36, i64 8978, !36, i64 8980, !36, i64 8982, !51, i64 8984, !37, i64 9760, !37, i64 9772, !36, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !49, i64 10896, !49, i64 10900, !39, i64 10904, !39, i64 10908, !49, i64 10912, !36, i64 10916, !36, i64 10918, !36, i64 10920, !36, i64 10922, !36, i64 10924, !36, i64 10926, !52, i64 10928}
!49 = !{!"int", !37, i64 0}
!50 = !{!"ListBase", !41, i64 0, !41, i64 8}
!51 = !{!"ColorBand", !36, i64 0, !36, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!52 = !{!"WalkNavigation", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !37, i64 26}
!53 = !{!43, !36, i64 1040}
!54 = !{!35, !36, i64 2}
!55 = !{!48, !39, i64 10908}
!56 = !{!48, !49, i64 8524}
!57 = !{!58, !49, i64 12}
!58 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!59 = !{!58, !49, i64 8}
!60 = !{!35, !36, i64 22}
!61 = !{!58, !49, i64 4}
!62 = !{!58, !49, i64 0}
!63 = !{!48, !36, i64 8948}
!64 = !{!35, !36, i64 16}
!65 = !{!35, !39, i64 28}
!66 = !{!35, !39, i64 24}
!67 = !{!35, !36, i64 18}
!68 = !{!35, !36, i64 20}
!69 = !{!35, !36, i64 4}
!70 = !{!39, !39, i64 0}
!71 = !{i64 0, i64 8, !40, i64 8, i64 8, !40, i64 16, i64 64, !72, i64 80, i64 2, !73, i64 82, i64 2, !73, i64 84, i64 2, !73, i64 86, i64 6, !72, i64 92, i64 2, !73, i64 94, i64 2, !73, i64 96, i64 2, !73, i64 98, i64 2, !73, i64 100, i64 2, !73, i64 102, i64 2, !73, i64 104, i64 4, !70, i64 108, i64 4, !70, i64 112, i64 2, !73, i64 114, i64 2, !73, i64 116, i64 2, !73, i64 118, i64 6, !72, i64 124, i64 2, !73, i64 126, i64 2, !73, i64 128, i64 2, !73, i64 130, i64 2, !73, i64 132, i64 2, !73, i64 134, i64 2, !73, i64 136, i64 4, !70, i64 140, i64 4, !70, i64 144, i64 2, !73, i64 146, i64 2, !73, i64 148, i64 2, !73, i64 150, i64 6, !72, i64 156, i64 2, !73, i64 158, i64 2, !73, i64 160, i64 2, !73, i64 162, i64 2, !73, i64 164, i64 2, !73, i64 166, i64 2, !73, i64 168, i64 4, !70, i64 172, i64 4, !70, i64 176, i64 2, !73, i64 178, i64 2, !73, i64 180, i64 2, !73, i64 182, i64 6, !72, i64 188, i64 2, !73, i64 190, i64 2, !73, i64 192, i64 2, !73, i64 194, i64 2, !73, i64 196, i64 2, !73, i64 198, i64 2, !73, i64 200, i64 4, !70, i64 204, i64 4, !70, i64 208, i64 4, !70, i64 212, i64 2, !73, i64 214, i64 2, !73, i64 216, i64 2, !73, i64 218, i64 2, !73, i64 220, i64 2, !73, i64 222, i64 2, !73, i64 224, i64 2, !73, i64 226, i64 2, !73, i64 228, i64 2, !73, i64 230, i64 2, !73}
!72 = !{!37, !37, i64 0}
!73 = !{!36, !36, i64 0}
!74 = !{!75, !36, i64 98}
!75 = !{!"uiStyle", !41, i64 0, !41, i64 8, !37, i64 16, !35, i64 80, !35, i64 112, !35, i64 144, !35, i64 176, !39, i64 208, !36, i64 212, !36, i64 214, !36, i64 216, !36, i64 218, !36, i64 220, !36, i64 222, !36, i64 224, !36, i64 226, !36, i64 228, !36, i64 230}
!76 = !{!75, !36, i64 100}
!77 = !{!75, !36, i64 130}
!78 = !{!75, !36, i64 132}
!79 = !{!75, !36, i64 162}
!80 = !{!75, !36, i64 164}
!81 = !{!75, !36, i64 216}
!82 = !{!75, !36, i64 218}
!83 = !{!75, !36, i64 220}
!84 = !{!75, !36, i64 222}
!85 = !{!75, !36, i64 224}
!86 = !{!75, !36, i64 226}
!87 = !{!75, !36, i64 228}
!88 = !{!75, !36, i64 180}
!89 = !{!75, !36, i64 176}
!90 = !{!48, !41, i64 8568}
!91 = !{!49, !49, i64 0}
!92 = distinct !{!92, !45, !46}
!93 = !{!94, !49, i64 2100}
!94 = !{!"Global", !41, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !50, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !36, i64 2084, !36, i64 2086, !36, i64 2088, !37, i64 2090, !36, i64 2092, !49, i64 2096, !49, i64 2100, !37, i64 2104, !49, i64 2108, !49, i64 2112, !37, i64 2116}
!95 = distinct !{!95, !45, !46}
!96 = !{!75, !39, i64 208}
!97 = !{!75, !36, i64 80}
!98 = !{!75, !36, i64 82}
!99 = !{!75, !36, i64 84}
!100 = !{!75, !36, i64 96}
!101 = !{!75, !39, i64 104}
!102 = !{!75, !39, i64 108}
!103 = !{!75, !36, i64 112}
!104 = !{!75, !36, i64 114}
!105 = !{!75, !36, i64 116}
!106 = !{!75, !36, i64 128}
!107 = !{!75, !39, i64 136}
!108 = !{!75, !36, i64 144}
!109 = !{!75, !36, i64 146}
!110 = !{!75, !36, i64 148}
!111 = !{!75, !36, i64 160}
!112 = !{!75, !39, i64 168}
!113 = !{!75, !39, i64 172}
!114 = !{!75, !36, i64 178}
!115 = !{!75, !39, i64 200}
