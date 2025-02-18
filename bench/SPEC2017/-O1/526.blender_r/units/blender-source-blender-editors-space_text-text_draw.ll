; ModuleID = 'blender/source/blender/editors/space_text/text_draw.c'
source_filename = "blender/source/blender/editors/space_text/text_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.DrawCache = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8, [66 x i8], i16, i32, i32 }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.SuggItem = type { ptr, ptr, ptr, i8 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@blf_mono_font = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.text_update_drawcache = private unnamed_addr constant [22 x i8] c"text_update_drawcache\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"text drawcache line_height\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"text draw cache\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @wrap_width(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !34
  %5 = sext i16 %4 to i32
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = icmp eq i32 %9, 0
  %11 = sitofp i16 %6 to float
  %12 = fmul float %11, 5.000000e-01
  %13 = fptosi float %12 to i32
  br i1 %10, label %23, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %16 = load i8, ptr %15, align 2, !tbaa !52
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %19 = load i8, ptr %18, align 1, !tbaa !53
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %17
  %22 = add nsw i32 %21, %13
  br label %23

23:                                               ; preds = %2, %14
  %24 = phi i32 [ %22, %14 ], [ %13, %2 ]
  %25 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %26 = load i8, ptr %25, align 2, !tbaa !52
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = zext i8 %26 to i32
  %30 = add i32 %24, %7
  %31 = sub i32 %5, %30
  %32 = sdiv i32 %31, %29
  br label %33

33:                                               ; preds = %23, %28
  %34 = phi i32 [ %32, %28 ], [ 0, %23 ]
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 8)
  ret i32 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @wrap_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #2 {
  store i32 0, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %186, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %186, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !61
  br label %19

19:                                               ; preds = %40, %14
  %20 = phi i32 [ %18, %14 ], [ %41, %40 ]
  %21 = phi ptr [ %16, %14 ], [ %43, %40 ]
  %22 = icmp sgt i32 %20, 0
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %27)
  %29 = icmp ne ptr %21, %2
  %30 = icmp sgt i32 %28, %20
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = sub nsw i32 %20, %28
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %21, align 8, !tbaa !64
  %37 = add nsw i32 %28, -1
  %38 = load i32, ptr %4, align 4, !tbaa !54
  %39 = add nsw i32 %37, %38
  store i32 %39, ptr %4, align 4, !tbaa !54
  br label %40

40:                                               ; preds = %32, %25, %35
  %41 = phi i32 [ %33, %35 ], [ %20, %25 ], [ %20, %32 ]
  %42 = phi i32 [ 0, %35 ], [ 1, %25 ], [ 3, %32 ]
  %43 = phi ptr [ %36, %35 ], [ %21, %25 ], [ %21, %32 ]
  switch i32 %42, label %186 [
    i32 0, label %19
    i32 3, label %44
  ], !llvm.loop !65

44:                                               ; preds = %40, %19
  %45 = phi ptr [ %43, %40 ], [ %21, %19 ]
  %46 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %47 = load i16, ptr %46, align 8, !tbaa !34
  %48 = sext i16 %47 to i32
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %50 = sext i16 %49 to i32
  %51 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = icmp eq i32 %52, 0
  %54 = sitofp i16 %49 to float
  %55 = fmul float %54, 5.000000e-01
  %56 = fptosi float %55 to i32
  br i1 %53, label %66, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %59 = load i8, ptr %58, align 2, !tbaa !52
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %62 = load i8, ptr %61, align 1, !tbaa !53
  %63 = zext i8 %62 to i32
  %64 = mul nuw nsw i32 %63, %60
  %65 = add nsw i32 %64, %56
  br label %66

66:                                               ; preds = %44, %57
  %67 = phi i32 [ %65, %57 ], [ %56, %44 ]
  %68 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %69 = load i8, ptr %68, align 2, !tbaa !52
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = zext i8 %69 to i32
  %73 = add i32 %67, %50
  %74 = sub i32 %48, %73
  %75 = sdiv i32 %74, %72
  br label %76

76:                                               ; preds = %66, %71
  %77 = phi i32 [ %75, %71 ], [ 0, %66 ]
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 8)
  %79 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %80, i32 noundef %3) #10
  %82 = icmp eq ptr %45, null
  br i1 %82, label %186, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %85

85:                                               ; preds = %83, %183
  %86 = phi i32 [ %81, %83 ], [ %181, %183 ]
  %87 = phi ptr [ %45, %83 ], [ %184, %183 ]
  store i32 0, ptr %5, align 4, !tbaa !54
  %88 = getelementptr inbounds %struct.TextLine, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = load i8, ptr %89, align 1, !tbaa !68
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %180, label %92

92:                                               ; preds = %85
  %93 = icmp eq ptr %87, %2
  %94 = icmp ne ptr %87, %2
  %95 = icmp ne ptr %87, %2
  br label %96

96:                                               ; preds = %92, %172
  %97 = phi ptr [ %89, %92 ], [ %177, %172 ]
  %98 = phi i64 [ 0, %92 ], [ %176, %172 ]
  %99 = phi i32 [ %86, %92 ], [ %122, %172 ]
  %100 = phi i32 [ 1, %92 ], [ %171, %172 ]
  %101 = phi i32 [ 0, %92 ], [ %168, %172 ]
  %102 = phi i32 [ %78, %92 ], [ %170, %172 ]
  %103 = phi i32 [ 0, %92 ], [ %167, %172 ]
  %104 = phi i32 [ 0, %92 ], [ %174, %172 ]
  %105 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %97) #10
  %106 = load ptr, ptr %88, align 8, !tbaa !62
  %107 = getelementptr inbounds i8, ptr %106, i64 %98
  %108 = load i8, ptr %107, align 1, !tbaa !68
  %109 = icmp eq i8 %108, 9
  br i1 %109, label %110, label %119

110:                                              ; preds = %96
  %111 = load i32, ptr %84, align 8, !tbaa !69
  %112 = srem i32 %101, %111
  %113 = sub nsw i32 %111, %112
  %114 = icmp slt i32 %101, %99
  %115 = select i1 %93, i1 %114, i1 false
  %116 = add nsw i32 %113, -1
  %117 = select i1 %115, i32 %116, i32 0
  %118 = add nsw i32 %117, %99
  br label %119

119:                                              ; preds = %96, %110
  %120 = phi i8 [ 32, %110 ], [ %108, %96 ]
  %121 = phi i32 [ %113, %110 ], [ 1, %96 ]
  %122 = phi i32 [ %118, %110 ], [ %99, %96 ]
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %166, label %124

124:                                              ; preds = %119, %161
  %125 = phi i1 [ %165, %161 ], [ %123, %119 ]
  %126 = phi i32 [ %131, %161 ], [ %121, %119 ]
  %127 = phi i32 [ %164, %161 ], [ %100, %119 ]
  %128 = phi i32 [ %132, %161 ], [ %101, %119 ]
  %129 = phi i32 [ %163, %161 ], [ %102, %119 ]
  %130 = phi i32 [ %162, %161 ], [ %103, %119 ]
  %131 = add nsw i32 %126, -1
  %132 = add nsw i32 %128, %105
  %133 = sub nsw i32 %132, %130
  %134 = icmp sgt i32 %133, %78
  br i1 %134, label %135, label %156

135:                                              ; preds = %124
  %136 = tail call i32 @llvm.smin.i32(i32 %129, i32 %128)
  %137 = icmp eq i32 %127, 0
  %138 = or i1 %95, %137
  %139 = icmp slt i32 %128, %122
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %149, label %141

141:                                              ; preds = %135
  %142 = icmp eq i32 %128, %122
  br i1 %142, label %143, label %166

143:                                              ; preds = %141
  %144 = load i32, ptr %4, align 4, !tbaa !54
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %4, align 4, !tbaa !54
  %146 = sub i32 %130, %136
  %147 = load i32, ptr %5, align 4, !tbaa !54
  %148 = add i32 %146, %147
  store i32 %148, ptr %5, align 4, !tbaa !54
  br label %166

149:                                              ; preds = %135
  %150 = load i32, ptr %4, align 4, !tbaa !54
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %4, align 4, !tbaa !54
  %152 = sub i32 %130, %136
  %153 = load i32, ptr %5, align 4, !tbaa !54
  %154 = add i32 %152, %153
  store i32 %154, ptr %5, align 4, !tbaa !54
  %155 = add nsw i32 %136, %78
  br label %161

156:                                              ; preds = %124
  switch i8 %120, label %161 [
    i8 45, label %157
    i8 32, label %157
  ]

157:                                              ; preds = %156, %156
  %158 = add nsw i32 %128, 1
  %159 = icmp slt i32 %128, %122
  %160 = select i1 %94, i1 true, i1 %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %156, %157, %149
  %162 = phi i32 [ %136, %149 ], [ %130, %157 ], [ %130, %156 ]
  %163 = phi i32 [ %155, %149 ], [ %158, %157 ], [ %129, %156 ]
  %164 = phi i32 [ 1, %149 ], [ 0, %157 ], [ %127, %156 ]
  %165 = icmp eq i32 %131, 0
  br i1 %165, label %166, label %124, !llvm.loop !70

166:                                              ; preds = %157, %161, %119, %141, %143
  %167 = phi i32 [ %130, %143 ], [ %130, %141 ], [ %103, %119 ], [ %162, %161 ], [ %130, %157 ]
  %168 = phi i32 [ %128, %143 ], [ %128, %141 ], [ %101, %119 ], [ %132, %161 ], [ %128, %157 ]
  %169 = phi i1 [ %125, %143 ], [ %125, %141 ], [ %123, %119 ], [ %165, %161 ], [ %125, %157 ]
  %170 = phi i32 [ %136, %143 ], [ %136, %141 ], [ %102, %119 ], [ %163, %161 ], [ %158, %157 ]
  %171 = phi i32 [ 1, %143 ], [ 1, %141 ], [ %100, %119 ], [ %164, %161 ], [ 0, %157 ]
  br i1 %169, label %172, label %186

172:                                              ; preds = %166
  %173 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %107) #10
  %174 = add nsw i32 %173, %104
  %175 = load ptr, ptr %88, align 8, !tbaa !62
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, ptr %175, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !68
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %96, !llvm.loop !71

180:                                              ; preds = %172, %85
  %181 = phi i32 [ %86, %85 ], [ %122, %172 ]
  %182 = icmp eq ptr %87, %2
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %87, align 8, !tbaa !64
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %85, !llvm.loop !72

186:                                              ; preds = %40, %180, %183, %166, %76, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @text_get_visible_lines(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = sext i16 %5 to i32
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 0
  %12 = sitofp i16 %7 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = fptosi float %13 to i32
  br i1 %11, label %24, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 2, !tbaa !52
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %20 = load i8, ptr %19, align 1, !tbaa !53
  %21 = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %21, %18
  %23 = add nsw i32 %22, %14
  br label %24

24:                                               ; preds = %3, %15
  %25 = phi i32 [ %23, %15 ], [ %14, %3 ]
  %26 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %27 = load i8, ptr %26, align 2, !tbaa !52
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = zext i8 %27 to i32
  %31 = add i32 %25, %8
  %32 = sub i32 %6, %31
  %33 = sdiv i32 %32, %30
  br label %34

34:                                               ; preds = %24, %29
  %35 = phi i32 [ %33, %29 ], [ 0, %24 ]
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 8)
  %37 = load i8, ptr %2, align 1, !tbaa !68
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %96, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %41

41:                                               ; preds = %39, %85
  %42 = phi ptr [ %2, %39 ], [ %93, %85 ]
  %43 = phi i32 [ 0, %39 ], [ %89, %85 ]
  %44 = phi i32 [ 1, %39 ], [ %88, %85 ]
  %45 = phi i32 [ 0, %39 ], [ %91, %85 ]
  %46 = phi i32 [ %36, %39 ], [ %87, %85 ]
  %47 = phi i32 [ 0, %39 ], [ %86, %85 ]
  %48 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %42) #10
  %49 = load i8, ptr %42, align 1, !tbaa !68
  %50 = icmp eq i8 %49, 9
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, ptr %40, align 8, !tbaa !69
  %53 = srem i32 %43, %52
  %54 = sub nsw i32 %52, %53
  br label %55

55:                                               ; preds = %41, %51
  %56 = phi i32 [ %54, %51 ], [ 1, %41 ]
  %57 = phi i8 [ 32, %51 ], [ %49, %41 ]
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %55
  %60 = mul i32 %48, %56
  br label %61

61:                                               ; preds = %59, %78
  %62 = phi i32 [ %67, %78 ], [ %56, %59 ]
  %63 = phi i32 [ %68, %78 ], [ %43, %59 ]
  %64 = phi i32 [ %81, %78 ], [ %44, %59 ]
  %65 = phi i32 [ %80, %78 ], [ %46, %59 ]
  %66 = phi i32 [ %79, %78 ], [ %47, %59 ]
  %67 = add nsw i32 %62, -1
  %68 = add nsw i32 %63, %48
  %69 = sub nsw i32 %68, %66
  %70 = icmp sgt i32 %69, %36
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = add nsw i32 %64, 1
  %73 = tail call i32 @llvm.smin.i32(i32 %65, i32 %63)
  %74 = add nsw i32 %65, %36
  br label %78

75:                                               ; preds = %61
  switch i8 %57, label %78 [
    i8 45, label %76
    i8 32, label %76
  ]

76:                                               ; preds = %75, %75
  %77 = add nsw i32 %63, 1
  br label %78

78:                                               ; preds = %75, %76, %71
  %79 = phi i32 [ %73, %71 ], [ %66, %76 ], [ %66, %75 ]
  %80 = phi i32 [ %74, %71 ], [ %77, %76 ], [ %65, %75 ]
  %81 = phi i32 [ %72, %71 ], [ %64, %76 ], [ %64, %75 ]
  %82 = icmp eq i32 %67, 0
  br i1 %82, label %83, label %61, !llvm.loop !73

83:                                               ; preds = %78
  %84 = add i32 %43, %60
  br label %85

85:                                               ; preds = %83, %55
  %86 = phi i32 [ %47, %55 ], [ %79, %83 ]
  %87 = phi i32 [ %46, %55 ], [ %80, %83 ]
  %88 = phi i32 [ %44, %55 ], [ %81, %83 ]
  %89 = phi i32 [ %43, %55 ], [ %84, %83 ]
  %90 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %42) #10
  %91 = add nsw i32 %90, %45
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %2, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !68
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %41, !llvm.loop !74

96:                                               ; preds = %85, %34
  %97 = phi i32 [ 1, %34 ], [ %88, %85 ]
  ret i32 %97
}

declare i32 @txt_utf8_offset_to_column(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @wrap_offset_in_line(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #2 {
  store i32 0, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %137, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %137, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !34
  %17 = sext i16 %16 to i32
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  %23 = sitofp i16 %18 to float
  %24 = fmul float %23, 5.000000e-01
  %25 = fptosi float %24 to i32
  br i1 %22, label %35, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %28 = load i8, ptr %27, align 2, !tbaa !52
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %31 = load i8, ptr %30, align 1, !tbaa !53
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %32, %29
  %34 = add nsw i32 %33, %25
  br label %35

35:                                               ; preds = %14, %26
  %36 = phi i32 [ %34, %26 ], [ %25, %14 ]
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %38 = load i8, ptr %37, align 2, !tbaa !52
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = zext i8 %38 to i32
  %42 = add i32 %36, %19
  %43 = sub i32 %17, %42
  %44 = sdiv i32 %43, %41
  br label %45

45:                                               ; preds = %35, %40
  %46 = phi i32 [ %44, %40 ], [ 0, %35 ]
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 8)
  store i32 0, ptr %5, align 4, !tbaa !54
  %48 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %49, i32 noundef %3) #10
  %51 = load ptr, ptr %48, align 8, !tbaa !62
  %52 = load i8, ptr %51, align 1, !tbaa !68
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %137, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %56

56:                                               ; preds = %54, %129
  %57 = phi ptr [ %51, %54 ], [ %134, %129 ]
  %58 = phi i64 [ 0, %54 ], [ %133, %129 ]
  %59 = phi i32 [ %50, %54 ], [ %81, %129 ]
  %60 = phi i32 [ 1, %54 ], [ %128, %129 ]
  %61 = phi i32 [ 0, %54 ], [ %125, %129 ]
  %62 = phi i32 [ %47, %54 ], [ %127, %129 ]
  %63 = phi i32 [ 0, %54 ], [ %124, %129 ]
  %64 = phi i32 [ 0, %54 ], [ %131, %129 ]
  %65 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %57) #10
  %66 = load ptr, ptr %48, align 8, !tbaa !62
  %67 = getelementptr inbounds i8, ptr %66, i64 %58
  %68 = load i8, ptr %67, align 1, !tbaa !68
  %69 = icmp eq i8 %68, 9
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load i32, ptr %55, align 8, !tbaa !69
  %72 = srem i32 %61, %71
  %73 = sub nsw i32 %71, %72
  %74 = icmp slt i32 %61, %59
  %75 = add nsw i32 %73, -1
  %76 = select i1 %74, i32 %75, i32 0
  %77 = add nsw i32 %76, %59
  br label %78

78:                                               ; preds = %56, %70
  %79 = phi i32 [ %73, %70 ], [ 1, %56 ]
  %80 = phi i8 [ 32, %70 ], [ %68, %56 ]
  %81 = phi i32 [ %77, %70 ], [ %59, %56 ]
  %82 = icmp eq i32 %79, 0
  br i1 %82, label %123, label %83

83:                                               ; preds = %78, %118
  %84 = phi i1 [ %122, %118 ], [ %82, %78 ]
  %85 = phi i32 [ %90, %118 ], [ %79, %78 ]
  %86 = phi i32 [ %121, %118 ], [ %60, %78 ]
  %87 = phi i32 [ %91, %118 ], [ %61, %78 ]
  %88 = phi i32 [ %120, %118 ], [ %62, %78 ]
  %89 = phi i32 [ %119, %118 ], [ %63, %78 ]
  %90 = add nsw i32 %85, -1
  %91 = add nsw i32 %87, %65
  %92 = sub nsw i32 %91, %89
  %93 = icmp sgt i32 %92, %47
  br i1 %93, label %94, label %114

94:                                               ; preds = %83
  %95 = tail call i32 @llvm.smin.i32(i32 %88, i32 %87)
  %96 = icmp eq i32 %86, 0
  %97 = icmp slt i32 %87, %81
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %94
  %100 = icmp eq i32 %87, %81
  br i1 %100, label %101, label %123

101:                                              ; preds = %99
  %102 = load i32, ptr %4, align 4, !tbaa !54
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %4, align 4, !tbaa !54
  %104 = sub i32 %89, %95
  %105 = load i32, ptr %5, align 4, !tbaa !54
  %106 = add i32 %104, %105
  store i32 %106, ptr %5, align 4, !tbaa !54
  br label %123

107:                                              ; preds = %94
  %108 = load i32, ptr %4, align 4, !tbaa !54
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %4, align 4, !tbaa !54
  %110 = sub i32 %89, %95
  %111 = load i32, ptr %5, align 4, !tbaa !54
  %112 = add i32 %110, %111
  store i32 %112, ptr %5, align 4, !tbaa !54
  %113 = add nsw i32 %95, %47
  br label %118

114:                                              ; preds = %83
  switch i8 %80, label %118 [
    i8 45, label %115
    i8 32, label %115
  ]

115:                                              ; preds = %114, %114
  %116 = add nsw i32 %87, 1
  %117 = icmp slt i32 %87, %81
  br i1 %117, label %118, label %123

118:                                              ; preds = %114, %115, %107
  %119 = phi i32 [ %95, %107 ], [ %89, %115 ], [ %89, %114 ]
  %120 = phi i32 [ %113, %107 ], [ %116, %115 ], [ %88, %114 ]
  %121 = phi i32 [ 1, %107 ], [ 0, %115 ], [ %86, %114 ]
  %122 = icmp eq i32 %90, 0
  br i1 %122, label %123, label %83, !llvm.loop !75

123:                                              ; preds = %115, %118, %78, %99, %101
  %124 = phi i32 [ %89, %101 ], [ %89, %99 ], [ %63, %78 ], [ %119, %118 ], [ %89, %115 ]
  %125 = phi i32 [ %87, %101 ], [ %87, %99 ], [ %61, %78 ], [ %91, %118 ], [ %87, %115 ]
  %126 = phi i1 [ %84, %101 ], [ %84, %99 ], [ %82, %78 ], [ %122, %118 ], [ %84, %115 ]
  %127 = phi i32 [ %95, %101 ], [ %95, %99 ], [ %62, %78 ], [ %120, %118 ], [ %116, %115 ]
  %128 = phi i32 [ 1, %101 ], [ 1, %99 ], [ %60, %78 ], [ %121, %118 ], [ 0, %115 ]
  br i1 %126, label %129, label %137

129:                                              ; preds = %123
  %130 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %67) #10
  %131 = add nsw i32 %130, %64
  %132 = load ptr, ptr %48, align 8, !tbaa !62
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, ptr %132, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !68
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %56, !llvm.loop !76

137:                                              ; preds = %123, %129, %45, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @text_get_char_pos(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i32 [ 0, %5 ], [ %23, %19 ]
  %9 = phi i32 [ 0, %5 ], [ %21, %19 ]
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !68
  switch i8 %12, label %17 [
    i8 0, label %25
    i8 9, label %13
  ]

13:                                               ; preds = %7
  %14 = load i32, ptr %6, align 8, !tbaa !69
  %15 = srem i32 %9, %14
  %16 = sub nsw i32 %14, %15
  br label %19

17:                                               ; preds = %7
  %18 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %11) #10
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i32 [ %16, %13 ], [ %18, %17 ]
  %21 = add nsw i32 %20, %9
  %22 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %11) #10
  %23 = add nsw i32 %22, %8
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %7, label %25, !llvm.loop !77

25:                                               ; preds = %19, %7, %3
  %26 = phi i32 [ 0, %3 ], [ %21, %19 ], [ %9, %7 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @text_drawcache_tag_update(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !79
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 4
  %18 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = tail call i32 @BLI_findindex(ptr noundef nonnull %17, ptr noundef %19) #10
  %21 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = tail call i32 @BLI_findindex(ptr noundef nonnull %17, ptr noundef %22) #10
  %24 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 11
  %25 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 2
  %26 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 12
  %27 = tail call i32 @llvm.smin.i32(i32 %23, i32 %20)
  %28 = tail call i32 @llvm.smax.i32(i32 %23, i32 %20)
  store i32 %27, ptr %24, align 8, !tbaa !83
  %29 = load i32, ptr %25, align 4, !tbaa !84
  %30 = xor i32 %28, -1
  %31 = add i32 %29, %30
  store i32 %31, ptr %26, align 4, !tbaa !85
  %32 = icmp sgt i32 %27, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 11
  %35 = add nsw i32 %27, -1
  store i32 %35, ptr %34, align 8, !tbaa !83
  br label %36

36:                                               ; preds = %33, %16
  %37 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !85
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = add nsw i32 %38, -1
  store i32 %41, ptr %37, align 4, !tbaa !85
  br label %45

42:                                               ; preds = %14
  %43 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 11
  store i32 0, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 12
  store i32 0, ptr %44, align 4, !tbaa !85
  br label %45

45:                                               ; preds = %36, %40, %42
  store i16 1, ptr %11, align 2, !tbaa !79
  br label %46

46:                                               ; preds = %45, %8, %2, %4
  ret void
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @text_free_caches(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !87
  tail call void %9(ptr noundef nonnull %6) #10
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !87
  tail call void %11(ptr noundef nonnull %3) #10
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @text_get_span_wrap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  %10 = icmp eq ptr %2, %3
  %11 = or i1 %9, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %19, %12 ], [ %2, %8 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %16)
  %18 = add nsw i32 %17, %14
  %19 = load ptr, ptr %13, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  %21 = icmp eq ptr %19, %3
  %22 = or i1 %20, %21
  br i1 %22, label %25, label %12, !llvm.loop !88

23:                                               ; preds = %4
  %24 = tail call i32 @txt_get_span(ptr noundef %2, ptr noundef %3) #10
  br label %25

25:                                               ; preds = %12, %8, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %8 ], [ %18, %12 ]
  ret i32 %26
}

declare i32 @txt_get_span(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @text_get_total_lines(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call fastcc void @text_update_drawcache(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.DrawCache, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !89
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc void @text_update_drawcache(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !87
  %10 = tail call ptr %9(i64 noundef 112, ptr noundef nonnull @.str.2) #10
  %11 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 3
  store i32 -1, ptr %11, align 8, !tbaa !90
  %12 = load ptr, ptr %3, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.Text, ptr %12, i64 0, i32 4
  %14 = tail call i32 @BLI_countlist(ptr noundef nonnull %13) #10
  %15 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 2
  store i32 %14, ptr %15, align 4, !tbaa !84
  %16 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 9
  store i8 0, ptr %16, align 1, !tbaa !68
  store ptr %10, ptr %5, align 8, !tbaa !78
  br label %17

17:                                               ; preds = %8, %2
  %18 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %19 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %20 = load i16, ptr %19, align 2, !tbaa !91
  %21 = sext i16 %20 to i32
  tail call void @BLF_size(i32 noundef %18, i32 noundef %21, i32 noundef 72) #10
  %22 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %23 = tail call float @BLF_fixed_width(i32 noundef %22) #10
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %26 = tail call i8 @llvm.umax.i8(i8 %24, i8 1)
  store i8 %26, ptr %25, align 2, !tbaa !52
  %27 = load ptr, ptr %5, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !84
  %30 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !90
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %33 = load i16, ptr %32, align 8, !tbaa !34
  %34 = sext i16 %33 to i32
  %35 = icmp ne i32 %31, %34
  %36 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !92
  %38 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %39 = load i32, ptr %38, align 8, !tbaa !56
  %40 = icmp ne i32 %37, %39
  %41 = or i1 %35, %40
  %42 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !93
  %44 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = icmp ne i32 %43, %45
  %47 = or i1 %41, %46
  %48 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !94
  %50 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %51 = load i32, ptr %50, align 8, !tbaa !69
  %52 = icmp ne i32 %49, %51
  %53 = or i1 %47, %52
  %54 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 7
  %55 = load i16, ptr %54, align 8, !tbaa !95
  %56 = load i16, ptr %19, align 2, !tbaa !91
  %57 = icmp ne i16 %55, %56
  %58 = or i1 %53, %57
  %59 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 8
  %60 = load i8, ptr %59, align 2, !tbaa !96
  %61 = icmp ne i8 %60, %26
  %62 = or i1 %58, %61
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 9
  %65 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %66 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %65, i64 noundef 66) #11
  %67 = or i32 %66, %63
  %68 = icmp eq i32 %39, 0
  br i1 %68, label %145, label %69

69:                                               ; preds = %17
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load ptr, ptr %27, align 8, !tbaa !86
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %69
  %75 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 11
  store i32 0, ptr %75, align 8, !tbaa !83
  %76 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 12
  store i32 0, ptr %76, align 4, !tbaa !85
  %77 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 10
  store i16 1, ptr %77, align 2, !tbaa !79
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 10
  %80 = load i16, ptr %79, align 2, !tbaa !79
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %173, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %3, align 8, !tbaa !55
  %84 = getelementptr inbounds %struct.Text, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  %86 = load ptr, ptr %27, align 8, !tbaa !86
  %87 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 4
  %88 = tail call i32 @BLI_countlist(ptr noundef nonnull %87) #10
  %89 = shl i32 %88, 2
  %90 = icmp eq ptr %86, null
  %91 = sext i32 %89 to i64
  br i1 %90, label %95, label %92

92:                                               ; preds = %82
  %93 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !87
  %94 = tail call ptr %93(ptr noundef nonnull %86, i64 noundef %91, ptr noundef nonnull @__func__.text_update_drawcache) #10
  br label %98

95:                                               ; preds = %82
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !87
  %97 = tail call ptr %96(i64 noundef %91, ptr noundef nonnull @.str.1) #10
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi ptr [ %94, %92 ], [ %97, %95 ]
  %100 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 11
  store i32 0, ptr %100, align 8, !tbaa !83
  %101 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 12
  store i32 0, ptr %101, align 4, !tbaa !85
  %102 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 1
  store i32 0, ptr %102, align 8, !tbaa !89
  %103 = load i32, ptr %44, align 4, !tbaa !50
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %98
  %106 = sitofp i32 %88 to float
  %107 = fpext float %106 to double
  %108 = tail call double @log10(double noundef %107) #10
  %109 = tail call double @llvm.floor.f64(double %108)
  %110 = fptosi double %109 to i32
  %111 = trunc i32 %110 to i8
  %112 = add i8 %111, 1
  %113 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  store i8 %112, ptr %113, align 1, !tbaa !53
  br label %114

114:                                              ; preds = %105, %98
  %115 = icmp eq ptr %85, null
  br i1 %115, label %144, label %116

116:                                              ; preds = %114
  %117 = sext i32 %88 to i64
  br label %118

118:                                              ; preds = %116, %136
  %119 = phi i64 [ 0, %116 ], [ %140, %136 ]
  %120 = phi ptr [ %85, %116 ], [ %139, %136 ]
  %121 = load i32, ptr %100, align 8, !tbaa !83
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds i32, ptr %99, i64 %119
  %125 = load i32, ptr %124, align 4, !tbaa !54
  %126 = add nsw i32 %121, -1
  store i32 %126, ptr %100, align 8, !tbaa !83
  br label %136

127:                                              ; preds = %118
  %128 = icmp sgt i64 %119, %117
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = getelementptr inbounds i32, ptr %99, i64 %119
  %131 = load i32, ptr %130, align 4, !tbaa !54
  br label %136

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TextLine, ptr %120, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !62
  %135 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %134)
  br label %136

136:                                              ; preds = %129, %132, %123
  %137 = phi i32 [ %125, %123 ], [ %131, %129 ], [ %135, %132 ]
  %138 = getelementptr inbounds i32, ptr %99, i64 %119
  store i32 %137, ptr %138, align 4, !tbaa !54
  %139 = load ptr, ptr %120, align 8, !tbaa !64
  %140 = add nuw i64 %119, 1
  %141 = load i32, ptr %102, align 8, !tbaa !89
  %142 = add nsw i32 %141, %137
  store i32 %142, ptr %102, align 8, !tbaa !89
  %143 = icmp eq ptr %139, null
  br i1 %143, label %144, label %118, !llvm.loop !97

144:                                              ; preds = %136, %114
  store ptr %99, ptr %27, align 8, !tbaa !86
  br label %173

145:                                              ; preds = %17
  %146 = load ptr, ptr %27, align 8, !tbaa !86
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @MEM_freeN, align 8, !tbaa !87
  tail call void %149(ptr noundef nonnull %146) #10
  store ptr null, ptr %27, align 8, !tbaa !86
  br label %150

150:                                              ; preds = %148, %145
  %151 = icmp eq i32 %67, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 10
  %154 = load i16, ptr %153, align 2, !tbaa !79
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %152, %150
  %157 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 4
  %158 = tail call i32 @BLI_countlist(ptr noundef nonnull %157) #10
  %159 = load i32, ptr %44, align 4, !tbaa !50
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %156
  %162 = sitofp i32 %158 to float
  %163 = fpext float %162 to double
  %164 = tail call double @log10(double noundef %163) #10
  %165 = tail call double @llvm.floor.f64(double %164)
  %166 = fptosi double %165 to i32
  %167 = trunc i32 %166 to i8
  %168 = add i8 %167, 1
  %169 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  store i8 %168, ptr %169, align 1, !tbaa !53
  br label %170

170:                                              ; preds = %156, %161, %152
  %171 = phi i32 [ %158, %161 ], [ %158, %156 ], [ %29, %152 ]
  %172 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 1
  store i32 %171, ptr %172, align 8, !tbaa !89
  br label %173

173:                                              ; preds = %78, %144, %170
  %174 = phi i32 [ %88, %144 ], [ %29, %78 ], [ %171, %170 ]
  store i32 %174, ptr %28, align 4, !tbaa !84
  %175 = load i16, ptr %32, align 8, !tbaa !34
  %176 = sext i16 %175 to i32
  store i32 %176, ptr %30, align 8, !tbaa !90
  %177 = load i32, ptr %38, align 8, !tbaa !56
  store i32 %177, ptr %36, align 4, !tbaa !92
  %178 = load i16, ptr %19, align 2, !tbaa !91
  store i16 %178, ptr %54, align 8, !tbaa !95
  %179 = load i8, ptr %25, align 2, !tbaa !52
  store i8 %179, ptr %59, align 2, !tbaa !96
  %180 = load i32, ptr %44, align 4, !tbaa !50
  store i32 %180, ptr %42, align 8, !tbaa !93
  %181 = load i32, ptr %50, align 8, !tbaa !69
  store i32 %181, ptr %48, align 4, !tbaa !94
  %182 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %65, i64 noundef 66) #10
  %183 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 10
  store i16 0, ptr %183, align 2, !tbaa !79
  %184 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 11
  store i32 0, ptr %184, align 8, !tbaa !83
  %185 = getelementptr inbounds %struct.DrawCache, ptr %27, i64 0, i32 12
  store i32 0, ptr %185, align 4, !tbaa !85
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_text_main(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [121 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [41 x i8], align 16
  %11 = alloca %struct.uiWidgetColors, align 2
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.FlattenString, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.rcti, align 4
  %23 = alloca [12 x i8], align 1
  %24 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %1943, label %27

27:                                               ; preds = %2
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 11
  %31 = load i16, ptr %30, align 4, !tbaa !98
  %32 = sext i16 %31 to i32
  %33 = mul nsw i32 %32, %29
  %34 = sdiv i32 %33, 20
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  store i16 %35, ptr %36, align 2, !tbaa !91
  %37 = shl i32 %34, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %27
  %40 = ashr exact i32 %37, 16
  %41 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %42 = load i16, ptr %41, align 2, !tbaa !99
  %43 = sext i16 %42 to i32
  %44 = sitofp i32 %40 to float
  %45 = fmul float %44, 0x3FD3333340000000
  %46 = fptosi float %45 to i32
  %47 = add nsw i32 %40, %46
  %48 = sdiv i32 %43, %47
  br label %49

49:                                               ; preds = %27, %39
  %50 = phi i32 [ %48, %39 ], [ 0, %27 ]
  %51 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 8
  store i32 %50, ptr %51, align 4, !tbaa !100
  tail call fastcc void @text_update_drawcache(ptr noundef %0, ptr noundef %1)
  %52 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !81
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !57
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 4, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !101
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59, %55, %49
  tail call void @txt_clean_text(ptr noundef nonnull %25) #10
  br label %68

68:                                               ; preds = %67, %63
  %69 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %70 = load i16, ptr %69, align 2, !tbaa !99
  %71 = add i16 %70, -12
  tail call fastcc void @text_update_drawcache(ptr noundef %0, ptr noundef %1)
  %72 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %73 = load ptr, ptr %72, align 8, !tbaa !78
  %74 = getelementptr inbounds %struct.DrawCache, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !89
  %76 = load i32, ptr %51, align 4, !tbaa !100
  %77 = sdiv i32 %76, 2
  %78 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %79 = load i16, ptr %78, align 8, !tbaa !34
  %80 = sitofp i16 %79 to float
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %82 = sitofp i16 %81 to float
  %83 = tail call float @llvm.fmuladd.f32(float %82, float 0x3FEB333340000000, float 1.000000e+00)
  %84 = fsub float %80, %83
  %85 = fptosi float %84 to i32
  %86 = sext i16 %79 to i32
  %87 = load i16, ptr %69, align 2, !tbaa !99
  %88 = sext i16 %87 to i32
  %89 = tail call float @llvm.fmuladd.f32(float %82, float 0xBFEB333340000000, float %80)
  %90 = fptosi float %89 to i32
  store i32 %90, ptr %22, align 4, !tbaa !102
  %91 = add nsw i32 %86, -5
  %92 = getelementptr inbounds %struct.rcti, ptr %22, i64 0, i32 1
  store i32 %91, ptr %92, align 4, !tbaa !103
  %93 = getelementptr inbounds %struct.rcti, ptr %22, i64 0, i32 2
  store i32 4, ptr %93, align 4, !tbaa !104
  %94 = sext i16 %71 to i32
  %95 = add nsw i32 %94, 4
  %96 = getelementptr inbounds %struct.rcti, ptr %22, i64 0, i32 3
  store i32 %95, ptr %96, align 4, !tbaa !105
  %97 = shl i32 %77, 16
  %98 = ashr exact i32 %97, 16
  %99 = add nsw i32 %98, %75
  %100 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !61
  %102 = add nsw i32 %101, %76
  %103 = icmp slt i32 %99, %102
  %104 = sub nsw i32 %102, %75
  %105 = select i1 %103, i32 %104, i32 %77
  %106 = shl i32 %105, 16
  %107 = ashr exact i32 %106, 16
  %108 = add nsw i32 %107, %75
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %68
  %111 = mul nsw i32 %76, %94
  %112 = sdiv i32 %111, %108
  br label %113

113:                                              ; preds = %110, %68
  %114 = phi i32 [ %112, %110 ], [ 0, %68 ]
  %115 = trunc i32 %114 to i16
  %116 = icmp slt i16 %115, 20
  %117 = sub i16 20, %115
  %118 = shl i32 %114, 16
  %119 = select i1 %116, i16 %117, i16 0
  br i1 %109, label %120, label %125

120:                                              ; preds = %113
  %121 = sext i16 %119 to i32
  %122 = sub nsw i32 %94, %121
  %123 = mul nsw i32 %122, %101
  %124 = sdiv i32 %123, %108
  br label %125

125:                                              ; preds = %120, %113
  %126 = phi i32 [ %124, %120 ], [ 0, %113 ]
  %127 = trunc i32 %126 to i16
  %128 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %128, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !106
  %129 = shl i32 %126, 16
  %130 = ashr exact i32 %129, 16
  %131 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !107
  %133 = sub nsw i32 %132, %130
  store i32 %133, ptr %131, align 4, !tbaa !107
  %134 = ashr exact i32 %118, 16
  %135 = select i1 %116, i32 20, i32 %134
  %136 = sub nsw i32 %133, %135
  %137 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23, i32 2
  store i32 %136, ptr %137, align 8, !tbaa !108
  %138 = icmp slt i32 %136, 4
  br i1 %138, label %144, label %139

139:                                              ; preds = %125
  %140 = load i16, ptr %69, align 2, !tbaa !99
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %141, -8
  %143 = icmp sgt i32 %136, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139, %125
  %145 = phi i32 [ 4, %125 ], [ %142, %139 ]
  store i32 %145, ptr %137, align 8, !tbaa !108
  br label %146

146:                                              ; preds = %144, %139
  %147 = icmp slt i32 %133, 4
  br i1 %147, label %153, label %148

148:                                              ; preds = %146
  %149 = load i16, ptr %69, align 2, !tbaa !99
  %150 = sext i16 %149 to i32
  %151 = add nsw i32 %150, -8
  %152 = icmp sgt i32 %133, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148, %146
  %154 = phi i32 [ 4, %146 ], [ %151, %148 ]
  store i32 %154, ptr %131, align 4, !tbaa !107
  br label %155

155:                                              ; preds = %153, %148
  %156 = icmp sgt i16 %71, 0
  %157 = sitofp i32 %108 to float
  %158 = sitofp i16 %71 to float
  %159 = fdiv float %157, %158
  %160 = select i1 %156, float %159, float 0.000000e+00
  %161 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 21
  %162 = fcmp olt float %160, 0x3FB99999A0000000
  %163 = select i1 %162, float 0x3FB99999A0000000, float %160
  store float %163, ptr %161, align 4, !tbaa !109
  %164 = load ptr, ptr %24, align 8, !tbaa !55
  %165 = getelementptr inbounds %struct.Text, ptr %164, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !57
  %167 = getelementptr inbounds %struct.Text, ptr %164, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !82
  %169 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %170 = load i32, ptr %169, align 8, !tbaa !56
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %155
  %173 = icmp eq ptr %166, null
  %174 = icmp eq ptr %166, %168
  %175 = or i1 %173, %174
  br i1 %175, label %189, label %176

176:                                              ; preds = %172, %176
  %177 = phi ptr [ %183, %176 ], [ %166, %172 ]
  %178 = phi i32 [ %182, %176 ], [ 0, %172 ]
  %179 = getelementptr inbounds %struct.TextLine, ptr %177, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !62
  %181 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %180)
  %182 = add nsw i32 %181, %178
  %183 = load ptr, ptr %177, align 8, !tbaa !64
  %184 = icmp eq ptr %183, null
  %185 = icmp eq ptr %183, %168
  %186 = or i1 %184, %185
  br i1 %186, label %189, label %176, !llvm.loop !88

187:                                              ; preds = %155
  %188 = tail call i32 @txt_get_span(ptr noundef %166, ptr noundef %168) #10
  br label %189

189:                                              ; preds = %176, %172, %187
  %190 = phi i32 [ %188, %187 ], [ 0, %172 ], [ %182, %176 ]
  %191 = load ptr, ptr %24, align 8, !tbaa !55
  %192 = getelementptr inbounds %struct.Text, ptr %191, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !57
  %194 = getelementptr inbounds %struct.Text, ptr %191, i64 0, i32 6
  %195 = load ptr, ptr %194, align 8, !tbaa !81
  %196 = load i32, ptr %169, align 8, !tbaa !56
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %213, label %198

198:                                              ; preds = %189
  %199 = icmp eq ptr %193, null
  %200 = icmp eq ptr %193, %195
  %201 = or i1 %199, %200
  br i1 %201, label %215, label %202

202:                                              ; preds = %198, %202
  %203 = phi ptr [ %209, %202 ], [ %193, %198 ]
  %204 = phi i32 [ %208, %202 ], [ 0, %198 ]
  %205 = getelementptr inbounds %struct.TextLine, ptr %203, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !62
  %207 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %206)
  %208 = add nsw i32 %207, %204
  %209 = load ptr, ptr %203, align 8, !tbaa !64
  %210 = icmp eq ptr %209, null
  %211 = icmp eq ptr %209, %195
  %212 = or i1 %210, %211
  br i1 %212, label %215, label %202, !llvm.loop !88

213:                                              ; preds = %189
  %214 = tail call i32 @txt_get_span(ptr noundef %193, ptr noundef %195) #10
  br label %215

215:                                              ; preds = %202, %198, %213
  %216 = phi i32 [ %214, %213 ], [ 0, %198 ], [ %208, %202 ]
  %217 = tail call i32 @llvm.smin.i32(i32 %190, i32 %216)
  %218 = tail call i32 @llvm.smax.i32(i32 %190, i32 %216)
  br i1 %109, label %219, label %316

219:                                              ; preds = %215
  %220 = mul nsw i32 %217, %94
  %221 = sdiv i32 %220, %108
  %222 = trunc i32 %221 to i16
  %223 = mul nsw i32 %218, %94
  %224 = sdiv i32 %223, %108
  %225 = trunc i32 %224 to i16
  %226 = sext i16 %119 to i32
  %227 = icmp sgt i16 %119, 0
  br i1 %227, label %228, label %316

228:                                              ; preds = %219
  %229 = load i32, ptr %51, align 4, !tbaa !100
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %100, align 8, !tbaa !61
  %233 = icmp slt i32 %217, %232
  %234 = add nsw i32 %232, %229
  %235 = icmp sgt i32 %217, %234
  %236 = select i1 %233, i1 true, i1 %235
  br i1 %236, label %246, label %237

237:                                              ; preds = %231
  %238 = sub nsw i32 %94, %226
  %239 = mul nsw i32 %217, %238
  %240 = sdiv i32 %239, %108
  %241 = sub nsw i32 %217, %232
  %242 = mul nsw i32 %241, %226
  %243 = sdiv i32 %242, %229
  %244 = add nsw i32 %243, %240
  %245 = trunc i32 %244 to i16
  br label %267

246:                                              ; preds = %231, %228
  %247 = load i32, ptr %100, align 8, !tbaa !61
  %248 = add nsw i32 %247, %229
  %249 = icmp sgt i32 %217, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = shl i32 %221, 16
  %252 = ashr exact i32 %251, 16
  %253 = add nsw i32 %130, %135
  %254 = icmp slt i32 %252, %253
  %255 = icmp sgt i32 %252, %130
  %256 = and i1 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = trunc i32 %253 to i16
  br label %267

259:                                              ; preds = %250, %246
  %260 = icmp sgt i32 %218, %247
  %261 = icmp slt i32 %217, %247
  %262 = select i1 %260, i1 %261, i1 false
  %263 = shl i32 %221, 16
  %264 = icmp sgt i32 %263, %129
  %265 = select i1 %262, i1 %264, i1 false
  %266 = select i1 %265, i16 %127, i16 %222
  br label %267

267:                                              ; preds = %259, %257, %237
  %268 = phi i16 [ %245, %237 ], [ %258, %257 ], [ %266, %259 ]
  %269 = shl i32 %224, 16
  %270 = ashr exact i32 %269, 16
  %271 = sext i16 %268 to i32
  %272 = icmp sgt i32 %270, %271
  %273 = add i16 %268, 2
  %274 = select i1 %272, i16 %225, i16 %273
  br i1 %230, label %290, label %275

275:                                              ; preds = %267
  %276 = load i32, ptr %100, align 8, !tbaa !61
  %277 = icmp slt i32 %218, %276
  %278 = add nsw i32 %276, %229
  %279 = icmp sgt i32 %218, %278
  %280 = select i1 %277, i1 true, i1 %279
  br i1 %280, label %290, label %281

281:                                              ; preds = %275
  %282 = sub nsw i32 %94, %226
  %283 = mul nsw i32 %218, %282
  %284 = sdiv i32 %283, %108
  %285 = sub nsw i32 %218, %276
  %286 = mul nsw i32 %285, %226
  %287 = sdiv i32 %286, %229
  %288 = add nsw i32 %287, %284
  %289 = trunc i32 %288 to i16
  br label %311

290:                                              ; preds = %275, %267
  %291 = load i32, ptr %100, align 8, !tbaa !61
  %292 = icmp slt i32 %218, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %290
  %294 = sext i16 %274 to i32
  %295 = add nsw i32 %130, -2
  %296 = icmp sle i32 %295, %294
  %297 = add nsw i32 %130, %135
  %298 = icmp sgt i32 %297, %294
  %299 = select i1 %296, i1 %298, i1 false
  br i1 %299, label %311, label %300

300:                                              ; preds = %293, %290
  %301 = add nsw i32 %291, %229
  %302 = icmp sgt i32 %218, %301
  %303 = icmp slt i32 %217, %301
  %304 = select i1 %302, i1 %303, i1 false
  br i1 %304, label %305, label %311

305:                                              ; preds = %300
  %306 = sext i16 %274 to i32
  %307 = add nsw i32 %130, %135
  %308 = icmp sgt i32 %307, %306
  %309 = trunc i32 %307 to i16
  %310 = select i1 %308, i16 %309, i16 %274
  br label %311

311:                                              ; preds = %305, %300, %293, %281
  %312 = phi i16 [ %289, %281 ], [ %274, %300 ], [ %127, %293 ], [ %310, %305 ]
  %313 = icmp sgt i16 %312, %268
  %314 = add i16 %312, -2
  %315 = select i1 %313, i16 %268, i16 %314
  br label %316

316:                                              ; preds = %311, %219, %215
  %317 = phi i16 [ %225, %219 ], [ %312, %311 ], [ 0, %215 ]
  %318 = phi i16 [ %222, %219 ], [ %315, %311 ], [ 0, %215 ]
  %319 = sext i16 %317 to i32
  %320 = sext i16 %318 to i32
  %321 = sub nsw i32 %319, %320
  %322 = icmp slt i32 %321, 2
  %323 = add i16 %318, 2
  %324 = select i1 %322, i16 %323, i16 %317
  %325 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %325, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !106
  %326 = load i16, ptr %69, align 2, !tbaa !99
  %327 = sext i16 %326 to i32
  %328 = add nsw i32 %327, -8
  %329 = sub nsw i32 %328, %320
  %330 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 3
  store i32 %329, ptr %330, align 4, !tbaa !110
  %331 = sext i16 %324 to i32
  %332 = sub nsw i32 %328, %331
  %333 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 2
  store i32 %332, ptr %333, align 8, !tbaa !111
  %334 = icmp slt i32 %332, 4
  br i1 %334, label %337, label %335

335:                                              ; preds = %316
  %336 = icmp slt i16 %324, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %335, %316
  %338 = phi i32 [ 4, %316 ], [ %328, %335 ]
  store i32 %338, ptr %333, align 8, !tbaa !111
  br label %339

339:                                              ; preds = %337, %335
  %340 = icmp slt i32 %329, 4
  br i1 %340, label %343, label %341

341:                                              ; preds = %339
  %342 = icmp slt i16 %318, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %341, %339
  %344 = phi i32 [ 4, %339 ], [ %328, %341 ]
  store i32 %344, ptr %330, align 4, !tbaa !110
  br label %345

345:                                              ; preds = %343, %341
  %346 = tail call ptr @ED_text_format_get(ptr noundef nonnull %25) #10
  %347 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 4
  %348 = load ptr, ptr %347, align 8, !tbaa !57
  %349 = load i32, ptr %100, align 8, !tbaa !61
  %350 = icmp sgt i32 %349, 0
  %351 = icmp ne ptr %348, null
  %352 = select i1 %350, i1 %351, i1 false
  br i1 %352, label %353, label %405

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %355 = getelementptr inbounds %struct.TextFormatType, ptr %346, i64 0, i32 3
  br label %356

356:                                              ; preds = %353, %394
  %357 = phi i64 [ 0, %353 ], [ %399, %394 ]
  %358 = phi ptr [ %348, %353 ], [ %398, %394 ]
  %359 = phi i32 [ 0, %353 ], [ %397, %394 ]
  %360 = phi i32 [ 0, %353 ], [ %396, %394 ]
  %361 = phi i32 [ 0, %353 ], [ %395, %394 ]
  %362 = load i16, ptr %354, align 4, !tbaa !112
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %370, label %364

364:                                              ; preds = %356
  %365 = getelementptr inbounds %struct.TextLine, ptr %358, i64 0, i32 3
  %366 = load ptr, ptr %365, align 8, !tbaa !113
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = load ptr, ptr %355, align 8, !tbaa !114
  tail call void %369(ptr noundef %0, ptr noundef nonnull %358, i8 noundef zeroext 0) #10
  br label %370

370:                                              ; preds = %368, %364, %356
  %371 = load i32, ptr %169, align 8, !tbaa !56
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %391, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %72, align 8, !tbaa !78
  %375 = load ptr, ptr %374, align 8, !tbaa !86
  %376 = getelementptr inbounds i32, ptr %375, i64 %357
  %377 = load i32, ptr %376, align 4, !tbaa !54
  %378 = add nsw i32 %377, %360
  %379 = load i32, ptr %100, align 8, !tbaa !61
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %373
  %382 = sub nsw i32 %379, %360
  br label %386

383:                                              ; preds = %373
  %384 = load ptr, ptr %358, align 8, !tbaa !64
  %385 = add nsw i32 %361, 1
  br label %386

386:                                              ; preds = %383, %381
  %387 = phi i32 [ %361, %381 ], [ %385, %383 ]
  %388 = phi i32 [ %360, %381 ], [ %378, %383 ]
  %389 = phi i32 [ %382, %381 ], [ %359, %383 ]
  %390 = phi ptr [ %358, %381 ], [ %384, %383 ]
  br i1 %380, label %405, label %394

391:                                              ; preds = %370
  %392 = load ptr, ptr %358, align 8, !tbaa !64
  %393 = add nsw i32 %361, 1
  br label %394

394:                                              ; preds = %386, %391
  %395 = phi i32 [ %387, %386 ], [ %393, %391 ]
  %396 = phi i32 [ %388, %386 ], [ %360, %391 ]
  %397 = phi i32 [ %389, %386 ], [ %359, %391 ]
  %398 = phi ptr [ %390, %386 ], [ %392, %391 ]
  %399 = add nuw nsw i64 %357, 1
  %400 = trunc i64 %399 to i32
  %401 = load i32, ptr %100, align 8, !tbaa !61
  %402 = icmp sgt i32 %401, %400
  %403 = icmp ne ptr %398, null
  %404 = select i1 %402, i1 %403, i1 false
  br i1 %404, label %356, label %405, !llvm.loop !116

405:                                              ; preds = %394, %386, %345
  %406 = phi i32 [ 0, %345 ], [ %395, %394 ], [ %387, %386 ]
  %407 = phi i32 [ 0, %345 ], [ %397, %394 ], [ %389, %386 ]
  %408 = phi ptr [ %348, %345 ], [ %398, %394 ], [ %390, %386 ]
  %409 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %410 = load i16, ptr %36, align 2, !tbaa !91
  %411 = sext i16 %410 to i32
  tail call void @BLF_size(i32 noundef %409, i32 noundef %411, i32 noundef 72) #10
  %412 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %413 = tail call float @BLF_fixed_width(i32 noundef %412) #10
  %414 = fptoui float %413 to i8
  %415 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %416 = tail call i8 @llvm.umax.i8(i8 %414, i8 1)
  store i8 %416, ptr %415, align 2, !tbaa !52
  %417 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %418 = load i32, ptr %417, align 4, !tbaa !50
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %446, label %420

420:                                              ; preds = %405
  %421 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %422 = sitofp i16 %421 to float
  %423 = fmul float %422, 5.000000e-01
  %424 = fptosi float %423 to i32
  %425 = zext i8 %416 to i32
  %426 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %427 = load i8, ptr %426, align 1, !tbaa !53
  %428 = zext i8 %427 to i32
  %429 = mul nuw nsw i32 %428, %425
  %430 = add nsw i32 %429, %424
  tail call void @UI_ThemeColor(i32 noundef 24) #10
  %431 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %432 = sitofp i16 %431 to float
  %433 = fmul float %432, 5.000000e-01
  %434 = fptosi float %433 to i32
  %435 = add nsw i32 %434, -12
  %436 = add nsw i32 %434, -5
  %437 = load i8, ptr %415, align 2, !tbaa !52
  %438 = zext i8 %437 to i32
  %439 = load i8, ptr %426, align 1, !tbaa !53
  %440 = zext i8 %439 to i32
  %441 = mul nuw nsw i32 %440, %438
  %442 = add nsw i32 %436, %441
  %443 = load i16, ptr %69, align 2, !tbaa !99
  %444 = sext i16 %443 to i32
  %445 = add nsw i32 %444, -2
  tail call void @glRecti(i32 noundef %435, i32 noundef 0, i32 noundef %442, i32 noundef %445) #10
  br label %452

446:                                              ; preds = %405
  %447 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  store i8 0, ptr %447, align 1, !tbaa !53
  %448 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %449 = sitofp i16 %448 to float
  %450 = fmul float %449, 5.000000e-01
  %451 = fptosi float %450 to i32
  br label %452

452:                                              ; preds = %446, %420
  %453 = phi i32 [ %430, %420 ], [ %451, %446 ]
  %454 = load i16, ptr %69, align 2, !tbaa !99
  %455 = sext i16 %454 to i32
  %456 = load i16, ptr %36, align 2, !tbaa !91
  %457 = sext i16 %456 to i32
  %458 = sub nsw i32 %455, %457
  %459 = load i16, ptr %78, align 8, !tbaa !34
  %460 = sext i16 %459 to i32
  %461 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %462 = sext i16 %461 to i32
  %463 = load ptr, ptr %24, align 8, !tbaa !55
  %464 = sitofp i16 %456 to float
  %465 = fmul float %464, 0x3FD3333340000000
  %466 = fptosi float %465 to i32
  %467 = add nsw i32 %466, %457
  %468 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 5
  %469 = load ptr, ptr %468, align 8, !tbaa !82
  %470 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 6
  %471 = load ptr, ptr %470, align 8, !tbaa !81
  %472 = icmp eq ptr %469, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %452
  %474 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 7
  %475 = load i32, ptr %474, align 8, !tbaa !117
  %476 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 8
  %477 = load i32, ptr %476, align 4, !tbaa !118
  %478 = icmp eq i32 %475, %477
  br i1 %478, label %639, label %479

479:                                              ; preds = %473, %452
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  %480 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 7
  %481 = load i32, ptr %480, align 8, !tbaa !117
  call void @wrap_offset(ptr noundef %0, ptr noundef %1, ptr noundef %469, i32 noundef %481, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %482 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 4
  %483 = load ptr, ptr %482, align 8, !tbaa !57
  %484 = load ptr, ptr %468, align 8, !tbaa !82
  %485 = tail call i32 @txt_get_span(ptr noundef %483, ptr noundef %484) #10
  %486 = load i32, ptr %100, align 8, !tbaa !61
  %487 = sub i32 %485, %486
  %488 = load i32, ptr %16, align 4, !tbaa !54
  %489 = add i32 %487, %488
  %490 = load ptr, ptr %468, align 8, !tbaa !82
  %491 = getelementptr inbounds %struct.TextLine, ptr %490, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !62
  %493 = load i32, ptr %480, align 8, !tbaa !117
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %495, label %515

495:                                              ; preds = %479
  %496 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %497

497:                                              ; preds = %509, %495
  %498 = phi i32 [ 0, %495 ], [ %513, %509 ]
  %499 = phi i32 [ 0, %495 ], [ %511, %509 ]
  %500 = sext i32 %498 to i64
  %501 = getelementptr inbounds i8, ptr %492, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !68
  switch i8 %502, label %507 [
    i8 0, label %515
    i8 9, label %503
  ]

503:                                              ; preds = %497
  %504 = load i32, ptr %496, align 8, !tbaa !69
  %505 = srem i32 %499, %504
  %506 = sub nsw i32 %504, %505
  br label %509

507:                                              ; preds = %497
  %508 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %501) #10
  br label %509

509:                                              ; preds = %507, %503
  %510 = phi i32 [ %506, %503 ], [ %508, %507 ]
  %511 = add nsw i32 %510, %499
  %512 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %501) #10
  %513 = add nsw i32 %512, %498
  %514 = icmp slt i32 %513, %493
  br i1 %514, label %497, label %515, !llvm.loop !77

515:                                              ; preds = %497, %509, %479
  %516 = phi i32 [ 0, %479 ], [ %511, %509 ], [ %499, %497 ]
  %517 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %518 = load i32, ptr %517, align 8, !tbaa !119
  %519 = sub i32 %516, %518
  %520 = load i32, ptr %17, align 4, !tbaa !54
  %521 = add nsw i32 %519, %520
  %522 = load ptr, ptr %470, align 8, !tbaa !81
  %523 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 8
  %524 = load i32, ptr %523, align 4, !tbaa !118
  call void @wrap_offset(ptr noundef %0, ptr noundef %1, ptr noundef %522, i32 noundef %524, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %525 = load ptr, ptr %482, align 8, !tbaa !57
  %526 = load ptr, ptr %470, align 8, !tbaa !81
  %527 = tail call i32 @txt_get_span(ptr noundef %525, ptr noundef %526) #10
  %528 = load i32, ptr %100, align 8, !tbaa !61
  %529 = sub i32 %527, %528
  %530 = load i32, ptr %16, align 4, !tbaa !54
  %531 = add i32 %529, %530
  %532 = load ptr, ptr %470, align 8, !tbaa !81
  %533 = getelementptr inbounds %struct.TextLine, ptr %532, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8, !tbaa !62
  %535 = load i32, ptr %523, align 4, !tbaa !118
  %536 = icmp sgt i32 %535, 0
  br i1 %536, label %537, label %557

537:                                              ; preds = %515
  %538 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %539

539:                                              ; preds = %551, %537
  %540 = phi i32 [ 0, %537 ], [ %555, %551 ]
  %541 = phi i32 [ 0, %537 ], [ %553, %551 ]
  %542 = sext i32 %540 to i64
  %543 = getelementptr inbounds i8, ptr %534, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !68
  switch i8 %544, label %549 [
    i8 0, label %557
    i8 9, label %545
  ]

545:                                              ; preds = %539
  %546 = load i32, ptr %538, align 8, !tbaa !69
  %547 = srem i32 %541, %546
  %548 = sub nsw i32 %546, %547
  br label %551

549:                                              ; preds = %539
  %550 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %543) #10
  br label %551

551:                                              ; preds = %549, %545
  %552 = phi i32 [ %548, %545 ], [ %550, %549 ]
  %553 = add nsw i32 %552, %541
  %554 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %543) #10
  %555 = add nsw i32 %554, %540
  %556 = icmp slt i32 %555, %535
  br i1 %556, label %539, label %557, !llvm.loop !77

557:                                              ; preds = %539, %551, %515
  %558 = phi i32 [ 0, %515 ], [ %553, %551 ], [ %541, %539 ]
  %559 = load i32, ptr %517, align 8, !tbaa !119
  %560 = sub nsw i32 %558, %559
  %561 = load i32, ptr %17, align 4, !tbaa !54
  %562 = add nsw i32 %560, %561
  %563 = tail call i32 @llvm.smax.i32(i32 %521, i32 0)
  %564 = tail call i32 @llvm.smax.i32(i32 %562, i32 0)
  tail call void @UI_ThemeColor(i32 noundef 22) #10
  %565 = load i32, ptr %417, align 4, !tbaa !50
  %566 = icmp eq i32 %565, 0
  %567 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %568 = sitofp i16 %567 to float
  %569 = fmul float %568, 5.000000e-01
  %570 = fptosi float %569 to i32
  br i1 %566, label %579, label %571

571:                                              ; preds = %557
  %572 = load i8, ptr %415, align 2, !tbaa !52
  %573 = zext i8 %572 to i32
  %574 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %575 = load i8, ptr %574, align 1, !tbaa !53
  %576 = zext i8 %575 to i32
  %577 = mul nuw nsw i32 %576, %573
  %578 = add nsw i32 %577, %570
  br label %579

579:                                              ; preds = %557, %571
  %580 = phi i32 [ %578, %571 ], [ %570, %557 ]
  %581 = load i16, ptr %69, align 2, !tbaa !99
  %582 = sext i16 %581 to i32
  %583 = icmp eq i32 %489, %531
  br i1 %583, label %584, label %602

584:                                              ; preds = %579
  %585 = mul nsw i32 %489, %467
  %586 = sub nsw i32 %582, %585
  %587 = icmp sgt i32 %562, %563
  %588 = load i8, ptr %415, align 2, !tbaa !52
  %589 = zext i8 %588 to i32
  %590 = add i32 %580, -1
  %591 = sub nsw i32 %586, %467
  br i1 %587, label %592, label %597

592:                                              ; preds = %584
  %593 = mul nsw i32 %563, %589
  %594 = add i32 %590, %593
  %595 = mul nsw i32 %564, %589
  %596 = add nsw i32 %595, %580
  tail call void @glRecti(i32 noundef %594, i32 noundef %586, i32 noundef %596, i32 noundef %591) #10
  br label %638

597:                                              ; preds = %584
  %598 = mul nsw i32 %564, %589
  %599 = add i32 %590, %598
  %600 = mul nsw i32 %563, %589
  %601 = add nsw i32 %600, %580
  tail call void @glRecti(i32 noundef %599, i32 noundef %586, i32 noundef %601, i32 noundef %591) #10
  br label %638

602:                                              ; preds = %579
  %603 = icmp slt i32 %489, %531
  %604 = tail call i32 @llvm.smin.i32(i32 %489, i32 %531)
  %605 = select i1 %603, i32 %563, i32 %564
  %606 = tail call i32 @llvm.smax.i32(i32 %489, i32 %531)
  %607 = select i1 %603, i32 %564, i32 %563
  %608 = mul nsw i32 %604, %467
  %609 = sub nsw i32 %582, %608
  %610 = load i8, ptr %415, align 2, !tbaa !52
  %611 = zext i8 %610 to i32
  %612 = mul nsw i32 %605, %611
  %613 = add i32 %580, -1
  %614 = add i32 %613, %612
  %615 = load i16, ptr %78, align 8, !tbaa !34
  %616 = sext i16 %615 to i32
  %617 = sub nsw i32 %609, %467
  tail call void @glRecti(i32 noundef %614, i32 noundef %609, i32 noundef %616, i32 noundef %617) #10
  %618 = add nsw i32 %604, 1
  %619 = icmp slt i32 %618, %606
  br i1 %619, label %620, label %630

620:                                              ; preds = %602
  %621 = add nsw i32 %580, -4
  br label %622

622:                                              ; preds = %620, %622
  %623 = phi i32 [ %618, %620 ], [ %628, %622 ]
  %624 = phi i32 [ %617, %620 ], [ %627, %622 ]
  %625 = load i16, ptr %78, align 8, !tbaa !34
  %626 = sext i16 %625 to i32
  %627 = sub nsw i32 %624, %467
  tail call void @glRecti(i32 noundef %621, i32 noundef %624, i32 noundef %626, i32 noundef %627) #10
  %628 = add i32 %623, 1
  %629 = icmp eq i32 %628, %606
  br i1 %629, label %630, label %622, !llvm.loop !120

630:                                              ; preds = %622, %602
  %631 = phi i32 [ %617, %602 ], [ %627, %622 ]
  %632 = add nsw i32 %580, -4
  %633 = load i8, ptr %415, align 2, !tbaa !52
  %634 = zext i8 %633 to i32
  %635 = mul nsw i32 %607, %634
  %636 = add nsw i32 %635, %580
  %637 = sub nsw i32 %631, %467
  tail call void @glRecti(i32 noundef %632, i32 noundef %631, i32 noundef %636, i32 noundef %637) #10
  br label %638

638:                                              ; preds = %630, %597, %592
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  br label %681

639:                                              ; preds = %473
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #10
  call void @wrap_offset(ptr noundef %0, ptr noundef %1, ptr noundef %471, i32 noundef %477, ptr noundef nonnull %18, ptr noundef nonnull %19)
  %640 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 4
  %641 = load ptr, ptr %640, align 8, !tbaa !57
  %642 = load ptr, ptr %470, align 8, !tbaa !81
  %643 = tail call i32 @txt_get_span(ptr noundef %641, ptr noundef %642) #10
  %644 = load i32, ptr %100, align 8, !tbaa !61
  %645 = sub i32 %643, %644
  %646 = load i32, ptr %18, align 4, !tbaa !54
  %647 = add nsw i32 %645, %646
  %648 = load ptr, ptr %470, align 8, !tbaa !81
  %649 = getelementptr inbounds %struct.TextLine, ptr %648, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !62
  %651 = load i32, ptr %476, align 4, !tbaa !118
  %652 = icmp sgt i32 %651, 0
  br i1 %652, label %653, label %673

653:                                              ; preds = %639
  %654 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %655

655:                                              ; preds = %667, %653
  %656 = phi i32 [ 0, %653 ], [ %671, %667 ]
  %657 = phi i32 [ 0, %653 ], [ %669, %667 ]
  %658 = sext i32 %656 to i64
  %659 = getelementptr inbounds i8, ptr %650, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !68
  switch i8 %660, label %665 [
    i8 0, label %673
    i8 9, label %661
  ]

661:                                              ; preds = %655
  %662 = load i32, ptr %654, align 8, !tbaa !69
  %663 = srem i32 %657, %662
  %664 = sub nsw i32 %662, %663
  br label %667

665:                                              ; preds = %655
  %666 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %659) #10
  br label %667

667:                                              ; preds = %665, %661
  %668 = phi i32 [ %664, %661 ], [ %666, %665 ]
  %669 = add nsw i32 %668, %657
  %670 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %659) #10
  %671 = add nsw i32 %670, %656
  %672 = icmp slt i32 %671, %651
  br i1 %672, label %655, label %673, !llvm.loop !77

673:                                              ; preds = %655, %667, %639
  %674 = phi i32 [ 0, %639 ], [ %669, %667 ], [ %657, %655 ]
  %675 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %676 = load i32, ptr %675, align 8, !tbaa !119
  %677 = sub nsw i32 %674, %676
  %678 = load i32, ptr %19, align 4, !tbaa !54
  %679 = add nsw i32 %677, %678
  %680 = tail call i32 @llvm.smax.i32(i32 %679, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  br label %681

681:                                              ; preds = %673, %638
  %682 = phi i32 [ %562, %638 ], [ %679, %673 ]
  %683 = phi i32 [ %564, %638 ], [ %680, %673 ]
  %684 = phi i32 [ %531, %638 ], [ %647, %673 ]
  %685 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 18
  %686 = load i16, ptr %685, align 2, !tbaa !121
  %687 = icmp eq i16 %686, 0
  br i1 %687, label %724, label %688

688:                                              ; preds = %681
  %689 = load i32, ptr %169, align 8, !tbaa !56
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %707, label %691

691:                                              ; preds = %688
  %692 = load ptr, ptr %470, align 8, !tbaa !81
  %693 = getelementptr inbounds %struct.TextLine, ptr %692, i64 0, i32 2
  %694 = load ptr, ptr %693, align 8, !tbaa !62
  %695 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %694)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #10
  %696 = load ptr, ptr %470, align 8, !tbaa !81
  %697 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 8
  %698 = load i32, ptr %697, align 4, !tbaa !118
  call void @wrap_offset_in_line(ptr noundef %0, ptr noundef %1, ptr noundef %696, i32 noundef %698, ptr noundef nonnull %20, ptr noundef nonnull %21)
  %699 = load i16, ptr %69, align 2, !tbaa !99
  %700 = sext i16 %699 to i32
  %701 = load i32, ptr %20, align 4, !tbaa !54
  %702 = sub i32 %701, %684
  %703 = mul i32 %702, %467
  %704 = add i32 %703, %700
  %705 = mul nsw i32 %695, %467
  %706 = sub nsw i32 %704, %705
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #10
  br label %713

707:                                              ; preds = %688
  %708 = load i16, ptr %69, align 2, !tbaa !99
  %709 = sext i16 %708 to i32
  %710 = mul nsw i32 %684, %467
  %711 = sub nsw i32 %709, %710
  %712 = sub nsw i32 %711, %467
  br label %713

713:                                              ; preds = %707, %691
  %714 = phi i32 [ %704, %691 ], [ %711, %707 ]
  %715 = phi i32 [ %706, %691 ], [ %712, %707 ]
  %716 = icmp slt i32 %714, 0
  br i1 %716, label %724, label %717

717:                                              ; preds = %713
  %718 = load i16, ptr %69, align 2, !tbaa !99
  %719 = sext i16 %718 to i32
  %720 = icmp sgt i32 %715, %719
  br i1 %720, label %724, label %721

721:                                              ; preds = %717
  %722 = load i16, ptr %78, align 8, !tbaa !34
  %723 = sext i16 %722 to i32
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 32) #10
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #10
  tail call void @glEnable(i32 noundef 3042) #10
  tail call void @glRecti(i32 noundef -4, i32 noundef %714, i32 noundef %723, i32 noundef %715) #10
  tail call void @glDisable(i32 noundef 3042) #10
  br label %724

724:                                              ; preds = %721, %717, %713, %681
  %725 = icmp sgt i32 %682, -1
  br i1 %725, label %726, label %788

726:                                              ; preds = %724
  %727 = load i32, ptr %417, align 4, !tbaa !50
  %728 = icmp eq i32 %727, 0
  %729 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %730 = sitofp i16 %729 to float
  %731 = fmul float %730, 5.000000e-01
  %732 = fptosi float %731 to i32
  br i1 %728, label %741, label %733

733:                                              ; preds = %726
  %734 = load i8, ptr %415, align 2, !tbaa !52
  %735 = zext i8 %734 to i32
  %736 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %737 = load i8, ptr %736, align 1, !tbaa !53
  %738 = zext i8 %737 to i32
  %739 = mul nuw nsw i32 %738, %735
  %740 = add nsw i32 %739, %732
  br label %741

741:                                              ; preds = %726, %733
  %742 = phi i32 [ %740, %733 ], [ %732, %726 ]
  %743 = load i8, ptr %415, align 2, !tbaa !52
  %744 = zext i8 %743 to i32
  %745 = mul nsw i32 %683, %744
  %746 = add nsw i32 %745, %742
  %747 = load i16, ptr %69, align 2, !tbaa !99
  %748 = sext i16 %747 to i32
  %749 = mul nsw i32 %684, %467
  %750 = sub nsw i32 %748, %749
  %751 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 19
  %752 = load i16, ptr %751, align 8, !tbaa !122
  %753 = icmp eq i16 %752, 0
  br i1 %753, label %784, label %754

754:                                              ; preds = %741
  %755 = load ptr, ptr %470, align 8, !tbaa !81
  %756 = getelementptr inbounds %struct.TextLine, ptr %755, i64 0, i32 2
  %757 = load ptr, ptr %756, align 8, !tbaa !62
  %758 = getelementptr inbounds %struct.Text, ptr %463, i64 0, i32 8
  %759 = load i32, ptr %758, align 4, !tbaa !118
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i8, ptr %757, i64 %760
  %762 = load i8, ptr %761, align 1, !tbaa !68
  %763 = load i16, ptr %36, align 2, !tbaa !91
  %764 = sitofp i16 %763 to float
  %765 = fmul float %764, 0x3FD3333340000000
  %766 = fptosi float %765 to i32
  %767 = icmp eq i8 %762, 9
  br i1 %767, label %768, label %777

768:                                              ; preds = %754
  %769 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %770 = load i32, ptr %769, align 8, !tbaa !69
  %771 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %772 = load i32, ptr %771, align 8, !tbaa !119
  %773 = add nsw i32 %772, %683
  %774 = srem i32 %773, %770
  %775 = sub nsw i32 %770, %774
  %776 = mul nsw i32 %775, %744
  br label %777

777:                                              ; preds = %768, %754
  %778 = phi i32 [ %776, %768 ], [ %744, %754 ]
  tail call void @UI_ThemeColor(i32 noundef 23) #10
  %779 = sub i32 %750, %467
  %780 = add i32 %779, %766
  %781 = add nsw i32 %780, -1
  %782 = add nsw i32 %778, %746
  %783 = add nsw i32 %780, 1
  tail call void @glRecti(i32 noundef %746, i32 noundef %781, i32 noundef %782, i32 noundef %783) #10
  br label %788

784:                                              ; preds = %741
  tail call void @UI_ThemeColor(i32 noundef 23) #10
  %785 = add nsw i32 %746, -1
  %786 = add nsw i32 %746, 1
  %787 = sub nsw i32 %750, %467
  tail call void @glRecti(i32 noundef %785, i32 noundef %750, i32 noundef %786, i32 noundef %787) #10
  br label %788

788:                                              ; preds = %724, %777, %784
  tail call void @UI_ThemeColor(i32 noundef 3) #10
  %789 = icmp sgt i32 %458, 0
  br i1 %789, label %790, label %1121

790:                                              ; preds = %788
  %791 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %792 = getelementptr inbounds %struct.TextFormatType, ptr %346, i64 0, i32 3
  %793 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %794 = add i32 %406, 1
  %795 = add i32 %453, %462
  %796 = sub i32 %460, %795
  %797 = getelementptr inbounds %struct.FlattenString, ptr %15, i64 0, i32 2
  %798 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  br label %799

799:                                              ; preds = %790, %1115
  %800 = phi ptr [ %408, %790 ], [ %1119, %1115 ]
  %801 = phi i32 [ 0, %790 ], [ %1118, %1115 ]
  %802 = phi i32 [ %407, %790 ], [ 0, %1115 ]
  %803 = phi i32 [ %458, %790 ], [ %1117, %1115 ]
  %804 = load i32, ptr %51, align 4, !tbaa !100
  %805 = icmp slt i32 %801, %804
  %806 = icmp ne ptr %800, null
  %807 = select i1 %805, i1 %806, i1 false
  br i1 %807, label %808, label %1121

808:                                              ; preds = %799
  %809 = load i16, ptr %791, align 4, !tbaa !112
  %810 = icmp eq i16 %809, 0
  br i1 %810, label %817, label %811

811:                                              ; preds = %808
  %812 = getelementptr inbounds %struct.TextLine, ptr %800, i64 0, i32 3
  %813 = load ptr, ptr %812, align 8, !tbaa !113
  %814 = icmp eq ptr %813, null
  br i1 %814, label %815, label %817

815:                                              ; preds = %811
  %816 = load ptr, ptr %792, align 8, !tbaa !114
  call void %816(ptr noundef %0, ptr noundef nonnull %800, i8 noundef zeroext 0) #10
  br label %817

817:                                              ; preds = %815, %811, %808
  %818 = load i32, ptr %417, align 4, !tbaa !50
  %819 = icmp eq i32 %818, 0
  %820 = icmp ne i32 %802, 0
  %821 = select i1 %819, i1 true, i1 %820
  br i1 %821, label %842, label %822

822:                                              ; preds = %817
  %823 = load ptr, ptr %52, align 8, !tbaa !82
  %824 = icmp eq ptr %800, %823
  %825 = select i1 %824, i32 23, i32 3
  call void @UI_ThemeColor(i32 noundef %825) #10
  %826 = load i8, ptr %793, align 1, !tbaa !53
  %827 = zext i8 %826 to i32
  %828 = add i32 %794, %801
  %829 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %23, i64 noundef 12, ptr noundef nonnull @.str, i32 noundef %827, i32 noundef %828) #10
  %830 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %831 = sitofp i16 %830 to float
  %832 = fmul float %831, 5.000000e-01
  %833 = fptosi float %832 to i32
  %834 = add nsw i32 %833, -7
  %835 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %836 = sitofp i32 %834 to float
  %837 = sitofp i32 %803 to float
  call void @BLF_position(i32 noundef %835, float noundef %836, float noundef %837, float noundef 0.000000e+00) #10
  %838 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %839 = load i8, ptr %415, align 2, !tbaa !52
  %840 = zext i8 %839 to i32
  %841 = call i32 @BLF_draw_mono(i32 noundef %838, ptr noundef nonnull %23, i64 noundef 1024, i32 noundef %840) #10
  call void @UI_ThemeColor(i32 noundef 3) #10
  br label %842

842:                                              ; preds = %822, %817
  %843 = load i32, ptr %169, align 8, !tbaa !56
  %844 = icmp eq i32 %843, 0
  %845 = getelementptr inbounds %struct.TextLine, ptr %800, i64 0, i32 2
  %846 = load ptr, ptr %845, align 8, !tbaa !62
  br i1 %844, label %1100, label %847

847:                                              ; preds = %842
  %848 = getelementptr inbounds %struct.TextLine, ptr %800, i64 0, i32 3
  %849 = load ptr, ptr %848, align 8, !tbaa !113
  %850 = load i16, ptr %791, align 4, !tbaa !112
  %851 = icmp ne i16 %850, 0
  %852 = icmp ne ptr %849, null
  %853 = and i1 %852, %851
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %15) #10
  %854 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %846) #10
  %855 = load ptr, ptr %797, align 8, !tbaa !123
  %856 = load i8, ptr %415, align 2, !tbaa !52
  %857 = zext i8 %856 to i32
  %858 = sdiv i32 %796, %857
  %859 = call i32 @llvm.smax.i32(i32 %858, i32 8)
  br label %860

860:                                              ; preds = %869, %847
  %861 = phi i32 [ %859, %847 ], [ %867, %869 ]
  %862 = phi ptr [ %855, %847 ], [ %872, %869 ]
  %863 = load i8, ptr %862, align 1, !tbaa !68
  %864 = icmp eq i8 %863, 0
  br i1 %864, label %874, label %865

865:                                              ; preds = %860
  %866 = call i32 @BLI_str_utf8_char_width(ptr noundef nonnull %862) #10
  %867 = sub nsw i32 %861, %866
  %868 = icmp slt i32 %867, 0
  br i1 %868, label %874, label %869

869:                                              ; preds = %865
  %870 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %862) #10
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds i8, ptr %862, i64 %871
  %873 = icmp eq i32 %867, 0
  br i1 %873, label %874, label %860, !llvm.loop !125

874:                                              ; preds = %860, %865, %869
  %875 = phi i32 [ %861, %865 ], [ 0, %869 ], [ %861, %860 ]
  %876 = phi ptr [ %862, %865 ], [ %872, %869 ], [ %862, %860 ]
  %877 = ptrtoint ptr %855 to i64
  %878 = load i8, ptr %855, align 1, !tbaa !68
  %879 = icmp eq i8 %878, 0
  br i1 %879, label %1044, label %880

880:                                              ; preds = %874
  %881 = load i8, ptr %876, align 1, !tbaa !68
  %882 = icmp eq i8 %881, 0
  %883 = select i1 %882, i32 0, i32 %875
  %884 = sub nsw i32 %859, %883
  %885 = ptrtoint ptr %876 to i64
  %886 = sub i64 %885, %877
  %887 = trunc i64 %886 to i32
  br label %888

888:                                              ; preds = %880, %1027
  %889 = phi ptr [ %1041, %1027 ], [ %855, %880 ]
  %890 = phi i8 [ %1037, %1027 ], [ -1, %880 ]
  %891 = phi i32 [ %1036, %1027 ], [ %887, %880 ]
  %892 = phi i32 [ %1035, %1027 ], [ 0, %880 ]
  %893 = phi i32 [ %1039, %1027 ], [ 0, %880 ]
  %894 = phi i32 [ %1034, %1027 ], [ 0, %880 ]
  %895 = phi i32 [ %1033, %1027 ], [ 0, %880 ]
  %896 = phi i32 [ %1032, %1027 ], [ %884, %880 ]
  %897 = phi i32 [ %1031, %1027 ], [ %884, %880 ]
  %898 = phi i32 [ %903, %1027 ], [ 0, %880 ]
  %899 = phi i32 [ %1030, %1027 ], [ 1, %880 ]
  %900 = phi i32 [ %1029, %1027 ], [ %803, %880 ]
  %901 = phi i32 [ %1028, %1027 ], [ %802, %880 ]
  %902 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %889) #10
  %903 = add nsw i32 %902, %898
  %904 = icmp sgt i32 %903, %896
  br i1 %904, label %905, label %1022

905:                                              ; preds = %888
  %906 = icmp eq i32 %901, 0
  br i1 %906, label %907, label %912

907:                                              ; preds = %905
  %908 = icmp slt i32 %892, %891
  br i1 %908, label %909, label %983

909:                                              ; preds = %907
  %910 = sitofp i32 %900 to float
  %911 = sext i32 %895 to i64
  br label %951

912:                                              ; preds = %905
  %913 = add nsw i32 %901, -1
  br i1 %853, label %914, label %922

914:                                              ; preds = %912
  %915 = sext i32 %892 to i64
  %916 = getelementptr inbounds i8, ptr %855, i64 %915
  %917 = sub nsw i32 %891, %892
  %918 = sext i32 %917 to i64
  %919 = call i64 @BLI_strnlen_utf8(ptr noundef nonnull %916, i64 noundef %918) #10
  %920 = trunc i64 %919 to i32
  %921 = add i32 %894, %920
  br label %922

922:                                              ; preds = %914, %912
  %923 = phi i32 [ %921, %914 ], [ %894, %912 ]
  %924 = sext i32 %891 to i64
  %925 = getelementptr inbounds i8, ptr %855, i64 %924
  br label %926

926:                                              ; preds = %935, %922
  %927 = phi i32 [ %859, %922 ], [ %933, %935 ]
  %928 = phi ptr [ %925, %922 ], [ %938, %935 ]
  %929 = load i8, ptr %928, align 1, !tbaa !68
  %930 = icmp eq i8 %929, 0
  br i1 %930, label %940, label %931

931:                                              ; preds = %926
  %932 = call i32 @BLI_str_utf8_char_width(ptr noundef nonnull %928) #10
  %933 = sub nsw i32 %927, %932
  %934 = icmp slt i32 %933, 0
  br i1 %934, label %940, label %935

935:                                              ; preds = %931
  %936 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %928) #10
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds i8, ptr %928, i64 %937
  %939 = icmp eq i32 %933, 0
  br i1 %939, label %940, label %926, !llvm.loop !125

940:                                              ; preds = %926, %931, %935
  %941 = phi i32 [ %927, %931 ], [ 0, %935 ], [ %927, %926 ]
  %942 = phi ptr [ %928, %931 ], [ %938, %935 ], [ %928, %926 ]
  %943 = load i8, ptr %942, align 1, !tbaa !68
  %944 = icmp eq i8 %943, 0
  %945 = select i1 %944, i32 0, i32 %941
  %946 = ptrtoint ptr %942 to i64
  %947 = sub i64 %946, %877
  %948 = trunc i64 %947 to i32
  %949 = sub nsw i32 %859, %945
  %950 = add nsw i32 %949, %897
  br label %1027

951:                                              ; preds = %909, %962
  %952 = phi i64 [ %911, %909 ], [ %979, %962 ]
  %953 = phi i8 [ %890, %909 ], [ %963, %962 ]
  %954 = phi i32 [ %892, %909 ], [ %981, %962 ]
  %955 = phi i32 [ %894, %909 ], [ %978, %962 ]
  %956 = phi i32 [ %453, %909 ], [ %977, %962 ]
  br i1 %853, label %957, label %962

957:                                              ; preds = %951
  %958 = getelementptr inbounds i8, ptr %849, i64 %952
  %959 = load i8, ptr %958, align 1, !tbaa !68
  %960 = icmp eq i8 %953, %959
  br i1 %960, label %962, label %961

961:                                              ; preds = %957
  call fastcc void @format_draw_color(i8 noundef zeroext %959)
  br label %962

962:                                              ; preds = %961, %957, %951
  %963 = phi i8 [ %959, %961 ], [ %953, %957 ], [ %953, %951 ]
  %964 = sext i32 %954 to i64
  %965 = getelementptr inbounds i8, ptr %855, i64 %964
  %966 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %965) #10
  %967 = sext i32 %966 to i64
  %968 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %969 = sitofp i32 %956 to float
  call void @BLF_position(i32 noundef %968, float noundef %969, float noundef %910, float noundef 0.000000e+00) #10
  %970 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %971 = load i8, ptr %415, align 2, !tbaa !52
  %972 = zext i8 %971 to i32
  %973 = call i32 @BLF_draw_mono(i32 noundef %970, ptr noundef nonnull %965, i64 noundef %967, i32 noundef %972) #10
  %974 = load i8, ptr %415, align 2, !tbaa !52
  %975 = zext i8 %974 to i32
  %976 = mul nsw i32 %973, %975
  %977 = add nsw i32 %976, %956
  %978 = add nsw i32 %955, 1
  %979 = add i64 %952, 1
  %980 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %965) #10
  %981 = add nsw i32 %980, %954
  %982 = icmp slt i32 %981, %891
  br i1 %982, label %951, label %983, !llvm.loop !126

983:                                              ; preds = %962, %907
  %984 = phi i32 [ %894, %907 ], [ %978, %962 ]
  %985 = phi i8 [ %890, %907 ], [ %963, %962 ]
  %986 = load i16, ptr %36, align 2, !tbaa !91
  %987 = sext i16 %986 to i32
  %988 = sitofp i16 %986 to float
  %989 = fmul float %988, 0x3FD3333340000000
  %990 = fptosi float %989 to i32
  %991 = add i32 %987, %990
  %992 = sub i32 %900, %991
  %993 = add nsw i32 %899, 1
  %994 = sext i32 %891 to i64
  %995 = getelementptr inbounds i8, ptr %855, i64 %994
  br label %996

996:                                              ; preds = %1005, %983
  %997 = phi i32 [ %859, %983 ], [ %1003, %1005 ]
  %998 = phi ptr [ %995, %983 ], [ %1008, %1005 ]
  %999 = load i8, ptr %998, align 1, !tbaa !68
  %1000 = icmp eq i8 %999, 0
  br i1 %1000, label %1010, label %1001

1001:                                             ; preds = %996
  %1002 = call i32 @BLI_str_utf8_char_width(ptr noundef nonnull %998) #10
  %1003 = sub nsw i32 %997, %1002
  %1004 = icmp slt i32 %1003, 0
  br i1 %1004, label %1010, label %1005

1005:                                             ; preds = %1001
  %1006 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %998) #10
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds i8, ptr %998, i64 %1007
  %1009 = icmp eq i32 %1003, 0
  br i1 %1009, label %1010, label %996, !llvm.loop !125

1010:                                             ; preds = %996, %1001, %1005
  %1011 = phi i32 [ %997, %1001 ], [ 0, %1005 ], [ %997, %996 ]
  %1012 = phi ptr [ %998, %1001 ], [ %1008, %1005 ], [ %998, %996 ]
  %1013 = load i8, ptr %1012, align 1, !tbaa !68
  %1014 = icmp eq i8 %1013, 0
  %1015 = select i1 %1014, i32 0, i32 %1011
  %1016 = ptrtoint ptr %1012 to i64
  %1017 = sub i64 %1016, %877
  %1018 = trunc i64 %1017 to i32
  %1019 = sub nsw i32 %859, %1015
  %1020 = add nsw i32 %1019, %897
  %1021 = icmp slt i32 %992, 1
  br i1 %1021, label %1044, label %1027

1022:                                             ; preds = %888
  %1023 = load i8, ptr %889, align 1, !tbaa !68
  switch i8 %1023, label %1027 [
    i8 32, label %1024
    i8 45, label %1024
  ]

1024:                                             ; preds = %1022, %1022
  %1025 = add nsw i32 %898, 1
  %1026 = add nsw i32 %893, 1
  br label %1027

1027:                                             ; preds = %1024, %1022, %1010, %940
  %1028 = phi i32 [ %913, %940 ], [ 0, %1010 ], [ %901, %1024 ], [ %901, %1022 ]
  %1029 = phi i32 [ %900, %940 ], [ %992, %1010 ], [ %900, %1024 ], [ %900, %1022 ]
  %1030 = phi i32 [ %899, %940 ], [ %993, %1010 ], [ %899, %1024 ], [ %899, %1022 ]
  %1031 = phi i32 [ %950, %940 ], [ %1020, %1010 ], [ %1025, %1024 ], [ %897, %1022 ]
  %1032 = phi i32 [ %950, %940 ], [ %1020, %1010 ], [ %896, %1024 ], [ %896, %1022 ]
  %1033 = phi i32 [ %923, %940 ], [ %984, %1010 ], [ %895, %1024 ], [ %895, %1022 ]
  %1034 = phi i32 [ %923, %940 ], [ %984, %1010 ], [ %894, %1024 ], [ %894, %1022 ]
  %1035 = phi i32 [ %891, %940 ], [ %891, %1010 ], [ %892, %1024 ], [ %892, %1022 ]
  %1036 = phi i32 [ %948, %940 ], [ %1018, %1010 ], [ %1026, %1024 ], [ %891, %1022 ]
  %1037 = phi i8 [ %890, %940 ], [ %985, %1010 ], [ %890, %1024 ], [ %890, %1022 ]
  %1038 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %889) #10
  %1039 = add nsw i32 %1038, %893
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds i8, ptr %855, i64 %1040
  %1042 = load i8, ptr %1041, align 1, !tbaa !68
  %1043 = icmp eq i8 %1042, 0
  br i1 %1043, label %1044, label %888, !llvm.loop !127

1044:                                             ; preds = %1027, %1010, %874
  %1045 = phi i32 [ %803, %874 ], [ %1029, %1027 ], [ %992, %1010 ]
  %1046 = phi i32 [ 1, %874 ], [ %1030, %1027 ], [ %993, %1010 ]
  %1047 = phi i32 [ 0, %874 ], [ %1033, %1027 ], [ %984, %1010 ]
  %1048 = phi i32 [ 0, %874 ], [ %1035, %1027 ], [ %891, %1010 ]
  %1049 = phi i8 [ -1, %874 ], [ %1037, %1027 ], [ %985, %1010 ]
  %1050 = icmp sgt i32 %1045, 0
  %1051 = sext i32 %1048 to i64
  %1052 = getelementptr inbounds i8, ptr %855, i64 %1051
  %1053 = load i8, ptr %1052, align 1, !tbaa !68
  %1054 = icmp ne i8 %1053, 0
  %1055 = select i1 %1054, i1 %1050, i1 false
  br i1 %1055, label %1056, label %1092

1056:                                             ; preds = %1044
  %1057 = sitofp i32 %1045 to float
  %1058 = sext i32 %1047 to i64
  br label %1059

1059:                                             ; preds = %1056, %1070
  %1060 = phi i64 [ %1058, %1056 ], [ %1084, %1070 ]
  %1061 = phi ptr [ %1052, %1056 ], [ %1088, %1070 ]
  %1062 = phi i8 [ %1049, %1056 ], [ %1071, %1070 ]
  %1063 = phi i32 [ %1048, %1056 ], [ %1086, %1070 ]
  %1064 = phi i32 [ %453, %1056 ], [ %1083, %1070 ]
  br i1 %853, label %1065, label %1070

1065:                                             ; preds = %1059
  %1066 = getelementptr inbounds i8, ptr %849, i64 %1060
  %1067 = load i8, ptr %1066, align 1, !tbaa !68
  %1068 = icmp eq i8 %1062, %1067
  br i1 %1068, label %1070, label %1069

1069:                                             ; preds = %1065
  call fastcc void @format_draw_color(i8 noundef zeroext %1067)
  br label %1070

1070:                                             ; preds = %1069, %1065, %1059
  %1071 = phi i8 [ %1067, %1069 ], [ %1062, %1065 ], [ %1062, %1059 ]
  %1072 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1061) #10
  %1073 = sext i32 %1072 to i64
  %1074 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %1075 = sitofp i32 %1064 to float
  call void @BLF_position(i32 noundef %1074, float noundef %1075, float noundef %1057, float noundef 0.000000e+00) #10
  %1076 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %1077 = load i8, ptr %415, align 2, !tbaa !52
  %1078 = zext i8 %1077 to i32
  %1079 = call i32 @BLF_draw_mono(i32 noundef %1076, ptr noundef nonnull %1061, i64 noundef %1073, i32 noundef %1078) #10
  %1080 = load i8, ptr %415, align 2, !tbaa !52
  %1081 = zext i8 %1080 to i32
  %1082 = mul nsw i32 %1079, %1081
  %1083 = add nsw i32 %1082, %1064
  %1084 = add i64 %1060, 1
  %1085 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1061) #10
  %1086 = add nsw i32 %1085, %1063
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds i8, ptr %855, i64 %1087
  %1089 = load i8, ptr %1088, align 1, !tbaa !68
  %1090 = icmp ne i8 %1089, 0
  %1091 = select i1 %1090, i1 %1050, i1 false
  br i1 %1091, label %1059, label %1092, !llvm.loop !128

1092:                                             ; preds = %1070, %1044
  call void @flatten_string_free(ptr noundef nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %15) #10
  %1093 = load i16, ptr %36, align 2, !tbaa !91
  %1094 = sext i16 %1093 to i32
  %1095 = sitofp i16 %1093 to float
  %1096 = fmul float %1095, 0x3FD3333340000000
  %1097 = fptosi float %1096 to i32
  %1098 = add nsw i32 %1097, %1094
  %1099 = mul nsw i32 %1098, %1046
  br label %1115

1100:                                             ; preds = %842
  %1101 = load i32, ptr %798, align 8, !tbaa !119
  %1102 = load i16, ptr %78, align 8, !tbaa !34
  %1103 = sext i16 %1102 to i32
  %1104 = load i8, ptr %415, align 2, !tbaa !52
  %1105 = zext i8 %1104 to i32
  %1106 = sdiv i32 %1103, %1105
  %1107 = getelementptr inbounds %struct.TextLine, ptr %800, i64 0, i32 3
  %1108 = load ptr, ptr %1107, align 8, !tbaa !113
  call fastcc void @text_draw(ptr noundef %0, ptr noundef %846, i32 noundef %1101, i32 noundef %1106, i32 noundef %453, i32 noundef %803, ptr noundef %1108)
  %1109 = load i16, ptr %36, align 2, !tbaa !91
  %1110 = sext i16 %1109 to i32
  %1111 = sitofp i16 %1109 to float
  %1112 = fmul float %1111, 0x3FD3333340000000
  %1113 = fptosi float %1112 to i32
  %1114 = add nsw i32 %1113, %1110
  br label %1115

1115:                                             ; preds = %1100, %1092
  %1116 = phi i32 [ %1099, %1092 ], [ %1114, %1100 ]
  %1117 = sub nsw i32 %803, %1116
  %1118 = add nuw nsw i32 %801, 1
  %1119 = load ptr, ptr %800, align 8, !tbaa !64
  %1120 = icmp sgt i32 %1117, 0
  br i1 %1120, label %799, label %1121, !llvm.loop !129

1121:                                             ; preds = %1115, %799, %788
  %1122 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 9
  %1123 = load i16, ptr %1122, align 8, !tbaa !130
  %1124 = and i16 %1123, 128
  %1125 = icmp eq i16 %1124, 0
  br i1 %1125, label %1142, label %1126

1126:                                             ; preds = %1121
  call void @UI_ThemeColor(i32 noundef 23) #10
  %1127 = load i8, ptr %415, align 2, !tbaa !52
  %1128 = zext i8 %1127 to i32
  %1129 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 28
  %1130 = load i16, ptr %1129, align 8, !tbaa !131
  %1131 = sext i16 %1130 to i32
  %1132 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %1133 = load i32, ptr %1132, align 8, !tbaa !119
  %1134 = sub nsw i32 %1131, %1133
  %1135 = mul nsw i32 %1134, %1128
  %1136 = icmp slt i32 %1135, 0
  br i1 %1136, label %1142, label %1137

1137:                                             ; preds = %1126
  %1138 = add nsw i32 %1135, %453
  call void @glBegin(i32 noundef 1) #10
  call void @glVertex2i(i32 noundef %1138, i32 noundef 0) #10
  %1139 = load i16, ptr %69, align 2, !tbaa !99
  %1140 = sext i16 %1139 to i32
  %1141 = add nsw i32 %1140, -2
  call void @glVertex2i(i32 noundef %1138, i32 noundef %1141) #10
  call void @glEnd() #10
  br label %1142

1142:                                             ; preds = %1126, %1137, %1121
  %1143 = load ptr, ptr %24, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  %1144 = getelementptr inbounds %struct.Text, ptr %1143, i64 0, i32 5
  %1145 = load ptr, ptr %1144, align 8, !tbaa !82
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1538, label %1147

1147:                                             ; preds = %1142
  %1148 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %1149 = load i16, ptr %1148, align 4, !tbaa !112
  %1150 = icmp eq i16 %1149, 0
  br i1 %1150, label %1538, label %1151

1151:                                             ; preds = %1147
  %1152 = getelementptr inbounds %struct.Text, ptr %1143, i64 0, i32 7
  %1153 = load i32, ptr %1152, align 8, !tbaa !117
  %1154 = getelementptr inbounds %struct.TextLine, ptr %1145, i64 0, i32 2
  %1155 = load ptr, ptr %1154, align 8, !tbaa !62
  %1156 = sext i32 %1153 to i64
  %1157 = getelementptr inbounds i8, ptr %1155, i64 %1156
  %1158 = load i8, ptr %1157, align 1, !tbaa !68
  %1159 = call i32 @text_check_bracket(i8 noundef zeroext %1158) #10
  %1160 = icmp eq i32 %1159, 0
  %1161 = icmp sgt i32 %1153, 0
  %1162 = and i1 %1161, %1160
  br i1 %1162, label %1163, label %1170

1163:                                             ; preds = %1151
  %1164 = load ptr, ptr %1154, align 8, !tbaa !62
  %1165 = add nsw i32 %1153, -1
  %1166 = zext nneg i32 %1165 to i64
  %1167 = getelementptr inbounds i8, ptr %1164, i64 %1166
  %1168 = load i8, ptr %1167, align 1, !tbaa !68
  %1169 = call i32 @text_check_bracket(i8 noundef zeroext %1168) #10
  br label %1170

1170:                                             ; preds = %1163, %1151
  %1171 = phi i32 [ %1169, %1163 ], [ %1159, %1151 ]
  %1172 = phi i32 [ %1165, %1163 ], [ %1153, %1151 ]
  %1173 = icmp eq i32 %1171, 0
  br i1 %1173, label %1538, label %1174

1174:                                             ; preds = %1170
  %1175 = load ptr, ptr %1154, align 8, !tbaa !62
  %1176 = call i32 @txt_utf8_offset_to_index(ptr noundef %1175, i32 noundef %1172) #10
  %1177 = sub nsw i32 0, %1171
  %1178 = getelementptr inbounds %struct.TextLine, ptr %1145, i64 0, i32 3
  %1179 = load ptr, ptr %1178, align 8, !tbaa !113
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1538, label %1181

1181:                                             ; preds = %1174
  %1182 = sext i32 %1176 to i64
  %1183 = getelementptr inbounds i8, ptr %1179, i64 %1182
  %1184 = load i8, ptr %1183, align 1, !tbaa !68
  switch i8 %1184, label %1185 [
    i8 108, label %1538
    i8 35, label %1538
  ]

1185:                                             ; preds = %1181
  %1186 = icmp sgt i32 %1171, 0
  br i1 %1186, label %1187, label %1250

1187:                                             ; preds = %1185
  %1188 = add nsw i32 %1176, 1
  %1189 = load ptr, ptr %1154, align 8, !tbaa !62
  %1190 = sext i32 %1172 to i64
  %1191 = getelementptr inbounds i8, ptr %1189, i64 %1190
  %1192 = call i32 @BLI_str_utf8_size_safe(ptr noundef %1191) #10
  %1193 = add nsw i32 %1192, %1172
  br label %1194

1194:                                             ; preds = %1187, %1247
  %1195 = phi i32 [ %1193, %1187 ], [ 0, %1247 ]
  %1196 = phi i32 [ -1, %1187 ], [ %1245, %1247 ]
  %1197 = phi ptr [ %1145, %1187 ], [ %1248, %1247 ]
  %1198 = phi i32 [ 0, %1187 ], [ %1243, %1247 ]
  %1199 = phi i32 [ %1188, %1187 ], [ 0, %1247 ]
  %1200 = getelementptr inbounds %struct.TextLine, ptr %1197, i64 0, i32 4
  %1201 = load i32, ptr %1200, align 8, !tbaa !132
  %1202 = icmp slt i32 %1195, %1201
  br i1 %1202, label %1203, label %1242

1203:                                             ; preds = %1194
  %1204 = getelementptr inbounds %struct.TextLine, ptr %1197, i64 0, i32 3
  %1205 = getelementptr inbounds %struct.TextLine, ptr %1197, i64 0, i32 2
  %1206 = getelementptr inbounds %struct.TextLine, ptr %1197, i64 0, i32 2
  %1207 = sext i32 %1199 to i64
  br label %1208

1208:                                             ; preds = %1203, %1232
  %1209 = phi i64 [ %1207, %1203 ], [ %1234, %1232 ]
  %1210 = phi i32 [ %1195, %1203 ], [ %1239, %1232 ]
  %1211 = phi i32 [ %1198, %1203 ], [ %1233, %1232 ]
  %1212 = load ptr, ptr %1204, align 8, !tbaa !113
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1232, label %1214

1214:                                             ; preds = %1208
  %1215 = getelementptr inbounds i8, ptr %1212, i64 %1209
  %1216 = load i8, ptr %1215, align 1, !tbaa !68
  switch i8 %1216, label %1217 [
    i8 108, label %1232
    i8 35, label %1232
  ]

1217:                                             ; preds = %1214
  %1218 = load ptr, ptr %1205, align 8, !tbaa !62
  %1219 = sext i32 %1210 to i64
  %1220 = getelementptr inbounds i8, ptr %1218, i64 %1219
  %1221 = load i8, ptr %1220, align 1, !tbaa !68
  %1222 = call i32 @text_check_bracket(i8 noundef zeroext %1221) #10
  %1223 = icmp eq i32 %1222, %1177
  br i1 %1223, label %1224, label %1228

1224:                                             ; preds = %1217
  %1225 = icmp eq i32 %1211, 0
  br i1 %1225, label %1242, label %1226

1226:                                             ; preds = %1224
  %1227 = add nsw i32 %1211, -1
  br label %1232

1228:                                             ; preds = %1217
  %1229 = icmp eq i32 %1222, %1171
  %1230 = zext i1 %1229 to i32
  %1231 = add nsw i32 %1211, %1230
  br label %1232

1232:                                             ; preds = %1228, %1226, %1214, %1214, %1208
  %1233 = phi i32 [ %1227, %1226 ], [ %1211, %1214 ], [ %1211, %1208 ], [ %1211, %1214 ], [ %1231, %1228 ]
  %1234 = add i64 %1209, 1
  %1235 = load ptr, ptr %1206, align 8, !tbaa !62
  %1236 = sext i32 %1210 to i64
  %1237 = getelementptr inbounds i8, ptr %1235, i64 %1236
  %1238 = call i32 @BLI_str_utf8_size_safe(ptr noundef %1237) #10
  %1239 = add nsw i32 %1238, %1210
  %1240 = load i32, ptr %1200, align 8, !tbaa !132
  %1241 = icmp slt i32 %1239, %1240
  br i1 %1241, label %1208, label %1242, !llvm.loop !133

1242:                                             ; preds = %1232, %1224, %1194
  %1243 = phi i32 [ %1198, %1194 ], [ %1233, %1232 ], [ %1211, %1224 ]
  %1244 = phi ptr [ null, %1194 ], [ null, %1232 ], [ %1197, %1224 ]
  %1245 = phi i32 [ %1196, %1194 ], [ %1196, %1232 ], [ %1210, %1224 ]
  %1246 = icmp eq ptr %1244, null
  br i1 %1246, label %1247, label %1359

1247:                                             ; preds = %1242
  %1248 = load ptr, ptr %1197, align 8, !tbaa !64
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1359, label %1194, !llvm.loop !134

1250:                                             ; preds = %1185
  %1251 = add nsw i32 %1176, -1
  %1252 = icmp sgt i32 %1172, 0
  br i1 %1252, label %1253, label %1263

1253:                                             ; preds = %1250
  %1254 = load ptr, ptr %1154, align 8, !tbaa !62
  %1255 = zext nneg i32 %1172 to i64
  %1256 = getelementptr inbounds i8, ptr %1254, i64 %1255
  %1257 = call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %1256) #10
  %1258 = ptrtoint ptr %1256 to i64
  %1259 = ptrtoint ptr %1257 to i64
  %1260 = sub i64 %1259, %1258
  %1261 = trunc i64 %1260 to i32
  %1262 = add i32 %1172, %1261
  br label %1263

1263:                                             ; preds = %1253, %1250
  %1264 = phi i32 [ %1172, %1250 ], [ %1262, %1253 ]
  br label %1265

1265:                                             ; preds = %1263, %1355
  %1266 = phi i32 [ %1357, %1355 ], [ %1264, %1263 ]
  %1267 = phi i32 [ %1325, %1355 ], [ -1, %1263 ]
  %1268 = phi ptr [ %1329, %1355 ], [ %1145, %1263 ]
  %1269 = phi i32 [ %1322, %1355 ], [ 0, %1263 ]
  %1270 = phi i32 [ %1356, %1355 ], [ %1251, %1263 ]
  %1271 = icmp sgt i32 %1270, -1
  br i1 %1271, label %1272, label %1320

1272:                                             ; preds = %1265
  %1273 = getelementptr inbounds %struct.TextLine, ptr %1268, i64 0, i32 3
  %1274 = getelementptr inbounds %struct.TextLine, ptr %1268, i64 0, i32 2
  %1275 = getelementptr inbounds %struct.TextLine, ptr %1268, i64 0, i32 2
  %1276 = zext nneg i32 %1270 to i64
  br label %1277

1277:                                             ; preds = %1272, %1315
  %1278 = phi i64 [ %1276, %1272 ], [ %1303, %1315 ]
  %1279 = phi i32 [ %1266, %1272 ], [ %1316, %1315 ]
  %1280 = phi i32 [ %1269, %1272 ], [ %1302, %1315 ]
  %1281 = load ptr, ptr %1273, align 8, !tbaa !113
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1301, label %1283

1283:                                             ; preds = %1277
  %1284 = getelementptr inbounds i8, ptr %1281, i64 %1278
  %1285 = load i8, ptr %1284, align 1, !tbaa !68
  switch i8 %1285, label %1286 [
    i8 108, label %1301
    i8 35, label %1301
  ]

1286:                                             ; preds = %1283
  %1287 = load ptr, ptr %1274, align 8, !tbaa !62
  %1288 = sext i32 %1279 to i64
  %1289 = getelementptr inbounds i8, ptr %1287, i64 %1288
  %1290 = load i8, ptr %1289, align 1, !tbaa !68
  %1291 = call i32 @text_check_bracket(i8 noundef zeroext %1290) #10
  %1292 = icmp eq i32 %1291, %1177
  br i1 %1292, label %1293, label %1297

1293:                                             ; preds = %1286
  %1294 = icmp eq i32 %1280, 0
  br i1 %1294, label %1318, label %1295

1295:                                             ; preds = %1293
  %1296 = add nsw i32 %1280, -1
  br label %1301

1297:                                             ; preds = %1286
  %1298 = icmp eq i32 %1291, %1171
  %1299 = zext i1 %1298 to i32
  %1300 = add nsw i32 %1280, %1299
  br label %1301

1301:                                             ; preds = %1297, %1295, %1283, %1283, %1277
  %1302 = phi i32 [ %1296, %1295 ], [ %1280, %1283 ], [ %1280, %1277 ], [ %1280, %1283 ], [ %1300, %1297 ]
  %1303 = add nsw i64 %1278, -1
  %1304 = icmp sgt i32 %1279, 0
  br i1 %1304, label %1305, label %1315

1305:                                             ; preds = %1301
  %1306 = load ptr, ptr %1275, align 8, !tbaa !62
  %1307 = zext nneg i32 %1279 to i64
  %1308 = getelementptr inbounds i8, ptr %1306, i64 %1307
  %1309 = call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %1308) #10
  %1310 = ptrtoint ptr %1308 to i64
  %1311 = ptrtoint ptr %1309 to i64
  %1312 = sub i64 %1311, %1310
  %1313 = trunc i64 %1312 to i32
  %1314 = add i32 %1279, %1313
  br label %1315

1315:                                             ; preds = %1305, %1301
  %1316 = phi i32 [ %1314, %1305 ], [ %1279, %1301 ]
  %1317 = icmp sgt i64 %1278, 0
  br i1 %1317, label %1277, label %1320, !llvm.loop !135

1318:                                             ; preds = %1293
  %1319 = trunc i64 %1278 to i32
  br label %1320

1320:                                             ; preds = %1318, %1315, %1265
  %1321 = phi i32 [ %1270, %1265 ], [ %1319, %1318 ], [ -1, %1315 ]
  %1322 = phi i32 [ %1269, %1265 ], [ %1280, %1318 ], [ %1302, %1315 ]
  %1323 = phi i32 [ %1266, %1265 ], [ %1279, %1318 ], [ %1316, %1315 ]
  %1324 = phi ptr [ null, %1265 ], [ %1268, %1318 ], [ null, %1315 ]
  %1325 = phi i32 [ %1267, %1265 ], [ %1279, %1318 ], [ %1267, %1315 ]
  %1326 = icmp eq ptr %1324, null
  br i1 %1326, label %1327, label %1359

1327:                                             ; preds = %1320
  %1328 = getelementptr inbounds %struct.TextLine, ptr %1268, i64 0, i32 1
  %1329 = load ptr, ptr %1328, align 8, !tbaa !136
  %1330 = icmp eq ptr %1329, null
  br i1 %1330, label %1355, label %1331

1331:                                             ; preds = %1327
  %1332 = getelementptr inbounds %struct.TextLine, ptr %1329, i64 0, i32 3
  %1333 = load ptr, ptr %1332, align 8, !tbaa !113
  %1334 = icmp eq ptr %1333, null
  br i1 %1334, label %1339, label %1335

1335:                                             ; preds = %1331
  %1336 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1333) #11
  %1337 = trunc i64 %1336 to i32
  %1338 = add i32 %1337, -1
  br label %1339

1339:                                             ; preds = %1335, %1331
  %1340 = phi i32 [ %1338, %1335 ], [ -1, %1331 ]
  %1341 = getelementptr inbounds %struct.TextLine, ptr %1329, i64 0, i32 4
  %1342 = load i32, ptr %1341, align 8, !tbaa !132
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1355, label %1344

1344:                                             ; preds = %1339
  %1345 = getelementptr inbounds %struct.TextLine, ptr %1329, i64 0, i32 2
  %1346 = load ptr, ptr %1345, align 8, !tbaa !62
  %1347 = sext i32 %1342 to i64
  %1348 = getelementptr inbounds i8, ptr %1346, i64 %1347
  %1349 = call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %1348) #10
  %1350 = load ptr, ptr %1345, align 8, !tbaa !62
  %1351 = ptrtoint ptr %1349 to i64
  %1352 = ptrtoint ptr %1350 to i64
  %1353 = sub i64 %1351, %1352
  %1354 = trunc i64 %1353 to i32
  br label %1355

1355:                                             ; preds = %1344, %1339, %1327
  %1356 = phi i32 [ %1340, %1344 ], [ %1321, %1327 ], [ -1, %1339 ]
  %1357 = phi i32 [ %1354, %1344 ], [ %1323, %1327 ], [ %1323, %1339 ]
  %1358 = icmp eq ptr %1329, null
  br i1 %1358, label %1359, label %1265, !llvm.loop !137

1359:                                             ; preds = %1320, %1355, %1242, %1247
  %1360 = phi ptr [ %1244, %1242 ], [ null, %1247 ], [ %1324, %1320 ], [ null, %1355 ]
  %1361 = phi i32 [ %1245, %1247 ], [ %1245, %1242 ], [ %1325, %1355 ], [ %1325, %1320 ]
  %1362 = icmp eq ptr %1360, null
  %1363 = icmp eq i32 %1361, -1
  %1364 = select i1 %1362, i1 true, i1 %1363
  br i1 %1364, label %1538, label %1365

1365:                                             ; preds = %1359
  call void @UI_ThemeColor(i32 noundef 23) #10
  %1366 = load i32, ptr %417, align 4, !tbaa !50
  %1367 = icmp eq i32 %1366, 0
  %1368 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %1369 = sitofp i16 %1368 to float
  %1370 = fmul float %1369, 5.000000e-01
  %1371 = fptosi float %1370 to i32
  br i1 %1367, label %1380, label %1372

1372:                                             ; preds = %1365
  %1373 = load i8, ptr %415, align 2, !tbaa !52
  %1374 = zext i8 %1373 to i32
  %1375 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %1376 = load i8, ptr %1375, align 1, !tbaa !53
  %1377 = zext i8 %1376 to i32
  %1378 = mul nuw nsw i32 %1377, %1374
  %1379 = add nsw i32 %1378, %1371
  br label %1380

1380:                                             ; preds = %1365, %1372
  %1381 = phi i32 [ %1379, %1372 ], [ %1371, %1365 ]
  %1382 = load i16, ptr %69, align 2, !tbaa !99
  %1383 = sext i16 %1382 to i32
  %1384 = load i16, ptr %36, align 2, !tbaa !91
  %1385 = sext i16 %1384 to i32
  %1386 = sub nsw i32 %1383, %1385
  %1387 = load ptr, ptr %1154, align 8, !tbaa !62
  %1388 = sext i32 %1172 to i64
  %1389 = getelementptr inbounds i8, ptr %1387, i64 %1388
  %1390 = load i8, ptr %1389, align 1, !tbaa !68
  call void @wrap_offset(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %1145, i32 noundef %1172, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %1391 = load ptr, ptr %1154, align 8, !tbaa !62
  %1392 = icmp sgt i32 %1172, 0
  br i1 %1392, label %1393, label %1413

1393:                                             ; preds = %1380
  %1394 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %1395

1395:                                             ; preds = %1407, %1393
  %1396 = phi i32 [ 0, %1393 ], [ %1411, %1407 ]
  %1397 = phi i32 [ 0, %1393 ], [ %1409, %1407 ]
  %1398 = sext i32 %1396 to i64
  %1399 = getelementptr inbounds i8, ptr %1391, i64 %1398
  %1400 = load i8, ptr %1399, align 1, !tbaa !68
  switch i8 %1400, label %1405 [
    i8 0, label %1413
    i8 9, label %1401
  ]

1401:                                             ; preds = %1395
  %1402 = load i32, ptr %1394, align 8, !tbaa !69
  %1403 = srem i32 %1397, %1402
  %1404 = sub nsw i32 %1402, %1403
  br label %1407

1405:                                             ; preds = %1395
  %1406 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %1399) #10
  br label %1407

1407:                                             ; preds = %1405, %1401
  %1408 = phi i32 [ %1404, %1401 ], [ %1406, %1405 ]
  %1409 = add nsw i32 %1408, %1397
  %1410 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1399) #10
  %1411 = add nsw i32 %1410, %1396
  %1412 = icmp slt i32 %1411, %1172
  br i1 %1412, label %1395, label %1413, !llvm.loop !77

1413:                                             ; preds = %1395, %1407, %1380
  %1414 = phi i32 [ 0, %1380 ], [ %1409, %1407 ], [ %1397, %1395 ]
  %1415 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %1416 = load i32, ptr %1415, align 8, !tbaa !119
  %1417 = sub nsw i32 %1414, %1416
  %1418 = load i32, ptr %14, align 4, !tbaa !54
  %1419 = add nsw i32 %1417, %1418
  %1420 = icmp sgt i32 %1419, -1
  br i1 %1420, label %1421, label %1462

1421:                                             ; preds = %1413
  %1422 = getelementptr inbounds %struct.Text, ptr %1143, i64 0, i32 4
  %1423 = load ptr, ptr %1422, align 8, !tbaa !57
  %1424 = call i32 @txt_get_span(ptr noundef %1423, ptr noundef nonnull %1145) #10
  %1425 = load i32, ptr %100, align 8, !tbaa !61
  %1426 = sub nsw i32 %1424, %1425
  %1427 = load i32, ptr %13, align 4, !tbaa !54
  %1428 = add nsw i32 %1426, %1427
  %1429 = load i8, ptr %415, align 2, !tbaa !52
  %1430 = zext i8 %1429 to i32
  %1431 = mul nsw i32 %1419, %1430
  %1432 = add nsw i32 %1431, %1381
  %1433 = load i16, ptr %36, align 2, !tbaa !91
  %1434 = sext i16 %1433 to i32
  %1435 = sitofp i16 %1433 to float
  %1436 = fmul float %1435, 0x3FD3333340000000
  %1437 = fptosi float %1436 to i32
  %1438 = add nsw i32 %1437, %1434
  %1439 = mul nsw i32 %1438, %1428
  %1440 = sub nsw i32 %1386, %1439
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %1390, ptr %6, align 1, !tbaa !68
  %1441 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %1442 = sitofp i32 %1432 to float
  %1443 = sitofp i32 %1440 to float
  call void @BLF_position(i32 noundef %1441, float noundef %1442, float noundef %1443, float noundef 0.000000e+00) #10
  %1444 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  call void @BLF_draw(i32 noundef %1444, ptr noundef nonnull %6, i64 noundef 1) #10
  %1445 = load i8, ptr %415, align 2, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %1446 = zext i8 %1445 to i32
  %1447 = mul nsw i32 %1419, %1446
  %1448 = add i32 %1381, 1
  %1449 = add i32 %1448, %1447
  %1450 = load i16, ptr %36, align 2, !tbaa !91
  %1451 = sext i16 %1450 to i32
  %1452 = sitofp i16 %1450 to float
  %1453 = fmul float %1452, 0x3FD3333340000000
  %1454 = fptosi float %1453 to i32
  %1455 = add nsw i32 %1454, %1451
  %1456 = mul nsw i32 %1455, %1428
  %1457 = sub nsw i32 %1386, %1456
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %1390, ptr %5, align 1, !tbaa !68
  %1458 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %1459 = sitofp i32 %1449 to float
  %1460 = sitofp i32 %1457 to float
  call void @BLF_position(i32 noundef %1458, float noundef %1459, float noundef %1460, float noundef 0.000000e+00) #10
  %1461 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  call void @BLF_draw(i32 noundef %1461, ptr noundef nonnull %5, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %1462

1462:                                             ; preds = %1421, %1413
  %1463 = getelementptr inbounds %struct.TextLine, ptr %1360, i64 0, i32 2
  %1464 = load ptr, ptr %1463, align 8, !tbaa !62
  %1465 = sext i32 %1361 to i64
  %1466 = getelementptr inbounds i8, ptr %1464, i64 %1465
  %1467 = load i8, ptr %1466, align 1, !tbaa !68
  call void @wrap_offset(ptr noundef %0, ptr noundef %1, ptr noundef %1360, i32 noundef %1361, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %1468 = load ptr, ptr %1463, align 8, !tbaa !62
  %1469 = icmp sgt i32 %1361, 0
  br i1 %1469, label %1470, label %1490

1470:                                             ; preds = %1462
  %1471 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %1472

1472:                                             ; preds = %1484, %1470
  %1473 = phi i32 [ 0, %1470 ], [ %1488, %1484 ]
  %1474 = phi i32 [ 0, %1470 ], [ %1486, %1484 ]
  %1475 = sext i32 %1473 to i64
  %1476 = getelementptr inbounds i8, ptr %1468, i64 %1475
  %1477 = load i8, ptr %1476, align 1, !tbaa !68
  switch i8 %1477, label %1482 [
    i8 0, label %1490
    i8 9, label %1478
  ]

1478:                                             ; preds = %1472
  %1479 = load i32, ptr %1471, align 8, !tbaa !69
  %1480 = srem i32 %1474, %1479
  %1481 = sub nsw i32 %1479, %1480
  br label %1484

1482:                                             ; preds = %1472
  %1483 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %1476) #10
  br label %1484

1484:                                             ; preds = %1482, %1478
  %1485 = phi i32 [ %1481, %1478 ], [ %1483, %1482 ]
  %1486 = add nsw i32 %1485, %1474
  %1487 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1476) #10
  %1488 = add nsw i32 %1487, %1473
  %1489 = icmp slt i32 %1488, %1361
  br i1 %1489, label %1472, label %1490, !llvm.loop !77

1490:                                             ; preds = %1472, %1484, %1462
  %1491 = phi i32 [ 0, %1462 ], [ %1486, %1484 ], [ %1474, %1472 ]
  %1492 = load i32, ptr %1415, align 8, !tbaa !119
  %1493 = sub nsw i32 %1491, %1492
  %1494 = load i32, ptr %14, align 4, !tbaa !54
  %1495 = add nsw i32 %1493, %1494
  %1496 = icmp sgt i32 %1495, -1
  br i1 %1496, label %1497, label %1538

1497:                                             ; preds = %1490
  %1498 = getelementptr inbounds %struct.Text, ptr %1143, i64 0, i32 4
  %1499 = load ptr, ptr %1498, align 8, !tbaa !57
  %1500 = call i32 @txt_get_span(ptr noundef %1499, ptr noundef %1360) #10
  %1501 = load i32, ptr %100, align 8, !tbaa !61
  %1502 = sub nsw i32 %1500, %1501
  %1503 = load i32, ptr %13, align 4, !tbaa !54
  %1504 = add nsw i32 %1502, %1503
  %1505 = load i8, ptr %415, align 2, !tbaa !52
  %1506 = zext i8 %1505 to i32
  %1507 = mul nsw i32 %1495, %1506
  %1508 = add nsw i32 %1507, %1381
  %1509 = load i16, ptr %36, align 2, !tbaa !91
  %1510 = sext i16 %1509 to i32
  %1511 = sitofp i16 %1509 to float
  %1512 = fmul float %1511, 0x3FD3333340000000
  %1513 = fptosi float %1512 to i32
  %1514 = add nsw i32 %1513, %1510
  %1515 = mul nsw i32 %1514, %1504
  %1516 = sub nsw i32 %1386, %1515
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %1467, ptr %4, align 1, !tbaa !68
  %1517 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %1518 = sitofp i32 %1508 to float
  %1519 = sitofp i32 %1516 to float
  call void @BLF_position(i32 noundef %1517, float noundef %1518, float noundef %1519, float noundef 0.000000e+00) #10
  %1520 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  call void @BLF_draw(i32 noundef %1520, ptr noundef nonnull %4, i64 noundef 1) #10
  %1521 = load i8, ptr %415, align 2, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %1522 = zext i8 %1521 to i32
  %1523 = mul nsw i32 %1495, %1522
  %1524 = add i32 %1381, 1
  %1525 = add i32 %1524, %1523
  %1526 = load i16, ptr %36, align 2, !tbaa !91
  %1527 = sext i16 %1526 to i32
  %1528 = sitofp i16 %1526 to float
  %1529 = fmul float %1528, 0x3FD3333340000000
  %1530 = fptosi float %1529 to i32
  %1531 = add nsw i32 %1530, %1527
  %1532 = mul nsw i32 %1531, %1504
  %1533 = sub nsw i32 %1386, %1532
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %1467, ptr %3, align 1, !tbaa !68
  %1534 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %1535 = sitofp i32 %1525 to float
  %1536 = sitofp i32 %1533 to float
  call void @BLF_position(i32 noundef %1534, float noundef %1535, float noundef %1536, float noundef 0.000000e+00) #10
  %1537 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  call void @BLF_draw(i32 noundef %1537, ptr noundef nonnull %3, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %1538

1538:                                             ; preds = %1142, %1147, %1170, %1174, %1181, %1181, %1359, %1490, %1497
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @glTranslatef(float noundef 3.750000e-01, float noundef 3.750000e-01, float noundef 0.000000e+00) #10
  %1539 = call ptr @UI_GetTheme() #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  %1540 = getelementptr inbounds %struct.bTheme, ptr %1539, i64 0, i32 3, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1540, i64 32, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  call void @UI_ThemeColor(i32 noundef 2) #10
  call void @glRecti(i32 noundef %85, i32 noundef 0, i32 noundef %86, i32 noundef %88) #10
  %1541 = load i16, ptr %1122, align 8, !tbaa !130
  %1542 = and i16 %1541, 1
  %1543 = zext nneg i16 %1542 to i32
  call void @uiWidgetScrollDraw(ptr noundef nonnull %11, ptr noundef nonnull %22, ptr noundef nonnull %128, i32 noundef %1543) #10
  call void @uiSetRoundBox(i32 noundef 15) #10
  %1544 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 1
  %1545 = load i32, ptr %1544, align 4, !tbaa !103
  %1546 = load i32, ptr %325, align 4, !tbaa !102
  %1547 = sub nsw i32 %1545, %1546
  %1548 = load i32, ptr %330, align 4, !tbaa !105
  %1549 = load i32, ptr %333, align 4, !tbaa !104
  %1550 = sub nsw i32 %1548, %1549
  %1551 = call i32 @llvm.smin.i32(i32 %1547, i32 %1550)
  %1552 = sitofp i32 %1551 to float
  %1553 = fmul float %1552, 0x3FD99999A0000000
  call void @UI_GetThemeColor3ubv(i32 noundef 23, ptr noundef nonnull %12) #10
  %1554 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 48, ptr %1554, align 1, !tbaa !68
  call void @glColor4ubv(ptr noundef nonnull %12) #10
  call void @glEnable(i32 noundef 3042) #10
  %1555 = load i32, ptr %325, align 8, !tbaa !140
  %1556 = add nsw i32 %1555, 1
  %1557 = sitofp i32 %1556 to float
  %1558 = load i32, ptr %333, align 8, !tbaa !111
  %1559 = sitofp i32 %1558 to float
  %1560 = load i32, ptr %1544, align 4, !tbaa !141
  %1561 = add nsw i32 %1560, -1
  %1562 = sitofp i32 %1561 to float
  %1563 = load i32, ptr %330, align 4, !tbaa !110
  %1564 = sitofp i32 %1563 to float
  call void @uiRoundBox(float noundef %1557, float noundef %1559, float noundef %1562, float noundef %1564, float noundef %1553) #10
  call void @glDisable(i32 noundef 3042) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %10) #10
  %1565 = icmp eq ptr %0, null
  br i1 %1565, label %1722, label %1566

1566:                                             ; preds = %1538
  %1567 = load ptr, ptr %24, align 8, !tbaa !55
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1722, label %1569

1569:                                             ; preds = %1566
  %1570 = call signext i16 @texttool_text_is_active(ptr noundef nonnull %1567) #10
  %1571 = icmp eq i16 %1570, 0
  br i1 %1571, label %1722, label %1572

1572:                                             ; preds = %1569
  %1573 = call ptr @texttool_docs_get() #10
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1722, label %1575

1575:                                             ; preds = %1572
  %1576 = load ptr, ptr %24, align 8, !tbaa !55
  %1577 = getelementptr inbounds %struct.Text, ptr %1576, i64 0, i32 5
  %1578 = load i32, ptr %100, align 8, !tbaa !61
  %1579 = sub nsw i32 0, %1578
  %1580 = load ptr, ptr %1577, align 8, !tbaa !87
  %1581 = icmp eq ptr %1580, null
  br i1 %1581, label %1589, label %1582

1582:                                             ; preds = %1575, %1582
  %1583 = phi ptr [ %1587, %1582 ], [ %1580, %1575 ]
  %1584 = phi i32 [ %1586, %1582 ], [ %1579, %1575 ]
  %1585 = getelementptr inbounds %struct.TextLine, ptr %1583, i64 0, i32 1
  %1586 = add nsw i32 %1584, 1
  %1587 = load ptr, ptr %1585, align 8, !tbaa !87
  %1588 = icmp eq ptr %1587, null
  br i1 %1588, label %1589, label %1582, !llvm.loop !142

1589:                                             ; preds = %1582, %1575
  %1590 = phi i32 [ %1579, %1575 ], [ %1586, %1582 ]
  %1591 = icmp slt i32 %1590, 0
  br i1 %1591, label %1722, label %1592

1592:                                             ; preds = %1589
  %1593 = load i32, ptr %417, align 4, !tbaa !50
  %1594 = icmp eq i32 %1593, 0
  %1595 = load i8, ptr %415, align 2, !tbaa !52
  %1596 = zext i8 %1595 to i32
  %1597 = getelementptr inbounds %struct.Text, ptr %1576, i64 0, i32 7
  %1598 = load i32, ptr %1597, align 8, !tbaa !117
  %1599 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %1600 = load i32, ptr %1599, align 8, !tbaa !119
  %1601 = sub nsw i32 %1598, %1600
  br i1 %1594, label %1613, label %1602

1602:                                             ; preds = %1592
  %1603 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %1604 = sitofp i16 %1603 to float
  %1605 = fmul float %1604, 5.000000e-01
  %1606 = fptosi float %1605 to i32
  %1607 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %1608 = load i8, ptr %1607, align 1, !tbaa !53
  %1609 = zext i8 %1608 to i32
  %1610 = add i32 %1601, %1609
  %1611 = mul i32 %1610, %1596
  %1612 = add i32 %1611, %1606
  br label %1620

1613:                                             ; preds = %1592
  %1614 = mul nsw i32 %1601, %1596
  %1615 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %1616 = sitofp i16 %1615 to float
  %1617 = fmul float %1616, 5.000000e-01
  %1618 = fptosi float %1617 to i32
  %1619 = add nsw i32 %1614, %1618
  br label %1620

1620:                                             ; preds = %1613, %1602
  %1621 = phi i32 [ %1612, %1602 ], [ %1619, %1613 ]
  %1622 = add nsw i32 %1621, -4
  %1623 = call ptr @texttool_suggest_first() #10
  %1624 = icmp eq ptr %1623, null
  br i1 %1624, label %1631, label %1625

1625:                                             ; preds = %1620
  %1626 = load i8, ptr %415, align 2, !tbaa !52
  %1627 = zext i8 %1626 to i32
  %1628 = mul nuw nsw i32 %1627, 20
  %1629 = add i32 %1621, 46
  %1630 = add i32 %1629, %1628
  br label %1631

1631:                                             ; preds = %1625, %1620
  %1632 = phi i32 [ %1630, %1625 ], [ %1622, %1620 ]
  %1633 = load i16, ptr %69, align 2, !tbaa !99
  %1634 = sext i16 %1633 to i32
  %1635 = load i16, ptr %36, align 2, !tbaa !91
  %1636 = sext i16 %1635 to i32
  %1637 = mul nsw i32 %1590, %1636
  %1638 = sub nsw i32 %1634, %1637
  %1639 = add nsw i32 %1638, -2
  %1640 = load i8, ptr %415, align 2, !tbaa !52
  %1641 = zext i8 %1640 to i32
  %1642 = mul nuw nsw i32 %1641, 40
  %1643 = sitofp i16 %1635 to float
  %1644 = fmul float %1643, 0x3FD3333340000000
  %1645 = fptosi float %1644 to i32
  %1646 = add nsw i32 %1645, %1636
  %1647 = mul i32 %1646, -11
  call void @UI_ThemeColor(i32 noundef 2) #10
  %1648 = add i32 %1632, 20
  %1649 = add i32 %1648, %1642
  %1650 = add i32 %1647, %1639
  call void @glRecti(i32 noundef %1632, i32 noundef %1639, i32 noundef %1649, i32 noundef %1650) #10
  call void @UI_ThemeColor(i32 noundef 21) #10
  call void @glBegin(i32 noundef 2) #10
  call void @glVertex2i(i32 noundef %1632, i32 noundef %1639) #10
  call void @glVertex2i(i32 noundef %1649, i32 noundef %1639) #10
  call void @glVertex2i(i32 noundef %1649, i32 noundef %1650) #10
  call void @glVertex2i(i32 noundef %1632, i32 noundef %1650) #10
  call void @glEnd() #10
  call void @glBegin(i32 noundef 2) #10
  %1651 = add nsw i32 %1649, -10
  %1652 = add nsw i32 %1638, -9
  call void @glVertex2i(i32 noundef %1651, i32 noundef %1652) #10
  %1653 = add nsw i32 %1649, -4
  call void @glVertex2i(i32 noundef %1653, i32 noundef %1652) #10
  %1654 = add nsw i32 %1649, -7
  %1655 = add nsw i32 %1638, -4
  call void @glVertex2i(i32 noundef %1654, i32 noundef %1655) #10
  call void @glEnd() #10
  call void @glBegin(i32 noundef 2) #10
  %1656 = add nsw i32 %1650, 7
  call void @glVertex2i(i32 noundef %1651, i32 noundef %1656) #10
  call void @glVertex2i(i32 noundef %1653, i32 noundef %1656) #10
  %1657 = add i32 %1647, %1638
  call void @glVertex2i(i32 noundef %1654, i32 noundef %1657) #10
  call void @glEnd() #10
  call void @UI_ThemeColor(i32 noundef 3) #10
  %1658 = add nsw i32 %1632, 4
  %1659 = add nsw i32 %1632, 4
  br label %1660

1660:                                             ; preds = %1714, %1631
  %1661 = phi i32 [ 0, %1631 ], [ %1715, %1714 ]
  %1662 = phi i32 [ 40, %1631 ], [ %1716, %1714 ]
  %1663 = phi i32 [ 0, %1631 ], [ %1717, %1714 ]
  %1664 = phi ptr [ %1573, %1631 ], [ %1721, %1714 ]
  %1665 = phi i32 [ %1639, %1631 ], [ %1719, %1714 ]
  %1666 = load i8, ptr %1664, align 1, !tbaa !68
  switch i8 %1666, label %1672 [
    i8 0, label %1722
    i8 13, label %1667
  ]

1667:                                             ; preds = %1660
  %1668 = getelementptr inbounds i8, ptr %1664, i64 1
  %1669 = load i8, ptr %1668, align 1, !tbaa !68
  %1670 = icmp eq i8 %1669, 10
  br i1 %1670, label %1672, label %1671

1671:                                             ; preds = %1667
  store i8 10, ptr %1664, align 1, !tbaa !68
  br label %1672

1672:                                             ; preds = %1671, %1667, %1660
  %1673 = phi ptr [ %1664, %1671 ], [ %1668, %1667 ], [ %1664, %1660 ]
  %1674 = load i8, ptr %1673, align 1, !tbaa !68
  switch i8 %1674, label %1687 [
    i8 32, label %1688
    i8 9, label %1688
    i8 10, label %1675
  ]

1675:                                             ; preds = %1672
  %1676 = sext i32 %1661 to i64
  %1677 = getelementptr inbounds [41 x i8], ptr %10, i64 0, i64 %1676
  store i8 0, ptr %1677, align 1, !tbaa !68
  %1678 = icmp sgt i32 %1663, -1
  br i1 %1678, label %1679, label %1684

1679:                                             ; preds = %1675
  %1680 = load i16, ptr %36, align 2, !tbaa !91
  %1681 = sext i16 %1680 to i32
  %1682 = sub nsw i32 %1665, %1681
  %1683 = add nsw i32 %1682, -3
  call fastcc void @text_draw(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i32 noundef %1658, i32 noundef %1683, ptr noundef null)
  br label %1684

1684:                                             ; preds = %1679, %1675
  %1685 = phi i32 [ %1682, %1679 ], [ %1665, %1675 ]
  %1686 = add nsw i32 %1663, 1
  br label %1688

1687:                                             ; preds = %1672
  br label %1688

1688:                                             ; preds = %1687, %1684, %1672, %1672
  %1689 = phi i32 [ 0, %1684 ], [ %1661, %1672 ], [ %1661, %1672 ], [ %1661, %1687 ]
  %1690 = phi i32 [ 40, %1684 ], [ %1661, %1672 ], [ %1661, %1672 ], [ %1662, %1687 ]
  %1691 = phi i32 [ %1686, %1684 ], [ %1663, %1672 ], [ %1663, %1672 ], [ %1663, %1687 ]
  %1692 = phi i32 [ %1685, %1684 ], [ %1665, %1672 ], [ %1665, %1672 ], [ %1665, %1687 ]
  %1693 = load i8, ptr %1673, align 1, !tbaa !68
  %1694 = add nsw i32 %1689, 1
  %1695 = sext i32 %1689 to i64
  %1696 = getelementptr inbounds [41 x i8], ptr %10, i64 0, i64 %1695
  store i8 %1693, ptr %1696, align 1, !tbaa !68
  %1697 = icmp eq i32 %1694, 40
  br i1 %1697, label %1698, label %1714

1698:                                             ; preds = %1688
  %1699 = sext i32 %1690 to i64
  %1700 = getelementptr inbounds [41 x i8], ptr %10, i64 0, i64 %1699
  store i8 0, ptr %1700, align 1, !tbaa !68
  %1701 = icmp sgt i32 %1691, -1
  br i1 %1701, label %1702, label %1707

1702:                                             ; preds = %1698
  %1703 = load i16, ptr %36, align 2, !tbaa !91
  %1704 = sext i16 %1703 to i32
  %1705 = sub nsw i32 %1692, %1704
  %1706 = add nsw i32 %1705, -3
  call fastcc void @text_draw(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i32 noundef %1659, i32 noundef %1706, ptr noundef null)
  br label %1707

1707:                                             ; preds = %1702, %1698
  %1708 = phi i32 [ %1705, %1702 ], [ %1692, %1698 ]
  %1709 = sub i32 39, %1690
  %1710 = sext i32 %1709 to i64
  %1711 = sub nsw i64 0, %1710
  %1712 = getelementptr inbounds i8, ptr %1673, i64 %1711
  %1713 = add nsw i32 %1691, 1
  br label %1714

1714:                                             ; preds = %1707, %1688
  %1715 = phi i32 [ 0, %1707 ], [ %1694, %1688 ]
  %1716 = phi i32 [ 40, %1707 ], [ %1690, %1688 ]
  %1717 = phi i32 [ %1713, %1707 ], [ %1691, %1688 ]
  %1718 = phi ptr [ %1712, %1707 ], [ %1673, %1688 ]
  %1719 = phi i32 [ %1708, %1707 ], [ %1692, %1688 ]
  %1720 = icmp sgt i32 %1717, 9
  %1721 = getelementptr inbounds i8, ptr %1718, i64 1
  br i1 %1720, label %1722, label %1660, !llvm.loop !143

1722:                                             ; preds = %1660, %1714, %1538, %1566, %1569, %1572, %1589
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %1723 = load i16, ptr %36, align 2, !tbaa !91
  %1724 = sext i16 %1723 to i32
  %1725 = sitofp i16 %1723 to float
  %1726 = fmul float %1725, 0x3FD3333340000000
  %1727 = fptosi float %1726 to i32
  %1728 = add nsw i32 %1727, %1724
  %1729 = load ptr, ptr %24, align 8, !tbaa !55
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %1942, label %1731

1731:                                             ; preds = %1722
  %1732 = call signext i16 @texttool_text_is_active(ptr noundef nonnull %1729) #10
  %1733 = icmp eq i16 %1732, 0
  br i1 %1733, label %1942, label %1734

1734:                                             ; preds = %1731
  %1735 = call ptr @texttool_suggest_first() #10
  %1736 = call ptr @texttool_suggest_last() #10
  %1737 = icmp ne ptr %1735, null
  %1738 = icmp ne ptr %1736, null
  %1739 = select i1 %1737, i1 %1738, i1 false
  br i1 %1739, label %1740, label %1942

1740:                                             ; preds = %1734
  call void @text_pop_suggest_list() #10
  %1741 = call ptr @texttool_suggest_selected() #10
  %1742 = call ptr @texttool_suggest_top() #10
  %1743 = load ptr, ptr %24, align 8, !tbaa !55
  %1744 = getelementptr inbounds %struct.Text, ptr %1743, i64 0, i32 5
  %1745 = load ptr, ptr %1744, align 8, !tbaa !82
  %1746 = getelementptr inbounds %struct.Text, ptr %1743, i64 0, i32 7
  %1747 = load i32, ptr %1746, align 8, !tbaa !117
  call void @wrap_offset(ptr noundef %0, ptr noundef %1, ptr noundef %1745, i32 noundef %1747, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %1748 = load ptr, ptr %24, align 8, !tbaa !55
  %1749 = getelementptr inbounds %struct.Text, ptr %1748, i64 0, i32 4
  %1750 = load ptr, ptr %1749, align 8, !tbaa !57
  %1751 = getelementptr inbounds %struct.Text, ptr %1748, i64 0, i32 5
  %1752 = load ptr, ptr %1751, align 8, !tbaa !82
  %1753 = call i32 @txt_get_span(ptr noundef %1750, ptr noundef %1752) #10
  %1754 = load i32, ptr %100, align 8, !tbaa !61
  %1755 = sub i32 %1753, %1754
  %1756 = load i32, ptr %8, align 4, !tbaa !54
  %1757 = add nsw i32 %1755, %1756
  %1758 = load ptr, ptr %24, align 8, !tbaa !55
  %1759 = getelementptr inbounds %struct.Text, ptr %1758, i64 0, i32 5
  %1760 = load ptr, ptr %1759, align 8, !tbaa !82
  %1761 = getelementptr inbounds %struct.TextLine, ptr %1760, i64 0, i32 2
  %1762 = load ptr, ptr %1761, align 8, !tbaa !62
  %1763 = getelementptr inbounds %struct.Text, ptr %1758, i64 0, i32 7
  %1764 = load i32, ptr %1763, align 8, !tbaa !117
  %1765 = icmp sgt i32 %1764, 0
  br i1 %1765, label %1766, label %1786

1766:                                             ; preds = %1740
  %1767 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %1768

1768:                                             ; preds = %1780, %1766
  %1769 = phi i32 [ 0, %1766 ], [ %1784, %1780 ]
  %1770 = phi i32 [ 0, %1766 ], [ %1782, %1780 ]
  %1771 = sext i32 %1769 to i64
  %1772 = getelementptr inbounds i8, ptr %1762, i64 %1771
  %1773 = load i8, ptr %1772, align 1, !tbaa !68
  switch i8 %1773, label %1778 [
    i8 0, label %1786
    i8 9, label %1774
  ]

1774:                                             ; preds = %1768
  %1775 = load i32, ptr %1767, align 8, !tbaa !69
  %1776 = srem i32 %1770, %1775
  %1777 = sub nsw i32 %1775, %1776
  br label %1780

1778:                                             ; preds = %1768
  %1779 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %1772) #10
  br label %1780

1780:                                             ; preds = %1778, %1774
  %1781 = phi i32 [ %1777, %1774 ], [ %1779, %1778 ]
  %1782 = add nsw i32 %1781, %1770
  %1783 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1772) #10
  %1784 = add nsw i32 %1783, %1769
  %1785 = icmp slt i32 %1784, %1764
  br i1 %1785, label %1768, label %1786, !llvm.loop !77

1786:                                             ; preds = %1768, %1780, %1740
  %1787 = phi i32 [ 0, %1740 ], [ %1782, %1780 ], [ %1770, %1768 ]
  %1788 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %1789 = load i32, ptr %1788, align 8, !tbaa !119
  %1790 = sub i32 %1787, %1789
  %1791 = load i32, ptr %9, align 4, !tbaa !54
  %1792 = add nsw i32 %1790, %1791
  %1793 = load i32, ptr %417, align 4, !tbaa !50
  %1794 = icmp eq i32 %1793, 0
  %1795 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %1796 = sitofp i16 %1795 to float
  %1797 = fmul float %1796, 5.000000e-01
  %1798 = fptosi float %1797 to i32
  br i1 %1794, label %1807, label %1799

1799:                                             ; preds = %1786
  %1800 = load i8, ptr %415, align 2, !tbaa !52
  %1801 = zext i8 %1800 to i32
  %1802 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %1803 = load i8, ptr %1802, align 1, !tbaa !53
  %1804 = zext i8 %1803 to i32
  %1805 = mul nuw nsw i32 %1804, %1801
  %1806 = add nsw i32 %1805, %1798
  br label %1807

1807:                                             ; preds = %1786, %1799
  %1808 = phi i32 [ %1806, %1799 ], [ %1798, %1786 ]
  %1809 = load i8, ptr %415, align 2, !tbaa !52
  %1810 = zext i8 %1809 to i32
  %1811 = load i16, ptr %69, align 2, !tbaa !99
  %1812 = sext i16 %1811 to i32
  %1813 = xor i32 %1757, -1
  %1814 = mul i32 %1728, %1813
  %1815 = add i32 %1814, %1812
  %1816 = add nsw i32 %1815, -2
  %1817 = load ptr, ptr %24, align 8, !tbaa !55
  %1818 = getelementptr inbounds %struct.Text, ptr %1817, i64 0, i32 7
  %1819 = load i32, ptr %1818, align 8, !tbaa !117
  %1820 = getelementptr inbounds %struct.Text, ptr %1817, i64 0, i32 5
  %1821 = load ptr, ptr %1820, align 8, !tbaa !82
  %1822 = getelementptr inbounds %struct.TextLine, ptr %1821, i64 0, i32 2
  %1823 = load ptr, ptr %1822, align 8, !tbaa !62
  %1824 = call i32 @text_find_identifier_start(ptr noundef %1823, i32 noundef %1819) #10
  %1825 = sub i32 %1824, %1819
  %1826 = add i32 %1792, %1825
  %1827 = mul i32 %1826, %1810
  %1828 = add i32 %1808, -4
  %1829 = add i32 %1828, %1827
  %1830 = load i8, ptr %415, align 2, !tbaa !52
  %1831 = zext i8 %1830 to i32
  %1832 = mul nuw nsw i32 %1831, 20
  %1833 = add nuw nsw i32 %1832, 20
  %1834 = mul i32 %1728, -7
  %1835 = add i32 %1834, -8
  %1836 = add nsw i32 %1829, %1833
  %1837 = load i16, ptr %78, align 8, !tbaa !34
  %1838 = sext i16 %1837 to i32
  %1839 = icmp sgt i32 %1836, %1838
  %1840 = sub nsw i32 %1838, %1833
  %1841 = call i32 @llvm.smax.i32(i32 %1840, i32 0)
  %1842 = select i1 %1839, i32 %1841, i32 %1829
  %1843 = sitofp i32 %1842 to float
  %1844 = add i32 %1835, %1816
  %1845 = sitofp i32 %1844 to float
  %1846 = add nsw i32 %1842, %1833
  %1847 = sitofp i32 %1846 to float
  %1848 = sitofp i32 %1816 to float
  call void @uiDrawBoxShadow(i8 noundef zeroext -36, float noundef %1843, float noundef %1845, float noundef %1847, float noundef %1848) #10
  call void @UI_ThemeColor(i32 noundef 21) #10
  %1849 = add nsw i32 %1842, -1
  %1850 = add nsw i32 %1815, -1
  %1851 = add nsw i32 %1846, 1
  %1852 = add nsw i32 %1844, -1
  call void @glRecti(i32 noundef %1849, i32 noundef %1850, i32 noundef %1851, i32 noundef %1852) #10
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 16) #10
  call void @glRecti(i32 noundef %1842, i32 noundef %1816, i32 noundef %1846, i32 noundef %1844) #10
  %1853 = load i32, ptr %1742, align 4, !tbaa !54
  %1854 = icmp sgt i32 %1853, 0
  br i1 %1854, label %1858, label %1864

1855:                                             ; preds = %1858
  %1856 = add nuw nsw i32 %1860, 1
  %1857 = icmp eq i32 %1856, %1853
  br i1 %1857, label %1864, label %1858, !llvm.loop !144

1858:                                             ; preds = %1807, %1855
  %1859 = phi ptr [ %1862, %1855 ], [ %1735, %1807 ]
  %1860 = phi i32 [ %1856, %1855 ], [ 0, %1807 ]
  %1861 = getelementptr inbounds %struct.SuggItem, ptr %1859, i64 0, i32 1
  %1862 = load ptr, ptr %1861, align 8, !tbaa !145
  %1863 = icmp eq ptr %1862, null
  br i1 %1863, label %1864, label %1855

1864:                                             ; preds = %1855, %1858, %1807
  %1865 = phi ptr [ %1735, %1807 ], [ %1862, %1855 ], [ %1859, %1858 ]
  %1866 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %1867 = add nsw i32 %1842, 2
  %1868 = add nsw i32 %1842, 2
  br label %1869

1869:                                             ; preds = %1864, %1935
  %1870 = phi ptr [ %1865, %1864 ], [ %1938, %1935 ]
  %1871 = phi i32 [ 0, %1864 ], [ %1936, %1935 ]
  %1872 = phi i32 [ %1816, %1864 ], [ %1896, %1935 ]
  %1873 = getelementptr inbounds %struct.SuggItem, ptr %1870, i64 0, i32 2
  %1874 = load ptr, ptr %1873, align 8, !tbaa !147
  br label %1875

1875:                                             ; preds = %1884, %1869
  %1876 = phi i32 [ 20, %1869 ], [ %1882, %1884 ]
  %1877 = phi ptr [ %1874, %1869 ], [ %1887, %1884 ]
  %1878 = load i8, ptr %1877, align 1, !tbaa !68
  %1879 = icmp eq i8 %1878, 0
  br i1 %1879, label %1889, label %1880

1880:                                             ; preds = %1875
  %1881 = call i32 @BLI_str_utf8_char_width(ptr noundef nonnull %1877) #10
  %1882 = sub nsw i32 %1876, %1881
  %1883 = icmp slt i32 %1882, 0
  br i1 %1883, label %1889, label %1884

1884:                                             ; preds = %1880
  %1885 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1877) #10
  %1886 = sext i32 %1885 to i64
  %1887 = getelementptr inbounds i8, ptr %1877, i64 %1886
  %1888 = icmp eq i32 %1882, 0
  br i1 %1888, label %1889, label %1875, !llvm.loop !125

1889:                                             ; preds = %1884, %1880, %1875
  %1890 = phi ptr [ %1877, %1880 ], [ %1887, %1884 ], [ %1877, %1875 ]
  %1891 = load ptr, ptr %1873, align 8, !tbaa !147
  %1892 = ptrtoint ptr %1890 to i64
  %1893 = ptrtoint ptr %1891 to i64
  %1894 = sub i64 %1892, %1893
  %1895 = trunc i64 %1894 to i32
  %1896 = sub nsw i32 %1872, %1728
  %1897 = shl i64 %1894, 32
  %1898 = add i64 %1897, 4294967296
  %1899 = ashr exact i64 %1898, 32
  %1900 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1891, i64 noundef %1899) #10
  %1901 = load i8, ptr %415, align 2, !tbaa !52
  %1902 = icmp sgt i32 %1895, 0
  br i1 %1902, label %1903, label %1921

1903:                                             ; preds = %1889, %1915
  %1904 = phi i32 [ %1919, %1915 ], [ 0, %1889 ]
  %1905 = phi i32 [ %1917, %1915 ], [ 0, %1889 ]
  %1906 = sext i32 %1904 to i64
  %1907 = getelementptr inbounds i8, ptr %7, i64 %1906
  %1908 = load i8, ptr %1907, align 1, !tbaa !68
  switch i8 %1908, label %1913 [
    i8 0, label %1921
    i8 9, label %1909
  ]

1909:                                             ; preds = %1903
  %1910 = load i32, ptr %1866, align 8, !tbaa !69
  %1911 = srem i32 %1905, %1910
  %1912 = sub nsw i32 %1910, %1911
  br label %1915

1913:                                             ; preds = %1903
  %1914 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %1907) #10
  br label %1915

1915:                                             ; preds = %1913, %1909
  %1916 = phi i32 [ %1912, %1909 ], [ %1914, %1913 ]
  %1917 = add nsw i32 %1916, %1905
  %1918 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %1907) #10
  %1919 = add nsw i32 %1918, %1904
  %1920 = icmp slt i32 %1919, %1895
  br i1 %1920, label %1903, label %1921, !llvm.loop !77

1921:                                             ; preds = %1903, %1915, %1889
  %1922 = phi i32 [ 0, %1889 ], [ %1917, %1915 ], [ %1905, %1903 ]
  %1923 = icmp eq ptr %1870, %1741
  br i1 %1923, label %1924, label %1930

1924:                                             ; preds = %1921
  %1925 = zext i8 %1901 to i32
  %1926 = mul nsw i32 %1922, %1925
  call void @UI_ThemeColor(i32 noundef 22) #10
  %1927 = add nsw i32 %1896, -3
  %1928 = add nsw i32 %1926, %1867
  %1929 = add nsw i32 %1872, -3
  call void @glRecti(i32 noundef %1867, i32 noundef %1927, i32 noundef %1928, i32 noundef %1929) #10
  br label %1930

1930:                                             ; preds = %1924, %1921
  %1931 = getelementptr inbounds %struct.SuggItem, ptr %1870, i64 0, i32 3
  %1932 = load i8, ptr %1931, align 8, !tbaa !148
  call fastcc void @format_draw_color(i8 noundef zeroext %1932)
  %1933 = add nsw i32 %1896, -1
  call fastcc void @text_draw(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef %1868, i32 noundef %1933, ptr noundef null)
  %1934 = icmp eq ptr %1870, %1736
  br i1 %1934, label %1942, label %1935

1935:                                             ; preds = %1930
  %1936 = add nuw nsw i32 %1871, 1
  %1937 = getelementptr inbounds %struct.SuggItem, ptr %1870, i64 0, i32 1
  %1938 = load ptr, ptr %1937, align 8, !tbaa !145
  %1939 = icmp ult i32 %1871, 6
  %1940 = icmp ne ptr %1938, null
  %1941 = select i1 %1939, i1 %1940, i1 false
  br i1 %1941, label %1869, label %1942, !llvm.loop !149

1942:                                             ; preds = %1935, %1930, %1722, %1731, %1734
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %7) #10
  br label %1943

1943:                                             ; preds = %2, %1942
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #10
  ret void
}

declare void @txt_clean_text(ptr noundef) local_unnamed_addr #3

declare ptr @ED_text_format_get(ptr noundef) local_unnamed_addr #3

declare float @BLF_fixed_width(i32 noundef) local_unnamed_addr #3

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @text_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) unnamed_addr #2 {
  %8 = alloca %struct.FlattenString, align 8
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %10 = load i16, ptr %9, align 4, !tbaa !112
  %11 = icmp ne i16 %10, 0
  %12 = icmp ne ptr %6, null
  %13 = and i1 %12, %11
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %8) #10
  %14 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %1) #10
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.FlattenString, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = icmp ne i32 %3, 0
  %20 = add nsw i32 %3, %2
  br label %21

21:                                               ; preds = %16, %51
  %22 = phi ptr [ null, %16 ], [ %43, %51 ]
  %23 = phi i32 [ 0, %16 ], [ %52, %51 ]
  %24 = phi i32 [ undef, %16 ], [ %42, %51 ]
  %25 = phi i32 [ 0, %16 ], [ %53, %51 ]
  %26 = phi i32 [ %14, %16 ], [ %56, %51 ]
  %27 = phi ptr [ %18, %16 ], [ %55, %51 ]
  %28 = phi ptr [ %6, %16 ], [ %41, %51 ]
  %29 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef %27) #10
  %30 = call i32 @BLI_str_utf8_size_safe(ptr noundef %27) #10
  %31 = icmp eq ptr %22, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = icmp slt i32 %25, %2
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = sub nsw i32 %25, %2
  br label %40

36:                                               ; preds = %32
  %37 = icmp eq ptr %28, null
  %38 = getelementptr inbounds i8, ptr %28, i64 1
  %39 = select i1 %37, ptr null, ptr %38
  br label %40

40:                                               ; preds = %36, %34, %21
  %41 = phi ptr [ %28, %21 ], [ %28, %34 ], [ %39, %36 ]
  %42 = phi i32 [ %24, %21 ], [ %35, %34 ], [ %24, %36 ]
  %43 = phi ptr [ %22, %21 ], [ %27, %34 ], [ null, %36 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = add nsw i32 %29, %25
  %47 = icmp sgt i32 %46, %20
  %48 = select i1 %19, i1 %47, i1 false
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = add nsw i32 %23, 1
  br label %51

51:                                               ; preds = %49, %40
  %52 = phi i32 [ %50, %49 ], [ %23, %40 ]
  %53 = add nsw i32 %29, %25
  %54 = sext i32 %30 to i64
  %55 = getelementptr inbounds i8, ptr %27, i64 %54
  %56 = add nsw i32 %26, -1
  %57 = icmp sgt i32 %26, 1
  br i1 %57, label %21, label %58, !llvm.loop !150

58:                                               ; preds = %51, %45, %7
  %59 = phi i32 [ 0, %7 ], [ %52, %51 ], [ %23, %45 ]
  %60 = phi ptr [ %6, %7 ], [ %41, %45 ], [ %41, %51 ]
  %61 = phi i32 [ undef, %7 ], [ %42, %45 ], [ %42, %51 ]
  %62 = phi ptr [ null, %7 ], [ %43, %45 ], [ %43, %51 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %112, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %66 = load i8, ptr %65, align 2, !tbaa !52
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 %61, %67
  %69 = add nsw i32 %68, %4
  br i1 %13, label %70, label %104

70:                                               ; preds = %64
  %71 = icmp sgt i32 %59, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %70
  %73 = sitofp i32 %5 to float
  %74 = zext nneg i32 %59 to i64
  br label %75

75:                                               ; preds = %72, %84
  %76 = phi i64 [ 0, %72 ], [ %102, %84 ]
  %77 = phi i8 [ -1, %72 ], [ %85, %84 ]
  %78 = phi i32 [ 0, %72 ], [ %101, %84 ]
  %79 = phi i32 [ %69, %72 ], [ %99, %84 ]
  %80 = getelementptr inbounds i8, ptr %60, i64 %76
  %81 = load i8, ptr %80, align 1, !tbaa !68
  %82 = icmp eq i8 %81, %77
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  call fastcc void @format_draw_color(i8 noundef zeroext %81)
  br label %84

84:                                               ; preds = %83, %75
  %85 = phi i8 [ %81, %83 ], [ %77, %75 ]
  %86 = sext i32 %78 to i64
  %87 = getelementptr inbounds i8, ptr %62, i64 %86
  %88 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %87) #10
  %89 = sext i32 %88 to i64
  %90 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %91 = sitofp i32 %79 to float
  call void @BLF_position(i32 noundef %90, float noundef %91, float noundef %73, float noundef 0.000000e+00) #10
  %92 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %93 = load i8, ptr %65, align 2, !tbaa !52
  %94 = zext i8 %93 to i32
  %95 = call i32 @BLF_draw_mono(i32 noundef %92, ptr noundef nonnull %87, i64 noundef %89, i32 noundef %94) #10
  %96 = load i8, ptr %65, align 2, !tbaa !52
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %95, %97
  %99 = add nsw i32 %98, %79
  %100 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %87) #10
  %101 = add nsw i32 %100, %78
  %102 = add nuw nsw i64 %76, 1
  %103 = icmp eq i64 %102, %74
  br i1 %103, label %112, label %75, !llvm.loop !151

104:                                              ; preds = %64
  %105 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %106 = sitofp i32 %69 to float
  %107 = sitofp i32 %5 to float
  call void @BLF_position(i32 noundef %105, float noundef %106, float noundef %107, float noundef 0.000000e+00) #10
  %108 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %109 = load i8, ptr %65, align 2, !tbaa !52
  %110 = zext i8 %109 to i32
  %111 = call i32 @BLF_draw_mono(i32 noundef %108, ptr noundef nonnull %62, i64 noundef 1024, i32 noundef %110) #10
  br label %112

112:                                              ; preds = %84, %104, %70, %58
  call void @flatten_string_free(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %8) #10
  ret void
}

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex2i(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @text_update_character_width(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %4 = load i16, ptr %3, align 2, !tbaa !91
  %5 = sext i16 %4 to i32
  tail call void @BLF_size(i32 noundef %2, i32 noundef %5, i32 noundef 72) #10
  %6 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %7 = tail call float @BLF_fixed_width(i32 noundef %6) #10
  %8 = fptoui float %7 to i8
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %10 = tail call i8 @llvm.umax.i8(i8 %8, i8 1)
  store i8 %10, ptr %9, align 2, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @text_scroll_to_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %148, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %148, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %148, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !152
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %16, !llvm.loop !153

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  %26 = load i16, ptr %25, align 8, !tbaa !34
  %27 = sext i16 %26 to i32
  br label %28

28:                                               ; preds = %16, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %16 ]
  %30 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %32 = load i16, ptr %31, align 2, !tbaa !91
  %33 = sext i16 %32 to i32
  tail call void @BLF_size(i32 noundef %30, i32 noundef %33, i32 noundef 72) #10
  %34 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %35 = tail call float @BLF_fixed_width(i32 noundef %34) #10
  %36 = fptoui float %35 to i8
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %38 = tail call i8 @llvm.umax.i8(i8 %36, i8 1)
  store i8 %38, ptr %37, align 2, !tbaa !52
  %39 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !81
  %43 = tail call i32 @txt_get_span(ptr noundef %40, ptr noundef %42) #10
  %44 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %45 = load i32, ptr %44, align 8, !tbaa !56
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %48 = load ptr, ptr %41, align 8, !tbaa !81
  %49 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !118
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %48, i32 noundef %50, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %51 = load i32, ptr %3, align 4, !tbaa !54
  %52 = add nsw i32 %51, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %53

53:                                               ; preds = %47, %28
  %54 = phi i32 [ %52, %47 ], [ %43, %28 ]
  %55 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !61
  %57 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 8
  %58 = load i32, ptr %57, align 4, !tbaa !100
  %59 = add nsw i32 %58, %56
  %60 = icmp sle i32 %59, %54
  %61 = icmp sgt i32 %56, %54
  %62 = or i1 %61, %60
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = sdiv i32 %58, -2
  %65 = add i32 %64, %54
  store i32 %65, ptr %55, align 8, !tbaa !61
  br label %66

66:                                               ; preds = %53, %63
  %67 = load i32, ptr %44, align 8, !tbaa !56
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  store i32 0, ptr %70, align 8, !tbaa !119
  br label %136

71:                                               ; preds = %66
  %72 = load i8, ptr %37, align 2, !tbaa !52
  %73 = zext i8 %72 to i32
  %74 = load ptr, ptr %41, align 8, !tbaa !81
  %75 = getelementptr inbounds %struct.TextLine, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 8
  %78 = load i32, ptr %77, align 4, !tbaa !118
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %82

82:                                               ; preds = %94, %80
  %83 = phi i32 [ 0, %80 ], [ %98, %94 ]
  %84 = phi i32 [ 0, %80 ], [ %96, %94 ]
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, ptr %76, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !68
  switch i8 %87, label %92 [
    i8 0, label %100
    i8 9, label %88
  ]

88:                                               ; preds = %82
  %89 = load i32, ptr %81, align 8, !tbaa !69
  %90 = srem i32 %84, %89
  %91 = sub nsw i32 %89, %90
  br label %94

92:                                               ; preds = %82
  %93 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %86) #10
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %91, %88 ], [ %93, %92 ]
  %96 = add nsw i32 %95, %84
  %97 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %86) #10
  %98 = add nsw i32 %97, %83
  %99 = icmp slt i32 %98, %78
  br i1 %99, label %82, label %100, !llvm.loop !77

100:                                              ; preds = %82, %94, %71
  %101 = phi i32 [ 0, %71 ], [ %96, %94 ], [ %84, %82 ]
  %102 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %103 = load i32, ptr %102, align 8, !tbaa !119
  %104 = sub nsw i32 %101, %103
  %105 = mul nsw i32 %104, %73
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %107 = sitofp i16 %106 to float
  %108 = fmul float %107, 5.000000e-01
  %109 = fptosi float %108 to i32
  %110 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %111 = load i32, ptr %110, align 4, !tbaa !50
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %100
  %114 = load i8, ptr %37, align 2, !tbaa !52
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %117 = load i8, ptr %116, align 1, !tbaa !53
  %118 = zext i8 %117 to i32
  %119 = mul nuw nsw i32 %118, %115
  br label %120

120:                                              ; preds = %100, %113
  %121 = phi i32 [ %119, %113 ], [ 0, %100 ]
  %122 = sext i16 %106 to i32
  %123 = add i32 %122, %109
  %124 = add i32 %123, %121
  %125 = sub i32 %29, %124
  %126 = icmp slt i32 %105, 1
  %127 = icmp sgt i32 %105, %125
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = sdiv i32 %125, -2
  %131 = add i32 %130, %105
  %132 = load i8, ptr %37, align 2, !tbaa !52
  %133 = zext i8 %132 to i32
  %134 = sdiv i32 %131, %133
  %135 = add nsw i32 %134, %103
  store i32 %135, ptr %102, align 8, !tbaa !119
  br label %136

136:                                              ; preds = %120, %129, %69
  %137 = load i32, ptr %55, align 8, !tbaa !61
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 0, ptr %55, align 8, !tbaa !61
  br label %140

140:                                              ; preds = %139, %136
  %141 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %142 = load i32, ptr %141, align 8, !tbaa !119
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, ptr %141, align 8, !tbaa !119
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 32
  store float 0.000000e+00, ptr %146, align 8, !tbaa !154
  %147 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 32, i64 1
  store float 0.000000e+00, ptr %147, align 4, !tbaa !154
  br label %148

148:                                              ; preds = %2, %6, %10, %145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @text_update_cursor_moved(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #10
  tail call void @text_scroll_to_cursor(ptr noundef %3, ptr noundef %2)
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare i32 @BLF_draw_mono(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @flatten_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strnlen_utf8(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @format_draw_color(i8 noundef zeroext %0) unnamed_addr #2 {
  switch i8 %0, label %9 [
    i8 95, label %12
    i8 33, label %10
    i8 35, label %2
    i8 110, label %3
    i8 108, label %4
    i8 100, label %5
    i8 118, label %6
    i8 114, label %7
    i8 98, label %8
  ]

2:                                                ; preds = %1
  br label %10

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %2, %3, %4, %5, %6, %7, %8, %9
  %11 = phi i32 [ 3, %9 ], [ 66, %8 ], [ 68, %7 ], [ 67, %6 ], [ 71, %5 ], [ 70, %4 ], [ 72, %3 ], [ 69, %2 ], [ 73, %1 ]
  tail call void @UI_ThemeColor(i32 noundef %11) #10
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

declare void @flatten_string_free(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_str_utf8_char_width(ptr noundef) local_unnamed_addr #3

declare i32 @text_check_bracket(i8 noundef zeroext) local_unnamed_addr #3

declare i32 @txt_utf8_offset_to_index(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @UI_GetTheme() local_unnamed_addr #3

declare void @uiWidgetScrollDraw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #3

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #3

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare signext i16 @texttool_text_is_active(ptr noundef) local_unnamed_addr #3

declare ptr @texttool_docs_get() local_unnamed_addr #3

declare ptr @texttool_suggest_first() local_unnamed_addr #3

declare ptr @texttool_suggest_last() local_unnamed_addr #3

declare void @text_pop_suggest_list() local_unnamed_addr #3

declare ptr @texttool_suggest_selected() local_unnamed_addr #3

declare ptr @texttool_suggest_top() local_unnamed_addr #3

declare i32 @text_find_identifier_start(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiDrawBoxShadow(i8 noundef zeroext, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !44, i64 208}
!35 = !{!"ARegion", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 176, !42, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !41, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"View2D", !40, i64 0, !40, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!40 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!47, !44, i64 8948}
!47 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !43, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !44, i64 8496, !44, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !37, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !37, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !43, i64 8912, !43, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !41, i64 8956, !41, i64 8960, !43, i64 8964, !44, i64 8968, !44, i64 8970, !41, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !48, i64 8984, !37, i64 9760, !37, i64 9772, !44, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !43, i64 10896, !43, i64 10900, !41, i64 10904, !41, i64 10908, !43, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !49, i64 10928}
!48 = !{!"ColorBand", !44, i64 0, !44, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!49 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !44, i64 24, !37, i64 26}
!50 = !{!51, !43, i64 84}
!51 = !{!"SpaceText", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !41, i64 36, !37, i64 40, !36, i64 56, !43, i64 64, !43, i64 68, !44, i64 72, !44, i64 74, !44, i64 76, !37, i64 78, !37, i64 79, !43, i64 80, !43, i64 84, !43, i64 88, !44, i64 92, !44, i64 94, !44, i64 96, !44, i64 98, !41, i64 100, !42, i64 104, !42, i64 120, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 400, !44, i64 656, !44, i64 658, !37, i64 660, !36, i64 664, !37, i64 672}
!52 = !{!51, !37, i64 78}
!53 = !{!51, !37, i64 79}
!54 = !{!43, !43, i64 0}
!55 = !{!51, !36, i64 56}
!56 = !{!51, !43, i64 136}
!57 = !{!58, !36, i64 136}
!58 = !{!"Text", !59, i64 0, !36, i64 120, !43, i64 128, !43, i64 132, !45, i64 136, !36, i64 152, !36, i64 160, !43, i64 168, !43, i64 172, !36, i64 176, !43, i64 184, !43, i64 188, !36, i64 192, !60, i64 200}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!60 = !{!"double", !37, i64 0}
!61 = !{!51, !43, i64 64}
!62 = !{!63, !36, i64 16}
!63 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 36}
!64 = !{!63, !36, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!37, !37, i64 0}
!69 = !{!51, !43, i64 88}
!70 = distinct !{!70, !66, !67}
!71 = distinct !{!71, !66, !67}
!72 = distinct !{!72, !66, !67}
!73 = distinct !{!73, !66, !67}
!74 = distinct !{!74, !66, !67}
!75 = distinct !{!75, !66, !67}
!76 = distinct !{!76, !66, !67}
!77 = distinct !{!77, !66, !67}
!78 = !{!51, !36, i64 664}
!79 = !{!80, !44, i64 102}
!80 = !{!"DrawCache", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !44, i64 32, !37, i64 34, !37, i64 35, !44, i64 102, !43, i64 104, !43, i64 108}
!81 = !{!58, !36, i64 160}
!82 = !{!58, !36, i64 152}
!83 = !{!80, !43, i64 104}
!84 = !{!80, !43, i64 12}
!85 = !{!80, !43, i64 108}
!86 = !{!80, !36, i64 0}
!87 = !{!36, !36, i64 0}
!88 = distinct !{!88, !66, !67}
!89 = !{!80, !43, i64 8}
!90 = !{!80, !43, i64 16}
!91 = !{!51, !44, i64 658}
!92 = !{!80, !43, i64 20}
!93 = !{!80, !43, i64 24}
!94 = !{!80, !43, i64 28}
!95 = !{!80, !44, i64 32}
!96 = !{!80, !37, i64 34}
!97 = distinct !{!97, !66, !67}
!98 = !{!51, !44, i64 76}
!99 = !{!35, !44, i64 210}
!100 = !{!51, !43, i64 68}
!101 = !{!58, !36, i64 144}
!102 = !{!42, !43, i64 0}
!103 = !{!42, !43, i64 4}
!104 = !{!42, !43, i64 8}
!105 = !{!42, !43, i64 12}
!106 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54}
!107 = !{!51, !43, i64 132}
!108 = !{!51, !43, i64 128}
!109 = !{!51, !41, i64 100}
!110 = !{!51, !43, i64 116}
!111 = !{!51, !43, i64 112}
!112 = !{!51, !44, i64 92}
!113 = !{!63, !36, i64 24}
!114 = !{!115, !36, i64 24}
!115 = !{!"TextFormatType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!116 = distinct !{!116, !66, !67}
!117 = !{!58, !43, i64 168}
!118 = !{!58, !43, i64 172}
!119 = !{!51, !43, i64 80}
!120 = distinct !{!120, !66, !67}
!121 = !{!51, !44, i64 94}
!122 = !{!51, !44, i64 96}
!123 = !{!124, !36, i64 1280}
!124 = !{!"FlattenString", !37, i64 0, !37, i64 256, !36, i64 1280, !36, i64 1288, !43, i64 1296, !43, i64 1300}
!125 = distinct !{!125, !66, !67}
!126 = distinct !{!126, !66, !67}
!127 = distinct !{!127, !66, !67}
!128 = distinct !{!128, !66, !67}
!129 = distinct !{!129, !66, !67}
!130 = !{!51, !44, i64 72}
!131 = !{!51, !44, i64 656}
!132 = !{!63, !43, i64 32}
!133 = distinct !{!133, !66, !67}
!134 = distinct !{!134, !66, !67}
!135 = distinct !{!135, !66, !67}
!136 = !{!63, !36, i64 8}
!137 = distinct !{!137, !66, !67}
!138 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68, i64 12, i64 4, !68, i64 16, i64 4, !68, i64 20, i64 4, !68, i64 24, i64 2, !139, i64 26, i64 2, !139, i64 28, i64 2, !139, i64 30, i64 2, !139}
!139 = !{!44, !44, i64 0}
!140 = !{!51, !43, i64 104}
!141 = !{!51, !43, i64 108}
!142 = distinct !{!142, !66, !67}
!143 = distinct !{!143, !66, !67}
!144 = distinct !{!144, !66, !67}
!145 = !{!146, !36, i64 8}
!146 = !{!"SuggItem", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!147 = !{!146, !36, i64 16}
!148 = !{!146, !37, i64 24}
!149 = distinct !{!149, !66, !67}
!150 = distinct !{!150, !66, !67}
!151 = distinct !{!151, !66, !67}
!152 = !{!35, !44, i64 214}
!153 = distinct !{!153, !66, !67}
!154 = !{!41, !41, i64 0}
