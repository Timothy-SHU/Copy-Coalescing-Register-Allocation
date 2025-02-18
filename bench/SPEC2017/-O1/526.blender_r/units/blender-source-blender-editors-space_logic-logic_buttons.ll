; ModuleID = 'blender/source/blender/editors/space_logic/logic_buttons.c'
source_filename = "blender/source/blender/editors/space_logic/logic_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uiLink = type { ptr, ptr, ptr, i16, i16, i16, i16, %struct.ListBase }
%struct.uiLinkLine = type { ptr, ptr, ptr, ptr, i16, i16 }

@.str = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Toggle display properties panel\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"LOGIC_OT_properties\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Cut Links\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"LOGIC_OT_links_cut\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Remove logic brick connections\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"loc\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LOGIC_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @logic_properties_toggle_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_logic_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @logic_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %4 = tail call ptr @logic_has_buttons_region(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

declare i32 @ED_operator_logic_active(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @LOGIC_OT_links_cut(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cut_links_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lines_cancel, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_logic_active, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_property(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 6, i32 noundef 0) #5
  tail call void @RNA_def_property_struct_runtime(ptr noundef %12, ptr noundef nonnull @RNA_OperatorMousePath) #5
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 2147483647) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @cut_links_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [13 x [2 x float]], align 16
  %4 = alloca %struct.rcti, align 4
  %5 = alloca [256 x [2 x float]], align 16
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [2 x float], align 4
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #5
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  call void @RNA_collection_begin(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #5
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  br label %19

19:                                               ; preds = %15, %30
  %20 = phi i64 [ 0, %15 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @RNA_float_get_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #5
  %21 = load float, ptr %8, align 4, !tbaa !60
  %22 = fptosi float %21 to i32
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %18, align 4, !tbaa !60
  %25 = fptosi float %24 to i32
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds [256 x [2 x float]], ptr %5, i64 0, i64 %20
  %28 = getelementptr inbounds [256 x [2 x float]], ptr %5, i64 0, i64 %20, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %23, float noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #5
  %29 = icmp eq i64 %20, 255
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = add nuw nsw i64 %20, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #5
  %32 = load i32, ptr %12, align 8, !tbaa !53
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %19, !llvm.loop !62

34:                                               ; preds = %30
  %35 = trunc i64 %31 to i32
  br label %36

36:                                               ; preds = %34, %19, %2
  %37 = phi i32 [ 0, %2 ], [ %35, %34 ], [ 256, %19 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #5
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %130

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 21
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %130, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %45 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %47 = add nsw i32 %37, -1
  %48 = zext i32 %47 to i64
  br label %52

49:                                               ; preds = %127, %52
  %50 = load ptr, ptr %53, align 8, !tbaa !59
  %51 = icmp eq ptr %50, null
  br i1 %51, label %130, label %52, !llvm.loop !65

52:                                               ; preds = %43, %49
  %53 = phi ptr [ %41, %43 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.uiBlock, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = icmp eq ptr %55, null
  br i1 %56, label %49, label %57

57:                                               ; preds = %52, %127
  %58 = phi ptr [ %128, %127 ], [ %55, %52 ]
  %59 = getelementptr inbounds %struct.uiBut, ptr %58, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !66
  %61 = icmp eq i32 %60, 11264
  br i1 %61, label %62, label %127

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.uiBut, ptr %58, i64 0, i32 40
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = icmp eq ptr %64, null
  br i1 %65, label %127, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.uiLink, ptr %64, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !70
  %69 = icmp eq ptr %68, null
  br i1 %69, label %127, label %70

70:                                               ; preds = %66, %125
  %71 = phi ptr [ %72, %125 ], [ %68, %66 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %73 = getelementptr inbounds %struct.uiLinkLine, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !74
  %75 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 18
  %76 = load float, ptr %75, align 4, !tbaa !75
  %77 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 18, i32 1
  %78 = load float, ptr %77, align 4, !tbaa !76
  %79 = fadd float %76, %78
  %80 = fmul float %79, 5.000000e-01
  %81 = fptosi float %80 to i32
  store i32 %81, ptr %4, align 4, !tbaa !77
  %82 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 18, i32 2
  %83 = load float, ptr %82, align 4, !tbaa !79
  %84 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 18, i32 3
  %85 = load float, ptr %84, align 4, !tbaa !80
  %86 = fadd float %83, %85
  %87 = fmul float %86, 5.000000e-01
  %88 = fptosi float %87 to i32
  store i32 %88, ptr %44, align 4, !tbaa !81
  %89 = getelementptr inbounds %struct.uiLinkLine, ptr %71, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !82
  %91 = getelementptr inbounds %struct.uiBut, ptr %90, i64 0, i32 18
  %92 = load float, ptr %91, align 4, !tbaa !75
  %93 = getelementptr inbounds %struct.uiBut, ptr %90, i64 0, i32 18, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !76
  %95 = fadd float %92, %94
  %96 = fmul float %95, 5.000000e-01
  %97 = fptosi float %96 to i32
  store i32 %97, ptr %45, align 4, !tbaa !83
  %98 = getelementptr inbounds %struct.uiBut, ptr %90, i64 0, i32 18, i32 2
  %99 = load float, ptr %98, align 4, !tbaa !79
  %100 = getelementptr inbounds %struct.uiBut, ptr %90, i64 0, i32 18, i32 3
  %101 = load float, ptr %100, align 4, !tbaa !80
  %102 = fadd float %99, %101
  %103 = fmul float %102, 5.000000e-01
  %104 = fptosi float %103 to i32
  store i32 %104, ptr %46, align 4, !tbaa !84
  %105 = call zeroext i8 @ui_link_bezier_points(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 12) #5
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %70, %120
  %108 = phi i64 [ %121, %120 ], [ 0, %70 ]
  %109 = getelementptr inbounds [2 x float], ptr %5, i64 %108
  %110 = getelementptr [2 x float], ptr %109, i64 1
  br label %111

111:                                              ; preds = %107, %114
  %112 = phi i64 [ 0, %107 ], [ %116, %114 ]
  %113 = icmp eq i64 %112, 11
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %112
  %116 = add nuw nsw i64 %112, 1
  %117 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %116
  %118 = call i32 @isect_line_line_v2(ptr noundef nonnull %109, ptr noundef %110, ptr noundef nonnull %115, ptr noundef nonnull %117) #5
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %124, label %111, !llvm.loop !85

120:                                              ; preds = %111
  %121 = add nuw nsw i64 %108, 1
  %122 = icmp eq i64 %121, %48
  br i1 %122, label %123, label %107, !llvm.loop !86

123:                                              ; preds = %120, %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #5
  br label %125

124:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #5
  call void @ui_delete_linkline(ptr noundef nonnull %71, ptr noundef nonnull %58) #5
  br label %125

125:                                              ; preds = %123, %124
  %126 = icmp eq ptr %72, null
  br i1 %126, label %127, label %70, !llvm.loop !87

127:                                              ; preds = %125, %66, %62, %57
  %128 = load ptr, ptr %58, align 8, !tbaa !59
  %129 = icmp eq ptr %128, null
  br i1 %129, label %49, label %57, !llvm.loop !88

130:                                              ; preds = %49, %39, %36
  %131 = phi i32 [ 10, %36 ], [ 4, %39 ], [ 4, %49 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #5
  ret i32 %131
}

declare void @WM_gesture_lines_cancel(ptr noundef, ptr noundef) #2

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @logic_has_buttons_region(ptr noundef) local_unnamed_addr #2

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @ui_delete_linkline(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ui_link_bezier_points(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 48}
!48 = !{!35, !36, i64 64}
!49 = !{!35, !36, i64 56}
!50 = !{!35, !36, i64 88}
!51 = !{!52, !36, i64 112}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!54, !57, i64 128}
!54 = !{!"CollectionPropertyIterator", !55, i64 0, !55, i64 24, !36, i64 48, !37, i64 56, !57, i64 96, !57, i64 100, !55, i64 104, !57, i64 128}
!55 = !{!"PointerRNA", !56, i64 0, !36, i64 8, !36, i64 16}
!56 = !{!"", !36, i64 0}
!57 = !{!"int", !37, i64 0}
!58 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !59}
!59 = !{!36, !36, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !37, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !63, !64}
!66 = !{!67, !57, i64 24}
!67 = !{!"uiBut", !36, i64 0, !36, i64 8, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !41, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !68, i64 592, !36, i64 608, !61, i64 616, !61, i64 620, !61, i64 624, !61, i64 628, !61, i64 632, !61, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !57, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !41, i64 794, !41, i64 796, !36, i64 800, !36, i64 808, !55, i64 816, !36, i64 840, !57, i64 848, !55, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !41, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !61, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!68 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!69 = !{!67, !36, i64 752}
!70 = !{!71, !36, i64 32}
!71 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !39, i64 32}
!72 = !{!73, !36, i64 0}
!73 = !{!"uiLinkLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 34}
!74 = !{!73, !36, i64 16}
!75 = !{!68, !61, i64 0}
!76 = !{!68, !61, i64 4}
!77 = !{!78, !57, i64 0}
!78 = !{!"rcti", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!79 = !{!68, !61, i64 8}
!80 = !{!68, !61, i64 12}
!81 = !{!78, !57, i64 8}
!82 = !{!73, !36, i64 24}
!83 = !{!78, !57, i64 4}
!84 = !{!78, !57, i64 12}
!85 = distinct !{!85, !63, !64}
!86 = distinct !{!86, !63, !64}
!87 = distinct !{!87, !63, !64}
!88 = distinct !{!88, !63, !64}
