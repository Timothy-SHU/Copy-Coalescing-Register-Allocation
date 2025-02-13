; ModuleID = 'blender/source/blender/editors/physics/rigidbody_world.c'
source_filename = "blender/source/blender/editors/physics/rigidbody_world.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }

@.str = private unnamed_addr constant [23 x i8] c"RIGIDBODY_OT_world_add\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Add Rigid Body World\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Add Rigid Body simulation world to the current scene\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"RIGIDBODY_OT_world_remove\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Remove Rigid Body World\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Remove Rigid Body simulation world from the current scene\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"RIGIDBODY_OT_world_export\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Export Rigid Body World\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"Export Rigid Body world to simulator's own fileformat (i.e. '.bullet' for Bullet Physics)\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"No Rigid Body World to remove\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"rigidbodyworld_export.bullet\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"No Rigid Body World to export\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"Rigid Body World has no associated physics data to export\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RIGIDBODY_OT_world_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str, ptr %2, align 8, !tbaa !34
  store ptr @.str.1, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_world_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_rigidbody_world_add_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_world_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %4 = tail call ptr @BKE_rigidbody_create_world(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 47
  store ptr %4, ptr %5, align 8, !tbaa !48
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_rigidbody_world_add_poll(ptr noundef %0) #1 !PGOFuncName !71 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RIGIDBODY_OT_world_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !34
  store ptr @.str.4, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_world_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_rigidbody_world_active_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_world_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !72 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 47
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.9) #4
  br label %11

10:                                               ; preds = %2
  tail call void @BKE_rigidbody_free_world(ptr noundef nonnull %5) #4
  store ptr null, ptr %4, align 8, !tbaa !48
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 2, %7 ], [ 4, %10 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_rigidbody_world_active_poll(ptr noundef %0) #1 !PGOFuncName !75 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIGIDBODY_OT_world_export(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !34
  store ptr @.str.7, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @rigidbody_world_export_invoke, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_world_export_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_rigidbody_world_active_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2048, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 0) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_world_export_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !77 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.10) #4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !78
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !79
  %11 = and i32 %10, 1048576
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %11) #4
  br label %12

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !78
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.11) #4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @rigidbody_world_export_exec(ptr noundef %0, ptr noundef nonnull %1) #5, !range !83
  br label %20

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !tbaa !78
  tail call void @RNA_string_set(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #4
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_world_export_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !84 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.13) #4
  br label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.RigidBodyWorld, ptr %6, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  tail call void @BKE_report(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.14) #4
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  call void @RNA_string_get(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) #4
  br label %21

21:                                               ; preds = %18, %15, %8
  %22 = phi i32 [ 2, %8 ], [ 2, %15 ], [ 4, %18 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #6
  ret i32 %22
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_rigidbody_create_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_rigidbody_free_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 0}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!"rigidbody_world.c:rigidbody_world_add_exec"}
!48 = !{!49, !36, i64 4952}
!49 = !{!"Scene", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !62, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !36, i64 4608, !68, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !55, i64 4664, !56, i64 4824, !70, i64 4888, !36, i64 4952}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !57, i64 264, !58, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !54, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !59, i64 544, !59, i64 560, !60, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !51, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !51, i64 2576, !54, i64 2580, !37, i64 2584, !61, i64 2616, !51, i64 3976, !51, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !55, i64 24, !56, i64 184}
!54 = !{!"float", !37, i64 0}
!55 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!57 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!58 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !54, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!59 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!60 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!61 = !{!"BakeData", !53, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!62 = !{!"AudioData", !51, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!63 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!64 = !{!"GameData", !63, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !65, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !66, i64 72, !54, i64 128, !54, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!65 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!66 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !51, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!67 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!68 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!69 = !{!"long", !37, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!71 = !{!"rigidbody_world.c:ED_rigidbody_world_add_poll"}
!72 = !{!"rigidbody_world.c:rigidbody_world_remove_exec"}
!73 = !{!74, !36, i64 120}
!74 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!75 = !{!"rigidbody_world.c:ED_rigidbody_world_active_poll"}
!76 = !{!35, !36, i64 48}
!77 = !{!"rigidbody_world.c:rigidbody_world_export_invoke"}
!78 = !{!74, !36, i64 112}
!79 = !{!80, !51, i64 8}
!80 = !{!"UserDef", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !51, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !51, i64 8484, !51, i64 8488, !51, i64 8492, !41, i64 8496, !41, i64 8498, !51, i64 8500, !51, i64 8504, !51, i64 8508, !51, i64 8512, !51, i64 8516, !51, i64 8520, !51, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !51, i64 8912, !51, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !54, i64 8956, !54, i64 8960, !51, i64 8964, !41, i64 8968, !41, i64 8970, !54, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !81, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !51, i64 10896, !51, i64 10900, !54, i64 10904, !54, i64 10908, !51, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !82, i64 10928}
!81 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!82 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !41, i64 24, !37, i64 26}
!83 = !{i32 2, i32 5}
!84 = !{!"rigidbody_world.c:rigidbody_world_export_exec"}
!85 = !{!86, !36, i64 80}
!86 = !{!"RigidBodyWorld", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !51, i64 32, !54, i64 36, !36, i64 40, !39, i64 48, !51, i64 64, !41, i64 68, !41, i64 70, !51, i64 72, !54, i64 76, !36, i64 80}
