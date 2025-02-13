; ModuleID = 'blender/source/blender/editors/space_text/text_header.c'
source_filename = "blender/source/blender/editors/space_text/text_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

@.str = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Toggle text properties panel\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"TEXT_OT_properties\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Find\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Start searching text\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"TEXT_OT_start_find\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"properties region\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_properties_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !46 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #3
  %4 = tail call fastcc ptr @text_has_properties_region(ptr noundef %3) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #3
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_properties_poll(ptr noundef %0) #1 !PGOFuncName !47 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #3
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_text_search_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !48 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #3
  %4 = tail call fastcc ptr @text_has_properties_region(ptr noundef %3) #4
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #3
  %6 = icmp eq ptr %4, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #3
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !56
  %16 = or i16 %15, 512
  store i16 %16, ptr %14, align 8, !tbaa !56
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %4) #3
  br label %17

17:                                               ; preds = %13, %2
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @text_has_properties_region(ptr noundef %0) unnamed_addr #1 !PGOFuncName !58 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.6) #3
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #3
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !60
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !49
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!46 = !{!"text_header.c:text_properties_exec"}
!47 = !{!"text_header.c:text_properties_poll"}
!48 = !{!"text_header.c:text_text_search_exec"}
!49 = !{!50, !41, i64 218}
!50 = !{!"ARegion", !36, i64 0, !36, i64 8, !51, i64 16, !54, i64 176, !54, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !53, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!51 = !{!"View2D", !52, i64 0, !52, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !37, i64 80, !37, i64 88, !53, i64 96, !53, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!52 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!53 = !{!"float", !37, i64 0}
!54 = !{!"rcti", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!55 = !{!"int", !37, i64 0}
!56 = !{!57, !41, i64 72}
!57 = !{!"SpaceText", !36, i64 0, !36, i64 8, !39, i64 16, !55, i64 32, !53, i64 36, !37, i64 40, !36, i64 56, !55, i64 64, !55, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !37, i64 78, !37, i64 79, !55, i64 80, !55, i64 84, !55, i64 88, !41, i64 92, !41, i64 94, !41, i64 96, !41, i64 98, !53, i64 100, !54, i64 104, !54, i64 120, !55, i64 136, !55, i64 140, !37, i64 144, !37, i64 400, !41, i64 656, !41, i64 658, !37, i64 660, !36, i64 664, !37, i64 672}
!58 = !{!"text_header.c:text_has_properties_region"}
!59 = !{!36, !36, i64 0}
!60 = !{!50, !41, i64 214}
!61 = !{!50, !41, i64 216}
