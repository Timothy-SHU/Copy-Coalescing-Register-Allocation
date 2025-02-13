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
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #4
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 19, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #4
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @userpref_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @userpref_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @userpref_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @userpref_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @userpref_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @userpref_keymap, ptr %10, align 8, !tbaa !18
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 184, ptr noundef nonnull @.str.2) #4
  %13 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 3
  store ptr @userpref_main_area_init, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 5
  store ptr @userpref_main_area_draw, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 6
  store ptr @userpref_main_area_listener, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 20
  store i32 1, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %12) #4
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.2) #4
  %21 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 19
  store i32 26, ptr %22, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 20
  store i32 67, ptr %23, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 6
  store ptr @userpref_header_listener, ptr %24, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 3
  store ptr @userpref_header_area_init, ptr %25, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 5
  store ptr @userpref_header_area_draw, ptr %26, align 8, !tbaa !23
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %20) #4
  tail call void @BKE_spacetype_register(ptr noundef %2) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @userpref_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 104, ptr noundef nonnull @.str.3) #4
  %4 = getelementptr inbounds %struct.SpaceUserPref, ptr %3, i64 0, i32 3
  store i32 19, ptr %4, align 8, !tbaa !27
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.4) #4
  %7 = getelementptr inbounds %struct.SpaceUserPref, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !29
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 2, ptr %9, align 8, !tbaa !35
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.5) #4
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #4
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 0, ptr %12, align 2, !tbaa !29
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_free(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @userpref_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #4
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_operatortypes() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_keymap(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_main_area_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !36
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #1 {
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @userpref_header_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #1 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @userpref_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
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
!28 = !{!"SpaceUserPref", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !7, i64 36, !7, i64 39, !7, i64 40}
!29 = !{!30, !21, i64 214}
!30 = !{!"ARegion", !6, i64 0, !6, i64 8, !31, i64 16, !34, i64 176, !34, i64 192, !21, i64 208, !21, i64 210, !21, i64 212, !21, i64 214, !21, i64 216, !21, i64 218, !33, i64 220, !21, i64 224, !21, i64 226, !21, i64 228, !21, i64 230, !21, i64 232, !21, i64 234, !21, i64 236, !21, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!31 = !{!"View2D", !32, i64 0, !32, i64 16, !34, i64 32, !34, i64 48, !34, i64 64, !7, i64 80, !7, i64 88, !33, i64 96, !33, i64 100, !21, i64 104, !21, i64 106, !21, i64 108, !21, i64 110, !21, i64 112, !21, i64 114, !21, i64 116, !21, i64 118, !21, i64 120, !21, i64 122, !21, i64 124, !21, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!32 = !{!"rctf", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12}
!33 = !{!"float", !7, i64 0}
!34 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!35 = !{!30, !21, i64 216}
!36 = !{!30, !21, i64 120}
