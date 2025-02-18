; ModuleID = 'blender/source/blender/editors/space_text/text_header.c'
source_filename = "blender/source/blender/editors/space_text/text_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }

@.str = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Toggle text properties panel\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"TEXT_OT_properties\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Find\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Start searching text\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"TEXT_OT_start_find\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"properties region\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_properties_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_properties_poll, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_properties_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #3
  %4 = tail call ptr @BKE_area_find_region_type(ptr noundef %3, i32 noundef 4) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_area_find_region_type(ptr noundef %3, i32 noundef 1) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.6) #3
  %12 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %11) #3
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 4, ptr %13, align 2, !tbaa !47
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 3, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 10
  store i16 1, ptr %15, align 2, !tbaa !55
  br label %16

16:                                               ; preds = %2, %6, %9
  %17 = phi ptr [ %11, %9 ], [ %4, %2 ], [ null, %6 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %17) #3
  br label %20

20:                                               ; preds = %19, %16
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @text_properties_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #3
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_start_find(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_text_search_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_properties_poll, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_text_search_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #3
  %4 = tail call ptr @BKE_area_find_region_type(ptr noundef %3, i32 noundef 4) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_area_find_region_type(ptr noundef %3, i32 noundef 1) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.6) #3
  %12 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %11) #3
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 4, ptr %13, align 2, !tbaa !47
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 3, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 10
  store i16 1, ptr %15, align 2, !tbaa !55
  br label %16

16:                                               ; preds = %2, %6, %9
  %17 = phi ptr [ %11, %9 ], [ %4, %2 ], [ null, %6 ]
  %18 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #3
  %19 = icmp eq ptr %17, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !55
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %17) #3
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.SpaceText, ptr %18, i64 0, i32 9
  %28 = load i16, ptr %27, align 8, !tbaa !56
  %29 = or i16 %28, 512
  store i16 %29, ptr %27, align 8, !tbaa !56
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %17) #3
  br label %30

30:                                               ; preds = %26, %16
  ret i32 4
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!46 = !{!36, !36, i64 0}
!47 = !{!48, !41, i64 214}
!48 = !{!"ARegion", !36, i64 0, !36, i64 8, !49, i64 16, !52, i64 176, !52, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !51, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!49 = !{!"View2D", !50, i64 0, !50, i64 16, !52, i64 32, !52, i64 48, !52, i64 64, !37, i64 80, !37, i64 88, !51, i64 96, !51, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!50 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!51 = !{!"float", !37, i64 0}
!52 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!53 = !{!"int", !37, i64 0}
!54 = !{!48, !41, i64 216}
!55 = !{!48, !41, i64 218}
!56 = !{!57, !41, i64 72}
!57 = !{!"SpaceText", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !51, i64 36, !37, i64 40, !36, i64 56, !53, i64 64, !53, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !37, i64 78, !37, i64 79, !53, i64 80, !53, i64 84, !53, i64 88, !41, i64 92, !41, i64 94, !41, i64 96, !41, i64 98, !51, i64 100, !52, i64 104, !52, i64 120, !53, i64 136, !53, i64 140, !37, i64 144, !37, i64 400, !41, i64 656, !41, i64 658, !37, i64 660, !36, i64 664, !37, i64 672}
