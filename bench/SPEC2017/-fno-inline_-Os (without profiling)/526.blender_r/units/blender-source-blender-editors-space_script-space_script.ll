; ModuleID = 'blender/source/blender/editors/space_script/space_script.c'
source_filename = "blender/source/blender/editors/space_script/space_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceScript = type { ptr, ptr, %struct.ListBase, i32, float, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"spacetype script\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"spacetype script region\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"initscript\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"header for script\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"main area for script\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [65 x i8] c"Script\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_script() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 14, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @script_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @script_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @script_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @script_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @script_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @script_keymap, ptr %10, align 8, !tbaa !18
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %13 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 3
  store ptr @script_main_area_init, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 5
  store ptr @script_main_area_draw, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 6
  store ptr @script_main_area_listener, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 20
  store i32 19, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %12) #5
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %21 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 19
  store i32 26, ptr %22, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 20
  store i32 67, ptr %23, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 3
  store ptr @script_header_area_init, ptr %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 5
  store ptr @script_header_area_draw, ptr %25, align 8, !tbaa !23
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %20) #5
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @script_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.3) #5
  %4 = getelementptr inbounds %struct.SpaceScript, ptr %3, i64 0, i32 3
  store i32 14, ptr %4, align 8, !tbaa !27
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.4) #5
  %7 = getelementptr inbounds %struct.SpaceScript, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !30
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 2, ptr %9, align 8, !tbaa !35
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 0, ptr %12, align 2, !tbaa !30
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @script_free(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.SpaceScript, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @script_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @script_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #5
  ret ptr %3
}

; Function Attrs: optsize
declare void @script_operatortypes() #3

; Function Attrs: optsize
declare void @script_keymap(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !37
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !38
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 0, i32 noundef %6, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %4) #5
  tail call void @UI_view2d_view_restore(ptr noundef %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @script_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #2 {
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 80}
!10 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 80, !11, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 192, !11, i64 208}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ListBase", !6, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 88}
!14 = !{!10, !6, i64 96}
!15 = !{!10, !6, i64 104}
!16 = !{!10, !6, i64 136}
!17 = !{!10, !6, i64 144}
!18 = !{!10, !6, i64 152}
!19 = !{!20, !11, i64 16}
!20 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !21, i64 172, !21, i64 174, !21, i64 176}
!21 = !{!"short", !7, i64 0}
!22 = !{!20, !6, i64 24}
!23 = !{!20, !6, i64 40}
!24 = !{!20, !6, i64 48}
!25 = !{!20, !11, i64 168}
!26 = !{!20, !11, i64 164}
!27 = !{!28, !11, i64 32}
!28 = !{!"SpaceScript", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !29, i64 36, !6, i64 40, !21, i64 48, !21, i64 50, !11, i64 52, !6, i64 56}
!29 = !{!"float", !7, i64 0}
!30 = !{!31, !21, i64 214}
!31 = !{!"ARegion", !6, i64 0, !6, i64 8, !32, i64 16, !34, i64 176, !34, i64 192, !21, i64 208, !21, i64 210, !21, i64 212, !21, i64 214, !21, i64 216, !21, i64 218, !29, i64 220, !21, i64 224, !21, i64 226, !21, i64 228, !21, i64 230, !21, i64 232, !21, i64 234, !21, i64 236, !21, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!32 = !{!"View2D", !33, i64 0, !33, i64 16, !34, i64 32, !34, i64 48, !34, i64 64, !7, i64 80, !7, i64 88, !29, i64 96, !29, i64 100, !21, i64 104, !21, i64 106, !21, i64 108, !21, i64 110, !21, i64 112, !21, i64 114, !21, i64 116, !21, i64 118, !21, i64 120, !21, i64 122, !21, i64 124, !21, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!33 = !{!"rctf", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!34 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!35 = !{!31, !21, i64 216}
!36 = !{!28, !6, i64 40}
!37 = !{!31, !21, i64 208}
!38 = !{!31, !21, i64 210}
!39 = !{!40, !6, i64 296}
!40 = !{!"wmWindowManager", !41, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !21, i64 156, !21, i64 158, !12, i64 160, !12, i64 176, !42, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!41 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !21, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!42 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
