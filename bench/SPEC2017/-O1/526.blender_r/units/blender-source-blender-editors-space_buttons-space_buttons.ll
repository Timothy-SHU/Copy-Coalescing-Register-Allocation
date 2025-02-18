; ModuleID = 'blender/source/blender/editors/space_buttons/space_buttons.c'
source_filename = "blender/source/blender/editors/space_buttons/space_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"spacetype buttons\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"spacetype buttons region\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"initbuts\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"header for buts\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"main area for buts\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Property Editor\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"BUTTONS_OT_toolbox\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"render\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"render_layer\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"particle\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"physics\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"bone_constraint\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Buttons\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_buttons() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 4, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @buttons_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @buttons_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @buttons_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @buttons_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @buttons_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @buttons_keymap, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @buttons_area_listener, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @buttons_context, ptr %12, align 8, !tbaa !49
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @buttons_main_area_init, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @buttons_main_area_draw, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 17, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %14) #5
  tail call void @buttons_context_register(ptr noundef %14) #5
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %22 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 2
  store i32 1, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 19
  store i32 26, ptr %23, align 4, !tbaa !56
  %24 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 20
  store i32 83, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 3
  store ptr @buttons_header_area_init, ptr %25, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 5
  store ptr @buttons_header_area_draw, ptr %26, align 8, !tbaa !54
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %21) #5
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @buttons_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 272, ptr noundef nonnull @.str.3) #5
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 3
  store i32 4, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 11
  store i16 2, ptr %5, align 8, !tbaa !63
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.4) #5
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  store i16 1, ptr %9, align 2, !tbaa !64
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  store i16 1, ptr %10, align 8, !tbaa !66
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !64
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @buttons_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceButs, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #5
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @buttons_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !63
  switch i16 %6, label %14 [
    i16 3, label %7
    i16 0, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !71
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 11
  %11 = load i16, ptr %10, align 4, !tbaa !72
  %12 = icmp sgt i16 %9, %11
  %13 = select i1 %12, i16 1, i16 2
  store i16 %13, ptr %5, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @buttons_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 17
  store ptr null, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 21
  store ptr null, ptr %5, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @buttons_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @BUTTONS_OT_toolbox) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @BUTTONS_OT_file_browse) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @BUTTONS_OT_directory_browse) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buttons_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef 0) #5
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buttons_area_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !73
  %8 = add i32 %7, -33554432
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 8)
  switch i32 %9, label %207 [
    i32 2, label %10
    i32 3, label %41
    i32 14, label %136
    i32 4, label %140
    i32 11, label %145
    i32 6, label %152
    i32 7, label %159
    i32 9, label %164
    i32 5, label %171
    i32 8, label %171
    i32 13, label %177
    i32 16, label %182
    i32 12, label %187
    i32 15, label %195
    i32 0, label %205
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !75
  switch i32 %12, label %40 [
    i32 262144, label %13
    i32 6029312, label %24
    i32 196608, label %31
    i32 458752, label %33
    i32 917504, label %35
    i32 786432, label %207
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %15 = load i16, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr %4, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.SpaceButs, ptr %19, i64 0, i32 7
  %21 = load i16, ptr %20, align 8, !tbaa !76
  %22 = icmp eq i16 %21, 13
  br i1 %22, label %23, label %207

23:                                               ; preds = %18
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %26 = load i16, ptr %25, align 8, !tbaa !76
  %27 = icmp eq i16 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %30, align 2, !tbaa !77
  br label %207

31:                                               ; preds = %10
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  %32 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %32, align 2, !tbaa !77
  br label %207

33:                                               ; preds = %10
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  %34 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %34, align 2, !tbaa !77
  br label %207

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %37 = load i16, ptr %36, align 8, !tbaa !76
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %207

39:                                               ; preds = %35
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

40:                                               ; preds = %10
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !75
  %44 = add i32 %43, -1179648
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 16)
  switch i32 %45, label %135 [
    i32 0, label %46
    i32 2, label %57
    i32 3, label %62
    i32 4, label %62
    i32 6, label %79
    i32 8, label %94
    i32 9, label %105
    i32 5, label %116
    i32 12, label %133
    i32 13, label %133
    i32 14, label %133
    i32 15, label %133
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %48 = load i16, ptr %47, align 8, !tbaa !76
  %49 = icmp eq i16 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %51

51:                                               ; preds = %46, %50
  %52 = load ptr, ptr %4, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.SpaceButs, ptr %52, i64 0, i32 7
  %54 = load i16, ptr %53, align 8, !tbaa !76
  %55 = icmp eq i16 %54, 4
  br i1 %55, label %56, label %207

56:                                               ; preds = %51
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

57:                                               ; preds = %41
  %58 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %59 = load i16, ptr %58, align 8, !tbaa !76
  %60 = icmp eq i16 %59, 4
  br i1 %60, label %61, label %207

61:                                               ; preds = %57
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

62:                                               ; preds = %41, %41
  %63 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %64 = load i16, ptr %63, align 8, !tbaa !76
  %65 = icmp eq i16 %64, 9
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %67

67:                                               ; preds = %62, %66
  %68 = load ptr, ptr %4, align 8, !tbaa !69
  %69 = getelementptr inbounds %struct.SpaceButs, ptr %68, i64 0, i32 7
  %70 = load i16, ptr %69, align 8, !tbaa !76
  %71 = icmp eq i16 %70, 12
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %73

73:                                               ; preds = %67, %72
  %74 = load ptr, ptr %4, align 8, !tbaa !69
  %75 = getelementptr inbounds %struct.SpaceButs, ptr %74, i64 0, i32 7
  %76 = load i16, ptr %75, align 8, !tbaa !76
  %77 = icmp eq i16 %76, 4
  br i1 %77, label %78, label %207

78:                                               ; preds = %73
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

79:                                               ; preds = %41
  %80 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %81 = load i32, ptr %80, align 8, !tbaa !78
  %82 = icmp eq i32 %81, 5
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %85 = load i16, ptr %84, align 8, !tbaa !76
  %86 = icmp eq i16 %85, 10
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %88

88:                                               ; preds = %87, %83
  %89 = load ptr, ptr %4, align 8, !tbaa !69
  %90 = getelementptr inbounds %struct.SpaceButs, ptr %89, i64 0, i32 7
  %91 = load i16, ptr %90, align 8, !tbaa !76
  %92 = icmp eq i16 %91, 8
  br i1 %92, label %93, label %207

93:                                               ; preds = %88
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

94:                                               ; preds = %41
  %95 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %96 = load i16, ptr %95, align 8, !tbaa !76
  %97 = icmp eq i16 %96, 11
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %99

99:                                               ; preds = %94, %98
  %100 = load ptr, ptr %4, align 8, !tbaa !69
  %101 = getelementptr inbounds %struct.SpaceButs, ptr %100, i64 0, i32 7
  %102 = load i16, ptr %101, align 8, !tbaa !76
  %103 = icmp eq i16 %102, 12
  br i1 %103, label %104, label %207

104:                                              ; preds = %99
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

105:                                              ; preds = %41
  %106 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %107 = load i32, ptr %106, align 8, !tbaa !78
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %111 = load i16, ptr %110, align 8, !tbaa !76
  %112 = icmp eq i16 %111, 7
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %114

114:                                              ; preds = %113, %109, %105
  %115 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %115, align 2, !tbaa !77
  br label %207

116:                                              ; preds = %41
  %117 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %118 = load i16, ptr %117, align 8, !tbaa !76
  %119 = icmp eq i16 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %121

121:                                              ; preds = %116, %120
  %122 = load ptr, ptr %4, align 8, !tbaa !69
  %123 = getelementptr inbounds %struct.SpaceButs, ptr %122, i64 0, i32 7
  %124 = load i16, ptr %123, align 8, !tbaa !76
  %125 = icmp eq i16 %124, 4
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %127

127:                                              ; preds = %121, %126
  %128 = load ptr, ptr %4, align 8, !tbaa !69
  %129 = getelementptr inbounds %struct.SpaceButs, ptr %128, i64 0, i32 7
  %130 = load i16, ptr %129, align 8, !tbaa !76
  %131 = icmp eq i16 %130, 8
  br i1 %131, label %132, label %207

132:                                              ; preds = %127
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

133:                                              ; preds = %41, %41, %41, %41
  %134 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %134, align 2, !tbaa !77
  br label %207

135:                                              ; preds = %41
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

136:                                              ; preds = %3
  %137 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %138 = load i32, ptr %137, align 8, !tbaa !75
  switch i32 %138, label %207 [
    i32 5898240, label %139
    i32 5963776, label %139
    i32 6029312, label %139
  ]

139:                                              ; preds = %136, %136, %136
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

140:                                              ; preds = %3
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  %141 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !75
  switch i32 %142, label %207 [
    i32 1966080, label %143
    i32 2031616, label %143
    i32 2097152, label %143
    i32 2162688, label %143
    i32 327680, label %143
  ]

143:                                              ; preds = %140, %140, %140, %140, %140
  %144 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %144, align 2, !tbaa !77
  br label %207

145:                                              ; preds = %3
  %146 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %147 = load i16, ptr %146, align 8, !tbaa !76
  %148 = icmp eq i16 %147, 2
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %150

150:                                              ; preds = %145, %149
  %151 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %151, align 2, !tbaa !77
  br label %207

152:                                              ; preds = %3
  %153 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %154 = load i16, ptr %153, align 8, !tbaa !76
  %155 = icmp eq i16 %154, 4
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %157

157:                                              ; preds = %152, %156
  %158 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %158, align 2, !tbaa !77
  br label %207

159:                                              ; preds = %3
  %160 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %161 = load i16, ptr %160, align 8, !tbaa !76
  %162 = icmp eq i16 %161, 3
  br i1 %162, label %163, label %207

163:                                              ; preds = %159
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

164:                                              ; preds = %3
  %165 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %166 = load i16, ptr %165, align 8, !tbaa !76
  %167 = icmp eq i16 %166, 6
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %169

169:                                              ; preds = %164, %168
  %170 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %170, align 2, !tbaa !77
  br label %207

171:                                              ; preds = %3, %3
  %172 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %173 = load i32, ptr %172, align 8, !tbaa !78
  %174 = icmp eq i32 %173, 7
  br i1 %174, label %207, label %175

175:                                              ; preds = %171
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  %176 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %176, align 2, !tbaa !77
  br label %207

177:                                              ; preds = %3
  %178 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %179 = load i32, ptr %178, align 8, !tbaa !75
  %180 = icmp eq i32 %179, 655360
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

182:                                              ; preds = %3
  %183 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %184 = load i32, ptr %183, align 8, !tbaa !78
  %185 = icmp eq i32 %184, 5
  br i1 %185, label %186, label %207

186:                                              ; preds = %182
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

187:                                              ; preds = %3
  %188 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %189 = load i32, ptr %188, align 8, !tbaa !75
  %190 = icmp eq i32 %189, 4587520
  br i1 %190, label %191, label %207

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %193 = load i32, ptr %192, align 8, !tbaa !78
  switch i32 %193, label %207 [
    i32 1, label %194
    i32 3, label %194
    i32 4, label %194
  ]

194:                                              ; preds = %191, %191, %191
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %207

195:                                              ; preds = %3
  %196 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %197 = load i32, ptr %196, align 8, !tbaa !78
  %198 = icmp eq i32 %197, 6
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  %200 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %201 = load i16, ptr %200, align 8, !tbaa !76
  %202 = icmp eq i16 %201, 6
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %204, align 2, !tbaa !77
  br label %207

205:                                              ; preds = %3
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  %206 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %206, align 2, !tbaa !77
  br label %207

207:                                              ; preds = %163, %159, %132, %127, %104, %99, %93, %88, %78, %73, %61, %57, %56, %51, %39, %35, %23, %18, %191, %195, %203, %199, %187, %194, %182, %186, %177, %181, %171, %175, %143, %140, %139, %136, %114, %133, %135, %29, %31, %33, %10, %40, %3, %205, %169, %157, %150
  %208 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %209 = load i32, ptr %208, align 8, !tbaa !75
  %210 = icmp eq i32 %209, 1638400
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  tail call void @ED_area_tag_redraw(ptr noundef %1) #5
  br label %212

212:                                              ; preds = %211, %207
  ret void
}

declare i32 @buttons_context(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @buttons_main_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef 0) #5
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buttons_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i16 %5, 2
  %7 = zext i1 %6 to i32
  tail call void @buttons_context_compute(ptr noundef %0, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 7
  %9 = load i16, ptr %8, align 8, !tbaa !76
  switch i16 %9, label %24 [
    i16 1, label %10
    i16 0, label %11
    i16 13, label %12
    i16 2, label %13
    i16 3, label %14
    i16 4, label %15
    i16 5, label %16
    i16 6, label %17
    i16 7, label %18
    i16 8, label %19
    i16 9, label %20
    i16 10, label %21
    i16 11, label %22
    i16 12, label %23
  ]

10:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.8, i32 noundef 1) #5
  br label %24

11:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.9, i32 noundef 0) #5
  br label %24

12:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.10, i32 noundef 13) #5
  br label %24

13:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.11, i32 noundef 2) #5
  br label %24

14:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  br label %24

15:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.13, i32 noundef 4) #5
  br label %24

16:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.14, i32 noundef 5) #5
  br label %24

17:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.15, i32 noundef 6) #5
  br label %24

18:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.16, i32 noundef 7) #5
  br label %24

19:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.17, i32 noundef 8) #5
  br label %24

20:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.18, i32 noundef 9) #5
  br label %24

21:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.19, i32 noundef 10) #5
  br label %24

22:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.20, i32 noundef 11) #5
  br label %24

23:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.21, i32 noundef 12) #5
  br label %24

24:                                               ; preds = %2, %11, %13, %15, %17, %19, %21, %23, %22, %20, %18, %16, %14, %12, %10
  %25 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 10
  store i16 0, ptr %25, align 2, !tbaa !83
  %26 = load i16, ptr %8, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 8
  store i16 %26, ptr %27, align 2, !tbaa !84
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @buttons_context_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @buttons_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buttons_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #5
  tail call void @buttons_context_compute(ptr noundef %0, ptr noundef %3) #5
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

declare void @BUTTONS_OT_toolbox(ptr noundef) #2

declare void @BUTTONS_OT_file_browse(ptr noundef) #2

declare void @BUTTONS_OT_directory_browse(ptr noundef) #2

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

declare void @buttons_context_compute(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 80}
!39 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !41, i64 176, !41, i64 192, !40, i64 208}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!39, !35, i64 88}
!43 = !{!39, !35, i64 96}
!44 = !{!39, !35, i64 104}
!45 = !{!39, !35, i64 136}
!46 = !{!39, !35, i64 144}
!47 = !{!39, !35, i64 152}
!48 = !{!39, !35, i64 120}
!49 = !{!39, !35, i64 168}
!50 = !{!51, !40, i64 16}
!51 = !{!"ARegionType", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 120, !41, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !52, i64 172, !52, i64 174, !52, i64 176}
!52 = !{!"short", !36, i64 0}
!53 = !{!51, !35, i64 24}
!54 = !{!51, !35, i64 40}
!55 = !{!51, !40, i64 168}
!56 = !{!51, !40, i64 164}
!57 = !{!58, !40, i64 32}
!58 = !{!"SpaceButs", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !59, i64 36, !36, i64 40, !60, i64 56, !52, i64 216, !52, i64 218, !52, i64 220, !52, i64 222, !52, i64 224, !52, i64 226, !52, i64 228, !52, i64 230, !36, i64 232, !36, i64 233, !35, i64 240, !40, i64 248, !40, i64 252, !35, i64 256, !35, i64 264}
!59 = !{!"float", !36, i64 0}
!60 = !{!"View2D", !61, i64 0, !61, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !36, i64 80, !36, i64 88, !59, i64 96, !59, i64 100, !52, i64 104, !52, i64 106, !52, i64 108, !52, i64 110, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!61 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!62 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!63 = !{!58, !52, i64 224}
!64 = !{!65, !52, i64 214}
!65 = !{!"ARegion", !35, i64 0, !35, i64 8, !60, i64 16, !62, i64 176, !62, i64 192, !52, i64 208, !52, i64 210, !52, i64 212, !52, i64 214, !52, i64 216, !52, i64 218, !59, i64 220, !52, i64 224, !52, i64 226, !52, i64 228, !52, i64 230, !52, i64 232, !52, i64 234, !52, i64 236, !52, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!66 = !{!65, !52, i64 216}
!67 = !{!58, !35, i64 240}
!68 = !{!58, !35, i64 264}
!69 = !{!70, !35, i64 96}
!70 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !62, i64 56, !36, i64 72, !36, i64 73, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !52, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!71 = !{!70, !52, i64 74}
!72 = !{!70, !52, i64 76}
!73 = !{!74, !40, i64 36}
!74 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!75 = !{!74, !40, i64 40}
!76 = !{!58, !52, i64 216}
!77 = !{!58, !52, i64 226}
!78 = !{!74, !40, i64 48}
!79 = !{!80, !35, i64 296}
!80 = !{!"wmWindowManager", !81, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !52, i64 156, !52, i64 158, !41, i64 160, !41, i64 176, !82, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!81 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!82 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!83 = !{!58, !52, i64 222}
!84 = !{!58, !52, i64 218}
