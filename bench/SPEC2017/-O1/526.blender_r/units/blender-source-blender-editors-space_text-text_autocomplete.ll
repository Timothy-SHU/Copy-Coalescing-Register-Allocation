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
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [19 x i8] c"Text Auto Complete\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Show a list of used text in the open document\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TEXT_OT_autocomplete\00", align 1
@__func__.text_autocomplete_build = private unnamed_addr constant [24 x i8] c"text_autocomplete_build\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@doc_scroll = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @text_do_suggest_select(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %129, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %129, label %8

8:                                                ; preds = %4
  %9 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %6) #7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %129, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @texttool_suggest_first() #7
  %13 = tail call ptr @texttool_suggest_last() #7
  %14 = tail call ptr @texttool_suggest_top() #7
  %15 = icmp ne ptr %13, null
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %129

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
  br i1 %35, label %129, label %36

36:                                               ; preds = %33
  tail call void @text_update_character_width(ptr noundef nonnull %0) #7
  %37 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %41 = load i8, ptr %40, align 2, !tbaa !50
  %42 = zext i8 %41 to i32
  %43 = load ptr, ptr %5, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Text, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %47 = load i32, ptr %46, align 8, !tbaa !55
  %48 = sub nsw i32 %45, %47
  br i1 %39, label %60, label %49

49:                                               ; preds = %36
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %51 = sitofp i16 %50 to float
  %52 = fmul float %51, 5.000000e-01
  %53 = fptosi float %52 to i32
  %54 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %55 = load i8, ptr %54, align 1, !tbaa !60
  %56 = zext i8 %55 to i32
  %57 = add i32 %48, %56
  %58 = mul i32 %57, %42
  %59 = add i32 %58, %53
  br label %67

60:                                               ; preds = %36
  %61 = mul nsw i32 %48, %42
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %63 = sitofp i16 %62 to float
  %64 = fmul float %63, 5.000000e-01
  %65 = fptosi float %64 to i32
  %66 = add nsw i32 %61, %65
  br label %67

67:                                               ; preds = %60, %49
  %68 = phi i32 [ %59, %49 ], [ %66, %60 ]
  %69 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %70 = load i16, ptr %69, align 2, !tbaa !61
  %71 = sext i16 %70 to i32
  %72 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %73 = load i16, ptr %72, align 2, !tbaa !65
  %74 = sext i16 %73 to i32
  %75 = mul nsw i32 %34, %74
  %76 = sub nsw i32 %71, %75
  %77 = icmp sgt i32 %68, 4
  br i1 %77, label %129, label %78

78:                                               ; preds = %67
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %80 = sitofp i16 %79 to float
  %81 = mul nsw i32 %74, 7
  %82 = sitofp i32 %81 to float
  %83 = tail call float @llvm.fmuladd.f32(float %80, float 0x3FD99999A0000000, float %82)
  %84 = fptosi float %83 to i32
  %85 = add nsw i32 %76, -2
  %86 = sext i16 %79 to i32
  %87 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %88 = load i8, ptr %87, align 2, !tbaa !50
  %89 = zext i8 %88 to i32
  %90 = mul nuw nsw i32 %89, 20
  %91 = add i32 %68, -4
  %92 = add i32 %91, %86
  %93 = add i32 %92, %90
  %94 = icmp slt i32 %93, 0
  %95 = icmp sgt i32 %85, %84
  %96 = select i1 %94, i1 true, i1 %95
  %97 = icmp slt i32 %76, 2
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %129, label %99

99:                                               ; preds = %78
  %100 = load i32, ptr %14, align 4, !tbaa !66
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %105, label %111

102:                                              ; preds = %105
  %103 = add nuw nsw i32 %107, 1
  %104 = icmp eq i32 %103, %100
  br i1 %104, label %111, label %105, !llvm.loop !67

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %109, %102 ], [ %12, %99 ]
  %107 = phi i32 [ %103, %102 ], [ 0, %99 ]
  %108 = getelementptr inbounds %struct.SuggItem, ptr %106, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !68
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %102

111:                                              ; preds = %105, %102, %99
  %112 = phi ptr [ %12, %99 ], [ %106, %105 ], [ %109, %102 ]
  %113 = add nsw i32 %76, -6
  %114 = sdiv i32 %113, %74
  %115 = icmp ugt i32 %114, 7
  br i1 %115, label %129, label %116

116:                                              ; preds = %111
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %127, label %121

118:                                              ; preds = %121
  %119 = add nsw i32 %123, -1
  %120 = icmp sgt i32 %123, 1
  br i1 %120, label %121, label %127, !llvm.loop !70

121:                                              ; preds = %116, %118
  %122 = phi ptr [ %125, %118 ], [ %112, %116 ]
  %123 = phi i32 [ %119, %118 ], [ %114, %116 ]
  %124 = getelementptr inbounds %struct.SuggItem, ptr %122, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !68
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %118

127:                                              ; preds = %118, %121, %116
  %128 = phi ptr [ %112, %116 ], [ %125, %118 ], [ %122, %121 ]
  tail call void @texttool_suggest_select(ptr noundef %128) #7
  br label %129

129:                                              ; preds = %111, %67, %78, %33, %11, %8, %2, %4, %127
  %130 = phi i32 [ 1, %127 ], [ 0, %4 ], [ 0, %2 ], [ 0, %8 ], [ 0, %11 ], [ 0, %33 ], [ 0, %78 ], [ 0, %67 ], [ 1, %111 ]
  ret i32 %130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare signext i16 @texttool_text_is_active(ptr noundef) local_unnamed_addr #2

declare ptr @texttool_suggest_first() local_unnamed_addr #2

declare ptr @texttool_suggest_last() local_unnamed_addr #2

declare ptr @texttool_suggest_top() local_unnamed_addr #2

declare void @text_update_character_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @texttool_suggest_select(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @text_pop_suggest_list() local_unnamed_addr #0 {
  %1 = tail call ptr @texttool_suggest_first() #7
  %2 = tail call ptr @texttool_suggest_selected() #7
  %3 = tail call ptr @texttool_suggest_top() #7
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %1, %2
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %16

7:                                                ; preds = %0, %7
  %8 = phi i32 [ %12, %7 ], [ 0, %0 ]
  %9 = phi ptr [ %11, %7 ], [ %1, %0 ]
  %10 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %11, %2
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %7, label %16, !llvm.loop !71

16:                                               ; preds = %7, %0
  %17 = phi i32 [ 0, %0 ], [ %12, %7 ]
  %18 = load i32, ptr %3, align 4, !tbaa !66
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
  store i32 %26, ptr %3, align 4, !tbaa !66
  br label %27

27:                                               ; preds = %25, %23
  ret void
}

declare ptr @texttool_suggest_selected() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_autocomplete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_autocomplete_invoke, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_autocomplete_cancel, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_autocomplete_modal, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_autocomplete_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca i64, align 8
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 25
  store i32 1, ptr %7, align 4, !tbaa !82
  tail call void @texttool_text_clear() #7
  tail call void @texttool_text_set_active(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.TextLine, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = tail call i32 @text_find_identifier_start(ptr noundef %11, i32 noundef %13) #7
  %15 = load i32, ptr %12, align 8, !tbaa !51
  %16 = sub nsw i32 %15, %14
  %17 = load ptr, ptr %8, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @__func__.text_autocomplete_build) #7
  %23 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %119, label %26

26:                                               ; preds = %3
  %27 = icmp eq i32 %15, %14
  %28 = sext i32 %16 to i64
  br label %29

29:                                               ; preds = %26, %116
  %30 = phi ptr [ %24, %26 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !88
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %116, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  %36 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  %37 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  %38 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  br label %39

39:                                               ; preds = %34, %111
  %40 = phi i64 [ 0, %34 ], [ %112, %111 ]
  store i64 %40, ptr %4, align 8, !tbaa !86
  %41 = load i32, ptr %31, align 8, !tbaa !88
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39, %51
  %45 = phi i64 [ %52, %51 ], [ %40, %39 ]
  %46 = load ptr, ptr %35, align 8, !tbaa !84
  %47 = getelementptr inbounds i8, ptr %46, i64 %45
  %48 = call i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef %47, ptr noundef nonnull %4) #7
  %49 = call i32 @text_check_identifier_nodigit_unicode(i32 noundef %48) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64, ptr %4, align 8, !tbaa !86
  %53 = load i32, ptr %31, align 8, !tbaa !88
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %44, label %56, !llvm.loop !89

56:                                               ; preds = %51, %44, %39
  %57 = phi i64 [ %40, %39 ], [ %52, %51 ], [ %45, %44 ]
  store i64 %57, ptr %4, align 8, !tbaa !86
  %58 = load i32, ptr %31, align 8, !tbaa !88
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %68
  %62 = phi i64 [ %69, %68 ], [ %57, %56 ]
  %63 = load ptr, ptr %36, align 8, !tbaa !84
  %64 = getelementptr inbounds i8, ptr %63, i64 %62
  %65 = call i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef %64, ptr noundef nonnull %4) #7
  %66 = call i32 @text_check_identifier_unicode(i32 noundef %65) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i64, ptr %4, align 8, !tbaa !86
  %70 = load i32, ptr %31, align 8, !tbaa !88
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %61, label %73, !llvm.loop !90

73:                                               ; preds = %68, %61, %56
  %74 = phi i64 [ %57, %56 ], [ %69, %68 ], [ %62, %61 ]
  %75 = icmp eq i64 %57, %74
  br i1 %75, label %109, label %76

76:                                               ; preds = %73
  %77 = icmp eq i64 %57, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %37, align 8, !tbaa !84
  %80 = getelementptr i8, ptr %79, i64 %57
  %81 = getelementptr i8, ptr %80, i64 -1
  %82 = call i32 @BLI_str_utf8_as_unicode(ptr noundef %81) #7
  %83 = call i32 @text_check_identifier_unicode(i32 noundef %82) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %78, %76
  %86 = load ptr, ptr %38, align 8, !tbaa !84
  %87 = getelementptr inbounds i8, ptr %86, i64 %57
  %88 = sub i64 %74, %57
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %16, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  br i1 %27, label %97, label %92

92:                                               ; preds = %91
  %93 = call i32 @strncmp(ptr noundef %21, ptr noundef %87, i64 noundef %28) #8
  %94 = icmp ne i32 %93, 0
  %95 = icmp eq ptr %21, %87
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %111, label %99

97:                                               ; preds = %91
  %98 = icmp eq ptr %21, %87
  br i1 %98, label %111, label %99

99:                                               ; preds = %97, %92
  %100 = shl i64 %88, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds i8, ptr %87, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !91
  store i8 0, ptr %102, align 1, !tbaa !91
  %104 = call ptr @BLI_ghash_lookup(ptr noundef %22, ptr noundef %87) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call ptr @BLI_strdupn(ptr noundef %87, i64 noundef %101) #7
  call void @BLI_ghash_insert(ptr noundef %22, ptr noundef %107, ptr noundef %107) #7
  br label %108

108:                                              ; preds = %106, %99
  store i8 %103, ptr %102, align 1, !tbaa !91
  br label %111

109:                                              ; preds = %73
  %110 = add i64 %57, 1
  br label %111

111:                                              ; preds = %109, %108, %97, %92, %85, %78
  %112 = phi i64 [ %110, %109 ], [ %74, %85 ], [ %74, %92 ], [ %74, %97 ], [ %74, %108 ], [ %74, %78 ]
  %113 = load i32, ptr %31, align 8, !tbaa !88
  %114 = sext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %39, label %116, !llvm.loop !92

116:                                              ; preds = %111, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %117 = load ptr, ptr %30, align 8, !tbaa !45
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %29, !llvm.loop !93

119:                                              ; preds = %116, %3
  %120 = call ptr @BLI_ghashIterator_new(ptr noundef %22) #7
  %121 = call ptr @ED_text_format_get(ptr noundef %6) #7
  %122 = getelementptr inbounds %struct.GHashIterator, ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !94
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TextFormatType, ptr %121, i64 0, i32 2
  br label %127

127:                                              ; preds = %125, %127
  %128 = phi ptr [ %123, %125 ], [ %133, %127 ]
  %129 = getelementptr inbounds %struct._gh_Entry, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !96
  %131 = load ptr, ptr %126, align 8, !tbaa !98
  %132 = call zeroext i8 %131(ptr noundef %130) #7
  call void @texttool_suggest_add(ptr noundef %130, i8 noundef zeroext %132) #7
  call void @BLI_ghashIterator_step(ptr noundef %120) #7
  %133 = load ptr, ptr %122, align 8, !tbaa !94
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %127, !llvm.loop !100

135:                                              ; preds = %127, %119
  call void @BLI_ghashIterator_free(ptr noundef %120) #7
  call void @texttool_suggest_prefix(ptr noundef %21, i32 noundef %16) #7
  %136 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %22, ptr %136, align 8, !tbaa !101
  %137 = call ptr @texttool_suggest_first() #7
  %138 = icmp eq ptr %137, null
  br i1 %138, label %159, label %139

139:                                              ; preds = %135
  %140 = call ptr @CTX_wm_area(ptr noundef %0) #7
  call void @ED_area_tag_redraw(ptr noundef %140) #7
  %141 = call ptr @texttool_suggest_first() #7
  %142 = call ptr @texttool_suggest_last() #7
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  call fastcc void @confirm_suggestion(ptr noundef %146)
  %147 = load ptr, ptr %145, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.Text, ptr %147, i64 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !83
  call void @text_update_line_edited(ptr noundef %149) #7
  %150 = load ptr, ptr %136, align 8, !tbaa !101
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %144
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void @BLI_ghash_free(ptr noundef nonnull %150, ptr noundef null, ptr noundef %153) #7
  store ptr null, ptr %136, align 8, !tbaa !101
  br label %154

154:                                              ; preds = %144, %152
  %155 = call ptr @CTX_wm_space_text(ptr noundef %0) #7
  %156 = getelementptr inbounds %struct.SpaceText, ptr %155, i64 0, i32 25
  store i32 0, ptr %156, align 4, !tbaa !82
  call void @texttool_text_clear() #7
  br label %167

157:                                              ; preds = %139
  %158 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %167

159:                                              ; preds = %135
  %160 = load ptr, ptr %136, align 8, !tbaa !101
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void @BLI_ghash_free(ptr noundef nonnull %160, ptr noundef null, ptr noundef %163) #7
  store ptr null, ptr %136, align 8, !tbaa !101
  br label %164

164:                                              ; preds = %159, %162
  %165 = call ptr @CTX_wm_space_text(ptr noundef %0) #7
  %166 = getelementptr inbounds %struct.SpaceText, ptr %165, i64 0, i32 25
  store i32 0, ptr %166, align 4, !tbaa !82
  call void @texttool_text_clear() #7
  br label %167

167:                                              ; preds = %164, %157, %154
  %168 = phi i32 [ 4, %154 ], [ 1, %157 ], [ 2, %164 ]
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define internal void @text_autocomplete_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef nonnull %4, ptr noundef null, ptr noundef %7) #7
  store ptr null, ptr %3, align 8, !tbaa !101
  br label %8

8:                                                ; preds = %2, %6
  %9 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.SpaceText, ptr %9, i64 0, i32 25
  store i32 0, ptr %10, align 4, !tbaa !82
  tail call void @texttool_text_clear() #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_autocomplete_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = tail call ptr @BKE_area_find_region_type(ptr noundef %5, i32 noundef 0) #7
  %7 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 25
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call signext i16 @texttool_text_is_active(ptr noundef %13) #7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @texttool_suggest_first() #7
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  %20 = tail call ptr @texttool_docs_get() #7
  %21 = icmp eq ptr %20, null
  %22 = or disjoint i32 %19, 2
  %23 = select i1 %21, i32 %19, i32 %22
  br label %24

24:                                               ; preds = %16, %11, %3
  %25 = phi i32 [ 0, %11 ], [ 0, %3 ], [ %23, %16 ]
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !103
  switch i16 %27, label %405 [
    i16 1, label %28
    i16 2, label %43
    i16 218, label %64
    i16 220, label %76
    i16 163, label %76
    i16 137, label %94
    i16 223, label %94
    i16 139, label %188
    i16 169, label %284
    i16 11, label %285
    i16 138, label %285
    i16 168, label %345
    i16 10, label %346
    i16 140, label %346
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !105
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %405

32:                                               ; preds = %28
  %33 = tail call i32 @text_do_suggest_select(ptr noundef %4, ptr noundef %6), !range !106
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %405

35:                                               ; preds = %32
  %36 = and i32 %25, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @texttool_suggest_clear() #7
  br label %39

39:                                               ; preds = %38, %35
  %40 = and i32 %25, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %405, label %42

42:                                               ; preds = %39
  tail call void @texttool_docs_clear() #7
  store i32 0, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !105
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %405

47:                                               ; preds = %43
  %48 = tail call i32 @text_do_suggest_select(ptr noundef %4, ptr noundef %6), !range !106
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  tail call fastcc void @confirm_suggestion(ptr noundef %52)
  %53 = load ptr, ptr %51, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.Text, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !83
  tail call void @text_update_line_edited(ptr noundef %55) #7
  br label %405

56:                                               ; preds = %47
  %57 = and i32 %25, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @texttool_suggest_clear() #7
  br label %60

60:                                               ; preds = %59, %56
  %61 = and i32 %25, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %405, label %63

63:                                               ; preds = %60
  tail call void @texttool_docs_clear() #7
  store i32 0, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

64:                                               ; preds = %24
  %65 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !105
  %67 = icmp eq i16 %66, 1
  br i1 %67, label %68, label %405

68:                                               ; preds = %64
  %69 = and i32 %25, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @texttool_suggest_clear() #7
  br label %405

72:                                               ; preds = %68
  %73 = and i32 %25, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %405, label %75

75:                                               ; preds = %72
  tail call void @texttool_docs_clear() #7
  store i32 0, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

76:                                               ; preds = %24, %24
  %77 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %78 = load i16, ptr %77, align 2, !tbaa !105
  %79 = icmp eq i16 %78, 1
  br i1 %79, label %80, label %405

80:                                               ; preds = %76
  %81 = and i32 %25, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  tail call fastcc void @confirm_suggestion(ptr noundef %85)
  %86 = load ptr, ptr %84, align 8, !tbaa !34
  %87 = getelementptr inbounds %struct.Text, ptr %86, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !83
  tail call void @text_update_line_edited(ptr noundef %88) #7
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i32 [ 1, %83 ], [ 0, %80 ]
  %91 = and i32 %25, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %405, label %93

93:                                               ; preds = %89
  tail call void @texttool_docs_clear() #7
  store i32 0, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

94:                                               ; preds = %24, %24
  %95 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %96 = load i16, ptr %95, align 2, !tbaa !105
  %97 = icmp eq i16 %96, 1
  br i1 %97, label %98, label %405

98:                                               ; preds = %94
  %99 = and i32 %25, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %183, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %103 = load i16, ptr %102, align 2, !tbaa !107
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @texttool_suggest_clear() #7
  br label %183

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = getelementptr inbounds %struct.Text, ptr %108, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !83
  %111 = icmp eq ptr %110, null
  br i1 %111, label %182, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.Text, ptr %108, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !51
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %182

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TextLine, ptr %110, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !84
  %119 = zext nneg i32 %114 to i64
  %120 = getelementptr i8, ptr %118, i64 %119
  %121 = getelementptr i8, ptr %120, i64 -1
  %122 = load i8, ptr %121, align 1, !tbaa !91
  %123 = icmp eq i8 %122, 95
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = tail call ptr @__ctype_b_loc() #9
  %126 = load ptr, ptr %125, align 8, !tbaa !45
  %127 = zext i8 %122 to i64
  %128 = getelementptr inbounds i16, ptr %126, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !108
  %130 = and i16 %129, 4
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %181

132:                                              ; preds = %124, %116
  %133 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %122) #7
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %181

135:                                              ; preds = %132
  %136 = load ptr, ptr %107, align 8, !tbaa !34
  %137 = icmp eq ptr %136, null
  br i1 %137, label %155, label %138

138:                                              ; preds = %135
  %139 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %136) #7
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.Text, ptr %136, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !83
  %144 = getelementptr inbounds %struct.TextLine, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !84
  %146 = getelementptr inbounds %struct.Text, ptr %136, i64 0, i32 7
  %147 = load i32, ptr %146, align 8, !tbaa !51
  %148 = add nsw i32 %147, -1
  %149 = tail call i32 @text_find_identifier_start(ptr noundef %145, i32 noundef %148) #7
  %150 = load i32, ptr %146, align 8, !tbaa !51
  %151 = xor i32 %149, -1
  %152 = add i32 %150, %151
  %153 = sext i32 %149 to i64
  %154 = getelementptr inbounds i8, ptr %145, i64 %153
  tail call void @texttool_suggest_prefix(ptr noundef %154, i32 noundef %152) #7
  br label %155

155:                                              ; preds = %135, %138, %141
  %156 = tail call ptr @texttool_suggest_first() #7
  %157 = tail call ptr @texttool_suggest_selected() #7
  %158 = tail call ptr @texttool_suggest_top() #7
  %159 = icmp ne ptr %156, null
  %160 = icmp ne ptr %156, %157
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %162, label %171

162:                                              ; preds = %155, %162
  %163 = phi i32 [ %167, %162 ], [ 0, %155 ]
  %164 = phi ptr [ %166, %162 ], [ %156, %155 ]
  %165 = getelementptr inbounds %struct.SuggItem, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !68
  %167 = add nuw nsw i32 %163, 1
  %168 = icmp ne ptr %166, null
  %169 = icmp ne ptr %166, %157
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %162, label %171, !llvm.loop !71

171:                                              ; preds = %162, %155
  %172 = phi i32 [ 0, %155 ], [ %167, %162 ]
  %173 = load i32, ptr %158, align 4, !tbaa !66
  %174 = add nsw i32 %173, 6
  %175 = icmp sgt i32 %172, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = add nsw i32 %172, -6
  store i32 %177, ptr %158, align 4, !tbaa !66
  br label %183

178:                                              ; preds = %171
  %179 = icmp slt i32 %172, %173
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  store i32 %172, ptr %158, align 4, !tbaa !66
  br label %183

181:                                              ; preds = %132, %124
  tail call void @texttool_suggest_clear() #7
  br label %183

182:                                              ; preds = %112, %106
  tail call void @texttool_suggest_clear() #7
  br label %183

183:                                              ; preds = %180, %178, %176, %181, %105, %182, %98
  %184 = phi i32 [ 2, %105 ], [ 2, %182 ], [ 1, %98 ], [ 2, %181 ], [ 1, %176 ], [ 1, %178 ], [ 1, %180 ]
  %185 = and i32 %25, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %405, label %187

187:                                              ; preds = %183
  tail call void @texttool_docs_clear() #7
  store i32 0, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

188:                                              ; preds = %24
  %189 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %190 = load i16, ptr %189, align 2, !tbaa !105
  %191 = icmp eq i16 %190, 1
  br i1 %191, label %192, label %405

192:                                              ; preds = %188
  %193 = and i32 %25, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %279, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %197 = load i16, ptr %196, align 2, !tbaa !107
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  tail call void @texttool_suggest_clear() #7
  br label %279

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  %203 = getelementptr inbounds %struct.Text, ptr %202, i64 0, i32 5
  %204 = load ptr, ptr %203, align 8, !tbaa !83
  %205 = icmp eq ptr %204, null
  br i1 %205, label %278, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.Text, ptr %202, i64 0, i32 7
  %208 = load i32, ptr %207, align 8, !tbaa !51
  %209 = getelementptr inbounds %struct.TextLine, ptr %204, i64 0, i32 4
  %210 = load i32, ptr %209, align 8, !tbaa !88
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %212, label %278

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.TextLine, ptr %204, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !84
  %215 = sext i32 %208 to i64
  %216 = getelementptr i8, ptr %214, i64 %215
  %217 = getelementptr i8, ptr %216, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !91
  %219 = icmp eq i8 %218, 95
  br i1 %219, label %228, label %220

220:                                              ; preds = %212
  %221 = tail call ptr @__ctype_b_loc() #9
  %222 = load ptr, ptr %221, align 8, !tbaa !45
  %223 = zext i8 %218 to i64
  %224 = getelementptr inbounds i16, ptr %222, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !108
  %226 = and i16 %225, 4
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %277

228:                                              ; preds = %220, %212
  %229 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %218) #7
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %277

231:                                              ; preds = %228
  %232 = load ptr, ptr %201, align 8, !tbaa !34
  %233 = icmp eq ptr %232, null
  br i1 %233, label %251, label %234

234:                                              ; preds = %231
  %235 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %232) #7
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %251, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.Text, ptr %232, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !83
  %240 = getelementptr inbounds %struct.TextLine, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !84
  %242 = getelementptr inbounds %struct.Text, ptr %232, i64 0, i32 7
  %243 = load i32, ptr %242, align 8, !tbaa !51
  %244 = add nsw i32 %243, 1
  %245 = tail call i32 @text_find_identifier_start(ptr noundef %241, i32 noundef %244) #7
  %246 = load i32, ptr %242, align 8, !tbaa !51
  %247 = sub i32 %246, %245
  %248 = add i32 %247, 1
  %249 = sext i32 %245 to i64
  %250 = getelementptr inbounds i8, ptr %241, i64 %249
  tail call void @texttool_suggest_prefix(ptr noundef %250, i32 noundef %248) #7
  br label %251

251:                                              ; preds = %231, %234, %237
  %252 = tail call ptr @texttool_suggest_first() #7
  %253 = tail call ptr @texttool_suggest_selected() #7
  %254 = tail call ptr @texttool_suggest_top() #7
  %255 = icmp ne ptr %252, null
  %256 = icmp ne ptr %252, %253
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %258, label %267

258:                                              ; preds = %251, %258
  %259 = phi i32 [ %263, %258 ], [ 0, %251 ]
  %260 = phi ptr [ %262, %258 ], [ %252, %251 ]
  %261 = getelementptr inbounds %struct.SuggItem, ptr %260, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !68
  %263 = add nuw nsw i32 %259, 1
  %264 = icmp ne ptr %262, null
  %265 = icmp ne ptr %262, %253
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %258, label %267, !llvm.loop !71

267:                                              ; preds = %258, %251
  %268 = phi i32 [ 0, %251 ], [ %263, %258 ]
  %269 = load i32, ptr %254, align 4, !tbaa !66
  %270 = add nsw i32 %269, 6
  %271 = icmp sgt i32 %268, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = add nsw i32 %268, -6
  store i32 %273, ptr %254, align 4, !tbaa !66
  br label %279

274:                                              ; preds = %267
  %275 = icmp slt i32 %268, %269
  br i1 %275, label %276, label %279

276:                                              ; preds = %274
  store i32 %268, ptr %254, align 4, !tbaa !66
  br label %279

277:                                              ; preds = %228, %220
  tail call void @texttool_suggest_clear() #7
  br label %279

278:                                              ; preds = %206, %200
  tail call void @texttool_suggest_clear() #7
  br label %279

279:                                              ; preds = %276, %274, %272, %277, %199, %278, %192
  %280 = phi i32 [ 2, %199 ], [ 2, %278 ], [ 1, %192 ], [ 2, %277 ], [ 1, %272 ], [ 1, %274 ], [ 1, %276 ]
  %281 = and i32 %25, 2
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %405, label %283

283:                                              ; preds = %279
  tail call void @texttool_docs_clear() #7
  store i32 0, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

284:                                              ; preds = %24
  br label %285

285:                                              ; preds = %24, %24, %284
  %286 = phi i32 [ 1, %24 ], [ 1, %24 ], [ 6, %284 ]
  %287 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %288 = load i16, ptr %287, align 2, !tbaa !105
  %289 = icmp eq i16 %288, 1
  br i1 %289, label %290, label %405

290:                                              ; preds = %285
  %291 = and i32 %25, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i32, ptr @doc_scroll, align 4, !tbaa !66
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

296:                                              ; preds = %290
  %297 = and i32 %25, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %405, label %299

299:                                              ; preds = %296
  %300 = tail call ptr @texttool_suggest_selected() #7
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = tail call ptr @texttool_suggest_first() #7
  tail call void @texttool_suggest_select(ptr noundef %303) #7
  br label %319

304:                                              ; preds = %299, %315
  %305 = phi ptr [ %317, %315 ], [ %300, %299 ]
  %306 = phi i32 [ %316, %315 ], [ %286, %299 ]
  %307 = tail call ptr @texttool_suggest_last() #7
  %308 = icmp eq ptr %305, %307
  br i1 %308, label %319, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.SuggItem, ptr %305, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !68
  %312 = icmp eq ptr %311, null
  %313 = icmp eq i32 %306, 0
  %314 = select i1 %312, i1 true, i1 %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %309
  %316 = add nsw i32 %306, -1
  tail call void @texttool_suggest_select(ptr noundef nonnull %311) #7
  %317 = load ptr, ptr %310, align 8, !tbaa !68
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %304, !llvm.loop !109

319:                                              ; preds = %315, %304, %309, %302
  %320 = tail call ptr @texttool_suggest_first() #7
  %321 = tail call ptr @texttool_suggest_selected() #7
  %322 = tail call ptr @texttool_suggest_top() #7
  %323 = icmp ne ptr %320, null
  %324 = icmp ne ptr %320, %321
  %325 = select i1 %323, i1 %324, i1 false
  br i1 %325, label %326, label %335

326:                                              ; preds = %319, %326
  %327 = phi i32 [ %331, %326 ], [ 0, %319 ]
  %328 = phi ptr [ %330, %326 ], [ %320, %319 ]
  %329 = getelementptr inbounds %struct.SuggItem, ptr %328, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !68
  %331 = add nuw nsw i32 %327, 1
  %332 = icmp ne ptr %330, null
  %333 = icmp ne ptr %330, %321
  %334 = select i1 %332, i1 %333, i1 false
  br i1 %334, label %326, label %335, !llvm.loop !71

335:                                              ; preds = %326, %319
  %336 = phi i32 [ 0, %319 ], [ %331, %326 ]
  %337 = load i32, ptr %322, align 4, !tbaa !66
  %338 = add nsw i32 %337, 6
  %339 = icmp sgt i32 %336, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %335
  %341 = add nsw i32 %336, -6
  store i32 %341, ptr %322, align 4, !tbaa !66
  br label %405

342:                                              ; preds = %335
  %343 = icmp slt i32 %336, %337
  br i1 %343, label %344, label %405

344:                                              ; preds = %342
  store i32 %336, ptr %322, align 4, !tbaa !66
  br label %405

345:                                              ; preds = %24
  br label %346

346:                                              ; preds = %24, %24, %345
  %347 = phi i32 [ 1, %24 ], [ 1, %24 ], [ 6, %345 ]
  %348 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %349 = load i16, ptr %348, align 2, !tbaa !105
  %350 = icmp eq i16 %349, 1
  br i1 %350, label %351, label %405

351:                                              ; preds = %346
  %352 = and i32 %25, 2
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %359, label %354

354:                                              ; preds = %351
  %355 = load i32, ptr @doc_scroll, align 4, !tbaa !66
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %405

357:                                              ; preds = %354
  %358 = add nsw i32 %355, -1
  store i32 %358, ptr @doc_scroll, align 4, !tbaa !66
  br label %405

359:                                              ; preds = %351
  %360 = and i32 %25, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %405, label %362

362:                                              ; preds = %359
  %363 = tail call ptr @texttool_suggest_selected() #7
  %364 = icmp eq ptr %363, null
  br i1 %364, label %379, label %365

365:                                              ; preds = %362, %375
  %366 = phi ptr [ %377, %375 ], [ %363, %362 ]
  %367 = phi i32 [ %376, %375 ], [ %347, %362 ]
  %368 = tail call ptr @texttool_suggest_first() #7
  %369 = icmp eq ptr %366, %368
  br i1 %369, label %379, label %370

370:                                              ; preds = %365
  %371 = load ptr, ptr %366, align 8, !tbaa !110
  %372 = icmp eq ptr %371, null
  %373 = icmp eq i32 %367, 0
  %374 = select i1 %372, i1 true, i1 %373
  br i1 %374, label %379, label %375

375:                                              ; preds = %370
  %376 = add nsw i32 %367, -1
  tail call void @texttool_suggest_select(ptr noundef nonnull %371) #7
  %377 = load ptr, ptr %366, align 8, !tbaa !110
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %365, !llvm.loop !111

379:                                              ; preds = %375, %365, %370, %362
  %380 = tail call ptr @texttool_suggest_first() #7
  %381 = tail call ptr @texttool_suggest_selected() #7
  %382 = tail call ptr @texttool_suggest_top() #7
  %383 = icmp ne ptr %380, null
  %384 = icmp ne ptr %380, %381
  %385 = select i1 %383, i1 %384, i1 false
  br i1 %385, label %386, label %395

386:                                              ; preds = %379, %386
  %387 = phi i32 [ %391, %386 ], [ 0, %379 ]
  %388 = phi ptr [ %390, %386 ], [ %380, %379 ]
  %389 = getelementptr inbounds %struct.SuggItem, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !68
  %391 = add nuw nsw i32 %387, 1
  %392 = icmp ne ptr %390, null
  %393 = icmp ne ptr %390, %381
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %386, label %395, !llvm.loop !71

395:                                              ; preds = %386, %379
  %396 = phi i32 [ 0, %379 ], [ %391, %386 ]
  %397 = load i32, ptr %382, align 4, !tbaa !66
  %398 = add nsw i32 %397, 6
  %399 = icmp sgt i32 %396, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %395
  %401 = add nsw i32 %396, -6
  store i32 %401, ptr %382, align 4, !tbaa !66
  br label %405

402:                                              ; preds = %395
  %403 = icmp slt i32 %396, %397
  br i1 %403, label %404, label %405

404:                                              ; preds = %402
  store i32 %396, ptr %382, align 4, !tbaa !66
  br label %405

405:                                              ; preds = %404, %402, %400, %344, %342, %340, %354, %357, %89, %93, %71, %75, %72, %50, %63, %60, %32, %42, %39, %346, %359, %285, %296, %293, %188, %283, %279, %94, %187, %183, %76, %64, %43, %28, %24
  %406 = phi i32 [ 1, %24 ], [ 1, %359 ], [ 1, %346 ], [ 1, %293 ], [ 1, %296 ], [ 1, %285 ], [ %280, %283 ], [ %280, %279 ], [ 1, %188 ], [ %184, %187 ], [ %184, %183 ], [ 1, %94 ], [ 1, %76 ], [ 1, %64 ], [ 1, %43 ], [ 1, %28 ], [ 1, %32 ], [ 4, %42 ], [ 4, %39 ], [ 1, %50 ], [ 4, %63 ], [ 4, %60 ], [ 2, %72 ], [ 2, %75 ], [ 2, %71 ], [ 4, %93 ], [ 4, %89 ], [ 1, %357 ], [ 1, %354 ], [ 1, %340 ], [ 1, %342 ], [ 1, %344 ], [ 1, %400 ], [ 1, %402 ], [ 1, %404 ]
  %407 = phi i32 [ 0, %24 ], [ 0, %359 ], [ 0, %346 ], [ 1, %293 ], [ 0, %296 ], [ 0, %285 ], [ 0, %283 ], [ 0, %279 ], [ 0, %188 ], [ 0, %187 ], [ 0, %183 ], [ 0, %94 ], [ 0, %76 ], [ 0, %64 ], [ 0, %43 ], [ 0, %28 ], [ 1, %32 ], [ 1, %42 ], [ 1, %39 ], [ 1, %50 ], [ 1, %63 ], [ 1, %60 ], [ 0, %72 ], [ 1, %75 ], [ 1, %71 ], [ 1, %93 ], [ %90, %89 ], [ 1, %357 ], [ 1, %354 ], [ 1, %340 ], [ 1, %342 ], [ 1, %344 ], [ 1, %400 ], [ 1, %402 ], [ 1, %404 ]
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %405
  tail call void @ED_area_tag_redraw(ptr noundef %5) #7
  br label %410

410:                                              ; preds = %409, %405
  %411 = tail call ptr @texttool_suggest_first() #7
  %412 = icmp eq ptr %411, null
  br i1 %412, label %419, label %413

413:                                              ; preds = %410
  %414 = icmp eq i32 %406, 1
  br i1 %414, label %432, label %415

415:                                              ; preds = %413
  %416 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %417 = load ptr, ptr %416, align 8, !tbaa !101
  %418 = icmp eq ptr %417, null
  br i1 %418, label %428, label %423

419:                                              ; preds = %410
  %420 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %421 = load ptr, ptr %420, align 8, !tbaa !101
  %422 = icmp eq ptr %421, null
  br i1 %422, label %428, label %423

423:                                              ; preds = %419, %415
  %424 = phi ptr [ %417, %415 ], [ %421, %419 ]
  %425 = phi ptr [ %416, %415 ], [ %420, %419 ]
  %426 = phi i32 [ %406, %415 ], [ 4, %419 ]
  %427 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef nonnull %424, ptr noundef null, ptr noundef %427) #7
  store ptr null, ptr %425, align 8, !tbaa !101
  br label %428

428:                                              ; preds = %423, %419, %415
  %429 = phi i32 [ %406, %415 ], [ 4, %419 ], [ %426, %423 ]
  %430 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #7
  %431 = getelementptr inbounds %struct.SpaceText, ptr %430, i64 0, i32 25
  store i32 0, ptr %431, align 4, !tbaa !82
  tail call void @texttool_text_clear() #7
  br label %432

432:                                              ; preds = %428, %413
  %433 = phi i32 [ %406, %413 ], [ %429, %428 ]
  ret i32 %433
}

declare i32 @text_space_edit_poll(ptr noundef) #2

declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_text(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @confirm_suggestion(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = tail call signext i16 @texttool_text_is_active(ptr noundef nonnull %0) #7
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @texttool_suggest_selected() #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = tail call i32 @text_find_identifier_start(ptr noundef %13, i32 noundef %15) #7
  %17 = load i32, ptr %14, align 8, !tbaa !51
  %18 = sub nsw i32 %17, %16
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9, %20
  %21 = phi i32 [ %22, %20 ], [ 0, %9 ]
  tail call void @txt_move_left(ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  %22 = add nuw nsw i32 %21, 1
  %23 = icmp eq i32 %22, %18
  br i1 %23, label %24, label %20, !llvm.loop !112

24:                                               ; preds = %20, %9
  %25 = getelementptr inbounds %struct.SuggItem, ptr %7, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  tail call void @txt_insert_buf(ptr noundef nonnull %0, ptr noundef %26) #7
  tail call void @texttool_text_clear() #7
  br label %27

27:                                               ; preds = %6, %3, %1, %24
  ret void
}

declare void @text_update_line_edited(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @texttool_text_clear() local_unnamed_addr #2

declare void @texttool_text_set_active(ptr noundef) local_unnamed_addr #2

declare i32 @text_find_identifier_start(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

declare i32 @text_check_identifier_nodigit_unicode(i32 noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @text_check_identifier_unicode(i32 noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_as_unicode(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

declare ptr @ED_text_format_get(ptr noundef) local_unnamed_addr #2

declare void @texttool_suggest_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

declare void @texttool_suggest_prefix(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @txt_move_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_insert_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @texttool_docs_get() local_unnamed_addr #2

declare void @texttool_suggest_clear() local_unnamed_addr #2

declare void @texttool_docs_clear() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare zeroext i8 @text_check_whitespace(i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

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
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!35, !40, i64 84}
!50 = !{!35, !37, i64 78}
!51 = !{!52, !40, i64 168}
!52 = !{!"Text", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 132, !39, i64 136, !36, i64 152, !36, i64 160, !40, i64 168, !40, i64 172, !36, i64 176, !40, i64 184, !40, i64 188, !36, i64 192, !54, i64 200}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!54 = !{!"double", !37, i64 0}
!55 = !{!35, !40, i64 80}
!56 = !{!57, !42, i64 8948}
!57 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !42, i64 8496, !42, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !37, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !40, i64 8912, !40, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !42, i64 8968, !42, i64 8970, !41, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !58, i64 8984, !37, i64 9760, !37, i64 9772, !42, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !59, i64 10928}
!58 = !{!"ColorBand", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!59 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !42, i64 24, !37, i64 26}
!60 = !{!35, !37, i64 79}
!61 = !{!62, !42, i64 210}
!62 = !{!"ARegion", !36, i64 0, !36, i64 8, !63, i64 16, !43, i64 176, !43, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!65 = !{!35, !42, i64 658}
!66 = !{!40, !40, i64 0}
!67 = distinct !{!67, !47, !48}
!68 = !{!69, !36, i64 8}
!69 = !{!"SuggItem", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!70 = distinct !{!70, !47, !48}
!71 = distinct !{!71, !47, !48}
!72 = !{!73, !36, i64 0}
!73 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !74, i64 152, !42, i64 184}
!74 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!75 = !{!73, !36, i64 24}
!76 = !{!73, !36, i64 8}
!77 = !{!73, !36, i64 48}
!78 = !{!73, !36, i64 56}
!79 = !{!73, !36, i64 64}
!80 = !{!73, !36, i64 72}
!81 = !{!73, !42, i64 184}
!82 = !{!35, !40, i64 140}
!83 = !{!52, !36, i64 152}
!84 = !{!85, !36, i64 16}
!85 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36}
!86 = !{!87, !87, i64 0}
!87 = !{!"long", !37, i64 0}
!88 = !{!85, !40, i64 32}
!89 = distinct !{!89, !47, !48}
!90 = distinct !{!90, !47, !48}
!91 = !{!37, !37, i64 0}
!92 = distinct !{!92, !47, !48}
!93 = distinct !{!93, !47, !48}
!94 = !{!95, !36, i64 8}
!95 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!96 = !{!97, !36, i64 16}
!97 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!98 = !{!99, !36, i64 16}
!99 = !{!"TextFormatType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!100 = distinct !{!100, !47, !48}
!101 = !{!102, !36, i64 96}
!102 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !42, i64 160, !37, i64 162}
!103 = !{!104, !42, i64 16}
!104 = !{!"wmEvent", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !42, i64 44, !42, i64 46, !40, i64 48, !40, i64 52, !54, i64 56, !40, i64 64, !40, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !36, i64 88, !36, i64 96, !42, i64 104, !42, i64 106, !40, i64 108, !36, i64 112}
!105 = !{!104, !42, i64 18}
!106 = !{i32 0, i32 2}
!107 = !{!104, !42, i64 74}
!108 = !{!42, !42, i64 0}
!109 = distinct !{!109, !47, !48}
!110 = !{!69, !36, i64 0}
!111 = distinct !{!111, !47, !48}
!112 = distinct !{!112, !47, !48}
!113 = !{!69, !36, i64 16}
