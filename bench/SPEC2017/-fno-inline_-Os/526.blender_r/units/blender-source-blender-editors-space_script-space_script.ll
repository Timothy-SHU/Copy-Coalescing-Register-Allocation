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
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 14, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @script_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @script_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @script_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @script_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @script_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @script_keymap, ptr %10, align 8, !tbaa !47
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %13 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 3
  store ptr @script_main_area_init, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 5
  store ptr @script_main_area_draw, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 6
  store ptr @script_main_area_listener, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 20
  store i32 19, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %12) #5
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %21 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 19
  store i32 26, ptr %22, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 20
  store i32 67, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 3
  store ptr @script_header_area_init, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 5
  store ptr @script_header_area_draw, ptr %25, align 8, !tbaa !52
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %20) #5
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @script_new(ptr nocapture readnone %0) #0 !PGOFuncName !56 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.3) #5
  %4 = getelementptr inbounds %struct.SpaceScript, ptr %3, i64 0, i32 3
  store i32 14, ptr %4, align 8, !tbaa !57
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.4) #5
  %7 = getelementptr inbounds %struct.SpaceScript, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !60
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 2, ptr %9, align 8, !tbaa !65
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 0, ptr %12, align 2, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @script_free(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct.SpaceScript, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @script_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !PGOFuncName !68 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @script_duplicate(ptr noundef %0) #0 !PGOFuncName !69 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #5
  ret ptr %3
}

; Function Attrs: optsize
declare void @script_operatortypes() #3

; Function Attrs: optsize
declare void @script_keymap(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !72
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 0, i32 noundef %6, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !77 {
  %3 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %4) #5
  tail call void @UI_view2d_view_restore(ptr noundef %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @script_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #2 !PGOFuncName !78 {
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !79 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @script_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !80 {
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
!48 = !{!49, !40, i64 16}
!49 = !{!"ARegionType", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 120, !41, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !50, i64 172, !50, i64 174, !50, i64 176}
!50 = !{!"short", !36, i64 0}
!51 = !{!49, !35, i64 24}
!52 = !{!49, !35, i64 40}
!53 = !{!49, !35, i64 48}
!54 = !{!49, !40, i64 168}
!55 = !{!49, !40, i64 164}
!56 = !{!"space_script.c:script_new"}
!57 = !{!58, !40, i64 32}
!58 = !{!"SpaceScript", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !59, i64 36, !35, i64 40, !50, i64 48, !50, i64 50, !40, i64 52, !35, i64 56}
!59 = !{!"float", !36, i64 0}
!60 = !{!61, !50, i64 214}
!61 = !{!"ARegion", !35, i64 0, !35, i64 8, !62, i64 16, !64, i64 176, !64, i64 192, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !50, i64 216, !50, i64 218, !59, i64 220, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !50, i64 232, !50, i64 234, !50, i64 236, !50, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !36, i64 80, !36, i64 88, !59, i64 96, !59, i64 100, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!63 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!61, !50, i64 216}
!66 = !{!"space_script.c:script_free"}
!67 = !{!58, !35, i64 40}
!68 = !{!"space_script.c:script_init"}
!69 = !{!"space_script.c:script_duplicate"}
!70 = !{!"space_script.c:script_main_area_init"}
!71 = !{!61, !50, i64 208}
!72 = !{!61, !50, i64 210}
!73 = !{!74, !35, i64 296}
!74 = !{!"wmWindowManager", !75, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !50, i64 156, !50, i64 158, !41, i64 160, !41, i64 176, !76, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!75 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !50, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!76 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!77 = !{!"space_script.c:script_main_area_draw"}
!78 = !{!"space_script.c:script_main_area_listener"}
!79 = !{!"space_script.c:script_header_area_init"}
!80 = !{!"space_script.c:script_header_area_draw"}
