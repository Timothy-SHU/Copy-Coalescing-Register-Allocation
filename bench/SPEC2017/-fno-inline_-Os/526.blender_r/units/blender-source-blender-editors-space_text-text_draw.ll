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
%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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
  %14 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %15 = load i8, ptr %14, align 2, !tbaa !52
  br i1 %10, label %23, label %16

16:                                               ; preds = %2
  %17 = zext i8 %15 to i32
  %18 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %19 = load i8, ptr %18, align 1, !tbaa !53
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %17
  %22 = add nsw i32 %21, %13
  br label %23

23:                                               ; preds = %2, %16
  %24 = phi i32 [ %22, %16 ], [ %13, %2 ]
  %25 = icmp eq i8 %15, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = zext i8 %15 to i32
  %28 = add i32 %24, %7
  %29 = sub i32 %5, %28
  %30 = sdiv i32 %29, %27
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i32 [ %30, %26 ], [ 0, %23 ]
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 8)
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wrap_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #2 {
  store i32 0, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %149, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %149, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = icmp sgt i32 %18, 0
  %20 = icmp ne ptr %16, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %42

22:                                               ; preds = %14, %34
  %23 = phi ptr [ %35, %34 ], [ %16, %14 ]
  %24 = phi i32 [ %32, %34 ], [ %18, %14 ]
  %25 = getelementptr inbounds %struct.TextLine, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %26) #12
  %28 = icmp ne ptr %23, %2
  %29 = icmp sgt i32 %27, %24
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %149

31:                                               ; preds = %22
  %32 = sub nsw i32 %24, %27
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %23, align 8, !tbaa !64
  %36 = add nsw i32 %27, -1
  %37 = load i32, ptr %4, align 4, !tbaa !54
  %38 = add nsw i32 %36, %37
  store i32 %38, ptr %4, align 4, !tbaa !54
  %39 = icmp ne i32 %32, 0
  %40 = icmp ne ptr %35, null
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %22, label %42

42:                                               ; preds = %34, %31, %14
  %43 = phi ptr [ %16, %14 ], [ %23, %31 ], [ %35, %34 ]
  %44 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #12
  %45 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !62
  %47 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %46, i32 noundef %3) #13
  %48 = icmp eq ptr %43, null
  br i1 %48, label %149, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %51

51:                                               ; preds = %49, %146
  %52 = phi i32 [ %47, %49 ], [ %144, %146 ]
  %53 = phi ptr [ %43, %49 ], [ %147, %146 ]
  store i32 0, ptr %5, align 4, !tbaa !54
  %54 = getelementptr inbounds %struct.TextLine, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = load i8, ptr %55, align 1, !tbaa !65
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %143, label %58

58:                                               ; preds = %51
  %59 = icmp eq ptr %53, %2
  %60 = icmp ne ptr %53, %2
  br label %61

61:                                               ; preds = %58, %130
  %62 = phi ptr [ %55, %58 ], [ %140, %130 ]
  %63 = phi i64 [ 0, %58 ], [ %139, %130 ]
  %64 = phi i32 [ %52, %58 ], [ %131, %130 ]
  %65 = phi i32 [ 1, %58 ], [ %135, %130 ]
  %66 = phi i32 [ 0, %58 ], [ %134, %130 ]
  %67 = phi i32 [ %44, %58 ], [ %133, %130 ]
  %68 = phi i32 [ 0, %58 ], [ %132, %130 ]
  %69 = phi i32 [ 0, %58 ], [ %137, %130 ]
  %70 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %62) #13
  %71 = load ptr, ptr %54, align 8, !tbaa !62
  %72 = getelementptr inbounds i8, ptr %71, i64 %63
  %73 = load i8, ptr %72, align 1, !tbaa !65
  %74 = icmp eq i8 %73, 9
  br i1 %74, label %75, label %85

75:                                               ; preds = %61
  %76 = load i32, ptr %50, align 8, !tbaa !66
  %77 = srem i32 %66, %76
  %78 = sub nsw i32 %76, %77
  %79 = icmp slt i32 %66, %64
  %80 = select i1 %59, i1 %79, i1 false
  %81 = add nsw i32 %78, -1
  %82 = select i1 %80, i32 %81, i32 0
  %83 = add nsw i32 %82, %64
  %84 = icmp eq i32 %78, 0
  br i1 %84, label %130, label %85

85:                                               ; preds = %61, %75
  %86 = phi i32 [ %83, %75 ], [ %64, %61 ]
  %87 = phi i32 [ %78, %75 ], [ 1, %61 ]
  %88 = phi i8 [ 32, %75 ], [ %73, %61 ]
  br label %89

89:                                               ; preds = %85, %125
  %90 = phi i32 [ %95, %125 ], [ %87, %85 ]
  %91 = phi i32 [ %128, %125 ], [ %65, %85 ]
  %92 = phi i32 [ %96, %125 ], [ %66, %85 ]
  %93 = phi i32 [ %127, %125 ], [ %67, %85 ]
  %94 = phi i32 [ %126, %125 ], [ %68, %85 ]
  %95 = add nsw i32 %90, -1
  %96 = add nsw i32 %92, %70
  %97 = sub nsw i32 %96, %94
  %98 = icmp sgt i32 %97, %44
  br i1 %98, label %99, label %120

99:                                               ; preds = %89
  %100 = tail call i32 @llvm.smin.i32(i32 %93, i32 %92)
  %101 = icmp eq i32 %91, 0
  %102 = or i1 %60, %101
  %103 = icmp slt i32 %92, %86
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %99
  %106 = icmp eq i32 %92, %86
  br i1 %106, label %107, label %149

107:                                              ; preds = %105
  %108 = load i32, ptr %4, align 4, !tbaa !54
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %4, align 4, !tbaa !54
  %110 = sub i32 %94, %100
  %111 = load i32, ptr %5, align 4, !tbaa !54
  %112 = add i32 %110, %111
  store i32 %112, ptr %5, align 4, !tbaa !54
  br label %149

113:                                              ; preds = %99
  %114 = load i32, ptr %4, align 4, !tbaa !54
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %4, align 4, !tbaa !54
  %116 = sub i32 %94, %100
  %117 = load i32, ptr %5, align 4, !tbaa !54
  %118 = add i32 %116, %117
  store i32 %118, ptr %5, align 4, !tbaa !54
  %119 = add nsw i32 %100, %44
  br label %125

120:                                              ; preds = %89
  switch i8 %88, label %125 [
    i8 45, label %121
    i8 32, label %121
  ]

121:                                              ; preds = %120, %120
  %122 = add nsw i32 %92, 1
  %123 = icmp slt i32 %92, %86
  %124 = select i1 %60, i1 true, i1 %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %120, %121, %113
  %126 = phi i32 [ %100, %113 ], [ %94, %121 ], [ %94, %120 ]
  %127 = phi i32 [ %119, %113 ], [ %122, %121 ], [ %93, %120 ]
  %128 = phi i32 [ 1, %113 ], [ 0, %121 ], [ %91, %120 ]
  %129 = icmp eq i32 %95, 0
  br i1 %129, label %130, label %89, !llvm.loop !67

130:                                              ; preds = %125, %75
  %131 = phi i32 [ %83, %75 ], [ %86, %125 ]
  %132 = phi i32 [ %68, %75 ], [ %126, %125 ]
  %133 = phi i32 [ %67, %75 ], [ %127, %125 ]
  %134 = phi i32 [ %66, %75 ], [ %96, %125 ]
  %135 = phi i32 [ %65, %75 ], [ %128, %125 ]
  %136 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %72) #13
  %137 = add nsw i32 %136, %69
  %138 = load ptr, ptr %54, align 8, !tbaa !62
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !65
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %61, !llvm.loop !69

143:                                              ; preds = %130, %51
  %144 = phi i32 [ %52, %51 ], [ %131, %130 ]
  %145 = icmp eq ptr %53, %2
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %53, align 8, !tbaa !64
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %51, !llvm.loop !70

149:                                              ; preds = %22, %143, %146, %121, %42, %107, %105, %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @text_get_visible_lines(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #12
  %5 = load i8, ptr %2, align 1, !tbaa !65
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %9

9:                                                ; preds = %7, %52
  %10 = phi ptr [ %2, %7 ], [ %60, %52 ]
  %11 = phi i32 [ 0, %7 ], [ %56, %52 ]
  %12 = phi i32 [ 1, %7 ], [ %55, %52 ]
  %13 = phi i32 [ 0, %7 ], [ %58, %52 ]
  %14 = phi i32 [ %4, %7 ], [ %54, %52 ]
  %15 = phi i32 [ 0, %7 ], [ %53, %52 ]
  %16 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %10) #13
  %17 = load i8, ptr %10, align 1, !tbaa !65
  %18 = icmp eq i8 %17, 9
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load i32, ptr %8, align 8, !tbaa !66
  %21 = srem i32 %11, %20
  %22 = sub nsw i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %9, %19
  %25 = phi i8 [ 32, %19 ], [ %17, %9 ]
  %26 = phi i32 [ %22, %19 ], [ 1, %9 ]
  %27 = mul i32 %16, %26
  br label %28

28:                                               ; preds = %24, %45
  %29 = phi i32 [ %34, %45 ], [ %26, %24 ]
  %30 = phi i32 [ %35, %45 ], [ %11, %24 ]
  %31 = phi i32 [ %48, %45 ], [ %12, %24 ]
  %32 = phi i32 [ %47, %45 ], [ %14, %24 ]
  %33 = phi i32 [ %46, %45 ], [ %15, %24 ]
  %34 = add nsw i32 %29, -1
  %35 = add nsw i32 %30, %16
  %36 = sub nsw i32 %35, %33
  %37 = icmp sgt i32 %36, %4
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = add nsw i32 %31, 1
  %40 = tail call i32 @llvm.smin.i32(i32 %32, i32 %30)
  %41 = add nsw i32 %32, %4
  br label %45

42:                                               ; preds = %28
  switch i8 %25, label %45 [
    i8 45, label %43
    i8 32, label %43
  ]

43:                                               ; preds = %42, %42
  %44 = add nsw i32 %30, 1
  br label %45

45:                                               ; preds = %42, %43, %38
  %46 = phi i32 [ %40, %38 ], [ %33, %43 ], [ %33, %42 ]
  %47 = phi i32 [ %41, %38 ], [ %44, %43 ], [ %32, %42 ]
  %48 = phi i32 [ %39, %38 ], [ %31, %43 ], [ %31, %42 ]
  %49 = icmp eq i32 %34, 0
  br i1 %49, label %50, label %28, !llvm.loop !71

50:                                               ; preds = %45
  %51 = add i32 %11, %27
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi i32 [ %15, %19 ], [ %46, %50 ]
  %54 = phi i32 [ %14, %19 ], [ %47, %50 ]
  %55 = phi i32 [ %12, %19 ], [ %48, %50 ]
  %56 = phi i32 [ %11, %19 ], [ %51, %50 ]
  %57 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %10) #13
  %58 = add nsw i32 %57, %13
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !65
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %9, !llvm.loop !72

63:                                               ; preds = %52, %3
  %64 = phi i32 [ 1, %3 ], [ %55, %52 ]
  ret i32 %64
}

; Function Attrs: optsize
declare i32 @txt_utf8_offset_to_column(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wrap_offset_in_line(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #2 {
  store i32 0, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %103, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %103, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @wrap_width(ptr noundef nonnull %0, ptr noundef %1) #12
  store i32 0, ptr %5, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %17, i32 noundef %3) #13
  %19 = load ptr, ptr %16, align 8, !tbaa !62
  %20 = load i8, ptr %19, align 1, !tbaa !65
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %103, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %24

24:                                               ; preds = %22, %90
  %25 = phi ptr [ %19, %22 ], [ %100, %90 ]
  %26 = phi i64 [ 0, %22 ], [ %99, %90 ]
  %27 = phi i32 [ %18, %22 ], [ %91, %90 ]
  %28 = phi i32 [ 1, %22 ], [ %95, %90 ]
  %29 = phi i32 [ 0, %22 ], [ %94, %90 ]
  %30 = phi i32 [ %15, %22 ], [ %93, %90 ]
  %31 = phi i32 [ 0, %22 ], [ %92, %90 ]
  %32 = phi i32 [ 0, %22 ], [ %97, %90 ]
  %33 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %25) #13
  %34 = load ptr, ptr %16, align 8, !tbaa !62
  %35 = getelementptr inbounds i8, ptr %34, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !65
  %37 = icmp eq i8 %36, 9
  br i1 %37, label %38, label %47

38:                                               ; preds = %24
  %39 = load i32, ptr %23, align 8, !tbaa !66
  %40 = srem i32 %29, %39
  %41 = sub nsw i32 %39, %40
  %42 = icmp slt i32 %29, %27
  %43 = add nsw i32 %41, -1
  %44 = select i1 %42, i32 %43, i32 0
  %45 = add nsw i32 %44, %27
  %46 = icmp eq i32 %41, 0
  br i1 %46, label %90, label %47

47:                                               ; preds = %24, %38
  %48 = phi i32 [ %45, %38 ], [ %27, %24 ]
  %49 = phi i8 [ 32, %38 ], [ %36, %24 ]
  %50 = phi i32 [ %41, %38 ], [ 1, %24 ]
  br label %51

51:                                               ; preds = %47, %85
  %52 = phi i32 [ %57, %85 ], [ %50, %47 ]
  %53 = phi i32 [ %88, %85 ], [ %28, %47 ]
  %54 = phi i32 [ %58, %85 ], [ %29, %47 ]
  %55 = phi i32 [ %87, %85 ], [ %30, %47 ]
  %56 = phi i32 [ %86, %85 ], [ %31, %47 ]
  %57 = add nsw i32 %52, -1
  %58 = add nsw i32 %54, %33
  %59 = sub nsw i32 %58, %56
  %60 = icmp sgt i32 %59, %15
  br i1 %60, label %61, label %81

61:                                               ; preds = %51
  %62 = tail call i32 @llvm.smin.i32(i32 %55, i32 %54)
  %63 = icmp eq i32 %53, 0
  %64 = icmp slt i32 %54, %48
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = icmp eq i32 %54, %48
  br i1 %67, label %68, label %103

68:                                               ; preds = %66
  %69 = load i32, ptr %4, align 4, !tbaa !54
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %4, align 4, !tbaa !54
  %71 = sub i32 %56, %62
  %72 = load i32, ptr %5, align 4, !tbaa !54
  %73 = add i32 %71, %72
  store i32 %73, ptr %5, align 4, !tbaa !54
  br label %103

74:                                               ; preds = %61
  %75 = load i32, ptr %4, align 4, !tbaa !54
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %4, align 4, !tbaa !54
  %77 = sub i32 %56, %62
  %78 = load i32, ptr %5, align 4, !tbaa !54
  %79 = add i32 %77, %78
  store i32 %79, ptr %5, align 4, !tbaa !54
  %80 = add nsw i32 %62, %15
  br label %85

81:                                               ; preds = %51
  switch i8 %49, label %85 [
    i8 45, label %82
    i8 32, label %82
  ]

82:                                               ; preds = %81, %81
  %83 = add nsw i32 %54, 1
  %84 = icmp slt i32 %54, %48
  br i1 %84, label %85, label %103

85:                                               ; preds = %81, %82, %74
  %86 = phi i32 [ %62, %74 ], [ %56, %82 ], [ %56, %81 ]
  %87 = phi i32 [ %80, %74 ], [ %83, %82 ], [ %55, %81 ]
  %88 = phi i32 [ 1, %74 ], [ 0, %82 ], [ %53, %81 ]
  %89 = icmp eq i32 %57, 0
  br i1 %89, label %90, label %51, !llvm.loop !73

90:                                               ; preds = %85, %38
  %91 = phi i32 [ %45, %38 ], [ %48, %85 ]
  %92 = phi i32 [ %31, %38 ], [ %86, %85 ]
  %93 = phi i32 [ %30, %38 ], [ %87, %85 ]
  %94 = phi i32 [ %29, %38 ], [ %58, %85 ]
  %95 = phi i32 [ %28, %38 ], [ %88, %85 ]
  %96 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %35) #13
  %97 = add nsw i32 %96, %32
  %98 = load ptr, ptr %16, align 8, !tbaa !62
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, ptr %98, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !65
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %24, !llvm.loop !74

103:                                              ; preds = %90, %82, %14, %68, %66, %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = load i8, ptr %11, align 1, !tbaa !65
  switch i8 %12, label %17 [
    i8 0, label %25
    i8 9, label %13
  ]

13:                                               ; preds = %7
  %14 = load i32, ptr %6, align 8, !tbaa !66
  %15 = srem i32 %9, %14
  %16 = sub nsw i32 %14, %15
  br label %19

17:                                               ; preds = %7
  %18 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %11) #13
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i32 [ %16, %13 ], [ %18, %17 ]
  %21 = add nsw i32 %20, %9
  %22 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %11) #13
  %23 = add nsw i32 %22, %8
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %7, label %25, !llvm.loop !75

25:                                               ; preds = %19, %7, %3
  %26 = phi i32 [ 0, %3 ], [ %9, %7 ], [ %21, %19 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_drawcache_tag_update(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !77
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 4
  %18 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = tail call i32 @BLI_findindex(ptr noundef nonnull %17, ptr noundef %19) #13
  %21 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = tail call i32 @BLI_findindex(ptr noundef nonnull %17, ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !81
  %26 = tail call i32 @llvm.smax.i32(i32 %23, i32 %20)
  %27 = tail call i32 @llvm.smin.i32(i32 %23, i32 %20)
  %28 = xor i32 %26, -1
  %29 = add i32 %25, %28
  %30 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 11
  store i32 %27, ptr %30, align 8
  %31 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 12
  store i32 %29, ptr %31, align 4
  %32 = icmp sgt i32 %27, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = add nsw i32 %27, -1
  store i32 %34, ptr %30, align 8, !tbaa !82
  br label %35

35:                                               ; preds = %33, %16
  %36 = icmp sgt i32 %29, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = add nsw i32 %29, -1
  store i32 %38, ptr %31, align 4, !tbaa !83
  br label %42

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 11
  store i32 0, ptr %40, align 8, !tbaa !82
  %41 = getelementptr inbounds %struct.DrawCache, ptr %6, i64 0, i32 12
  store i32 0, ptr %41, align 4, !tbaa !83
  br label %42

42:                                               ; preds = %35, %37, %39
  store i16 1, ptr %11, align 2, !tbaa !77
  br label %43

43:                                               ; preds = %42, %8, %2, %4
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_free_caches(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %9(ptr noundef nonnull %6) #13
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %11(ptr noundef nonnull %3) #13
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %17 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %16) #12
  %18 = add nsw i32 %17, %14
  %19 = load ptr, ptr %13, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  %21 = icmp eq ptr %19, %3
  %22 = or i1 %20, %21
  br i1 %22, label %25, label %12, !llvm.loop !86

23:                                               ; preds = %4
  %24 = tail call i32 @txt_get_span(ptr noundef %2, ptr noundef %3) #13
  br label %25

25:                                               ; preds = %12, %8, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %8 ], [ %18, %12 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @txt_get_span(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @text_get_total_lines(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call fastcc void @text_update_drawcache(ptr noundef %0, ptr noundef %1) #12
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.DrawCache, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !87
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_update_drawcache(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @text_drawcache_init(ptr noundef nonnull %0) #12
  br label %9

9:                                                ; preds = %8, %2
  tail call void @text_update_character_width(ptr noundef nonnull %0) #12
  %10 = load ptr, ptr %5, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !81
  %13 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !34
  %17 = sext i16 %16 to i32
  %18 = icmp ne i32 %14, %17
  %19 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = icmp ne i32 %20, %22
  %24 = or i1 %18, %23
  %25 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = icmp ne i32 %26, %28
  %30 = or i1 %24, %29
  %31 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !92
  %33 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !66
  %35 = icmp ne i32 %32, %34
  %36 = or i1 %30, %35
  %37 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 7
  %38 = load i16, ptr %37, align 8, !tbaa !93
  %39 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %40 = load i16, ptr %39, align 2, !tbaa !94
  %41 = icmp ne i16 %38, %40
  %42 = or i1 %36, %41
  %43 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 8
  %44 = load i8, ptr %43, align 2, !tbaa !95
  %45 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %46 = load i8, ptr %45, align 2, !tbaa !52
  %47 = icmp ne i8 %44, %46
  %48 = or i1 %42, %47
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 9
  %51 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %52 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %51, i64 noundef 66) #14
  %53 = or i32 %52, %49
  %54 = icmp eq i32 %22, 0
  br i1 %54, label %131, label %55

55:                                               ; preds = %9
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load ptr, ptr %10, align 8, !tbaa !84
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %57
  %61 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 11
  store i32 0, ptr %61, align 8, !tbaa !82
  %62 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 12
  store i32 0, ptr %62, align 4, !tbaa !83
  %63 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 10
  store i16 1, ptr %63, align 2, !tbaa !77
  br label %68

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 10
  %66 = load i16, ptr %65, align 2, !tbaa !77
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %159, label %68

68:                                               ; preds = %60, %64
  %69 = load ptr, ptr %3, align 8, !tbaa !55
  %70 = getelementptr inbounds %struct.Text, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = load ptr, ptr %10, align 8, !tbaa !84
  %73 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 4
  %74 = tail call i32 @BLI_countlist(ptr noundef nonnull %73) #13
  %75 = shl i32 %74, 2
  %76 = icmp eq ptr %72, null
  %77 = sext i32 %75 to i64
  br i1 %76, label %81, label %78

78:                                               ; preds = %68
  %79 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !85
  %80 = tail call ptr %79(ptr noundef nonnull %72, i64 noundef %77, ptr noundef nonnull @__func__.text_update_drawcache) #13
  br label %84

81:                                               ; preds = %68
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !85
  %83 = tail call ptr %82(i64 noundef %77, ptr noundef nonnull @.str.1) #13
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi ptr [ %80, %78 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 11
  store i32 0, ptr %86, align 8, !tbaa !82
  %87 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 12
  store i32 0, ptr %87, align 4, !tbaa !83
  %88 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 1
  store i32 0, ptr %88, align 8, !tbaa !87
  %89 = load i32, ptr %27, align 4, !tbaa !50
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = sitofp i32 %74 to float
  %93 = fpext float %92 to double
  %94 = tail call double @log10(double noundef %93) #13
  %95 = tail call double @llvm.floor.f64(double %94)
  %96 = fptosi double %95 to i32
  %97 = trunc i32 %96 to i8
  %98 = add i8 %97, 1
  %99 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  store i8 %98, ptr %99, align 1, !tbaa !53
  br label %100

100:                                              ; preds = %91, %84
  %101 = icmp eq ptr %71, null
  br i1 %101, label %130, label %102

102:                                              ; preds = %100
  %103 = sext i32 %74 to i64
  br label %104

104:                                              ; preds = %102, %122
  %105 = phi i64 [ 0, %102 ], [ %126, %122 ]
  %106 = phi ptr [ %71, %102 ], [ %125, %122 ]
  %107 = load i32, ptr %86, align 8, !tbaa !82
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds i32, ptr %85, i64 %105
  %111 = load i32, ptr %110, align 4, !tbaa !54
  %112 = add nsw i32 %107, -1
  store i32 %112, ptr %86, align 8, !tbaa !82
  br label %122

113:                                              ; preds = %104
  %114 = icmp sgt i64 %105, %103
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = getelementptr inbounds i32, ptr %85, i64 %105
  %117 = load i32, ptr %116, align 4, !tbaa !54
  br label %122

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.TextLine, ptr %106, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !62
  %121 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %120) #12
  br label %122

122:                                              ; preds = %115, %118, %109
  %123 = phi i32 [ %111, %109 ], [ %117, %115 ], [ %121, %118 ]
  %124 = getelementptr inbounds i32, ptr %85, i64 %105
  store i32 %123, ptr %124, align 4, !tbaa !54
  %125 = load ptr, ptr %106, align 8, !tbaa !64
  %126 = add nuw i64 %105, 1
  %127 = load i32, ptr %88, align 8, !tbaa !87
  %128 = add nsw i32 %127, %123
  store i32 %128, ptr %88, align 8, !tbaa !87
  %129 = icmp eq ptr %125, null
  br i1 %129, label %130, label %104, !llvm.loop !96

130:                                              ; preds = %122, %100
  store ptr %85, ptr %10, align 8, !tbaa !84
  br label %159

131:                                              ; preds = %9
  %132 = load ptr, ptr %10, align 8, !tbaa !84
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %135(ptr noundef nonnull %132) #13
  store ptr null, ptr %10, align 8, !tbaa !84
  br label %136

136:                                              ; preds = %134, %131
  %137 = icmp eq i32 %53, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 10
  %140 = load i16, ptr %139, align 2, !tbaa !77
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %138, %136
  %143 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 4
  %144 = tail call i32 @BLI_countlist(ptr noundef nonnull %143) #13
  %145 = load i32, ptr %27, align 4, !tbaa !50
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = sitofp i32 %144 to float
  %149 = fpext float %148 to double
  %150 = tail call double @log10(double noundef %149) #13
  %151 = tail call double @llvm.floor.f64(double %150)
  %152 = fptosi double %151 to i32
  %153 = trunc i32 %152 to i8
  %154 = add i8 %153, 1
  %155 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  store i8 %154, ptr %155, align 1, !tbaa !53
  br label %156

156:                                              ; preds = %142, %147, %138
  %157 = phi i32 [ %144, %147 ], [ %144, %142 ], [ %12, %138 ]
  %158 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 1
  store i32 %157, ptr %158, align 8, !tbaa !87
  br label %159

159:                                              ; preds = %64, %130, %156
  %160 = phi i32 [ %74, %130 ], [ %12, %64 ], [ %157, %156 ]
  store i32 %160, ptr %11, align 4, !tbaa !81
  %161 = load i16, ptr %15, align 8, !tbaa !34
  %162 = sext i16 %161 to i32
  store i32 %162, ptr %13, align 8, !tbaa !89
  %163 = load i32, ptr %21, align 8, !tbaa !56
  store i32 %163, ptr %19, align 4, !tbaa !90
  %164 = load i16, ptr %39, align 2, !tbaa !94
  store i16 %164, ptr %37, align 8, !tbaa !93
  %165 = load i8, ptr %45, align 2, !tbaa !52
  store i8 %165, ptr %43, align 2, !tbaa !95
  %166 = load <2 x i32>, ptr %27, align 4, !tbaa !54
  store <2 x i32> %166, ptr %25, align 8, !tbaa !54
  %167 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %51, i64 noundef 66) #13
  %168 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 10
  store i16 0, ptr %168, align 2, !tbaa !77
  %169 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 11
  store i32 0, ptr %169, align 8, !tbaa !82
  %170 = getelementptr inbounds %struct.DrawCache, ptr %10, i64 0, i32 12
  store i32 0, ptr %170, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_text_main(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rcti, align 4
  %5 = alloca [12 x i8], align 1
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %258, label %9

9:                                                ; preds = %2
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 11
  %13 = load i16, ptr %12, align 4, !tbaa !97
  %14 = sext i16 %13 to i32
  %15 = mul nsw i32 %14, %11
  %16 = sdiv i32 %15, 20
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  store i16 %17, ptr %18, align 2, !tbaa !94
  %19 = shl i32 %16, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %9
  %22 = ashr exact i32 %19, 16
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !98
  %25 = sext i16 %24 to i32
  %26 = sitofp i32 %22 to float
  %27 = fmul float %26, 0x3FD3333340000000
  %28 = fptosi float %27 to i32
  %29 = add nsw i32 %22, %28
  %30 = sdiv i32 %25, %29
  br label %31

31:                                               ; preds = %9, %21
  %32 = phi i32 [ %30, %21 ], [ 0, %9 ]
  %33 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 8
  store i32 %32, ptr %33, align 4, !tbaa !99
  tail call fastcc void @text_update_drawcache(ptr noundef nonnull %0, ptr noundef %1) #12
  %34 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 4, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !100
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %37, %31
  tail call void @txt_clean_text(ptr noundef nonnull %7) #13
  br label %50

50:                                               ; preds = %49, %45
  call fastcc void @calc_text_rcts(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %51 = tail call ptr @ED_text_format_get(ptr noundef nonnull %7) #13
  %52 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 4
  %53 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %54 = load ptr, ptr %52, align 8, !tbaa !85
  %55 = load i32, ptr %53, align 8, !tbaa !61
  %56 = icmp sgt i32 %55, 0
  %57 = icmp ne ptr %54, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %94

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %61 = getelementptr inbounds %struct.TextFormatType, ptr %51, i64 0, i32 3
  %62 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  br label %63

63:                                               ; preds = %59, %87
  %64 = phi i32 [ %55, %59 ], [ %78, %87 ]
  %65 = phi ptr [ %54, %59 ], [ %90, %87 ]
  %66 = phi i32 [ 0, %59 ], [ %89, %87 ]
  %67 = phi i32 [ 0, %59 ], [ %88, %87 ]
  %68 = load i16, ptr %60, align 4, !tbaa !101
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.TextLine, ptr %65, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !102
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load ptr, ptr %61, align 8, !tbaa !103
  tail call void %75(ptr noundef nonnull %0, ptr noundef nonnull %65, i8 noundef zeroext 0) #13
  %76 = load i32, ptr %53, align 8, !tbaa !61
  br label %77

77:                                               ; preds = %74, %70, %63
  %78 = phi i32 [ %76, %74 ], [ %64, %70 ], [ %64, %63 ]
  %79 = load i32, ptr %62, align 8, !tbaa !56
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = tail call fastcc i32 @text_get_visible_lines_no(ptr noundef nonnull %0, i32 noundef %66) #12
  %83 = add nsw i32 %82, %67
  %84 = icmp sgt i32 %83, %78
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = sub nsw i32 %78, %67
  br label %94

87:                                               ; preds = %77, %81
  %88 = phi i32 [ %83, %81 ], [ %67, %77 ]
  %89 = add nuw nsw i32 %66, 1
  %90 = load ptr, ptr %65, align 8, !tbaa !85
  %91 = icmp slt i32 %89, %78
  %92 = icmp ne ptr %90, null
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %63, label %94, !llvm.loop !105

94:                                               ; preds = %87, %50, %85
  %95 = phi i32 [ %66, %85 ], [ 0, %50 ], [ %89, %87 ]
  %96 = phi ptr [ %65, %85 ], [ %54, %50 ], [ %90, %87 ]
  %97 = phi i32 [ %86, %85 ], [ 0, %50 ], [ 0, %87 ]
  tail call fastcc void @text_font_begin(ptr noundef nonnull %0) #12
  %98 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %99 = tail call float @BLF_fixed_width(i32 noundef %98) #13
  %100 = fptoui float %99 to i8
  %101 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %102 = tail call i8 @llvm.umax.i8(i8 %100, i8 1)
  store i8 %102, ptr %101, align 2, !tbaa !52
  %103 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %104 = load i32, ptr %103, align 4, !tbaa !50
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %134, label %106

106:                                              ; preds = %94
  %107 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %108 = sitofp i16 %107 to float
  %109 = fmul float %108, 5.000000e-01
  %110 = fptosi float %109 to i32
  %111 = zext i8 %102 to i32
  %112 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %113 = load i8, ptr %112, align 1, !tbaa !53
  %114 = zext i8 %113 to i32
  %115 = mul nuw nsw i32 %114, %111
  %116 = add nsw i32 %115, %110
  tail call void @UI_ThemeColor(i32 noundef 24) #13
  %117 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %118 = sitofp i16 %117 to float
  %119 = fmul float %118, 5.000000e-01
  %120 = fptosi float %119 to i32
  %121 = add nsw i32 %120, -12
  %122 = add nsw i32 %120, -5
  %123 = load i8, ptr %101, align 2, !tbaa !52
  %124 = zext i8 %123 to i32
  %125 = load i8, ptr %112, align 1, !tbaa !53
  %126 = zext i8 %125 to i32
  %127 = mul nuw nsw i32 %126, %124
  %128 = add nsw i32 %122, %127
  %129 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %130 = load i16, ptr %129, align 2, !tbaa !98
  %131 = sext i16 %130 to i32
  %132 = add nsw i32 %131, -2
  tail call void @glRecti(i32 noundef %121, i32 noundef 0, i32 noundef %128, i32 noundef %132) #13
  %133 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  br label %140

134:                                              ; preds = %94
  %135 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  store i8 0, ptr %135, align 1, !tbaa !53
  %136 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %137 = sitofp i16 %136 to float
  %138 = fmul float %137, 5.000000e-01
  %139 = fptosi float %138 to i32
  br label %140

140:                                              ; preds = %134, %106
  %141 = phi i16 [ %133, %106 ], [ %136, %134 ]
  %142 = phi i32 [ %116, %106 ], [ %139, %134 ]
  %143 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %144 = load i16, ptr %143, align 2, !tbaa !98
  %145 = sext i16 %144 to i32
  %146 = load i16, ptr %18, align 2, !tbaa !94
  %147 = sext i16 %146 to i32
  %148 = sub nsw i32 %145, %147
  %149 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %150 = load i16, ptr %149, align 8, !tbaa !34
  tail call fastcc void @draw_cursor(ptr noundef nonnull %0, ptr noundef %1) #12
  tail call void @UI_ThemeColor(i32 noundef 3) #13
  %151 = icmp sgt i32 %148, 0
  br i1 %151, label %152, label %236

152:                                              ; preds = %140
  %153 = sext i16 %141 to i32
  %154 = sext i16 %150 to i32
  %155 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %156 = getelementptr inbounds %struct.TextFormatType, ptr %51, i64 0, i32 3
  %157 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %158 = add i32 %95, 1
  %159 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %160 = add i32 %142, %153
  %161 = sub i32 %154, %160
  %162 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  br label %163

163:                                              ; preds = %152, %230
  %164 = phi ptr [ %96, %152 ], [ %234, %230 ]
  %165 = phi i32 [ 0, %152 ], [ %233, %230 ]
  %166 = phi i32 [ %97, %152 ], [ 0, %230 ]
  %167 = phi i32 [ %148, %152 ], [ %232, %230 ]
  %168 = load i32, ptr %33, align 4, !tbaa !99
  %169 = icmp slt i32 %165, %168
  %170 = icmp ne ptr %164, null
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %236

172:                                              ; preds = %163
  %173 = load i16, ptr %155, align 4, !tbaa !101
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.TextLine, ptr %164, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !102
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load ptr, ptr %156, align 8, !tbaa !103
  call void %180(ptr noundef nonnull %0, ptr noundef nonnull %164, i8 noundef zeroext 0) #13
  br label %181

181:                                              ; preds = %179, %175, %172
  %182 = load i32, ptr %103, align 4, !tbaa !50
  %183 = icmp eq i32 %182, 0
  %184 = icmp ne i32 %166, 0
  %185 = select i1 %183, i1 true, i1 %184
  br i1 %185, label %199, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %34, align 8, !tbaa !80
  %188 = icmp eq ptr %164, %187
  %189 = select i1 %188, i32 23, i32 3
  call void @UI_ThemeColor(i32 noundef %189) #13
  %190 = load i8, ptr %157, align 1, !tbaa !53
  %191 = zext i8 %190 to i32
  %192 = add nuw i32 %158, %165
  %193 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 12, ptr noundef nonnull @.str, i32 noundef %191, i32 noundef %192) #13
  %194 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %195 = sitofp i16 %194 to float
  %196 = fmul float %195, 5.000000e-01
  %197 = fptosi float %196 to i32
  %198 = add nsw i32 %197, -7
  call fastcc void @text_font_draw(ptr noundef nonnull %0, i32 noundef %198, i32 noundef %167, ptr noundef nonnull %5) #12
  call void @UI_ThemeColor(i32 noundef 3) #13
  br label %199

199:                                              ; preds = %186, %181
  %200 = load i32, ptr %159, align 8, !tbaa !56
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds %struct.TextLine, ptr %164, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !62
  br i1 %201, label %215, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.TextLine, ptr %164, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !102
  %207 = call fastcc i32 @text_draw_wrapped(ptr noundef nonnull %0, ptr noundef %203, i32 noundef %142, i32 noundef %167, i32 noundef %161, ptr noundef %206, i32 noundef %166) #12
  %208 = load i16, ptr %18, align 2, !tbaa !94
  %209 = sext i16 %208 to i32
  %210 = sitofp i16 %208 to float
  %211 = fmul float %210, 0x3FD3333340000000
  %212 = fptosi float %211 to i32
  %213 = add nsw i32 %212, %209
  %214 = mul nsw i32 %213, %207
  br label %230

215:                                              ; preds = %199
  %216 = load i32, ptr %162, align 8, !tbaa !106
  %217 = load i16, ptr %149, align 8, !tbaa !34
  %218 = load i8, ptr %101, align 2, !tbaa !52
  %219 = zext i8 %218 to i16
  %220 = sdiv i16 %217, %219
  %221 = sext i16 %220 to i32
  %222 = getelementptr inbounds %struct.TextLine, ptr %164, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !102
  call fastcc void @text_draw(ptr noundef nonnull %0, ptr noundef %203, i32 noundef %216, i32 noundef %221, i32 noundef %142, i32 noundef %167, ptr noundef %223) #12
  %224 = load i16, ptr %18, align 2, !tbaa !94
  %225 = sext i16 %224 to i32
  %226 = sitofp i16 %224 to float
  %227 = fmul float %226, 0x3FD3333340000000
  %228 = fptosi float %227 to i32
  %229 = add nsw i32 %228, %225
  br label %230

230:                                              ; preds = %215, %204
  %231 = phi i32 [ %214, %204 ], [ %229, %215 ]
  %232 = sub nsw i32 %167, %231
  %233 = add nuw nsw i32 %165, 1
  %234 = load ptr, ptr %164, align 8, !tbaa !64
  %235 = icmp sgt i32 %232, 0
  br i1 %235, label %163, label %236, !llvm.loop !107

236:                                              ; preds = %230, %163, %140
  %237 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 9
  %238 = load i16, ptr %237, align 8, !tbaa !108
  %239 = and i16 %238, 128
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %257, label %241

241:                                              ; preds = %236
  call void @UI_ThemeColor(i32 noundef 23) #13
  %242 = load i8, ptr %101, align 2, !tbaa !52
  %243 = zext i8 %242 to i32
  %244 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 28
  %245 = load i16, ptr %244, align 8, !tbaa !109
  %246 = sext i16 %245 to i32
  %247 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %248 = load i32, ptr %247, align 8, !tbaa !106
  %249 = sub nsw i32 %246, %248
  %250 = mul nsw i32 %249, %243
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %241
  %253 = add nsw i32 %250, %142
  call void @glBegin(i32 noundef 1) #13
  call void @glVertex2i(i32 noundef %253, i32 noundef 0) #13
  %254 = load i16, ptr %143, align 2, !tbaa !98
  %255 = sext i16 %254 to i32
  %256 = add nsw i32 %255, -2
  call void @glVertex2i(i32 noundef %253, i32 noundef %256) #13
  call void @glEnd() #13
  br label %257

257:                                              ; preds = %241, %252, %236
  call fastcc void @draw_brackets(ptr noundef nonnull %0, ptr noundef %1) #12
  call void @glTranslatef(float noundef 3.750000e-01, float noundef 3.750000e-01, float noundef 0.000000e+00) #13
  call fastcc void @draw_textscroll(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call fastcc void @draw_documentation(ptr noundef nonnull %0, ptr noundef %1) #12
  call fastcc void @draw_suggestion_list(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %258

258:                                              ; preds = %2, %257
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @txt_clean_text(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_text_rcts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 !PGOFuncName !110 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %6 = load i16, ptr %5, align 2, !tbaa !98
  %7 = add i16 %6, -12
  %8 = tail call i32 @text_get_total_lines(ptr noundef %0, ptr noundef %1) #12
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = sdiv i32 %10, 2
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = sitofp i16 %13 to float
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %16 = sitofp i16 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FEB333340000000, float 1.000000e+00)
  %18 = fsub float %14, %17
  %19 = fptosi float %18 to i32
  store i32 %19, ptr %3, align 4, !tbaa !111
  %20 = sext i16 %13 to i32
  %21 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !112
  %22 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 0, ptr %22, align 4, !tbaa !113
  %23 = load i16, ptr %5, align 2, !tbaa !98
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !114
  %26 = tail call float @llvm.fmuladd.f32(float %16, float 0xBFEB333340000000, float %14)
  %27 = fptosi float %26 to i32
  store i32 %27, ptr %2, align 4, !tbaa !111
  %28 = add nsw i32 %20, -5
  %29 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !112
  %30 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 4, ptr %30, align 4, !tbaa !113
  %31 = sext i16 %7 to i32
  %32 = add nsw i32 %31, 4
  %33 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %32, ptr %33, align 4, !tbaa !114
  %34 = shl i32 %11, 16
  %35 = ashr exact i32 %34, 16
  %36 = add nsw i32 %35, %8
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !61
  %39 = add nsw i32 %38, %10
  %40 = icmp slt i32 %36, %39
  %41 = sub nsw i32 %39, %8
  %42 = select i1 %40, i32 %41, i32 %11
  %43 = shl i32 %42, 16
  %44 = ashr exact i32 %43, 16
  %45 = add nsw i32 %44, %8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %4
  %48 = mul nsw i32 %10, %31
  %49 = sdiv i32 %48, %45
  %50 = trunc i32 %49 to i16
  %51 = icmp slt i16 %50, 20
  %52 = sub i16 20, %50
  %53 = shl i32 %49, 16
  %54 = select i1 %51, i16 %52, i16 0
  %55 = sext i16 %54 to i32
  %56 = sub nsw i32 %31, %55
  %57 = mul nsw i32 %56, %38
  %58 = sdiv i32 %57, %45
  %59 = ashr exact i32 %53, 16
  %60 = select i1 %51, i32 20, i32 %59
  br label %61

61:                                               ; preds = %4, %47
  %62 = phi i16 [ %54, %47 ], [ 20, %4 ]
  %63 = phi i32 [ %60, %47 ], [ 20, %4 ]
  %64 = phi i32 [ %58, %47 ], [ 0, %4 ]
  %65 = trunc i32 %64 to i16
  %66 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !115
  %67 = shl i32 %64, 16
  %68 = ashr exact i32 %67, 16
  %69 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !116
  %71 = sub nsw i32 %70, %68
  store i32 %71, ptr %69, align 4, !tbaa !116
  %72 = sub nsw i32 %71, %63
  %73 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23, i32 2
  store i32 %72, ptr %73, align 8, !tbaa !117
  %74 = icmp slt i32 %72, 4
  br i1 %74, label %80, label %75

75:                                               ; preds = %61
  %76 = load i16, ptr %5, align 2, !tbaa !98
  %77 = sext i16 %76 to i32
  %78 = add nsw i32 %77, -8
  %79 = icmp sgt i32 %72, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %61
  %81 = phi i32 [ 4, %61 ], [ %78, %75 ]
  store i32 %81, ptr %73, align 8, !tbaa !117
  br label %82

82:                                               ; preds = %80, %75
  %83 = icmp slt i32 %71, 4
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  %85 = load i16, ptr %5, align 2, !tbaa !98
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %86, -8
  %88 = icmp sgt i32 %71, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %82
  %90 = phi i32 [ 4, %82 ], [ %87, %84 ]
  store i32 %90, ptr %69, align 4, !tbaa !116
  br label %91

91:                                               ; preds = %89, %84
  %92 = icmp sgt i16 %7, 0
  %93 = sitofp i32 %45 to float
  %94 = sitofp i16 %7 to float
  %95 = fdiv float %93, %94
  %96 = select i1 %92, float %95, float 0.000000e+00
  %97 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 21
  %98 = fcmp olt float %96, 0x3FB99999A0000000
  %99 = select i1 %98, float 0x3FB99999A0000000, float %96
  store float %99, ptr %97, align 4, !tbaa !118
  %100 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !55
  %102 = getelementptr inbounds %struct.Text, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  %104 = getelementptr inbounds %struct.Text, ptr %101, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !80
  %106 = tail call i32 @text_get_span_wrap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %103, ptr noundef %105) #12
  %107 = load ptr, ptr %100, align 8, !tbaa !55
  %108 = getelementptr inbounds %struct.Text, ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !57
  %110 = getelementptr inbounds %struct.Text, ptr %107, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !79
  %112 = tail call i32 @text_get_span_wrap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %109, ptr noundef %111) #12
  %113 = tail call i32 @llvm.smin.i32(i32 %106, i32 %112)
  %114 = tail call i32 @llvm.smax.i32(i32 %106, i32 %112)
  br i1 %46, label %115, label %218

115:                                              ; preds = %91
  %116 = mul nsw i32 %113, %31
  %117 = sdiv i32 %116, %45
  %118 = trunc i32 %117 to i16
  %119 = mul nsw i32 %114, %31
  %120 = sdiv i32 %119, %45
  %121 = trunc i32 %120 to i16
  %122 = sext i16 %62 to i32
  %123 = icmp sgt i16 %62, 0
  br i1 %123, label %124, label %218

124:                                              ; preds = %115
  %125 = load i32, ptr %9, align 4, !tbaa !99
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr %37, align 8, !tbaa !61
  br i1 %126, label %147, label %128

128:                                              ; preds = %124
  %129 = icmp slt i32 %113, %127
  %130 = add nsw i32 %127, %125
  %131 = icmp sgt i32 %113, %130
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %147, label %133

133:                                              ; preds = %128
  %134 = sub nsw i32 %31, %122
  %135 = mul nsw i32 %113, %134
  %136 = sdiv i32 %135, %45
  %137 = sub nsw i32 %113, %127
  %138 = mul nsw i32 %137, %122
  %139 = sdiv i32 %138, %125
  %140 = add nsw i32 %139, %136
  %141 = trunc i32 %140 to i16
  %142 = shl i32 %120, 16
  %143 = shl i32 %140, 16
  %144 = icmp sgt i32 %142, %143
  %145 = add i16 %141, 2
  %146 = select i1 %144, i16 %121, i16 %145
  br label %174

147:                                              ; preds = %124, %128
  %148 = phi i32 [ %130, %128 ], [ %127, %124 ]
  %149 = icmp sgt i32 %113, %148
  %150 = shl i32 %117, 16
  br i1 %149, label %151, label %159

151:                                              ; preds = %147
  %152 = ashr exact i32 %150, 16
  %153 = add nsw i32 %68, %63
  %154 = icmp slt i32 %152, %153
  %155 = icmp sgt i32 %152, %68
  %156 = and i1 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = trunc i32 %153 to i16
  br label %166

159:                                              ; preds = %147, %151
  %160 = icmp sgt i32 %114, %127
  %161 = icmp slt i32 %113, %127
  %162 = select i1 %160, i1 %161, i1 false
  %163 = icmp sgt i32 %150, %67
  %164 = select i1 %162, i1 %163, i1 false
  %165 = select i1 %164, i16 %65, i16 %118
  br label %166

166:                                              ; preds = %159, %157
  %167 = phi i16 [ %158, %157 ], [ %165, %159 ]
  %168 = shl i32 %120, 16
  %169 = ashr exact i32 %168, 16
  %170 = sext i16 %167 to i32
  %171 = icmp sgt i32 %169, %170
  %172 = add i16 %167, 2
  %173 = select i1 %171, i16 %121, i16 %172
  br i1 %126, label %190, label %174

174:                                              ; preds = %133, %166
  %175 = phi i32 [ %130, %133 ], [ %148, %166 ]
  %176 = phi i16 [ %146, %133 ], [ %173, %166 ]
  %177 = phi i16 [ %141, %133 ], [ %167, %166 ]
  %178 = icmp slt i32 %114, %127
  %179 = icmp sgt i32 %114, %175
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %190, label %181

181:                                              ; preds = %174
  %182 = sub nsw i32 %31, %122
  %183 = mul nsw i32 %114, %182
  %184 = sdiv i32 %183, %45
  %185 = sub nsw i32 %114, %127
  %186 = mul nsw i32 %185, %122
  %187 = sdiv i32 %186, %125
  %188 = add nsw i32 %187, %184
  %189 = trunc i32 %188 to i16
  br label %212

190:                                              ; preds = %174, %166
  %191 = phi i16 [ %176, %174 ], [ %173, %166 ]
  %192 = phi i16 [ %177, %174 ], [ %167, %166 ]
  %193 = icmp slt i32 %114, %127
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = sext i16 %191 to i32
  %196 = add nsw i32 %68, -2
  %197 = icmp sle i32 %196, %195
  %198 = add nsw i32 %68, %63
  %199 = icmp sgt i32 %198, %195
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %212, label %201

201:                                              ; preds = %194, %190
  %202 = add nsw i32 %127, %125
  %203 = icmp sgt i32 %114, %202
  %204 = icmp slt i32 %113, %202
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = sext i16 %191 to i32
  %208 = add nsw i32 %68, %63
  %209 = icmp sgt i32 %208, %207
  %210 = trunc i32 %208 to i16
  %211 = select i1 %209, i16 %210, i16 %191
  br label %212

212:                                              ; preds = %206, %194, %201, %181
  %213 = phi i16 [ %177, %181 ], [ %192, %201 ], [ %192, %194 ], [ %192, %206 ]
  %214 = phi i16 [ %189, %181 ], [ %191, %201 ], [ %65, %194 ], [ %211, %206 ]
  %215 = icmp sgt i16 %214, %213
  %216 = add i16 %214, -2
  %217 = select i1 %215, i16 %213, i16 %216
  br label %218

218:                                              ; preds = %212, %91, %115
  %219 = phi i16 [ %121, %115 ], [ %214, %212 ], [ 0, %91 ]
  %220 = phi i16 [ %118, %115 ], [ %217, %212 ], [ 0, %91 ]
  %221 = sext i16 %219 to i32
  %222 = sext i16 %220 to i32
  %223 = sub nsw i32 %221, %222
  %224 = icmp slt i32 %223, 2
  %225 = add i16 %220, 2
  %226 = select i1 %224, i16 %225, i16 %219
  %227 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %227, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !115
  %228 = load i16, ptr %5, align 2, !tbaa !98
  %229 = sext i16 %228 to i32
  %230 = add nsw i32 %229, -8
  %231 = sub nsw i32 %230, %222
  %232 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 3
  store i32 %231, ptr %232, align 4, !tbaa !119
  %233 = sext i16 %226 to i32
  %234 = sub nsw i32 %230, %233
  %235 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 2
  store i32 %234, ptr %235, align 8, !tbaa !120
  %236 = icmp slt i32 %234, 4
  br i1 %236, label %239, label %237

237:                                              ; preds = %218
  %238 = icmp slt i16 %226, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %237, %218
  %240 = phi i32 [ 4, %218 ], [ %230, %237 ]
  store i32 %240, ptr %235, align 8, !tbaa !120
  br label %241

241:                                              ; preds = %239, %237
  %242 = icmp slt i32 %231, 4
  br i1 %242, label %245, label %243

243:                                              ; preds = %241
  %244 = icmp slt i16 %220, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %243, %241
  %246 = phi i32 [ 4, %241 ], [ %230, %243 ]
  store i32 %246, ptr %232, align 4, !tbaa !119
  br label %247

247:                                              ; preds = %245, %243
  ret void
}

; Function Attrs: optsize
declare ptr @ED_text_format_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @text_get_visible_lines_no(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !121 {
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !54
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_font_begin(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !122 {
  %2 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %4 = load i16, ptr %3, align 2, !tbaa !94
  %5 = sext i16 %4 to i32
  tail call void @BLF_size(i32 noundef %2, i32 noundef %5, i32 noundef 72) #13
  ret void
}

; Function Attrs: optsize
declare float @BLF_fixed_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_cursor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !123 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %12 = load i16, ptr %11, align 2, !tbaa !94
  %13 = sext i16 %12 to i32
  %14 = sitofp i16 %12 to float
  %15 = fmul float %14, 0x3FD3333340000000
  %16 = fptosi float %15 to i32
  %17 = add nsw i32 %16, %13
  %18 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  %22 = icmp eq ptr %19, %21
  %23 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !124
  br i1 %22, label %25, label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !125
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %149, label %29

29:                                               ; preds = %2, %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %30 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 7
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %19, i32 noundef %24, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %31 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = load ptr, ptr %18, align 8, !tbaa !80
  %34 = tail call i32 @txt_get_span(ptr noundef %32, ptr noundef %33) #13
  %35 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !61
  %37 = sub i32 %34, %36
  %38 = load i32, ptr %3, align 4, !tbaa !54
  %39 = add i32 %37, %38
  %40 = load ptr, ptr %18, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.TextLine, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = load i32, ptr %30, align 8, !tbaa !124
  %44 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %42, i32 noundef %43) #12
  %45 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %46 = load i32, ptr %45, align 8, !tbaa !106
  %47 = sub i32 %44, %46
  %48 = load i32, ptr %4, align 4, !tbaa !54
  %49 = add nsw i32 %47, %48
  %50 = load ptr, ptr %20, align 8, !tbaa !79
  %51 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !125
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %50, i32 noundef %52, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %53 = load ptr, ptr %31, align 8, !tbaa !57
  %54 = load ptr, ptr %20, align 8, !tbaa !79
  %55 = tail call i32 @txt_get_span(ptr noundef %53, ptr noundef %54) #13
  %56 = load i32, ptr %35, align 8, !tbaa !61
  %57 = sub i32 %55, %56
  %58 = load i32, ptr %3, align 4, !tbaa !54
  %59 = add i32 %57, %58
  %60 = load ptr, ptr %20, align 8, !tbaa !79
  %61 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  %63 = load i32, ptr %51, align 4, !tbaa !125
  %64 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %62, i32 noundef %63) #12
  %65 = load i32, ptr %45, align 8, !tbaa !106
  %66 = sub nsw i32 %64, %65
  %67 = load i32, ptr %4, align 4, !tbaa !54
  %68 = add nsw i32 %66, %67
  %69 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %70 = tail call i32 @llvm.smax.i32(i32 %68, i32 0)
  tail call void @UI_ThemeColor(i32 noundef 22) #13
  %71 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = icmp eq i32 %72, 0
  %74 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %75 = sitofp i16 %74 to float
  %76 = fmul float %75, 5.000000e-01
  %77 = fptosi float %76 to i32
  br i1 %73, label %87, label %78

78:                                               ; preds = %29
  %79 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %80 = load i8, ptr %79, align 2, !tbaa !52
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %83 = load i8, ptr %82, align 1, !tbaa !53
  %84 = zext i8 %83 to i32
  %85 = mul nuw nsw i32 %84, %81
  %86 = add nsw i32 %85, %77
  br label %87

87:                                               ; preds = %29, %78
  %88 = phi i32 [ %86, %78 ], [ %77, %29 ]
  %89 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %90 = load i16, ptr %89, align 2, !tbaa !98
  %91 = sext i16 %90 to i32
  %92 = icmp eq i32 %39, %59
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = mul nsw i32 %39, %17
  %95 = sub nsw i32 %91, %94
  %96 = icmp sgt i32 %68, %69
  %97 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %98 = load i8, ptr %97, align 2, !tbaa !52
  %99 = zext i8 %98 to i32
  %100 = add i32 %88, -1
  %101 = sub nsw i32 %95, %17
  br i1 %96, label %102, label %107

102:                                              ; preds = %93
  %103 = mul nsw i32 %69, %99
  %104 = add i32 %100, %103
  %105 = mul nsw i32 %70, %99
  %106 = add nsw i32 %105, %88
  tail call void @glRecti(i32 noundef %104, i32 noundef %95, i32 noundef %106, i32 noundef %101) #13
  br label %148

107:                                              ; preds = %93
  %108 = mul nsw i32 %70, %99
  %109 = add i32 %100, %108
  %110 = mul nsw i32 %69, %99
  %111 = add nsw i32 %110, %88
  tail call void @glRecti(i32 noundef %109, i32 noundef %95, i32 noundef %111, i32 noundef %101) #13
  br label %148

112:                                              ; preds = %87
  %113 = icmp slt i32 %39, %59
  %114 = tail call i32 @llvm.smin.i32(i32 %39, i32 %59)
  %115 = select i1 %113, i32 %69, i32 %70
  %116 = tail call i32 @llvm.smax.i32(i32 %39, i32 %59)
  %117 = select i1 %113, i32 %70, i32 %69
  %118 = mul nsw i32 %114, %17
  %119 = sub nsw i32 %91, %118
  %120 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %121 = load i8, ptr %120, align 2, !tbaa !52
  %122 = zext i8 %121 to i32
  %123 = mul nsw i32 %115, %122
  %124 = add i32 %88, -1
  %125 = add i32 %124, %123
  %126 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %127 = load i16, ptr %126, align 8, !tbaa !34
  %128 = sext i16 %127 to i32
  %129 = sub nsw i32 %119, %17
  tail call void @glRecti(i32 noundef %125, i32 noundef %119, i32 noundef %128, i32 noundef %129) #13
  %130 = add nsw i32 %114, 1
  %131 = icmp slt i32 %130, %116
  %132 = add nsw i32 %88, -4
  br i1 %131, label %133, label %141

133:                                              ; preds = %112, %133
  %134 = phi i32 [ %139, %133 ], [ %130, %112 ]
  %135 = phi i32 [ %138, %133 ], [ %129, %112 ]
  %136 = load i16, ptr %126, align 8, !tbaa !34
  %137 = sext i16 %136 to i32
  %138 = sub nsw i32 %135, %17
  tail call void @glRecti(i32 noundef %132, i32 noundef %135, i32 noundef %137, i32 noundef %138) #13
  %139 = add i32 %134, 1
  %140 = icmp eq i32 %139, %116
  br i1 %140, label %141, label %133, !llvm.loop !126

141:                                              ; preds = %133, %112
  %142 = phi i32 [ %129, %112 ], [ %138, %133 ]
  %143 = load i8, ptr %120, align 2, !tbaa !52
  %144 = zext i8 %143 to i32
  %145 = mul nsw i32 %117, %144
  %146 = add nsw i32 %145, %88
  %147 = sub nsw i32 %142, %17
  tail call void @glRecti(i32 noundef %132, i32 noundef %142, i32 noundef %146, i32 noundef %147) #13
  br label %148

148:                                              ; preds = %102, %107, %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %170

149:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %19, i32 noundef %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %150 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !57
  %152 = load ptr, ptr %20, align 8, !tbaa !79
  %153 = tail call i32 @txt_get_span(ptr noundef %151, ptr noundef %152) #13
  %154 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !61
  %156 = sub i32 %153, %155
  %157 = load i32, ptr %5, align 4, !tbaa !54
  %158 = add nsw i32 %156, %157
  %159 = load ptr, ptr %20, align 8, !tbaa !79
  %160 = getelementptr inbounds %struct.TextLine, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !62
  %162 = load i32, ptr %26, align 4, !tbaa !125
  %163 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %161, i32 noundef %162) #12
  %164 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %165 = load i32, ptr %164, align 8, !tbaa !106
  %166 = sub nsw i32 %163, %165
  %167 = load i32, ptr %6, align 4, !tbaa !54
  %168 = add nsw i32 %166, %167
  %169 = tail call i32 @llvm.smax.i32(i32 %168, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %170

170:                                              ; preds = %149, %148
  %171 = phi i32 [ %68, %148 ], [ %168, %149 ]
  %172 = phi i32 [ %70, %148 ], [ %169, %149 ]
  %173 = phi i32 [ %59, %148 ], [ %158, %149 ]
  %174 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 18
  %175 = load i16, ptr %174, align 2, !tbaa !127
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %217, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %179 = load i32, ptr %178, align 8, !tbaa !56
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %198, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %20, align 8, !tbaa !79
  %183 = getelementptr inbounds %struct.TextLine, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !62
  %185 = tail call i32 @text_get_visible_lines(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %184) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %186 = load ptr, ptr %20, align 8, !tbaa !79
  %187 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 8
  %188 = load i32, ptr %187, align 4, !tbaa !125
  call void @wrap_offset_in_line(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %186, i32 noundef %188, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %189 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %190 = load i16, ptr %189, align 2, !tbaa !98
  %191 = sext i16 %190 to i32
  %192 = load i32, ptr %7, align 4, !tbaa !54
  %193 = sub i32 %192, %173
  %194 = mul i32 %193, %17
  %195 = add i32 %194, %191
  %196 = mul nsw i32 %185, %17
  %197 = sub nsw i32 %195, %196
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %205

198:                                              ; preds = %177
  %199 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %200 = load i16, ptr %199, align 2, !tbaa !98
  %201 = sext i16 %200 to i32
  %202 = mul nsw i32 %173, %17
  %203 = sub nsw i32 %201, %202
  %204 = sub nsw i32 %203, %17
  br label %205

205:                                              ; preds = %198, %181
  %206 = phi i16 [ %190, %181 ], [ %200, %198 ]
  %207 = phi i32 [ %195, %181 ], [ %203, %198 ]
  %208 = phi i32 [ %197, %181 ], [ %204, %198 ]
  %209 = icmp slt i32 %207, 0
  %210 = sext i16 %206 to i32
  %211 = icmp sgt i32 %208, %210
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %215 = load i16, ptr %214, align 8, !tbaa !34
  %216 = sext i16 %215 to i32
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 32) #13
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glRecti(i32 noundef -4, i32 noundef %207, i32 noundef %216, i32 noundef %208) #13
  tail call void @glDisable(i32 noundef 3042) #13
  br label %217

217:                                              ; preds = %205, %213, %170
  %218 = icmp sgt i32 %171, -1
  br i1 %218, label %219, label %282

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %221 = load i32, ptr %220, align 4, !tbaa !50
  %222 = icmp eq i32 %221, 0
  %223 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %224 = sitofp i16 %223 to float
  %225 = fmul float %224, 5.000000e-01
  %226 = fptosi float %225 to i32
  %227 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %228 = load i8, ptr %227, align 2, !tbaa !52
  %229 = zext i8 %228 to i32
  br i1 %222, label %236, label %230

230:                                              ; preds = %219
  %231 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %232 = load i8, ptr %231, align 1, !tbaa !53
  %233 = zext i8 %232 to i32
  %234 = mul nuw nsw i32 %233, %229
  %235 = add nsw i32 %234, %226
  br label %236

236:                                              ; preds = %219, %230
  %237 = phi i32 [ %235, %230 ], [ %226, %219 ]
  %238 = mul nsw i32 %172, %229
  %239 = add nsw i32 %238, %237
  %240 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %241 = load i16, ptr %240, align 2, !tbaa !98
  %242 = sext i16 %241 to i32
  %243 = mul nsw i32 %173, %17
  %244 = sub nsw i32 %242, %243
  %245 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 19
  %246 = load i16, ptr %245, align 8, !tbaa !128
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %278, label %248

248:                                              ; preds = %236
  %249 = load ptr, ptr %20, align 8, !tbaa !79
  %250 = getelementptr inbounds %struct.TextLine, ptr %249, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !62
  %252 = getelementptr inbounds %struct.Text, ptr %10, i64 0, i32 8
  %253 = load i32, ptr %252, align 4, !tbaa !125
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %251, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !65
  %257 = load i16, ptr %11, align 2, !tbaa !94
  %258 = sitofp i16 %257 to float
  %259 = fmul float %258, 0x3FD3333340000000
  %260 = fptosi float %259 to i32
  %261 = icmp eq i8 %256, 9
  br i1 %261, label %262, label %271

262:                                              ; preds = %248
  %263 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %264 = load i32, ptr %263, align 8, !tbaa !66
  %265 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %266 = load i32, ptr %265, align 8, !tbaa !106
  %267 = add nsw i32 %266, %172
  %268 = srem i32 %267, %264
  %269 = sub nsw i32 %264, %268
  %270 = mul nsw i32 %269, %229
  br label %271

271:                                              ; preds = %262, %248
  %272 = phi i32 [ %270, %262 ], [ %229, %248 ]
  tail call void @UI_ThemeColor(i32 noundef 23) #13
  %273 = sub i32 %244, %17
  %274 = add i32 %273, %260
  %275 = add nsw i32 %274, -1
  %276 = add nsw i32 %272, %239
  %277 = add nsw i32 %274, 1
  tail call void @glRecti(i32 noundef %239, i32 noundef %275, i32 noundef %276, i32 noundef %277) #13
  br label %282

278:                                              ; preds = %236
  tail call void @UI_ThemeColor(i32 noundef 23) #13
  %279 = add nsw i32 %239, -1
  %280 = add nsw i32 %239, 1
  %281 = sub nsw i32 %244, %17
  tail call void @glRecti(i32 noundef %279, i32 noundef %244, i32 noundef %280, i32 noundef %281) #13
  br label %282

282:                                              ; preds = %271, %278, %217
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_font_draw(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !129 {
  %5 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %6 = sitofp i32 %1 to float
  %7 = sitofp i32 %2 to float
  tail call void @BLF_position(i32 noundef %5, float noundef %6, float noundef %7, float noundef 0.000000e+00) #13
  %8 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %10 = load i8, ptr %9, align 2, !tbaa !52
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @BLF_draw_mono(i32 noundef %8, ptr noundef %3, i64 noundef 1024, i32 noundef %11) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @text_draw_wrapped(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, i32 noundef %6) unnamed_addr #2 !PGOFuncName !130 {
  %8 = alloca %struct.FlattenString, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %11 = load i16, ptr %10, align 4, !tbaa !101
  %12 = icmp ne i16 %11, 0
  %13 = icmp ne ptr %5, null
  %14 = and i1 %13, %12
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %15 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %1) #13
  %16 = getelementptr inbounds %struct.FlattenString, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %19 = load i8, ptr %18, align 2, !tbaa !52
  %20 = zext i8 %19 to i32
  %21 = sdiv i32 %4, %20
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 8)
  %23 = call fastcc ptr @txt_utf8_forward_columns(ptr noundef %17, i32 noundef %22, ptr noundef nonnull %9) #12
  %24 = ptrtoint ptr %17 to i64
  %25 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %26 = load i8, ptr %17, align 1, !tbaa !65
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %176, label %28

28:                                               ; preds = %7
  %29 = load i32, ptr %9, align 4, !tbaa !54
  %30 = sub nsw i32 %22, %29
  %31 = ptrtoint ptr %23 to i64
  %32 = sub i64 %31, %24
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %28, %126
  %35 = phi ptr [ %140, %126 ], [ %17, %28 ]
  %36 = phi i8 [ %136, %126 ], [ -1, %28 ]
  %37 = phi i32 [ %135, %126 ], [ %33, %28 ]
  %38 = phi i32 [ %134, %126 ], [ 0, %28 ]
  %39 = phi i32 [ %138, %126 ], [ 0, %28 ]
  %40 = phi i32 [ %133, %126 ], [ 0, %28 ]
  %41 = phi i32 [ %132, %126 ], [ 0, %28 ]
  %42 = phi i32 [ %131, %126 ], [ %30, %28 ]
  %43 = phi i32 [ %130, %126 ], [ %30, %28 ]
  %44 = phi i32 [ %49, %126 ], [ 0, %28 ]
  %45 = phi i32 [ %129, %126 ], [ 1, %28 ]
  %46 = phi i32 [ %128, %126 ], [ %3, %28 ]
  %47 = phi i32 [ %127, %126 ], [ %6, %28 ]
  %48 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %35) #13
  %49 = add nsw i32 %48, %44
  %50 = icmp sgt i32 %49, %42
  br i1 %50, label %51, label %121

51:                                               ; preds = %34
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = icmp slt i32 %38, %37
  br i1 %54, label %55, label %100

55:                                               ; preds = %53
  %56 = sext i32 %41 to i64
  br label %78

57:                                               ; preds = %51
  %58 = add nsw i32 %47, -1
  br i1 %14, label %59, label %67

59:                                               ; preds = %57
  %60 = sext i32 %38 to i64
  %61 = getelementptr inbounds i8, ptr %17, i64 %60
  %62 = sub nsw i32 %37, %38
  %63 = sext i32 %62 to i64
  %64 = call i64 @BLI_strnlen_utf8(ptr noundef nonnull %61, i64 noundef %63) #13
  %65 = trunc i64 %64 to i32
  %66 = add i32 %40, %65
  br label %67

67:                                               ; preds = %59, %57
  %68 = phi i32 [ %66, %59 ], [ %40, %57 ]
  %69 = sext i32 %37 to i64
  %70 = getelementptr inbounds i8, ptr %17, i64 %69
  %71 = call fastcc ptr @txt_utf8_forward_columns(ptr noundef nonnull %70, i32 noundef %22, ptr noundef nonnull %9) #12
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %72, %24
  %74 = trunc i64 %73 to i32
  %75 = load i32, ptr %9, align 4, !tbaa !54
  %76 = sub nsw i32 %22, %75
  %77 = add nsw i32 %76, %43
  br label %126

78:                                               ; preds = %55, %89
  %79 = phi i64 [ %56, %55 ], [ %96, %89 ]
  %80 = phi i8 [ %36, %55 ], [ %90, %89 ]
  %81 = phi i32 [ %38, %55 ], [ %98, %89 ]
  %82 = phi i32 [ %40, %55 ], [ %95, %89 ]
  %83 = phi i32 [ %2, %55 ], [ %94, %89 ]
  br i1 %14, label %84, label %89

84:                                               ; preds = %78
  %85 = getelementptr inbounds i8, ptr %5, i64 %79
  %86 = load i8, ptr %85, align 1, !tbaa !65
  %87 = icmp eq i8 %80, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call fastcc void @format_draw_color(i8 noundef zeroext %86) #12
  br label %89

89:                                               ; preds = %84, %88, %78
  %90 = phi i8 [ %86, %88 ], [ %80, %84 ], [ %80, %78 ]
  %91 = sext i32 %81 to i64
  %92 = getelementptr inbounds i8, ptr %17, i64 %91
  %93 = call fastcc i32 @text_font_draw_character_utf8(ptr noundef %0, i32 noundef %83, i32 noundef %46, ptr noundef nonnull %92) #12
  %94 = add nsw i32 %93, %83
  %95 = add nsw i32 %82, 1
  %96 = add i64 %79, 1
  %97 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %92) #13
  %98 = add nsw i32 %97, %81
  %99 = icmp slt i32 %98, %37
  br i1 %99, label %78, label %100, !llvm.loop !133

100:                                              ; preds = %89, %53
  %101 = phi i32 [ %40, %53 ], [ %95, %89 ]
  %102 = phi i8 [ %36, %53 ], [ %90, %89 ]
  %103 = load i16, ptr %25, align 2, !tbaa !94
  %104 = sext i16 %103 to i32
  %105 = sitofp i16 %103 to float
  %106 = fmul float %105, 0x3FD3333340000000
  %107 = fptosi float %106 to i32
  %108 = add i32 %104, %107
  %109 = sub i32 %46, %108
  %110 = add nsw i32 %45, 1
  %111 = sext i32 %37 to i64
  %112 = getelementptr inbounds i8, ptr %17, i64 %111
  %113 = call fastcc ptr @txt_utf8_forward_columns(ptr noundef nonnull %112, i32 noundef %22, ptr noundef nonnull %9) #12
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 %114, %24
  %116 = trunc i64 %115 to i32
  %117 = load i32, ptr %9, align 4, !tbaa !54
  %118 = sub nsw i32 %22, %117
  %119 = add nsw i32 %118, %43
  %120 = icmp slt i32 %109, 1
  br i1 %120, label %176, label %126

121:                                              ; preds = %34
  %122 = load i8, ptr %35, align 1, !tbaa !65
  switch i8 %122, label %126 [
    i8 32, label %123
    i8 45, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = add nsw i32 %44, 1
  %125 = add nsw i32 %39, 1
  br label %126

126:                                              ; preds = %121, %100, %123, %67
  %127 = phi i32 [ %58, %67 ], [ 0, %100 ], [ %47, %123 ], [ %47, %121 ]
  %128 = phi i32 [ %46, %67 ], [ %109, %100 ], [ %46, %123 ], [ %46, %121 ]
  %129 = phi i32 [ %45, %67 ], [ %110, %100 ], [ %45, %123 ], [ %45, %121 ]
  %130 = phi i32 [ %77, %67 ], [ %119, %100 ], [ %124, %123 ], [ %43, %121 ]
  %131 = phi i32 [ %77, %67 ], [ %119, %100 ], [ %42, %123 ], [ %42, %121 ]
  %132 = phi i32 [ %68, %67 ], [ %101, %100 ], [ %41, %123 ], [ %41, %121 ]
  %133 = phi i32 [ %68, %67 ], [ %101, %100 ], [ %40, %123 ], [ %40, %121 ]
  %134 = phi i32 [ %37, %67 ], [ %37, %100 ], [ %38, %123 ], [ %38, %121 ]
  %135 = phi i32 [ %74, %67 ], [ %116, %100 ], [ %125, %123 ], [ %37, %121 ]
  %136 = phi i8 [ %36, %67 ], [ %102, %100 ], [ %36, %123 ], [ %36, %121 ]
  %137 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %35) #13
  %138 = add nsw i32 %137, %39
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %17, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !65
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %34, !llvm.loop !134

143:                                              ; preds = %126
  %144 = sext i32 %134 to i64
  %145 = getelementptr inbounds i8, ptr %17, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !65
  %147 = icmp ne i8 %146, 0
  %148 = icmp sgt i32 %128, 0
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %176

150:                                              ; preds = %143
  %151 = sext i32 %132 to i64
  %152 = sext i32 %134 to i64
  %153 = getelementptr inbounds i8, ptr %17, i64 %152
  br label %154

154:                                              ; preds = %150, %165
  %155 = phi i64 [ %151, %150 ], [ %169, %165 ]
  %156 = phi ptr [ %153, %150 ], [ %173, %165 ]
  %157 = phi i8 [ %136, %150 ], [ %166, %165 ]
  %158 = phi i32 [ %134, %150 ], [ %171, %165 ]
  %159 = phi i32 [ %2, %150 ], [ %168, %165 ]
  br i1 %14, label %160, label %165

160:                                              ; preds = %154
  %161 = getelementptr inbounds i8, ptr %5, i64 %155
  %162 = load i8, ptr %161, align 1, !tbaa !65
  %163 = icmp eq i8 %157, %162
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call fastcc void @format_draw_color(i8 noundef zeroext %162) #12
  br label %165

165:                                              ; preds = %160, %164, %154
  %166 = phi i8 [ %162, %164 ], [ %157, %160 ], [ %157, %154 ]
  %167 = call fastcc i32 @text_font_draw_character_utf8(ptr noundef %0, i32 noundef %159, i32 noundef %128, ptr noundef nonnull %156) #12
  %168 = add nsw i32 %167, %159
  %169 = add i64 %155, 1
  %170 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %156) #13
  %171 = add nsw i32 %170, %158
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %17, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !65
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %154, !llvm.loop !135

176:                                              ; preds = %100, %165, %7, %143
  %177 = phi i32 [ %129, %143 ], [ 1, %7 ], [ %129, %165 ], [ %110, %100 ]
  call void @flatten_string_free(ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %8) #15
  ret i32 %177
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) unnamed_addr #2 !PGOFuncName !136 {
  %8 = alloca %struct.FlattenString, align 8
  %9 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %10 = load i16, ptr %9, align 4, !tbaa !101
  %11 = icmp ne i16 %10, 0
  %12 = icmp ne ptr %6, null
  %13 = and i1 %12, %11
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %8) #15
  %14 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %1) #13
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.FlattenString, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !131
  %19 = icmp ne i32 %3, 0
  %20 = add nsw i32 %3, %2
  br label %21

21:                                               ; preds = %16, %49
  %22 = phi ptr [ null, %16 ], [ %50, %49 ]
  %23 = phi i32 [ 0, %16 ], [ %53, %49 ]
  %24 = phi i32 [ undef, %16 ], [ %51, %49 ]
  %25 = phi i32 [ 0, %16 ], [ %54, %49 ]
  %26 = phi i32 [ %14, %16 ], [ %57, %49 ]
  %27 = phi ptr [ %18, %16 ], [ %56, %49 ]
  %28 = phi ptr [ %6, %16 ], [ %52, %49 ]
  %29 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef %27) #13
  %30 = call i32 @BLI_str_utf8_size_safe(ptr noundef %27) #13
  %31 = icmp eq ptr %22, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = icmp slt i32 %25, %2
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = icmp eq ptr %28, null
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  %37 = select i1 %35, ptr null, ptr %36
  br label %49

38:                                               ; preds = %32
  %39 = sub nsw i32 %25, %2
  %40 = icmp eq ptr %27, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %21, %38
  %42 = phi ptr [ %27, %38 ], [ %22, %21 ]
  %43 = phi i32 [ %39, %38 ], [ %24, %21 ]
  %44 = add nsw i32 %29, %25
  %45 = icmp sgt i32 %44, %20
  %46 = select i1 %19, i1 %45, i1 false
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = add nsw i32 %23, 1
  br label %49

49:                                               ; preds = %34, %47, %38
  %50 = phi ptr [ %42, %47 ], [ null, %38 ], [ null, %34 ]
  %51 = phi i32 [ %43, %47 ], [ %39, %38 ], [ %24, %34 ]
  %52 = phi ptr [ %28, %47 ], [ %28, %38 ], [ %37, %34 ]
  %53 = phi i32 [ %48, %47 ], [ %23, %38 ], [ %23, %34 ]
  %54 = add nsw i32 %29, %25
  %55 = sext i32 %30 to i64
  %56 = getelementptr inbounds i8, ptr %27, i64 %55
  %57 = add nsw i32 %26, -1
  %58 = icmp sgt i32 %26, 1
  br i1 %58, label %21, label %59, !llvm.loop !137

59:                                               ; preds = %49
  %60 = icmp eq ptr %50, null
  br i1 %60, label %95, label %61

61:                                               ; preds = %41, %59
  %62 = phi ptr [ %52, %59 ], [ %28, %41 ]
  %63 = phi i32 [ %53, %59 ], [ %23, %41 ]
  %64 = phi ptr [ %50, %59 ], [ %42, %41 ]
  %65 = phi i32 [ %51, %59 ], [ %43, %41 ]
  %66 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %67 = load i8, ptr %66, align 2, !tbaa !52
  %68 = zext i8 %67 to i32
  %69 = mul nsw i32 %65, %68
  %70 = add nsw i32 %69, %4
  br i1 %13, label %71, label %94

71:                                               ; preds = %61
  %72 = icmp sgt i32 %63, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %71
  %74 = zext nneg i32 %63 to i64
  br label %75

75:                                               ; preds = %73, %84
  %76 = phi i64 [ 0, %73 ], [ %92, %84 ]
  %77 = phi i8 [ -1, %73 ], [ %85, %84 ]
  %78 = phi i32 [ 0, %73 ], [ %91, %84 ]
  %79 = phi i32 [ %70, %73 ], [ %89, %84 ]
  %80 = getelementptr inbounds i8, ptr %62, i64 %76
  %81 = load i8, ptr %80, align 1, !tbaa !65
  %82 = icmp eq i8 %81, %77
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  call fastcc void @format_draw_color(i8 noundef zeroext %81) #12
  br label %84

84:                                               ; preds = %83, %75
  %85 = phi i8 [ %81, %83 ], [ %77, %75 ]
  %86 = sext i32 %78 to i64
  %87 = getelementptr inbounds i8, ptr %64, i64 %86
  %88 = call fastcc i32 @text_font_draw_character_utf8(ptr noundef %0, i32 noundef %79, i32 noundef %5, ptr noundef nonnull %87) #12
  %89 = add nsw i32 %88, %79
  %90 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %87) #13
  %91 = add nsw i32 %90, %78
  %92 = add nuw nsw i64 %76, 1
  %93 = icmp eq i64 %92, %74
  br i1 %93, label %95, label %75, !llvm.loop !138

94:                                               ; preds = %61
  call fastcc void @text_font_draw(ptr noundef nonnull %0, i32 noundef %70, i32 noundef %5, ptr noundef nonnull %64) #12
  br label %95

95:                                               ; preds = %84, %94, %71, %59, %7
  call void @flatten_string_free(ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %8) #15
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex2i(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_brackets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !139 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %7 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %331, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 17
  %12 = load i16, ptr %11, align 4, !tbaa !101
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %331, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !65
  %22 = tail call i32 @text_check_bracket(i8 noundef zeroext %21) #13
  %23 = icmp eq i32 %22, 0
  %24 = icmp sgt i32 %16, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load ptr, ptr %17, align 8, !tbaa !62
  %28 = add nsw i32 %16, -1
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !65
  %32 = tail call i32 @text_check_bracket(i8 noundef zeroext %31) #13
  br label %33

33:                                               ; preds = %26, %14
  %34 = phi i32 [ %32, %26 ], [ %22, %14 ]
  %35 = phi i32 [ %28, %26 ], [ %16, %14 ]
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %331, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %17, align 8, !tbaa !62
  %39 = tail call i32 @txt_utf8_offset_to_index(ptr noundef %38, i32 noundef %35) #13
  %40 = sub nsw i32 0, %34
  %41 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = icmp eq ptr %42, null
  br i1 %43, label %331, label %44

44:                                               ; preds = %37
  %45 = sext i32 %39 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !65
  switch i8 %47, label %48 [
    i8 108, label %331
    i8 35, label %331
  ]

48:                                               ; preds = %44
  %49 = icmp sgt i32 %34, 0
  br i1 %49, label %50, label %107

50:                                               ; preds = %48
  %51 = add nsw i32 %39, 1
  %52 = load ptr, ptr %17, align 8, !tbaa !62
  %53 = sext i32 %35 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %54) #13
  %56 = add nsw i32 %55, %35
  %57 = sext i32 %51 to i64
  br label %58

58:                                               ; preds = %50, %103
  %59 = phi i32 [ %56, %50 ], [ 0, %103 ]
  %60 = phi ptr [ %8, %50 ], [ %105, %103 ]
  %61 = phi i32 [ 0, %50 ], [ %104, %103 ]
  %62 = phi i64 [ %57, %50 ], [ 0, %103 ]
  %63 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !140
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 3
  %68 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 2
  br label %69

69:                                               ; preds = %66, %93
  %70 = phi i64 [ %62, %66 ], [ %95, %93 ]
  %71 = phi i32 [ %59, %66 ], [ %100, %93 ]
  %72 = phi i32 [ %61, %66 ], [ %94, %93 ]
  %73 = load ptr, ptr %67, align 8, !tbaa !102
  %74 = icmp eq ptr %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds i8, ptr %73, i64 %70
  %77 = load i8, ptr %76, align 1, !tbaa !65
  switch i8 %77, label %78 [
    i8 108, label %93
    i8 35, label %93
  ]

78:                                               ; preds = %75
  %79 = load ptr, ptr %68, align 8, !tbaa !62
  %80 = sext i32 %71 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !65
  %83 = tail call i32 @text_check_bracket(i8 noundef zeroext %82) #13
  %84 = icmp eq i32 %83, %40
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = icmp eq i32 %72, 0
  br i1 %86, label %206, label %87

87:                                               ; preds = %85
  %88 = add nsw i32 %72, -1
  br label %93

89:                                               ; preds = %78
  %90 = icmp eq i32 %83, %34
  %91 = zext i1 %90 to i32
  %92 = add nsw i32 %72, %91
  br label %93

93:                                               ; preds = %89, %75, %75, %87, %69
  %94 = phi i32 [ %88, %87 ], [ %72, %75 ], [ %72, %69 ], [ %72, %75 ], [ %92, %89 ]
  %95 = add i64 %70, 1
  %96 = load ptr, ptr %68, align 8, !tbaa !62
  %97 = sext i32 %71 to i64
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  %99 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %98) #13
  %100 = add nsw i32 %99, %71
  %101 = load i32, ptr %63, align 8, !tbaa !140
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %69, label %103, !llvm.loop !141

103:                                              ; preds = %93, %58
  %104 = phi i32 [ %61, %58 ], [ %94, %93 ]
  %105 = load ptr, ptr %60, align 8, !tbaa !64
  %106 = icmp eq ptr %105, null
  br i1 %106, label %331, label %58, !llvm.loop !142

107:                                              ; preds = %48
  %108 = add nsw i32 %39, -1
  %109 = icmp sgt i32 %35, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load ptr, ptr %17, align 8, !tbaa !62
  %112 = zext nneg i32 %35 to i64
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  %114 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %113) #13
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %116, %115
  %118 = trunc i64 %117 to i32
  %119 = add i32 %35, %118
  br label %120

120:                                              ; preds = %110, %107
  %121 = phi i32 [ %35, %107 ], [ %119, %110 ]
  br label %122

122:                                              ; preds = %192, %120
  %123 = phi i32 [ %121, %120 ], [ %193, %192 ]
  %124 = phi ptr [ %8, %120 ], [ %177, %192 ]
  %125 = phi i32 [ 0, %120 ], [ %174, %192 ]
  %126 = phi i32 [ %108, %120 ], [ %194, %192 ]
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %173

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.TextLine, ptr %124, i64 0, i32 3
  %130 = getelementptr inbounds %struct.TextLine, ptr %124, i64 0, i32 2
  %131 = zext nneg i32 %126 to i64
  br label %132

132:                                              ; preds = %128, %170
  %133 = phi i64 [ %131, %128 ], [ %158, %170 ]
  %134 = phi i32 [ %123, %128 ], [ %171, %170 ]
  %135 = phi i32 [ %125, %128 ], [ %157, %170 ]
  %136 = load ptr, ptr %129, align 8, !tbaa !102
  %137 = icmp eq ptr %136, null
  br i1 %137, label %156, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds i8, ptr %136, i64 %133
  %140 = load i8, ptr %139, align 1, !tbaa !65
  switch i8 %140, label %141 [
    i8 108, label %156
    i8 35, label %156
  ]

141:                                              ; preds = %138
  %142 = load ptr, ptr %130, align 8, !tbaa !62
  %143 = sext i32 %134 to i64
  %144 = getelementptr inbounds i8, ptr %142, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !65
  %146 = tail call i32 @text_check_bracket(i8 noundef zeroext %145) #13
  %147 = icmp eq i32 %146, %40
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = icmp eq i32 %135, 0
  br i1 %149, label %206, label %150

150:                                              ; preds = %148
  %151 = add nsw i32 %135, -1
  br label %156

152:                                              ; preds = %141
  %153 = icmp eq i32 %146, %34
  %154 = zext i1 %153 to i32
  %155 = add nsw i32 %135, %154
  br label %156

156:                                              ; preds = %152, %138, %138, %150, %132
  %157 = phi i32 [ %151, %150 ], [ %135, %138 ], [ %135, %132 ], [ %135, %138 ], [ %155, %152 ]
  %158 = add nsw i64 %133, -1
  %159 = icmp sgt i32 %134, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load ptr, ptr %130, align 8, !tbaa !62
  %162 = zext nneg i32 %134 to i64
  %163 = getelementptr inbounds i8, ptr %161, i64 %162
  %164 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %163) #13
  %165 = ptrtoint ptr %163 to i64
  %166 = ptrtoint ptr %164 to i64
  %167 = sub i64 %166, %165
  %168 = trunc i64 %167 to i32
  %169 = add i32 %134, %168
  br label %170

170:                                              ; preds = %160, %156
  %171 = phi i32 [ %169, %160 ], [ %134, %156 ]
  %172 = icmp eq i64 %133, 0
  br i1 %172, label %173, label %132, !llvm.loop !143

173:                                              ; preds = %170, %122
  %174 = phi i32 [ %125, %122 ], [ %157, %170 ]
  %175 = phi i32 [ %123, %122 ], [ %171, %170 ]
  %176 = getelementptr inbounds %struct.TextLine, ptr %124, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !144
  %178 = icmp eq ptr %177, null
  br i1 %178, label %331, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.TextLine, ptr %177, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %181) #14
  %185 = trunc i64 %184 to i32
  %186 = add i32 %185, -1
  br label %187

187:                                              ; preds = %179, %183
  %188 = phi i32 [ %186, %183 ], [ -1, %179 ]
  %189 = getelementptr inbounds %struct.TextLine, ptr %177, i64 0, i32 4
  %190 = load i32, ptr %189, align 8, !tbaa !140
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187, %195
  %193 = phi i32 [ %205, %195 ], [ %175, %187 ]
  %194 = phi i32 [ %188, %195 ], [ -1, %187 ]
  br label %122, !llvm.loop !145

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.TextLine, ptr %177, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !62
  %198 = sext i32 %190 to i64
  %199 = getelementptr inbounds i8, ptr %197, i64 %198
  %200 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %199) #13
  %201 = load ptr, ptr %196, align 8, !tbaa !62
  %202 = ptrtoint ptr %200 to i64
  %203 = ptrtoint ptr %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  br label %192

206:                                              ; preds = %148, %85
  %207 = phi ptr [ %60, %85 ], [ %124, %148 ]
  %208 = phi i32 [ %71, %85 ], [ %134, %148 ]
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %331, label %210

210:                                              ; preds = %206
  tail call void @UI_ThemeColor(i32 noundef 23) #13
  %211 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %212 = load i32, ptr %211, align 4, !tbaa !50
  %213 = icmp eq i32 %212, 0
  %214 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %215 = sitofp i16 %214 to float
  %216 = fmul float %215, 5.000000e-01
  %217 = fptosi float %216 to i32
  br i1 %213, label %227, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %220 = load i8, ptr %219, align 2, !tbaa !52
  %221 = zext i8 %220 to i32
  %222 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %223 = load i8, ptr %222, align 1, !tbaa !53
  %224 = zext i8 %223 to i32
  %225 = mul nuw nsw i32 %224, %221
  %226 = add nsw i32 %225, %217
  br label %227

227:                                              ; preds = %210, %218
  %228 = phi i32 [ %226, %218 ], [ %217, %210 ]
  %229 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %230 = load i16, ptr %229, align 2, !tbaa !98
  %231 = sext i16 %230 to i32
  %232 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %233 = load i16, ptr %232, align 2, !tbaa !94
  %234 = sext i16 %233 to i32
  %235 = sub nsw i32 %231, %234
  %236 = load ptr, ptr %17, align 8, !tbaa !62
  %237 = sext i32 %35 to i64
  %238 = getelementptr inbounds i8, ptr %236, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !65
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %240 = load ptr, ptr %17, align 8, !tbaa !62
  %241 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %240, i32 noundef %35) #12
  %242 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %243 = load i32, ptr %242, align 8, !tbaa !106
  %244 = sub nsw i32 %241, %243
  %245 = load i32, ptr %4, align 4, !tbaa !54
  %246 = add nsw i32 %244, %245
  %247 = icmp sgt i32 %246, -1
  br i1 %247, label %248, label %283

248:                                              ; preds = %227
  %249 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !57
  %251 = tail call i32 @txt_get_span(ptr noundef %250, ptr noundef nonnull %8) #13
  %252 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %253 = load i32, ptr %252, align 8, !tbaa !61
  %254 = sub nsw i32 %251, %253
  %255 = load i32, ptr %3, align 4, !tbaa !54
  %256 = add nsw i32 %254, %255
  %257 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %258 = load i8, ptr %257, align 2, !tbaa !52
  %259 = zext i8 %258 to i32
  %260 = mul nsw i32 %246, %259
  %261 = add nsw i32 %260, %228
  %262 = load i16, ptr %232, align 2, !tbaa !94
  %263 = sext i16 %262 to i32
  %264 = sitofp i16 %262 to float
  %265 = fmul float %264, 0x3FD3333340000000
  %266 = fptosi float %265 to i32
  %267 = add nsw i32 %266, %263
  %268 = mul nsw i32 %267, %256
  %269 = sub nsw i32 %235, %268
  tail call fastcc void @text_font_draw_character(ptr noundef nonnull %0, i32 noundef %261, i32 noundef %269, i8 noundef zeroext %239) #12
  %270 = load i8, ptr %257, align 2, !tbaa !52
  %271 = zext i8 %270 to i32
  %272 = mul nsw i32 %246, %271
  %273 = add i32 %228, 1
  %274 = add i32 %273, %272
  %275 = load i16, ptr %232, align 2, !tbaa !94
  %276 = sext i16 %275 to i32
  %277 = sitofp i16 %275 to float
  %278 = fmul float %277, 0x3FD3333340000000
  %279 = fptosi float %278 to i32
  %280 = add nsw i32 %279, %276
  %281 = mul nsw i32 %280, %256
  %282 = sub nsw i32 %235, %281
  tail call fastcc void @text_font_draw_character(ptr noundef nonnull %0, i32 noundef %274, i32 noundef %282, i8 noundef zeroext %239) #12
  br label %283

283:                                              ; preds = %248, %227
  %284 = getelementptr inbounds %struct.TextLine, ptr %207, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !62
  %286 = sext i32 %208 to i64
  %287 = getelementptr inbounds i8, ptr %285, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !65
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %207, i32 noundef %208, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %289 = load ptr, ptr %284, align 8, !tbaa !62
  %290 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %289, i32 noundef %208) #12
  %291 = load i32, ptr %242, align 8, !tbaa !106
  %292 = sub nsw i32 %290, %291
  %293 = load i32, ptr %4, align 4, !tbaa !54
  %294 = add nsw i32 %292, %293
  %295 = icmp sgt i32 %294, -1
  br i1 %295, label %296, label %331

296:                                              ; preds = %283
  %297 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 4
  %298 = load ptr, ptr %297, align 8, !tbaa !57
  %299 = tail call i32 @txt_get_span(ptr noundef %298, ptr noundef nonnull %207) #13
  %300 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %301 = load i32, ptr %300, align 8, !tbaa !61
  %302 = sub nsw i32 %299, %301
  %303 = load i32, ptr %3, align 4, !tbaa !54
  %304 = add nsw i32 %302, %303
  %305 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %306 = load i8, ptr %305, align 2, !tbaa !52
  %307 = zext i8 %306 to i32
  %308 = mul nsw i32 %294, %307
  %309 = add nsw i32 %308, %228
  %310 = load i16, ptr %232, align 2, !tbaa !94
  %311 = sext i16 %310 to i32
  %312 = sitofp i16 %310 to float
  %313 = fmul float %312, 0x3FD3333340000000
  %314 = fptosi float %313 to i32
  %315 = add nsw i32 %314, %311
  %316 = mul nsw i32 %315, %304
  %317 = sub nsw i32 %235, %316
  tail call fastcc void @text_font_draw_character(ptr noundef nonnull %0, i32 noundef %309, i32 noundef %317, i8 noundef zeroext %288) #12
  %318 = load i8, ptr %305, align 2, !tbaa !52
  %319 = zext i8 %318 to i32
  %320 = mul nsw i32 %294, %319
  %321 = add i32 %228, 1
  %322 = add i32 %321, %320
  %323 = load i16, ptr %232, align 2, !tbaa !94
  %324 = sext i16 %323 to i32
  %325 = sitofp i16 %323 to float
  %326 = fmul float %325, 0x3FD3333340000000
  %327 = fptosi float %326 to i32
  %328 = add nsw i32 %327, %324
  %329 = mul nsw i32 %328, %304
  %330 = sub nsw i32 %235, %329
  tail call fastcc void @text_font_draw_character(ptr noundef nonnull %0, i32 noundef %322, i32 noundef %330, i8 noundef zeroext %288) #12
  br label %331

331:                                              ; preds = %173, %103, %283, %296, %206, %37, %44, %44, %33, %2, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_textscroll(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !146 {
  %4 = alloca %struct.uiWidgetColors, align 2
  %5 = alloca [4 x i8], align 1
  %6 = tail call ptr @UI_GetTheme() #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %7 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  tail call void @UI_ThemeColor(i32 noundef 2) #13
  %8 = load i32, ptr %2, align 4, !tbaa !111
  %9 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !112
  %13 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !114
  tail call void @glRecti(i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #13
  %15 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 23
  %16 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 9
  %17 = load i16, ptr %16, align 8, !tbaa !108
  %18 = and i16 %17, 1
  %19 = zext nneg i16 %18 to i32
  call void @uiWidgetScrollDraw(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %15, i32 noundef %19) #13
  call void @uiSetRoundBox(i32 noundef 15) #13
  %20 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22
  %21 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #12
  %22 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #12
  %23 = call fastcc i32 @min_ii(i32 noundef %21, i32 noundef %22) #12
  %24 = sitofp i32 %23 to float
  %25 = fmul float %24, 0x3FD99999A0000000
  call void @UI_GetThemeColor3ubv(i32 noundef 23, ptr noundef nonnull %5) #13
  %26 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  store i8 48, ptr %26, align 1, !tbaa !65
  call void @glColor4ubv(ptr noundef nonnull %5) #13
  call void @glEnable(i32 noundef 3042) #13
  %27 = load i32, ptr %20, align 8, !tbaa !149
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !120
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !150
  %35 = add nsw i32 %34, -1
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 22, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !119
  %39 = sitofp i32 %38 to float
  call void @uiRoundBox(float noundef %29, float noundef %32, float noundef %36, float noundef %39, float noundef %25) #13
  call void @glDisable(i32 noundef 3042) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_documentation(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !151 {
  %3 = alloca [41 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %168, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %168, label %9

9:                                                ; preds = %5
  %10 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %7) #13
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %168, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @texttool_docs_get() #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %168, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 5
  %18 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = sub nsw i32 0, %19
  %21 = load ptr, ptr %17, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %15 ]
  %25 = phi i32 [ %27, %23 ], [ %20, %15 ]
  %26 = getelementptr inbounds %struct.TextLine, ptr %24, i64 0, i32 1
  %27 = add nsw i32 %25, 1
  %28 = load ptr, ptr %26, align 8, !tbaa !85
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !llvm.loop !152

30:                                               ; preds = %23, %15
  %31 = phi i32 [ %20, %15 ], [ %27, %23 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %168, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %38 = load i8, ptr %37, align 2, !tbaa !52
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !124
  %42 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %43 = load i32, ptr %42, align 8, !tbaa !106
  %44 = sub nsw i32 %41, %43
  br i1 %36, label %56, label %45

45:                                               ; preds = %33
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %47 = sitofp i16 %46 to float
  %48 = fmul float %47, 5.000000e-01
  %49 = fptosi float %48 to i32
  %50 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %51 = load i8, ptr %50, align 1, !tbaa !53
  %52 = zext i8 %51 to i32
  %53 = add i32 %44, %52
  %54 = mul i32 %53, %39
  %55 = add i32 %54, %49
  br label %63

56:                                               ; preds = %33
  %57 = mul nsw i32 %44, %39
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %59 = sitofp i16 %58 to float
  %60 = fmul float %59, 5.000000e-01
  %61 = fptosi float %60 to i32
  %62 = add nsw i32 %57, %61
  br label %63

63:                                               ; preds = %56, %45
  %64 = phi i32 [ %55, %45 ], [ %62, %56 ]
  %65 = tail call ptr @texttool_suggest_first() #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = add nsw i32 %64, -4
  %69 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %70 = load i8, ptr %69, align 2, !tbaa !52
  %71 = zext i8 %70 to i32
  br label %79

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %74 = load i8, ptr %73, align 2, !tbaa !52
  %75 = zext i8 %74 to i32
  %76 = mul nuw nsw i32 %75, 20
  %77 = add i32 %64, 46
  %78 = add i32 %77, %76
  br label %79

79:                                               ; preds = %67, %72
  %80 = phi i32 [ %71, %67 ], [ %75, %72 ]
  %81 = phi i32 [ %68, %67 ], [ %78, %72 ]
  %82 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %83 = load i16, ptr %82, align 2, !tbaa !98
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %86 = load i16, ptr %85, align 2, !tbaa !94
  %87 = sext i16 %86 to i32
  %88 = mul nsw i32 %31, %87
  %89 = sub nsw i32 %84, %88
  %90 = add nsw i32 %89, -2
  %91 = mul nuw nsw i32 %80, 40
  %92 = sitofp i16 %86 to float
  %93 = fmul float %92, 0x3FD3333340000000
  %94 = fptosi float %93 to i32
  %95 = add nsw i32 %94, %87
  %96 = mul i32 %95, -11
  tail call void @UI_ThemeColor(i32 noundef 2) #13
  %97 = add i32 %81, 20
  %98 = add i32 %97, %91
  %99 = add i32 %96, %90
  tail call void @glRecti(i32 noundef %81, i32 noundef %90, i32 noundef %98, i32 noundef %99) #13
  tail call void @UI_ThemeColor(i32 noundef 21) #13
  tail call void @glBegin(i32 noundef 2) #13
  tail call void @glVertex2i(i32 noundef %81, i32 noundef %90) #13
  tail call void @glVertex2i(i32 noundef %98, i32 noundef %90) #13
  tail call void @glVertex2i(i32 noundef %98, i32 noundef %99) #13
  tail call void @glVertex2i(i32 noundef %81, i32 noundef %99) #13
  tail call void @glEnd() #13
  tail call void @glBegin(i32 noundef 2) #13
  %100 = add nsw i32 %98, -10
  %101 = add nsw i32 %89, -9
  tail call void @glVertex2i(i32 noundef %100, i32 noundef %101) #13
  %102 = add nsw i32 %98, -4
  tail call void @glVertex2i(i32 noundef %102, i32 noundef %101) #13
  %103 = add nsw i32 %98, -7
  %104 = add nsw i32 %89, -4
  tail call void @glVertex2i(i32 noundef %103, i32 noundef %104) #13
  tail call void @glEnd() #13
  tail call void @glBegin(i32 noundef 2) #13
  %105 = add nsw i32 %99, 7
  tail call void @glVertex2i(i32 noundef %100, i32 noundef %105) #13
  tail call void @glVertex2i(i32 noundef %102, i32 noundef %105) #13
  %106 = add i32 %96, %89
  tail call void @glVertex2i(i32 noundef %103, i32 noundef %106) #13
  tail call void @glEnd() #13
  tail call void @UI_ThemeColor(i32 noundef 3) #13
  %107 = add nsw i32 %81, 4
  br label %108

108:                                              ; preds = %161, %79
  %109 = phi i32 [ 0, %79 ], [ %166, %161 ]
  %110 = phi i32 [ 40, %79 ], [ %165, %161 ]
  %111 = phi i32 [ 0, %79 ], [ %164, %161 ]
  %112 = phi ptr [ %13, %79 ], [ %167, %161 ]
  %113 = phi i32 [ %90, %79 ], [ %162, %161 ]
  %114 = load i8, ptr %112, align 1, !tbaa !65
  switch i8 %114, label %133 [
    i8 0, label %168
    i8 13, label %115
    i8 32, label %134
    i8 9, label %134
    i8 10, label %120
  ]

115:                                              ; preds = %108
  %116 = getelementptr inbounds i8, ptr %112, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !65
  %118 = icmp eq i8 %117, 10
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i8 10, ptr %112, align 1, !tbaa !65
  br label %120

120:                                              ; preds = %108, %115, %119
  %121 = phi ptr [ %116, %115 ], [ %112, %119 ], [ %112, %108 ]
  %122 = sext i32 %109 to i64
  %123 = getelementptr inbounds [41 x i8], ptr %3, i64 0, i64 %122
  store i8 0, ptr %123, align 1, !tbaa !65
  %124 = icmp sgt i32 %111, -1
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i16, ptr %85, align 2, !tbaa !94
  %127 = sext i16 %126 to i32
  %128 = sub nsw i32 %113, %127
  %129 = add nsw i32 %128, -3
  call fastcc void @text_draw(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %107, i32 noundef %129, ptr noundef null) #12
  br label %130

130:                                              ; preds = %120, %125
  %131 = phi i32 [ %128, %125 ], [ %113, %120 ]
  %132 = load i8, ptr %121, align 1, !tbaa !65
  store i8 %132, ptr %3, align 16, !tbaa !65
  br label %155

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %108, %108, %133
  %135 = phi i32 [ %110, %133 ], [ %109, %108 ], [ %109, %108 ]
  %136 = add nsw i32 %109, 1
  %137 = sext i32 %109 to i64
  %138 = getelementptr inbounds [41 x i8], ptr %3, i64 0, i64 %137
  store i8 %114, ptr %138, align 1, !tbaa !65
  %139 = icmp eq i32 %136, 40
  br i1 %139, label %140, label %161

140:                                              ; preds = %134
  %141 = sext i32 %135 to i64
  %142 = getelementptr inbounds [41 x i8], ptr %3, i64 0, i64 %141
  store i8 0, ptr %142, align 1, !tbaa !65
  %143 = icmp sgt i32 %111, -1
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i16, ptr %85, align 2, !tbaa !94
  %146 = sext i16 %145 to i32
  %147 = sub nsw i32 %113, %146
  %148 = add nsw i32 %147, -3
  call fastcc void @text_draw(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %107, i32 noundef %148, ptr noundef null) #12
  br label %149

149:                                              ; preds = %144, %140
  %150 = phi i32 [ %147, %144 ], [ %113, %140 ]
  %151 = sub i32 39, %135
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %112, i64 %153
  br label %155

155:                                              ; preds = %130, %149
  %156 = phi i32 [ 0, %149 ], [ 1, %130 ]
  %157 = phi ptr [ %154, %149 ], [ %121, %130 ]
  %158 = phi i32 [ %150, %149 ], [ %131, %130 ]
  %159 = add nsw i32 %111, 1
  %160 = icmp sgt i32 %111, 8
  br i1 %160, label %168, label %161

161:                                              ; preds = %134, %155
  %162 = phi i32 [ %158, %155 ], [ %113, %134 ]
  %163 = phi ptr [ %157, %155 ], [ %112, %134 ]
  %164 = phi i32 [ %159, %155 ], [ %111, %134 ]
  %165 = phi i32 [ 40, %155 ], [ %135, %134 ]
  %166 = phi i32 [ %156, %155 ], [ %136, %134 ]
  %167 = getelementptr inbounds i8, ptr %163, i64 1
  br label %108, !llvm.loop !153

168:                                              ; preds = %108, %155, %30, %12, %9, %2, %5
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_suggestion_list(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !154 {
  %3 = alloca [121 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !94
  %8 = sext i16 %7 to i32
  %9 = sitofp i16 %7 to float
  %10 = fmul float %9, 0x3FD3333340000000
  %11 = fptosi float %10 to i32
  %12 = add nsw i32 %11, %8
  %13 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %172, label %16

16:                                               ; preds = %2
  %17 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %14) #13
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %172, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @texttool_suggest_first() #13
  %21 = tail call ptr @texttool_suggest_last() #13
  %22 = icmp ne ptr %20, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %172

25:                                               ; preds = %19
  tail call void @text_pop_suggest_list() #13
  %26 = tail call ptr @texttool_suggest_selected() #13
  %27 = tail call ptr @texttool_suggest_top() #13
  %28 = load ptr, ptr %13, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.Text, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.Text, ptr %28, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !124
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %30, i32 noundef %32, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %33 = load ptr, ptr %13, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.Text, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.Text, ptr %33, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = tail call i32 @txt_get_span(ptr noundef %35, ptr noundef %37) #13
  %39 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !61
  %41 = sub i32 %38, %40
  %42 = load i32, ptr %4, align 4, !tbaa !54
  %43 = add nsw i32 %41, %42
  %44 = load ptr, ptr %13, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.Text, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !80
  %47 = getelementptr inbounds %struct.TextLine, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.Text, ptr %44, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !124
  %51 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %48, i32 noundef %50) #12
  %52 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %53 = load i32, ptr %52, align 8, !tbaa !106
  %54 = sub i32 %51, %53
  %55 = load i32, ptr %5, align 4, !tbaa !54
  %56 = add nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = icmp eq i32 %58, 0
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 5.000000e-01
  %63 = fptosi float %62 to i32
  %64 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %65 = load i8, ptr %64, align 2, !tbaa !52
  %66 = zext i8 %65 to i32
  br i1 %59, label %73, label %67

67:                                               ; preds = %25
  %68 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %69 = load i8, ptr %68, align 1, !tbaa !53
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %70, %66
  %72 = add nsw i32 %71, %63
  br label %73

73:                                               ; preds = %25, %67
  %74 = phi i32 [ %72, %67 ], [ %63, %25 ]
  %75 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %76 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %77 = load i16, ptr %76, align 2, !tbaa !98
  %78 = sext i16 %77 to i32
  %79 = xor i32 %43, -1
  %80 = mul i32 %12, %79
  %81 = add i32 %80, %78
  %82 = add nsw i32 %81, -2
  %83 = load ptr, ptr %13, align 8, !tbaa !55
  %84 = getelementptr inbounds %struct.Text, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !124
  %86 = getelementptr inbounds %struct.Text, ptr %83, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !80
  %88 = getelementptr inbounds %struct.TextLine, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = tail call i32 @text_find_identifier_start(ptr noundef %89, i32 noundef %85) #13
  %91 = sub i32 %90, %85
  %92 = add i32 %56, %91
  %93 = mul i32 %92, %66
  %94 = add i32 %74, -4
  %95 = add i32 %94, %93
  %96 = load i8, ptr %75, align 2, !tbaa !52
  %97 = zext i8 %96 to i32
  %98 = mul nuw nsw i32 %97, 20
  %99 = add nuw nsw i32 %98, 20
  %100 = mul i32 %12, -7
  %101 = add i32 %100, -8
  %102 = add nsw i32 %95, %99
  %103 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %104 = load i16, ptr %103, align 8, !tbaa !34
  %105 = sext i16 %104 to i32
  %106 = icmp sgt i32 %102, %105
  %107 = sub nsw i32 %105, %99
  %108 = tail call i32 @llvm.smax.i32(i32 %107, i32 0)
  %109 = select i1 %106, i32 %108, i32 %95
  %110 = sitofp i32 %109 to float
  %111 = add i32 %101, %82
  %112 = sitofp i32 %111 to float
  %113 = add nsw i32 %109, %99
  %114 = sitofp i32 %113 to float
  %115 = sitofp i32 %82 to float
  tail call void @uiDrawBoxShadow(i8 noundef zeroext -36, float noundef %110, float noundef %112, float noundef %114, float noundef %115) #13
  tail call void @UI_ThemeColor(i32 noundef 21) #13
  %116 = add nsw i32 %109, -1
  %117 = add nsw i32 %81, -1
  %118 = add nsw i32 %113, 1
  %119 = add nsw i32 %111, -1
  tail call void @glRecti(i32 noundef %116, i32 noundef %117, i32 noundef %118, i32 noundef %119) #13
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 16) #13
  tail call void @glRecti(i32 noundef %109, i32 noundef %82, i32 noundef %113, i32 noundef %111) #13
  %120 = load i32, ptr %27, align 4, !tbaa !54
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %125, label %131

122:                                              ; preds = %125
  %123 = add nuw nsw i32 %127, 1
  %124 = icmp eq i32 %123, %120
  br i1 %124, label %131, label %125, !llvm.loop !155

125:                                              ; preds = %73, %122
  %126 = phi ptr [ %129, %122 ], [ %20, %73 ]
  %127 = phi i32 [ %123, %122 ], [ 0, %73 ]
  %128 = getelementptr inbounds %struct.SuggItem, ptr %126, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !156
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %122

131:                                              ; preds = %125, %122, %73
  %132 = phi ptr [ %20, %73 ], [ %129, %122 ], [ %126, %125 ]
  %133 = add nsw i32 %109, 2
  br label %134

134:                                              ; preds = %131, %165
  %135 = phi ptr [ %132, %131 ], [ %168, %165 ]
  %136 = phi i32 [ 0, %131 ], [ %166, %165 ]
  %137 = phi i32 [ %82, %131 ], [ %146, %165 ]
  %138 = getelementptr inbounds %struct.SuggItem, ptr %135, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !158
  %140 = call fastcc ptr @txt_utf8_forward_columns(ptr noundef %139, i32 noundef 20, ptr noundef null) #12
  %141 = load ptr, ptr %138, align 8, !tbaa !158
  %142 = ptrtoint ptr %140 to i64
  %143 = ptrtoint ptr %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = sub nsw i32 %137, %12
  %147 = shl i64 %144, 32
  %148 = add i64 %147, 4294967296
  %149 = ashr exact i64 %148, 32
  %150 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %141, i64 noundef %149) #13
  %151 = load i8, ptr %75, align 2, !tbaa !52
  %152 = call i32 @text_get_char_pos(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %145) #12
  %153 = icmp eq ptr %135, %26
  br i1 %153, label %154, label %160

154:                                              ; preds = %134
  %155 = zext i8 %151 to i32
  %156 = mul nsw i32 %152, %155
  call void @UI_ThemeColor(i32 noundef 22) #13
  %157 = add nsw i32 %146, -3
  %158 = add nsw i32 %156, %133
  %159 = add nsw i32 %137, -3
  call void @glRecti(i32 noundef %133, i32 noundef %157, i32 noundef %158, i32 noundef %159) #13
  br label %160

160:                                              ; preds = %154, %134
  %161 = getelementptr inbounds %struct.SuggItem, ptr %135, i64 0, i32 3
  %162 = load i8, ptr %161, align 8, !tbaa !159
  call fastcc void @format_draw_color(i8 noundef zeroext %162) #12
  %163 = add nsw i32 %146, -1
  call fastcc void @text_draw(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %133, i32 noundef %163, ptr noundef null) #12
  %164 = icmp eq ptr %135, %21
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = add nuw nsw i32 %136, 1
  %167 = getelementptr inbounds %struct.SuggItem, ptr %135, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !156
  %169 = icmp ult i32 %136, 6
  %170 = icmp ne ptr %168, null
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %134, label %172, !llvm.loop !160

172:                                              ; preds = %160, %165, %19, %16, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_update_character_width(ptr nocapture noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @text_font_begin(ptr noundef %0) #12
  %2 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %3 = tail call float @BLF_fixed_width(i32 noundef %2) #13
  %4 = fptoui float %3 to i8
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %6 = tail call i8 @llvm.umax.i8(i8 %4, i8 1)
  store i8 %6, ptr %5, align 2, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_scroll_to_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %117, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %117, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %117, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !161
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %16, !llvm.loop !162

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  %26 = load i16, ptr %25, align 8, !tbaa !34
  %27 = sext i16 %26 to i32
  br label %28

28:                                               ; preds = %16, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %16 ]
  tail call void @text_update_character_width(ptr noundef nonnull %0) #12
  %30 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !79
  %34 = tail call i32 @txt_get_span(ptr noundef %31, ptr noundef %33) #13
  %35 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %39 = load ptr, ptr %32, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !125
  call void @wrap_offset(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %39, i32 noundef %41, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %42 = load i32, ptr %3, align 4, !tbaa !54
  %43 = add nsw i32 %42, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %44

44:                                               ; preds = %38, %28
  %45 = phi i32 [ %43, %38 ], [ %34, %28 ]
  %46 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !99
  %50 = add nsw i32 %49, %47
  %51 = icmp sle i32 %50, %45
  %52 = icmp sgt i32 %47, %45
  %53 = or i1 %52, %51
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = sdiv i32 %49, -2
  %56 = add i32 %55, %45
  store i32 %56, ptr %46, align 8, !tbaa !61
  br label %57

57:                                               ; preds = %44, %54
  %58 = load i32, ptr %35, align 8, !tbaa !56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  store i32 0, ptr %61, align 8, !tbaa !106
  br label %106

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %64 = load i8, ptr %63, align 2, !tbaa !52
  %65 = zext i8 %64 to i32
  %66 = load ptr, ptr %32, align 8, !tbaa !79
  %67 = getelementptr inbounds %struct.TextLine, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  %69 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 8
  %70 = load i32, ptr %69, align 4, !tbaa !125
  %71 = tail call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %68, i32 noundef %70) #12
  %72 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %73 = load i32, ptr %72, align 8, !tbaa !106
  %74 = sub nsw i32 %71, %73
  %75 = mul nsw i32 %74, %65
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !46
  %77 = sitofp i16 %76 to float
  %78 = fmul float %77, 5.000000e-01
  %79 = fptosi float %78 to i32
  %80 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %62
  %84 = load i8, ptr %63, align 2, !tbaa !52
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %87 = load i8, ptr %86, align 1, !tbaa !53
  %88 = zext i8 %87 to i32
  %89 = mul nuw nsw i32 %88, %85
  br label %90

90:                                               ; preds = %62, %83
  %91 = phi i32 [ %89, %83 ], [ 0, %62 ]
  %92 = sext i16 %76 to i32
  %93 = add i32 %92, %79
  %94 = add i32 %93, %91
  %95 = sub i32 %29, %94
  %96 = icmp slt i32 %75, 1
  %97 = icmp sgt i32 %75, %95
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = sdiv i32 %95, -2
  %101 = add i32 %100, %75
  %102 = load i8, ptr %63, align 2, !tbaa !52
  %103 = zext i8 %102 to i32
  %104 = sdiv i32 %101, %103
  %105 = add nsw i32 %104, %73
  store i32 %105, ptr %72, align 8, !tbaa !106
  br label %106

106:                                              ; preds = %90, %99, %60
  %107 = phi i32 [ %73, %90 ], [ %105, %99 ], [ 0, %60 ]
  %108 = load i32, ptr %46, align 8, !tbaa !61
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, ptr %46, align 8, !tbaa !61
  br label %111

111:                                              ; preds = %110, %106
  %112 = icmp slt i32 %107, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  store i32 0, ptr %114, align 8, !tbaa !106
  br label %115

115:                                              ; preds = %113, %111
  %116 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 32
  store <2 x float> zeroinitializer, ptr %116, align 8, !tbaa !163
  br label %117

117:                                              ; preds = %2, %6, %10, %115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_update_cursor_moved(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #13
  tail call void @text_scroll_to_cursor(ptr noundef %3, ptr noundef %2) #12
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_drawcache_init(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !164 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !85
  %3 = tail call ptr %2(i64 noundef 112, ptr noundef nonnull @.str.2) #13
  %4 = getelementptr inbounds %struct.DrawCache, ptr %3, i64 0, i32 3
  store i32 -1, ptr %4, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 4
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #13
  %9 = getelementptr inbounds %struct.DrawCache, ptr %3, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !81
  %10 = getelementptr inbounds %struct.DrawCache, ptr %3, i64 0, i32 9
  store i8 0, ptr %10, align 1, !tbaa !65
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 31
  store ptr %3, ptr %11, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLF_draw_mono(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @flatten_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @txt_utf8_forward_columns(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #2 !PGOFuncName !165 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi i32 [ %1, %3 ], [ %11, %13 ]
  %6 = phi ptr [ %0, %3 ], [ %16, %13 ]
  %7 = load i8, ptr %6, align 1, !tbaa !65
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @BLI_str_utf8_char_width(ptr noundef nonnull %6) #13
  %11 = sub nsw i32 %5, %10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %6) #13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %6, i64 %15
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %18, label %4, !llvm.loop !166

18:                                               ; preds = %13, %9, %4
  %19 = phi i32 [ %5, %9 ], [ 0, %13 ], [ %5, %4 ]
  %20 = phi ptr [ %6, %9 ], [ %16, %13 ], [ %6, %4 ]
  %21 = icmp eq ptr %2, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %20, align 1, !tbaa !65
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 0, i32 %19
  store i32 %25, ptr %2, align 4, !tbaa !54
  br label %26

26:                                               ; preds = %22, %18
  ret ptr %20
}

; Function Attrs: optsize
declare i64 @BLI_strnlen_utf8(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @format_draw_color(i8 noundef zeroext %0) unnamed_addr #2 !PGOFuncName !167 {
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
  tail call void @UI_ThemeColor(i32 noundef %11) #13
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @text_font_draw_character_utf8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !168 {
  %5 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %3) #13
  %6 = sext i32 %5 to i64
  %7 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %8 = sitofp i32 %1 to float
  %9 = sitofp i32 %2 to float
  tail call void @BLF_position(i32 noundef %7, float noundef %8, float noundef %9, float noundef 0.000000e+00) #13
  %10 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %11 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %12 = load i8, ptr %11, align 2, !tbaa !52
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @BLF_draw_mono(i32 noundef %10, ptr noundef %3, i64 noundef %6, i32 noundef %13) #13
  %15 = load i8, ptr %11, align 2, !tbaa !52
  %16 = zext i8 %15 to i32
  %17 = mul nsw i32 %14, %16
  ret i32 %17
}

; Function Attrs: optsize
declare void @flatten_string_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_char_width(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @text_check_bracket(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @txt_utf8_offset_to_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_font_draw_character(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #2 !PGOFuncName !169 {
  %5 = alloca i8, align 1
  store i8 %3, ptr %5, align 1, !tbaa !65
  %6 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  %7 = sitofp i32 %1 to float
  %8 = sitofp i32 %2 to float
  tail call void @BLF_position(i32 noundef %6, float noundef %7, float noundef %8, float noundef 0.000000e+00) #13
  %9 = load i32, ptr @blf_mono_font, align 4, !tbaa !54
  call void @BLF_draw(i32 noundef %9, ptr noundef nonnull %5, i64 noundef 1) #13
  ret void
}

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_GetTheme() local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiWidgetScrollDraw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !170 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !112
  %4 = load i32, ptr %0, align 4, !tbaa !111
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !172 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !114
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !113
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @texttool_text_is_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @texttool_docs_get() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @texttool_suggest_first() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @texttool_suggest_last() local_unnamed_addr #3

; Function Attrs: optsize
declare void @text_pop_suggest_list() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @texttool_suggest_selected() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @texttool_suggest_top() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @text_find_identifier_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiDrawBoxShadow(i8 noundef zeroext, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind }

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
!65 = !{!37, !37, i64 0}
!66 = !{!51, !43, i64 88}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !68}
!73 = distinct !{!73, !68}
!74 = distinct !{!74, !68}
!75 = distinct !{!75, !68}
!76 = !{!51, !36, i64 664}
!77 = !{!78, !44, i64 102}
!78 = !{!"DrawCache", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !44, i64 32, !37, i64 34, !37, i64 35, !44, i64 102, !43, i64 104, !43, i64 108}
!79 = !{!58, !36, i64 160}
!80 = !{!58, !36, i64 152}
!81 = !{!78, !43, i64 12}
!82 = !{!78, !43, i64 104}
!83 = !{!78, !43, i64 108}
!84 = !{!78, !36, i64 0}
!85 = !{!36, !36, i64 0}
!86 = distinct !{!86, !68}
!87 = !{!78, !43, i64 8}
!88 = !{!"text_draw.c:text_update_drawcache"}
!89 = !{!78, !43, i64 16}
!90 = !{!78, !43, i64 20}
!91 = !{!78, !43, i64 24}
!92 = !{!78, !43, i64 28}
!93 = !{!78, !44, i64 32}
!94 = !{!51, !44, i64 658}
!95 = !{!78, !37, i64 34}
!96 = distinct !{!96, !68}
!97 = !{!51, !44, i64 76}
!98 = !{!35, !44, i64 210}
!99 = !{!51, !43, i64 68}
!100 = !{!58, !36, i64 144}
!101 = !{!51, !44, i64 92}
!102 = !{!63, !36, i64 24}
!103 = !{!104, !36, i64 24}
!104 = !{!"TextFormatType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!105 = distinct !{!105, !68}
!106 = !{!51, !43, i64 80}
!107 = distinct !{!107, !68}
!108 = !{!51, !44, i64 72}
!109 = !{!51, !44, i64 656}
!110 = !{!"text_draw.c:calc_text_rcts"}
!111 = !{!42, !43, i64 0}
!112 = !{!42, !43, i64 4}
!113 = !{!42, !43, i64 8}
!114 = !{!42, !43, i64 12}
!115 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54}
!116 = !{!51, !43, i64 132}
!117 = !{!51, !43, i64 128}
!118 = !{!51, !41, i64 100}
!119 = !{!51, !43, i64 116}
!120 = !{!51, !43, i64 112}
!121 = !{!"text_draw.c:text_get_visible_lines_no"}
!122 = !{!"text_draw.c:text_font_begin"}
!123 = !{!"text_draw.c:draw_cursor"}
!124 = !{!58, !43, i64 168}
!125 = !{!58, !43, i64 172}
!126 = distinct !{!126, !68}
!127 = !{!51, !44, i64 94}
!128 = !{!51, !44, i64 96}
!129 = !{!"text_draw.c:text_font_draw"}
!130 = !{!"text_draw.c:text_draw_wrapped"}
!131 = !{!132, !36, i64 1280}
!132 = !{!"FlattenString", !37, i64 0, !37, i64 256, !36, i64 1280, !36, i64 1288, !43, i64 1296, !43, i64 1300}
!133 = distinct !{!133, !68}
!134 = distinct !{!134, !68}
!135 = distinct !{!135, !68}
!136 = !{!"text_draw.c:text_draw"}
!137 = distinct !{!137, !68}
!138 = distinct !{!138, !68}
!139 = !{!"text_draw.c:draw_brackets"}
!140 = !{!63, !43, i64 32}
!141 = distinct !{!141, !68}
!142 = distinct !{!142, !68}
!143 = distinct !{!143, !68}
!144 = !{!63, !36, i64 8}
!145 = distinct !{!145, !68}
!146 = !{!"text_draw.c:draw_textscroll"}
!147 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65, i64 16, i64 4, !65, i64 20, i64 4, !65, i64 24, i64 2, !148, i64 26, i64 2, !148, i64 28, i64 2, !148, i64 30, i64 2, !148}
!148 = !{!44, !44, i64 0}
!149 = !{!51, !43, i64 104}
!150 = !{!51, !43, i64 108}
!151 = !{!"text_draw.c:draw_documentation"}
!152 = distinct !{!152, !68}
!153 = distinct !{!153, !68}
!154 = !{!"text_draw.c:draw_suggestion_list"}
!155 = distinct !{!155, !68}
!156 = !{!157, !36, i64 8}
!157 = !{!"SuggItem", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!158 = !{!157, !36, i64 16}
!159 = !{!157, !37, i64 24}
!160 = distinct !{!160, !68}
!161 = !{!35, !44, i64 214}
!162 = distinct !{!162, !68}
!163 = !{!41, !41, i64 0}
!164 = !{!"text_draw.c:text_drawcache_init"}
!165 = !{!"text_draw.c:txt_utf8_forward_columns"}
!166 = distinct !{!166, !68}
!167 = !{!"text_draw.c:format_draw_color"}
!168 = !{!"text_draw.c:text_font_draw_character_utf8"}
!169 = !{!"text_draw.c:text_font_draw_character"}
!170 = !{!"text_draw.c:min_ii"}
!171 = !{!"text_draw.c:BLI_rcti_size_x"}
!172 = !{!"text_draw.c:BLI_rcti_size_y"}
