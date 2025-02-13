; ModuleID = 'blender/source/blender/editors/space_text/text_autocomplete.c'
source_filename = "blender/source/blender/editors/space_text/text_autocomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SuggItem = type { ptr, ptr, ptr, i8 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [19 x i8] c"Text Auto Complete\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Show a list of used text in the open document\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TEXT_OT_autocomplete\00", align 1
@__func__.text_autocomplete_build = private unnamed_addr constant [24 x i8] c"text_autocomplete_build\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@doc_scroll = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @text_do_suggest_select(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %127, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %127, label %8

8:                                                ; preds = %4
  %9 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %6) #9
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %127, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @texttool_suggest_first() #9
  %13 = tail call ptr @texttool_suggest_last() #9
  %14 = tail call ptr @texttool_suggest_top() #9
  %15 = icmp ne ptr %13, null
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %127

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Text, ptr %19, i64 0, i32 5
  %21 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = sub nsw i32 0, %22
  %24 = load ptr, ptr %20, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %18 ]
  %28 = phi i32 [ %30, %26 ], [ %23, %18 ]
  %29 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 1
  %30 = add nsw i32 %28, 1
  %31 = load ptr, ptr %29, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !46

33:                                               ; preds = %26, %18
  %34 = phi i32 [ %23, %18 ], [ %30, %26 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %127, label %36

36:                                               ; preds = %33
  tail call void @text_update_character_width(ptr noundef nonnull %0) #9
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %38 = load i32, ptr %37, align 4, !tbaa !48
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %41 = load i8, ptr %40, align 2, !tbaa !49
  %42 = zext i8 %41 to i32
  %43 = load ptr, ptr %5, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Text, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %47 = load i32, ptr %46, align 8, !tbaa !54
  %48 = sub nsw i32 %45, %47
  br i1 %39, label %60, label %49

49:                                               ; preds = %36
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !55
  %51 = sitofp i16 %50 to float
  %52 = fmul float %51, 5.000000e-01
  %53 = fptosi float %52 to i32
  %54 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %55 = load i8, ptr %54, align 1, !tbaa !59
  %56 = zext i8 %55 to i32
  %57 = add i32 %48, %56
  %58 = mul i32 %57, %42
  %59 = add i32 %58, %53
  br label %67

60:                                               ; preds = %36
  %61 = mul nsw i32 %48, %42
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !55
  %63 = sitofp i16 %62 to float
  %64 = fmul float %63, 5.000000e-01
  %65 = fptosi float %64 to i32
  %66 = add nsw i32 %61, %65
  br label %67

67:                                               ; preds = %60, %49
  %68 = phi i16 [ %50, %49 ], [ %62, %60 ]
  %69 = phi i32 [ %59, %49 ], [ %66, %60 ]
  %70 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %71 = load i16, ptr %70, align 2, !tbaa !60
  %72 = sext i16 %71 to i32
  %73 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %74 = load i16, ptr %73, align 2, !tbaa !64
  %75 = sext i16 %74 to i32
  %76 = mul nsw i32 %34, %75
  %77 = sub nsw i32 %72, %76
  %78 = icmp sgt i32 %69, 4
  br i1 %78, label %127, label %79

79:                                               ; preds = %67
  %80 = sitofp i16 %68 to float
  %81 = mul nsw i32 %75, 7
  %82 = sitofp i32 %81 to float
  %83 = tail call float @llvm.fmuladd.f32(float %80, float 0x3FD99999A0000000, float %82)
  %84 = fptosi float %83 to i32
  %85 = add nsw i32 %77, -2
  %86 = sext i16 %68 to i32
  %87 = zext i8 %41 to i32
  %88 = mul nuw nsw i32 %87, 20
  %89 = add i32 %69, -4
  %90 = add i32 %89, %86
  %91 = add i32 %90, %88
  %92 = icmp slt i32 %91, 0
  %93 = icmp sgt i32 %85, %84
  %94 = select i1 %92, i1 true, i1 %93
  %95 = icmp slt i32 %77, 2
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %127, label %97

97:                                               ; preds = %79
  %98 = load i32, ptr %14, align 4, !tbaa !65
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %103, label %109

100:                                              ; preds = %103
  %101 = add nuw nsw i32 %105, 1
  %102 = icmp eq i32 %101, %98
  br i1 %102, label %109, label %103, !llvm.loop !66

103:                                              ; preds = %97, %100
  %104 = phi ptr [ %107, %100 ], [ %12, %97 ]
  %105 = phi i32 [ %101, %100 ], [ 0, %97 ]
  %106 = getelementptr inbounds %struct.SuggItem, ptr %104, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !67
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %100

109:                                              ; preds = %103, %100, %97
  %110 = phi ptr [ %12, %97 ], [ %107, %100 ], [ %104, %103 ]
  %111 = add nsw i32 %77, -6
  %112 = sdiv i32 %111, %75
  %113 = icmp ugt i32 %112, 7
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = icmp eq i32 %112, 0
  br i1 %115, label %125, label %119

116:                                              ; preds = %119
  %117 = add nsw i32 %121, -1
  %118 = icmp sgt i32 %121, 1
  br i1 %118, label %119, label %125, !llvm.loop !69

119:                                              ; preds = %114, %116
  %120 = phi ptr [ %123, %116 ], [ %110, %114 ]
  %121 = phi i32 [ %117, %116 ], [ %112, %114 ]
  %122 = getelementptr inbounds %struct.SuggItem, ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !67
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %116

125:                                              ; preds = %116, %119, %114
  %126 = phi ptr [ %110, %114 ], [ %120, %119 ], [ %123, %116 ]
  tail call void @texttool_suggest_select(ptr noundef %126) #9
  br label %127

127:                                              ; preds = %109, %67, %79, %33, %11, %8, %2, %4, %125
  %128 = phi i32 [ 1, %125 ], [ 0, %4 ], [ 0, %2 ], [ 0, %8 ], [ 0, %11 ], [ 0, %33 ], [ 0, %79 ], [ 0, %67 ], [ 1, %109 ]
  ret i32 %128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare signext i16 @texttool_text_is_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @texttool_suggest_first() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @texttool_suggest_last() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @texttool_suggest_top() local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_update_character_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare void @texttool_suggest_select(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_pop_suggest_list() local_unnamed_addr #0 {
  %1 = tail call ptr @texttool_suggest_first() #9
  %2 = tail call ptr @texttool_suggest_selected() #9
  %3 = tail call ptr @texttool_suggest_top() #9
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %1, %2
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %16

7:                                                ; preds = %0, %7
  %8 = phi i32 [ %12, %7 ], [ 0, %0 ]
  %9 = phi ptr [ %11, %7 ], [ %1, %0 ]
  %10 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %11, %2
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %7, label %16, !llvm.loop !70

16:                                               ; preds = %7, %0
  %17 = phi i32 [ 0, %0 ], [ %12, %7 ]
  %18 = load i32, ptr %3, align 4, !tbaa !65
  %19 = add nsw i32 %18, 6
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = add nsw i32 %17, -6
  br label %25

23:                                               ; preds = %16
  %24 = icmp slt i32 %17, %18
  br i1 %24, label %25, label %27

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %17, %23 ]
  store i32 %26, ptr %3, align 4, !tbaa !65
  br label %27

27:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: optsize
declare ptr @texttool_suggest_selected() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_autocomplete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_autocomplete_invoke, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_autocomplete_cancel, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_autocomplete_modal, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_autocomplete_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !81 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 25
  store i32 1, ptr %6, align 4, !tbaa !82
  %7 = tail call fastcc ptr @text_autocomplete_build(ptr noundef %5) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !83
  %9 = tail call ptr @texttool_suggest_first() #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  tail call void @ED_area_tag_redraw(ptr noundef %12) #9
  %13 = tail call ptr @texttool_suggest_first() #9
  %14 = tail call ptr @texttool_suggest_last() #9
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call fastcc void @confirm_suggestion(ptr noundef %18) #10
  %19 = load ptr, ptr %17, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Text, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  tail call void @text_update_line_edited(ptr noundef %21) #9
  tail call fastcc void @text_autocomplete_free(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %25

22:                                               ; preds = %11
  %23 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %25

24:                                               ; preds = %3
  tail call fastcc void @text_autocomplete_free(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %25

25:                                               ; preds = %24, %22, %16
  %26 = phi i32 [ 4, %16 ], [ 1, %22 ], [ 2, %24 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_autocomplete_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !86 {
  tail call fastcc void @text_autocomplete_free(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_autocomplete_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !87 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call ptr @BKE_area_find_region_type(ptr noundef %5, i32 noundef 0) #9
  %7 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 25
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call signext i16 @texttool_text_is_active(ptr noundef %13) #9
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @texttool_suggest_first() #9
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  %20 = tail call ptr @texttool_docs_get() #9
  %21 = icmp eq ptr %20, null
  %22 = or disjoint i32 %19, 2
  %23 = select i1 %21, i32 %19, i32 %22
  br label %24

24:                                               ; preds = %16, %11, %3
  %25 = phi i32 [ 0, %11 ], [ 0, %3 ], [ %23, %16 ]
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !88
  switch i16 %27, label %270 [
    i16 1, label %28
    i16 2, label %43
    i16 218, label %64
    i16 220, label %76
    i16 163, label %76
    i16 137, label %95
    i16 223, label %95
    i16 139, label %145
    i16 169, label %197
    i16 11, label %198
    i16 138, label %198
    i16 168, label %233
    i16 10, label %234
    i16 140, label %234
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !90
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %270

32:                                               ; preds = %28
  %33 = tail call i32 @text_do_suggest_select(ptr noundef nonnull %4, ptr noundef %6) #10, !range !91
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %268

35:                                               ; preds = %32
  %36 = and i32 %25, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @texttool_suggest_clear() #9
  br label %39

39:                                               ; preds = %38, %35
  %40 = and i32 %25, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %268, label %42

42:                                               ; preds = %39
  tail call void @texttool_docs_clear() #9
  store i32 0, ptr @doc_scroll, align 4, !tbaa !65
  br label %268

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !90
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %270

47:                                               ; preds = %43
  %48 = tail call i32 @text_do_suggest_select(ptr noundef nonnull %4, ptr noundef %6) #10, !range !91
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  tail call fastcc void @confirm_suggestion(ptr noundef %52) #10
  %53 = load ptr, ptr %51, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.Text, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  tail call void @text_update_line_edited(ptr noundef %55) #9
  br label %268

56:                                               ; preds = %47
  %57 = and i32 %25, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @texttool_suggest_clear() #9
  br label %60

60:                                               ; preds = %59, %56
  %61 = and i32 %25, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %268, label %63

63:                                               ; preds = %60
  tail call void @texttool_docs_clear() #9
  store i32 0, ptr @doc_scroll, align 4, !tbaa !65
  br label %268

64:                                               ; preds = %24
  %65 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !90
  %67 = icmp eq i16 %66, 1
  br i1 %67, label %68, label %270

68:                                               ; preds = %64
  %69 = and i32 %25, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @texttool_suggest_clear() #9
  br label %268

72:                                               ; preds = %68
  %73 = and i32 %25, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %277, label %75

75:                                               ; preds = %72
  tail call void @texttool_docs_clear() #9
  store i32 0, ptr @doc_scroll, align 4, !tbaa !65
  br label %268

76:                                               ; preds = %24, %24
  %77 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %78 = load i16, ptr %77, align 2, !tbaa !90
  %79 = icmp eq i16 %78, 1
  br i1 %79, label %80, label %270

80:                                               ; preds = %76
  %81 = and i32 %25, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = and i32 %25, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %274, label %94

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  tail call fastcc void @confirm_suggestion(ptr noundef %88) #10
  %89 = load ptr, ptr %87, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct.Text, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !85
  tail call void @text_update_line_edited(ptr noundef %91) #9
  %92 = and i32 %25, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %268, label %94

94:                                               ; preds = %86, %83
  tail call void @texttool_docs_clear() #9
  store i32 0, ptr @doc_scroll, align 4, !tbaa !65
  br label %268

95:                                               ; preds = %24, %24
  %96 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !90
  %98 = icmp eq i16 %97, 1
  br i1 %98, label %99, label %270

99:                                               ; preds = %95
  %100 = and i32 %25, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %104 = load i16, ptr %103, align 2, !tbaa !92
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  tail call void @texttool_suggest_clear() #9
  br label %140

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = getelementptr inbounds %struct.Text, ptr %109, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !85
  %112 = icmp eq ptr %111, null
  br i1 %112, label %139, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.Text, ptr %109, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !50
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.TextLine, ptr %111, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !93
  %120 = zext nneg i32 %115 to i64
  %121 = getelementptr i8, ptr %119, i64 %120
  %122 = getelementptr i8, ptr %121, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !95
  %124 = icmp eq i8 %123, 95
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = tail call ptr @__ctype_b_loc() #11
  %127 = load ptr, ptr %126, align 8, !tbaa !45
  %128 = zext i8 %123 to i64
  %129 = getelementptr inbounds i16, ptr %127, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !96
  %131 = and i16 %130, 4
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125, %117
  %134 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %123) #9
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load ptr, ptr %108, align 8, !tbaa !34
  tail call fastcc void @get_suggest_prefix(ptr noundef %137, i32 noundef -1) #10
  tail call void @text_pop_suggest_list() #10
  br label %140

138:                                              ; preds = %133, %125
  tail call void @texttool_suggest_clear() #9
  br label %140

139:                                              ; preds = %113, %107
  tail call void @texttool_suggest_clear() #9
  br label %140

140:                                              ; preds = %136, %138, %106, %139, %99
  %141 = phi i32 [ 2, %106 ], [ 2, %139 ], [ 1, %99 ], [ 2, %138 ], [ 1, %136 ]
  %142 = and i32 %25, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %270, label %144

144:                                              ; preds = %140
  tail call void @texttool_docs_clear() #9
  store i32 0, ptr @doc_scroll, align 4, !tbaa !65
  br label %270

145:                                              ; preds = %24
  %146 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %147 = load i16, ptr %146, align 2, !tbaa !90
  %148 = icmp eq i16 %147, 1
  br i1 %148, label %149, label %270

149:                                              ; preds = %145
  %150 = and i32 %25, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %192, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %154 = load i16, ptr %153, align 2, !tbaa !92
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  tail call void @texttool_suggest_clear() #9
  br label %192

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !34
  %160 = getelementptr inbounds %struct.Text, ptr %159, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !85
  %162 = icmp eq ptr %161, null
  br i1 %162, label %191, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.Text, ptr %159, i64 0, i32 7
  %165 = load i32, ptr %164, align 8, !tbaa !50
  %166 = getelementptr inbounds %struct.TextLine, ptr %161, i64 0, i32 4
  %167 = load i32, ptr %166, align 8, !tbaa !97
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.TextLine, ptr %161, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !93
  %172 = sext i32 %165 to i64
  %173 = getelementptr i8, ptr %171, i64 %172
  %174 = getelementptr i8, ptr %173, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !95
  %176 = icmp eq i8 %175, 95
  br i1 %176, label %185, label %177

177:                                              ; preds = %169
  %178 = tail call ptr @__ctype_b_loc() #11
  %179 = load ptr, ptr %178, align 8, !tbaa !45
  %180 = zext i8 %175 to i64
  %181 = getelementptr inbounds i16, ptr %179, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !96
  %183 = and i16 %182, 4
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %177, %169
  %186 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %175) #9
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load ptr, ptr %158, align 8, !tbaa !34
  tail call fastcc void @get_suggest_prefix(ptr noundef %189, i32 noundef 1) #10
  tail call void @text_pop_suggest_list() #10
  br label %192

190:                                              ; preds = %185, %177
  tail call void @texttool_suggest_clear() #9
  br label %192

191:                                              ; preds = %163, %157
  tail call void @texttool_suggest_clear() #9
  br label %192

192:                                              ; preds = %188, %190, %156, %191, %149
  %193 = phi i32 [ 2, %156 ], [ 2, %191 ], [ 1, %149 ], [ 2, %190 ], [ 1, %188 ]
  %194 = and i32 %25, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %270, label %196

196:                                              ; preds = %192
  tail call void @texttool_docs_clear() #9
  store i32 0, ptr @doc_scroll, align 4, !tbaa !65
  br label %270

197:                                              ; preds = %24
  br label %198

198:                                              ; preds = %24, %24, %197
  %199 = phi i32 [ 1, %24 ], [ 1, %24 ], [ 6, %197 ]
  %200 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %201 = load i16, ptr %200, align 2, !tbaa !90
  %202 = icmp eq i16 %201, 1
  br i1 %202, label %203, label %270

203:                                              ; preds = %198
  %204 = and i32 %25, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr @doc_scroll, align 4, !tbaa !65
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr @doc_scroll, align 4, !tbaa !65
  br label %268

209:                                              ; preds = %203
  %210 = and i32 %25, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %270, label %212

212:                                              ; preds = %209
  %213 = tail call ptr @texttool_suggest_selected() #9
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = tail call ptr @texttool_suggest_first() #9
  tail call void @texttool_suggest_select(ptr noundef %216) #9
  br label %232

217:                                              ; preds = %212, %228
  %218 = phi ptr [ %230, %228 ], [ %213, %212 ]
  %219 = phi i32 [ %229, %228 ], [ %199, %212 ]
  %220 = tail call ptr @texttool_suggest_last() #9
  %221 = icmp eq ptr %218, %220
  br i1 %221, label %232, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.SuggItem, ptr %218, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !67
  %225 = icmp eq ptr %224, null
  %226 = icmp eq i32 %219, 0
  %227 = select i1 %225, i1 true, i1 %226
  br i1 %227, label %232, label %228

228:                                              ; preds = %222
  %229 = add nsw i32 %219, -1
  tail call void @texttool_suggest_select(ptr noundef nonnull %224) #9
  %230 = load ptr, ptr %223, align 8, !tbaa !67
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %217, !llvm.loop !98

232:                                              ; preds = %228, %217, %222, %215
  tail call void @text_pop_suggest_list() #10
  br label %268

233:                                              ; preds = %24
  br label %234

234:                                              ; preds = %24, %24, %233
  %235 = phi i32 [ 1, %24 ], [ 1, %24 ], [ 6, %233 ]
  %236 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %237 = load i16, ptr %236, align 2, !tbaa !90
  %238 = icmp eq i16 %237, 1
  br i1 %238, label %239, label %270

239:                                              ; preds = %234
  %240 = and i32 %25, 2
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %239
  %243 = load i32, ptr @doc_scroll, align 4, !tbaa !65
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %242
  %246 = add nsw i32 %243, -1
  store i32 %246, ptr @doc_scroll, align 4, !tbaa !65
  br label %268

247:                                              ; preds = %239
  %248 = and i32 %25, 1
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %270, label %250

250:                                              ; preds = %247
  %251 = tail call ptr @texttool_suggest_selected() #9
  %252 = icmp eq ptr %251, null
  br i1 %252, label %267, label %253

253:                                              ; preds = %250, %263
  %254 = phi ptr [ %265, %263 ], [ %251, %250 ]
  %255 = phi i32 [ %264, %263 ], [ %235, %250 ]
  %256 = tail call ptr @texttool_suggest_first() #9
  %257 = icmp eq ptr %254, %256
  br i1 %257, label %267, label %258

258:                                              ; preds = %253
  %259 = load ptr, ptr %254, align 8, !tbaa !99
  %260 = icmp eq ptr %259, null
  %261 = icmp eq i32 %255, 0
  %262 = select i1 %260, i1 true, i1 %261
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  %264 = add nsw i32 %255, -1
  tail call void @texttool_suggest_select(ptr noundef nonnull %259) #9
  %265 = load ptr, ptr %254, align 8, !tbaa !99
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %253, !llvm.loop !100

267:                                              ; preds = %263, %253, %258, %250
  tail call void @text_pop_suggest_list() #10
  br label %268

268:                                              ; preds = %86, %242, %245, %94, %75, %71, %50, %63, %60, %32, %42, %39, %232, %206, %267
  %269 = phi i32 [ 1, %242 ], [ 1, %245 ], [ 4, %94 ], [ 2, %71 ], [ 2, %75 ], [ 4, %60 ], [ 4, %63 ], [ 1, %50 ], [ 4, %39 ], [ 4, %42 ], [ 1, %32 ], [ 1, %232 ], [ 1, %206 ], [ 1, %267 ], [ 4, %86 ]
  tail call void @ED_area_tag_redraw(ptr noundef %5) #9
  br label %270

270:                                              ; preds = %28, %43, %64, %76, %95, %140, %144, %145, %192, %196, %198, %209, %234, %247, %24, %268
  %271 = phi i32 [ %269, %268 ], [ 1, %28 ], [ 1, %43 ], [ 1, %64 ], [ 1, %76 ], [ 1, %95 ], [ %141, %140 ], [ %141, %144 ], [ 1, %145 ], [ %193, %192 ], [ %193, %196 ], [ 1, %198 ], [ 1, %209 ], [ 1, %234 ], [ 1, %247 ], [ 1, %24 ]
  %272 = tail call ptr @texttool_suggest_first() #9
  %273 = icmp eq ptr %272, null
  br i1 %273, label %282, label %280

274:                                              ; preds = %83
  %275 = tail call ptr @texttool_suggest_first() #9
  %276 = icmp eq ptr %275, null
  br i1 %276, label %282, label %283

277:                                              ; preds = %72
  %278 = tail call ptr @texttool_suggest_first() #9
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %283

280:                                              ; preds = %270
  %281 = icmp eq i32 %271, 1
  br i1 %281, label %285, label %283

282:                                              ; preds = %274, %277, %270
  br label %283

283:                                              ; preds = %280, %277, %274, %282
  %284 = phi i32 [ 4, %282 ], [ %271, %280 ], [ 2, %277 ], [ 4, %274 ]
  tail call fastcc void @text_autocomplete_free(ptr noundef %0, ptr noundef %1) #10
  br label %285

285:                                              ; preds = %283, %280
  %286 = phi i32 [ 1, %280 ], [ %284, %283 ]
  ret i32 %286
}

; Function Attrs: optsize
declare i32 @text_space_edit_poll(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @text_autocomplete_build(ptr noundef %0) unnamed_addr #0 !PGOFuncName !101 {
  %2 = alloca i64, align 8
  tail call void @texttool_text_clear() #9
  tail call void @texttool_text_set_active(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @text_find_identifier_start(ptr noundef %6, i32 noundef %8) #9
  %10 = load i32, ptr %7, align 8, !tbaa !50
  %11 = sub nsw i32 %10, %9
  %12 = load ptr, ptr %3, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @__func__.text_autocomplete_build) #9
  %18 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %114, label %21

21:                                               ; preds = %1
  %22 = icmp eq i32 %10, %9
  %23 = sext i32 %11 to i64
  br label %24

24:                                               ; preds = %21, %111
  %25 = phi ptr [ %19, %21 ], [ %112, %111 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %26 = getelementptr inbounds %struct.TextLine, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !97
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %111, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TextLine, ptr %25, i64 0, i32 2
  br label %31

31:                                               ; preds = %29, %106
  %32 = phi i32 [ %27, %29 ], [ %108, %106 ]
  %33 = phi i64 [ 0, %29 ], [ %107, %106 ]
  store i64 %33, ptr %2, align 8, !tbaa !102
  %34 = sext i32 %32 to i64
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31, %46
  %37 = phi i64 [ %47, %46 ], [ %33, %31 ]
  %38 = load ptr, ptr %30, align 8, !tbaa !93
  %39 = getelementptr inbounds i8, ptr %38, i64 %37
  %40 = call i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef %39, ptr noundef nonnull %2) #9
  %41 = call i32 @text_check_identifier_nodigit_unicode(i32 noundef %40) #9
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %26, align 8, !tbaa !97
  br i1 %42, label %46, label %44

44:                                               ; preds = %36
  %45 = sext i32 %43 to i64
  br label %50

46:                                               ; preds = %36
  %47 = load i64, ptr %2, align 8, !tbaa !102
  %48 = sext i32 %43 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %36, label %50, !llvm.loop !104

50:                                               ; preds = %46, %44, %31
  %51 = phi i64 [ %34, %31 ], [ %45, %44 ], [ %48, %46 ]
  %52 = phi i64 [ %33, %31 ], [ %37, %44 ], [ %47, %46 ]
  store i64 %52, ptr %2, align 8, !tbaa !102
  %53 = icmp ult i64 %52, %51
  br i1 %53, label %54, label %66

54:                                               ; preds = %50, %61
  %55 = phi i64 [ %62, %61 ], [ %52, %50 ]
  %56 = load ptr, ptr %30, align 8, !tbaa !93
  %57 = getelementptr inbounds i8, ptr %56, i64 %55
  %58 = call i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef %57, ptr noundef nonnull %2) #9
  %59 = call i32 @text_check_identifier_unicode(i32 noundef %58) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load i64, ptr %2, align 8, !tbaa !102
  %63 = load i32, ptr %26, align 8, !tbaa !97
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %54, label %66, !llvm.loop !105

66:                                               ; preds = %54, %61, %50
  %67 = phi i64 [ %52, %50 ], [ %62, %61 ], [ %55, %54 ]
  %68 = icmp eq i64 %52, %67
  br i1 %68, label %104, label %69

69:                                               ; preds = %66
  %70 = icmp eq i64 %52, 0
  %71 = load ptr, ptr %30, align 8, !tbaa !93
  br i1 %70, label %80, label %72

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %71, i64 %52
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = call i32 @BLI_str_utf8_as_unicode(ptr noundef %74) #9
  %76 = call i32 @text_check_identifier_unicode(i32 noundef %75) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load ptr, ptr %30, align 8, !tbaa !93
  br label %80

80:                                               ; preds = %78, %69
  %81 = phi ptr [ %79, %78 ], [ %71, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 %52
  %83 = sub i64 %67, %52
  %84 = trunc i64 %83 to i32
  %85 = icmp slt i32 %11, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  br i1 %22, label %92, label %87

87:                                               ; preds = %86
  %88 = call i32 @strncmp(ptr noundef %16, ptr noundef %82, i64 noundef %23) #13
  %89 = icmp ne i32 %88, 0
  %90 = icmp eq ptr %16, %82
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %106, label %94

92:                                               ; preds = %86
  %93 = icmp eq ptr %16, %82
  br i1 %93, label %106, label %94

94:                                               ; preds = %87, %92
  %95 = shl i64 %83, 32
  %96 = ashr exact i64 %95, 32
  %97 = getelementptr inbounds i8, ptr %82, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !95
  store i8 0, ptr %97, align 1, !tbaa !95
  %99 = call ptr @BLI_ghash_lookup(ptr noundef %17, ptr noundef %82) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call ptr @BLI_strdupn(ptr noundef nonnull %82, i64 noundef %96) #9
  call void @BLI_ghash_insert(ptr noundef %17, ptr noundef %102, ptr noundef %102) #9
  br label %103

103:                                              ; preds = %101, %94
  store i8 %98, ptr %97, align 1, !tbaa !95
  br label %106

104:                                              ; preds = %66
  %105 = add i64 %52, 1
  br label %106

106:                                              ; preds = %72, %103, %92, %87, %80, %104
  %107 = phi i64 [ %105, %104 ], [ %67, %80 ], [ %67, %87 ], [ %67, %92 ], [ %67, %103 ], [ %67, %72 ]
  %108 = load i32, ptr %26, align 8, !tbaa !97
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %31, label %111, !llvm.loop !106

111:                                              ; preds = %106, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %112 = load ptr, ptr %25, align 8, !tbaa !45
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %24, !llvm.loop !107

114:                                              ; preds = %111, %1
  %115 = call ptr @BLI_ghashIterator_new(ptr noundef %17) #9
  %116 = call ptr @ED_text_format_get(ptr noundef %0) #9
  %117 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %115) #10, !range !108
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.TextFormatType, ptr %116, i64 0, i32 2
  br label %121

121:                                              ; preds = %119, %121
  %122 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %115) #10
  %123 = load ptr, ptr %120, align 8, !tbaa !109
  %124 = call zeroext i8 %123(ptr noundef %122) #9
  call void @texttool_suggest_add(ptr noundef %122, i8 noundef zeroext %124) #9
  call void @BLI_ghashIterator_step(ptr noundef %115) #9
  %125 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %115) #10, !range !108
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %121, label %127, !llvm.loop !111

127:                                              ; preds = %121, %114
  call void @BLI_ghashIterator_free(ptr noundef %115) #9
  call void @texttool_suggest_prefix(ptr noundef %16, i32 noundef %11) #9
  ret ptr %17
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @confirm_suggestion(ptr noundef %0) unnamed_addr #0 !PGOFuncName !112 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %0) #9
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @texttool_suggest_selected() #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !50
  %16 = tail call i32 @text_find_identifier_start(ptr noundef %13, i32 noundef %15) #9
  %17 = load i32, ptr %14, align 8, !tbaa !50
  %18 = sub nsw i32 %17, %16
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9, %20
  %21 = phi i32 [ %22, %20 ], [ 0, %9 ]
  tail call void @txt_move_left(ptr noundef nonnull %0, i8 noundef zeroext 1) #9
  %22 = add nuw nsw i32 %21, 1
  %23 = icmp eq i32 %22, %18
  br i1 %23, label %24, label %20, !llvm.loop !113

24:                                               ; preds = %20, %9
  %25 = getelementptr inbounds %struct.SuggItem, ptr %7, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  tail call void @txt_insert_buf(ptr noundef nonnull %0, ptr noundef %26) #9
  tail call void @texttool_text_clear() #9
  br label %27

27:                                               ; preds = %6, %3, %1, %24
  ret void
}

; Function Attrs: optsize
declare void @text_update_line_edited(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_autocomplete_free(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !115 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef nonnull %4, ptr noundef null, ptr noundef %7) #9
  store ptr null, ptr %3, align 8, !tbaa !83
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.SpaceText, ptr %9, i64 0, i32 25
  store i32 0, ptr %10, align 4, !tbaa !82
  tail call void @texttool_text_clear() #9
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @texttool_text_clear() local_unnamed_addr #2

; Function Attrs: optsize
declare void @texttool_text_set_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @text_find_identifier_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @text_check_identifier_nodigit_unicode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @text_check_identifier_unicode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_text_format_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  ret ptr %5
}

; Function Attrs: optsize
declare void @texttool_suggest_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @texttool_suggest_prefix(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_insert_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @texttool_docs_get() local_unnamed_addr #2

; Function Attrs: optsize
declare void @texttool_suggest_clear() local_unnamed_addr #2

; Function Attrs: optsize
declare void @texttool_docs_clear() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @text_check_whitespace(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_suggest_prefix(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !122 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %0) #9
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.TextLine, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !50
  %14 = add nsw i32 %13, %1
  %15 = tail call i32 @text_find_identifier_start(ptr noundef %11, i32 noundef %14) #9
  %16 = load i32, ptr %12, align 8, !tbaa !50
  %17 = sub i32 %1, %15
  %18 = add i32 %17, %16
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i8, ptr %11, i64 %19
  tail call void @texttool_suggest_prefix(ptr noundef %20, i32 noundef %18) #9
  br label %21

21:                                               ; preds = %4, %2, %7
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 56}
!35 = !{!"SpaceText", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !36, i64 56, !40, i64 64, !40, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !37, i64 78, !37, i64 79, !40, i64 80, !40, i64 84, !40, i64 88, !42, i64 92, !42, i64 94, !42, i64 96, !42, i64 98, !41, i64 100, !43, i64 104, !43, i64 120, !40, i64 136, !40, i64 140, !37, i64 144, !37, i64 400, !42, i64 656, !42, i64 658, !37, i64 660, !36, i64 664, !37, i64 672}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!44 = !{!35, !40, i64 64}
!45 = !{!36, !36, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!35, !40, i64 84}
!49 = !{!35, !37, i64 78}
!50 = !{!51, !40, i64 168}
!51 = !{!"Text", !52, i64 0, !36, i64 120, !40, i64 128, !40, i64 132, !39, i64 136, !36, i64 152, !36, i64 160, !40, i64 168, !40, i64 172, !36, i64 176, !40, i64 184, !40, i64 188, !36, i64 192, !53, i64 200}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!53 = !{!"double", !37, i64 0}
!54 = !{!35, !40, i64 80}
!55 = !{!56, !42, i64 8948}
!56 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !42, i64 8496, !42, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !37, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !40, i64 8912, !40, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !42, i64 8968, !42, i64 8970, !41, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !57, i64 8984, !37, i64 9760, !37, i64 9772, !42, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !58, i64 10928}
!57 = !{!"ColorBand", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!58 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !42, i64 24, !37, i64 26}
!59 = !{!35, !37, i64 79}
!60 = !{!61, !42, i64 210}
!61 = !{!"ARegion", !36, i64 0, !36, i64 8, !62, i64 16, !43, i64 176, !43, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!63 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!64 = !{!35, !42, i64 658}
!65 = !{!40, !40, i64 0}
!66 = distinct !{!66, !47}
!67 = !{!68, !36, i64 8}
!68 = !{!"SuggItem", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = !{!72, !36, i64 0}
!72 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !73, i64 152, !42, i64 184}
!73 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!74 = !{!72, !36, i64 24}
!75 = !{!72, !36, i64 8}
!76 = !{!72, !36, i64 48}
!77 = !{!72, !36, i64 56}
!78 = !{!72, !36, i64 64}
!79 = !{!72, !36, i64 72}
!80 = !{!72, !42, i64 184}
!81 = !{!"text_autocomplete.c:text_autocomplete_invoke"}
!82 = !{!35, !40, i64 140}
!83 = !{!84, !36, i64 96}
!84 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !42, i64 160, !37, i64 162}
!85 = !{!51, !36, i64 152}
!86 = !{!"text_autocomplete.c:text_autocomplete_cancel"}
!87 = !{!"text_autocomplete.c:text_autocomplete_modal"}
!88 = !{!89, !42, i64 16}
!89 = !{!"wmEvent", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !42, i64 44, !42, i64 46, !40, i64 48, !40, i64 52, !53, i64 56, !40, i64 64, !40, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !36, i64 88, !36, i64 96, !42, i64 104, !42, i64 106, !40, i64 108, !36, i64 112}
!90 = !{!89, !42, i64 18}
!91 = !{i32 0, i32 2}
!92 = !{!89, !42, i64 74}
!93 = !{!94, !36, i64 16}
!94 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36}
!95 = !{!37, !37, i64 0}
!96 = !{!42, !42, i64 0}
!97 = !{!94, !40, i64 32}
!98 = distinct !{!98, !47}
!99 = !{!68, !36, i64 0}
!100 = distinct !{!100, !47}
!101 = !{!"text_autocomplete.c:text_autocomplete_build"}
!102 = !{!103, !103, i64 0}
!103 = !{!"long", !37, i64 0}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, !47}
!106 = distinct !{!106, !47}
!107 = distinct !{!107, !47}
!108 = !{i8 0, i8 2}
!109 = !{!110, !36, i64 16}
!110 = !{!"TextFormatType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!111 = distinct !{!111, !47}
!112 = !{!"text_autocomplete.c:confirm_suggestion"}
!113 = distinct !{!113, !47}
!114 = !{!68, !36, i64 16}
!115 = !{!"text_autocomplete.c:text_autocomplete_free"}
!116 = !{!"text_autocomplete.c:BLI_ghashIterator_done"}
!117 = !{!118, !36, i64 8}
!118 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!119 = !{!"text_autocomplete.c:BLI_ghashIterator_getValue"}
!120 = !{!121, !36, i64 16}
!121 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!122 = !{!"text_autocomplete.c:get_suggest_prefix"}
