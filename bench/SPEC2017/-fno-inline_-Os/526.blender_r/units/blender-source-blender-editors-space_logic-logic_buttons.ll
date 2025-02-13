; ModuleID = 'blender/source/blender/editors/space_logic/logic_buttons.c'
source_filename = "blender/source/blender/editors/space_logic/logic_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @logic_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %4 = tail call ptr @logic_has_buttons_region(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #6
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_logic_active(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LOGIC_OT_links_cut(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cut_links_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lines_cancel, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_logic_active, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call ptr @RNA_def_property(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 6, i32 noundef 0) #6
  tail call void @RNA_def_property_struct_runtime(ptr noundef %12, ptr noundef nonnull @RNA_OperatorMousePath) #6
  %13 = load ptr, ptr %10, align 8, !tbaa !51
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 2147483647) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cut_links_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !52 {
  %3 = alloca [256 x [2 x float]], align 16
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  call void @RNA_collection_begin(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #6
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #7
  br label %74

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %16 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %17 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %18

18:                                               ; preds = %14, %30
  %19 = phi i64 [ 0, %14 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, ptr noundef nonnull %6) #6
  %20 = load float, ptr %6, align 4, !tbaa !62
  %21 = fptosi float %20 to i32
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %17, align 4, !tbaa !62
  %24 = fptosi float %23 to i32
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds [256 x [2 x float]], ptr %3, i64 0, i64 %19
  %27 = getelementptr inbounds [256 x [2 x float]], ptr %3, i64 0, i64 %19, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %22, float noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  %28 = icmp eq i64 %19, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #7
  br label %37

30:                                               ; preds = %18
  %31 = add nuw nsw i64 %19, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #6
  %32 = load i32, ptr %10, align 8, !tbaa !55
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %18, !llvm.loop !64

34:                                               ; preds = %30
  %35 = trunc i64 %31 to i32
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #7
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %74

37:                                               ; preds = %29, %34
  %38 = phi i32 [ 256, %29 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  br i1 %41, label %74, label %45

42:                                               ; preds = %71, %45
  %43 = load ptr, ptr %46, align 8, !tbaa !61
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45, !llvm.loop !66

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %40, %37 ]
  %47 = getelementptr inbounds %struct.uiBlock, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = icmp eq ptr %48, null
  br i1 %49, label %42, label %50

50:                                               ; preds = %45, %71
  %51 = phi ptr [ %72, %71 ], [ %48, %45 ]
  %52 = getelementptr inbounds %struct.uiBut, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !67
  %54 = icmp eq i32 %53, 11264
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.uiBut, ptr %51, i64 0, i32 40
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.uiLink, ptr %57, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %59, %69
  %64 = phi ptr [ %65, %69 ], [ %61, %59 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !73
  %66 = call fastcc i32 @cut_links_intersect(ptr noundef nonnull %64, ptr noundef nonnull %3, i32 noundef %38) #8, !range !75
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call void @ui_delete_linkline(ptr noundef nonnull %64, ptr noundef nonnull %51) #6
  br label %69

69:                                               ; preds = %63, %68
  %70 = icmp eq ptr %65, null
  br i1 %70, label %71, label %63, !llvm.loop !76

71:                                               ; preds = %69, %59, %55, %50
  %72 = load ptr, ptr %51, align 8, !tbaa !61
  %73 = icmp eq ptr %72, null
  br i1 %73, label %42, label %50, !llvm.loop !77

74:                                               ; preds = %42, %13, %37, %34
  %75 = phi i32 [ 10, %34 ], [ 4, %37 ], [ 10, %13 ], [ 4, %42 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #7
  ret i32 %75
}

; Function Attrs: optsize
declare void @WM_gesture_lines_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @logic_has_buttons_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cut_links_intersect(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !78 {
  %4 = alloca [13 x [2 x float]], align 16
  %5 = alloca %struct.rcti, align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 18
  %9 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %8) #8
  %10 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %8) #8
  %11 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 18
  %14 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %13) #8
  %15 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %13) #8
  %16 = insertelement <4 x float> poison, float %9, i64 0
  %17 = insertelement <4 x float> %16, float %14, i64 1
  %18 = insertelement <4 x float> %17, float %10, i64 2
  %19 = insertelement <4 x float> %18, float %15, i64 3
  %20 = fptosi <4 x float> %19 to <4 x i32>
  store <4 x i32> %20, ptr %5, align 16, !tbaa !81
  %21 = call zeroext i8 @ui_link_bezier_points(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 12) #6
  %22 = icmp ne i8 %21, 0
  %23 = icmp sgt i32 %2, 1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %3
  %26 = add nsw i32 %2, -1
  %27 = zext nneg i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %41
  %29 = phi i64 [ 0, %25 ], [ %42, %41 ]
  %30 = getelementptr inbounds [2 x float], ptr %1, i64 %29
  %31 = getelementptr [2 x float], ptr %30, i64 1
  br label %32

32:                                               ; preds = %28, %35
  %33 = phi i64 [ 0, %28 ], [ %37, %35 ]
  %34 = icmp eq i64 %33, 11
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds [13 x [2 x float]], ptr %4, i64 0, i64 %33
  %37 = add nuw nsw i64 %33, 1
  %38 = getelementptr inbounds [13 x [2 x float]], ptr %4, i64 0, i64 %37
  %39 = call i32 @isect_line_line_v2(ptr noundef %30, ptr noundef %31, ptr noundef nonnull %36, ptr noundef nonnull %38) #6
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %32, !llvm.loop !82

41:                                               ; preds = %32
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, %27
  br i1 %43, label %44, label %28, !llvm.loop !83

44:                                               ; preds = %41, %35, %3
  %45 = phi i32 [ 0, %3 ], [ 1, %35 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #7
  ret i32 %45
}

; Function Attrs: optsize
declare void @ui_delete_linkline(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !84 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !86
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: optsize
declare zeroext i8 @ui_link_bezier_points(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

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
!47 = !{!"logic_buttons.c:logic_properties_toggle_exec"}
!48 = !{!35, !36, i64 48}
!49 = !{!35, !36, i64 64}
!50 = !{!35, !36, i64 56}
!51 = !{!35, !36, i64 88}
!52 = !{!"logic_buttons.c:cut_links_exec"}
!53 = !{!54, !36, i64 112}
!54 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!55 = !{!56, !59, i64 128}
!56 = !{!"CollectionPropertyIterator", !57, i64 0, !57, i64 24, !36, i64 48, !37, i64 56, !59, i64 96, !59, i64 100, !57, i64 104, !59, i64 128}
!57 = !{!"PointerRNA", !58, i64 0, !36, i64 8, !36, i64 16}
!58 = !{!"", !36, i64 0}
!59 = !{!"int", !37, i64 0}
!60 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61}
!61 = !{!36, !36, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !37, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{!66, !65}
!67 = !{!68, !59, i64 24}
!68 = !{!"uiBut", !36, i64 0, !36, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !41, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !69, i64 592, !36, i64 608, !63, i64 616, !63, i64 620, !63, i64 624, !63, i64 628, !63, i64 632, !63, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !59, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !41, i64 794, !41, i64 796, !36, i64 800, !36, i64 808, !57, i64 816, !36, i64 840, !59, i64 848, !57, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !41, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !63, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!69 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!70 = !{!68, !36, i64 752}
!71 = !{!72, !36, i64 32}
!72 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !39, i64 32}
!73 = !{!74, !36, i64 0}
!74 = !{!"uiLinkLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 34}
!75 = !{i32 0, i32 2}
!76 = distinct !{!76, !65}
!77 = distinct !{!77, !65}
!78 = !{!"logic_buttons.c:cut_links_intersect"}
!79 = !{!74, !36, i64 16}
!80 = !{!74, !36, i64 24}
!81 = !{!59, !59, i64 0}
!82 = distinct !{!82, !65}
!83 = distinct !{!83, !65}
!84 = !{!"logic_buttons.c:BLI_rctf_cent_x"}
!85 = !{!69, !63, i64 0}
!86 = !{!69, !63, i64 4}
!87 = !{!"logic_buttons.c:BLI_rctf_cent_y"}
!88 = !{!69, !63, i64 8}
!89 = !{!69, !63, i64 12}
