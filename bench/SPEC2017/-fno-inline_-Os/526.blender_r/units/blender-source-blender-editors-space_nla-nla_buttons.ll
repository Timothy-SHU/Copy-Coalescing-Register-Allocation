; ModuleID = 'blender/source/blender/editors/space_nla/nla_buttons.c'
source_filename = "blender/source/blender/editors/space_nla/nla_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }

@RNA_AnimData = external global %struct.StructRNA, align 1
@RNA_NlaTrack = external global %struct.StructRNA, align 1
@RNA_NlaStrip = external global %struct.StructRNA, align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"spacetype nla panel animdata\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"NLA_PT_animdata\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"spacetype nla panel track\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"NLA_PT_track\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Active Track\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"spacetype nla panel properties\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"NLA_PT_properties\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Active Strip\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"NLA_PT_actionclip\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Action Clip\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"spacetype nla panel evaluation\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"NLA_PT_evaluation\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Evaluation\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"spacetype nla panel modifiers\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"NLA_PT_modifiers\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"NLA_OT_properties\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Toggle display properties panel\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"ACTION_OT_new\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"action_extrapolation\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"action_blend_type\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"action_influence\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Strip Extents:\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"extrapolation\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"blend_type\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"use_animated_influence\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"use_auto_blend\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"blend_in\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"blend_out\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"use_animated_time\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Playback Settings:\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"use_reverse\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Action Extents:\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"action_frame_start\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"action_frame_end\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"use_sync_length\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Sync Length\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"Now\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"NLA_OT_action_sync_length\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"use_animated_time_cyclic\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"strip_time\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"NLA_OT_fmodifier_add\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"Add Modifier\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c"Adds a new F-Modifier for the active NLA Strip\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"NLA_OT_fmodifier_copy\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"NLA_OT_fmodifier_paste\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !40
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 27, ptr noundef %10, i32 noundef %13) #7
  %15 = load ptr, ptr %6, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %9
  %18 = icmp ne ptr %1, null
  br label %19

19:                                               ; preds = %17, %60
  %20 = phi ptr [ %15, %17 ], [ %62, %60 ]
  %21 = phi i16 [ 0, %17 ], [ %61, %60 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !42
  switch i32 %23, label %60 [
    i32 30, label %24
    i32 4, label %44
    i32 5, label %44
    i32 10, label %44
    i32 11, label %44
    i32 12, label %44
    i32 13, label %44
    i32 14, label %44
    i32 15, label %44
    i32 16, label %44
    i32 17, label %44
    i32 18, label %44
    i32 19, label %44
    i32 20, label %44
    i32 21, label %44
    i32 22, label %44
    i32 23, label %44
    i32 24, label %44
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %1, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  call void @RNA_pointer_create(ptr noundef %32, ptr noundef nonnull @RNA_AnimData, ptr noundef %30, ptr noundef nonnull %1) #7
  br label %33

33:                                               ; preds = %28, %24
  %34 = icmp eq ptr %2, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  call void @RNA_pointer_create(ptr noundef %37, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %26, ptr noundef nonnull %2) #7
  br label %38

38:                                               ; preds = %35, %33
  %39 = icmp eq ptr %3, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %38
  %41 = call ptr @BKE_nlastrip_find_active(ptr noundef %26) #7
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  call void @RNA_pointer_create(ptr noundef %43, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %41, ptr noundef nonnull %3) #7
  br label %67

44:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp ne ptr %46, null
  %48 = and i1 %18, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  %53 = icmp eq i32 %23, 5
  %54 = or i1 %53, %52
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  br label %58

58:                                               ; preds = %49, %55
  %59 = phi ptr [ %57, %55 ], [ %51, %49 ]
  call void @RNA_pointer_create(ptr noundef %59, ptr noundef nonnull @RNA_AnimData, ptr noundef nonnull %46, ptr noundef nonnull %1) #7
  br label %60

60:                                               ; preds = %44, %58, %19
  %61 = phi i16 [ %21, %19 ], [ -1, %58 ], [ %21, %44 ]
  %62 = load ptr, ptr %20, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %19, !llvm.loop !48

64:                                               ; preds = %60
  %65 = icmp ne i16 %61, 0
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %64, %9, %38, %40
  %68 = phi i8 [ 1, %40 ], [ 1, %38 ], [ 0, %9 ], [ %66, %64 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #7
  br label %69

69:                                               ; preds = %4, %67
  %70 = phi i8 [ %68, %67 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  ret i8 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_nlastrip_find_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nla_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false) #7
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 1 dereferenceable(15) @.str.2, i64 15, i1 false) #7
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @nla_panel_animdata, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @nla_animdata_panel_poll, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  store i32 1, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %3) #7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %12 = tail call ptr %11(i64 noundef 408, ptr noundef nonnull @.str.4) #7
  %13 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %13, ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false) #7
  %14 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %14, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false) #7
  %15 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 4
  store i16 42, ptr %15, align 1
  %16 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 12
  store ptr @nla_panel_track, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 10
  store ptr @nla_track_panel_poll, ptr %17, align 8, !tbaa !53
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %12) #7
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %19 = tail call ptr %18(i64 noundef 408, ptr noundef nonnull @.str.7) #7
  %20 = getelementptr inbounds %struct.PanelType, ptr %19, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %20, ptr noundef nonnull align 1 dereferenceable(18) @.str.8, i64 18, i1 false) #7
  %21 = getelementptr inbounds %struct.PanelType, ptr %19, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %21, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false) #7
  %22 = getelementptr inbounds %struct.PanelType, ptr %19, i64 0, i32 4
  store i16 42, ptr %22, align 1
  %23 = getelementptr inbounds %struct.PanelType, ptr %19, i64 0, i32 12
  store ptr @nla_panel_properties, ptr %23, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.PanelType, ptr %19, i64 0, i32 10
  store ptr @nla_strip_panel_poll, ptr %24, align 8, !tbaa !53
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %19) #7
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %26 = tail call ptr %25(i64 noundef 408, ptr noundef nonnull @.str.7) #7
  %27 = getelementptr inbounds %struct.PanelType, ptr %26, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %27, ptr noundef nonnull align 1 dereferenceable(18) @.str.10, i64 18, i1 false) #7
  %28 = getelementptr inbounds %struct.PanelType, ptr %26, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %28, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, i64 12, i1 false) #7
  %29 = getelementptr inbounds %struct.PanelType, ptr %26, i64 0, i32 4
  store i16 42, ptr %29, align 1
  %30 = getelementptr inbounds %struct.PanelType, ptr %26, i64 0, i32 12
  store ptr @nla_panel_actclip, ptr %30, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.PanelType, ptr %26, i64 0, i32 10
  store ptr @nla_strip_actclip_panel_poll, ptr %31, align 8, !tbaa !53
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %26) #7
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %33 = tail call ptr %32(i64 noundef 408, ptr noundef nonnull @.str.12) #7
  %34 = getelementptr inbounds %struct.PanelType, ptr %33, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %34, ptr noundef nonnull align 1 dereferenceable(18) @.str.13, i64 18, i1 false) #7
  %35 = getelementptr inbounds %struct.PanelType, ptr %33, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %35, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, i64 11, i1 false) #7
  %36 = getelementptr inbounds %struct.PanelType, ptr %33, i64 0, i32 4
  store i16 42, ptr %36, align 1
  %37 = getelementptr inbounds %struct.PanelType, ptr %33, i64 0, i32 12
  store ptr @nla_panel_evaluation, ptr %37, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.PanelType, ptr %33, i64 0, i32 10
  store ptr @nla_strip_eval_panel_poll, ptr %38, align 8, !tbaa !53
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %33) #7
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %40 = tail call ptr %39(i64 noundef 408, ptr noundef nonnull @.str.15) #7
  %41 = getelementptr inbounds %struct.PanelType, ptr %40, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %41, ptr noundef nonnull align 1 dereferenceable(17) @.str.16, i64 17, i1 false) #7
  %42 = getelementptr inbounds %struct.PanelType, ptr %40, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %42, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false) #7
  %43 = getelementptr inbounds %struct.PanelType, ptr %40, i64 0, i32 4
  store i16 42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.PanelType, ptr %40, i64 0, i32 12
  store ptr @nla_panel_modifiers, ptr %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.PanelType, ptr %40, i64 0, i32 10
  store ptr @nla_strip_eval_panel_poll, ptr %45, align 8, !tbaa !53
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %40) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_panel_animdata(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !55 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #8, !range !58
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = call ptr @uiLayoutGetBlock(ptr noundef %6) #7
  call void @uiBlockSetHandleFunc(ptr noundef %10, ptr noundef nonnull @do_nla_region_buttons, ptr noundef null) #7
  %11 = load ptr, ptr %3, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_id_pointer_create(ptr noundef nonnull %11, ptr noundef nonnull %4) #7
  %14 = call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #7
  call void @uiLayoutSetAlignment(ptr noundef %14, i8 noundef zeroext 1) #7
  %15 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4, i64 2
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = call i32 @RNA_struct_ui_icon(ptr noundef %17) #7
  call void @uiItemL(ptr noundef %14, ptr noundef nonnull %15, i32 noundef %18) #7
  call void @uiItemL(ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef 845) #7
  call void @uiItemL(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef 167) #7
  call void @uiItemS(ptr noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %19

19:                                               ; preds = %13, %9
  %20 = call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #7
  call void @uiTemplateID(ptr noundef %20, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null) #7
  %21 = call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %22 = call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %3, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %23 = call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %3, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %24

24:                                               ; preds = %2, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @nla_animdata_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !63 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #8, !range !58
  %5 = icmp ne i8 %4, 0
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %10
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_panel_track(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !64 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #8, !range !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call ptr @uiLayoutGetBlock(ptr noundef %5) #7
  call void @uiBlockSetHandleFunc(ptr noundef %9, ptr noundef nonnull @do_nla_region_buttons, ptr noundef null) #7
  %10 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef null, i32 noundef 116) #7
  br label %11

11:                                               ; preds = %2, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @nla_track_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !65 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #8, !range !58
  %5 = icmp ne i8 %4, 0
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_panel_properties(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !66 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = call ptr @uiLayoutGetBlock(ptr noundef %5) #7
  call void @uiBlockSetHandleFunc(ptr noundef %9, ptr noundef nonnull @do_nla_region_buttons, ptr noundef null) #7
  %10 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef null, i32 noundef 116) #7
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %11 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemL(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %12 = call i32 @RNA_enum_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.28) #7
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %16 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %17 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  %18 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.34) #7
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i8
  call void @uiLayoutSetActive(ptr noundef %17, i8 noundef zeroext %20) #7
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %3, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %21 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 1) #7
  %22 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.35) #7
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i8
  call void @uiLayoutSetActive(ptr noundef %21, i8 noundef zeroext %24) #7
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %25 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  %26 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.34) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.38) #7
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %28, %14
  %33 = phi i8 [ 0, %14 ], [ %31, %28 ]
  call void @uiLayoutSetActive(ptr noundef %25, i8 noundef zeroext %33) #7
  call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.39, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %34

34:                                               ; preds = %8, %32, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @nla_strip_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !67 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %5 = icmp ne i8 %4, 0
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_panel_actclip(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !68 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = call ptr @uiLayoutGetBlock(ptr noundef %5) #7
  call void @uiBlockSetHandleFunc(ptr noundef %9, ptr noundef nonnull @do_nla_region_buttons, ptr noundef null) #7
  %10 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef null, i32 noundef 115) #7
  %11 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemL(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.46, i32 noundef 0) #7
  %12 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef 0) #7
  call void @uiItemO(ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef 692, ptr noundef nonnull @.str.50) #7
  %13 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  %14 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.38) #7
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  call void @uiLayoutSetActive(ptr noundef %13, i8 noundef zeroext %16) #7
  call void @uiItemL(ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %17

17:                                               ; preds = %2, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @nla_strip_actclip_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !69 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 21
  %12 = load i16, ptr %11, align 2, !tbaa !71
  %13 = icmp eq i16 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %2, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %2 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_panel_evaluation(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !75 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = call ptr @uiLayoutGetBlock(ptr noundef %5) #7
  call void @uiBlockSetHandleFunc(ptr noundef %9, ptr noundef nonnull @do_nla_region_buttons, ptr noundef null) #7
  %10 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %11 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 1) #7
  %12 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.34) #7
  %13 = trunc i32 %12 to i8
  call void @uiLayoutSetEnabled(ptr noundef %11, i8 noundef zeroext %13) #7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %14 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #7
  %15 = call ptr @uiLayoutRow(ptr noundef %14, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %16 = call ptr @uiLayoutRow(ptr noundef %14, i32 noundef 0) #7
  %17 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.38) #7
  %18 = trunc i32 %17 to i8
  call void @uiLayoutSetEnabled(ptr noundef %16, i8 noundef zeroext %18) #7
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %19

19:                                               ; preds = %2, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @nla_strip_eval_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !76 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 21
  %12 = load i16, ptr %11, align 2, !tbaa !71
  %13 = icmp ne i16 %12, 3
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi i32 [ 0, %2 ], [ 0, %6 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nla_panel_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !77 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8, !range !58
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = call ptr @uiLayoutGetBlock(ptr noundef %10) #7
  call void @uiBlockSetHandleFunc(ptr noundef %11, ptr noundef nonnull @do_nla_region_buttons, ptr noundef null) #7
  %12 = load ptr, ptr %9, align 8, !tbaa !56
  %13 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 0) #7
  %14 = call ptr @uiLayoutGetBlock(ptr noundef %13) #7
  %15 = call ptr @uiDefButO(ptr noundef %14, i32 noundef 512, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef nonnull @.str.57, i32 noundef 10, i32 noundef 0, i16 noundef signext 150, i16 noundef signext 20, ptr noundef nonnull @.str.58) #7
  %16 = call ptr @uiLayoutRow(ptr noundef %13, i32 noundef 1) #7
  call void @uiItemO(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef 599, ptr noundef nonnull @.str.59) #7
  call void @uiItemO(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef 598, ptr noundef nonnull @.str.60) #7
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %6, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %6 ]
  %22 = load ptr, ptr %9, align 8, !tbaa !56
  %23 = call ptr @uiLayoutColumn(ptr noundef %22, i32 noundef 1) #7
  %24 = load ptr, ptr %3, align 8, !tbaa !59
  call void @ANIM_uiTemplate_fmodifier_draw(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %17, ptr noundef nonnull %21) #7
  %25 = load ptr, ptr %21, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !78

27:                                               ; preds = %20, %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !79
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_properties_toggle_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nla_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !86 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %4 = tail call ptr @nla_has_buttons_region(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_nla_active(ptr noundef) #3

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_nla_region_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 %2) #0 !PGOFuncName !87 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68288512, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_uiTemplate_fmodifier_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nla_has_buttons_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
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
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!36, !36, i64 0}
!42 = !{!43, !44, i64 24}
!43 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!44 = !{!"int", !37, i64 0}
!45 = !{!43, !36, i64 16}
!46 = !{!43, !36, i64 56}
!47 = !{!43, !36, i64 48}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!51, !36, i64 368}
!51 = !{!"PanelType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 208, !37, i64 272, !44, i64 336, !44, i64 340, !44, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !52, i64 376}
!52 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!53 = !{!51, !36, i64 352}
!54 = !{!51, !44, i64 344}
!55 = !{!"nla_buttons.c:nla_panel_animdata"}
!56 = !{!57, !36, i64 24}
!57 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !44, i64 252, !36, i64 256, !36, i64 264}
!58 = !{i8 0, i8 2}
!59 = !{!60, !36, i64 0}
!60 = !{!"PointerRNA", !61, i64 0, !36, i64 8, !36, i64 16}
!61 = !{!"", !36, i64 0}
!62 = !{!60, !36, i64 8}
!63 = !{!"nla_buttons.c:nla_animdata_panel_poll"}
!64 = !{!"nla_buttons.c:nla_panel_track"}
!65 = !{!"nla_buttons.c:nla_track_panel_poll"}
!66 = !{!"nla_buttons.c:nla_panel_properties"}
!67 = !{!"nla_buttons.c:nla_strip_panel_poll"}
!68 = !{!"nla_buttons.c:nla_panel_actclip"}
!69 = !{!"nla_buttons.c:nla_strip_actclip_panel_poll"}
!70 = !{!60, !36, i64 16}
!71 = !{!72, !39, i64 190}
!72 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !73, i64 16, !36, i64 32, !36, i64 40, !73, i64 48, !73, i64 64, !37, i64 80, !74, i64 144, !74, i64 148, !74, i64 152, !74, i64 156, !74, i64 160, !74, i64 164, !74, i64 168, !74, i64 172, !74, i64 176, !74, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !36, i64 192, !44, i64 200, !44, i64 204}
!73 = !{!"ListBase", !36, i64 0, !36, i64 8}
!74 = !{!"float", !37, i64 0}
!75 = !{!"nla_buttons.c:nla_panel_evaluation"}
!76 = !{!"nla_buttons.c:nla_strip_eval_panel_poll"}
!77 = !{!"nla_buttons.c:nla_panel_modifiers"}
!78 = distinct !{!78, !49}
!79 = !{!80, !36, i64 0}
!80 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !73, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !52, i64 152, !39, i64 184}
!81 = !{!80, !36, i64 8}
!82 = !{!80, !36, i64 24}
!83 = !{!80, !36, i64 32}
!84 = !{!80, !36, i64 72}
!85 = !{!80, !39, i64 184}
!86 = !{!"nla_buttons.c:nla_properties_toggle_exec"}
!87 = !{!"nla_buttons.c:do_nla_region_buttons"}
