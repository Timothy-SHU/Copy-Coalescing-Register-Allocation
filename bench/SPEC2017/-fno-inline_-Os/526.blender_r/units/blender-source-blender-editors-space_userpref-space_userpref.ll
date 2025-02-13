; ModuleID = 'blender/source/blender/editors/space_userpref/space_userpref.c'
source_filename = "blender/source/blender/editors/space_userpref/space_userpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceUserPref = type { ptr, ptr, %struct.ListBase, i32, [3 x i8], i8, [64 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"spacetype userpref\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"spacetype userpref region\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"inituserpref\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"header for userpref\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"main area for userpref\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [65 x i8] c"Userpref\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_userpref() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #4
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 19, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #4
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @userpref_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @userpref_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @userpref_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @userpref_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @userpref_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @userpref_keymap, ptr %10, align 8, !tbaa !47
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 184, ptr noundef nonnull @.str.2) #4
  %13 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 3
  store ptr @userpref_main_area_init, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 5
  store ptr @userpref_main_area_draw, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 6
  store ptr @userpref_main_area_listener, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 20
  store i32 1, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %12) #4
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.2) #4
  %21 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 19
  store i32 26, ptr %22, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 20
  store i32 67, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 6
  store ptr @userpref_header_listener, ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 3
  store ptr @userpref_header_area_init, ptr %25, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 5
  store ptr @userpref_header_area_draw, ptr %26, align 8, !tbaa !52
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %20) #4
  tail call void @BKE_spacetype_register(ptr noundef %2) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @userpref_new(ptr nocapture readnone %0) #0 !PGOFuncName !56 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 104, ptr noundef nonnull @.str.3) #4
  %4 = getelementptr inbounds %struct.SpaceUserPref, ptr %3, i64 0, i32 3
  store i32 19, ptr %4, align 8, !tbaa !57
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.4) #4
  %7 = getelementptr inbounds %struct.SpaceUserPref, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !59
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 2, ptr %9, align 8, !tbaa !65
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.5) #4
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #4
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 0, ptr %12, align 2, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_free(ptr nocapture readnone %0) #1 !PGOFuncName !66 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 !PGOFuncName !67 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @userpref_duplicate(ptr noundef %0) #0 !PGOFuncName !68 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #4
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_operatortypes() #1 !PGOFuncName !69 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_keymap(ptr nocapture readnone %0) #1 !PGOFuncName !70 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_main_area_init(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !72
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !73 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #1 !PGOFuncName !74 {
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_header_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #1 !PGOFuncName !75 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !76 {
  tail call void @ED_region_header_init(ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !77 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }

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
!56 = !{!"space_userpref.c:userpref_new"}
!57 = !{!58, !40, i64 32}
!58 = !{!"SpaceUserPref", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !36, i64 36, !36, i64 39, !36, i64 40}
!59 = !{!60, !50, i64 214}
!60 = !{!"ARegion", !35, i64 0, !35, i64 8, !61, i64 16, !64, i64 176, !64, i64 192, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !50, i64 216, !50, i64 218, !63, i64 220, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !50, i64 232, !50, i64 234, !50, i64 236, !50, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!61 = !{!"View2D", !62, i64 0, !62, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !36, i64 80, !36, i64 88, !63, i64 96, !63, i64 100, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!62 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!63 = !{!"float", !36, i64 0}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!60, !50, i64 216}
!66 = !{!"space_userpref.c:userpref_free"}
!67 = !{!"space_userpref.c:userpref_init"}
!68 = !{!"space_userpref.c:userpref_duplicate"}
!69 = !{!"space_userpref.c:userpref_operatortypes"}
!70 = !{!"space_userpref.c:userpref_keymap"}
!71 = !{!"space_userpref.c:userpref_main_area_init"}
!72 = !{!60, !50, i64 120}
!73 = !{!"space_userpref.c:userpref_main_area_draw"}
!74 = !{!"space_userpref.c:userpref_main_area_listener"}
!75 = !{!"space_userpref.c:userpref_header_listener"}
!76 = !{!"space_userpref.c:userpref_header_area_init"}
!77 = !{!"space_userpref.c:userpref_header_area_draw"}
