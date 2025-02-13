; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_buttons.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"spacetype sequencer panel gpencil\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SEQUENCER_PT_gpencil\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_properties\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Open sequencer properties panel\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sequencer_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #4
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i64 21, i1 false) #4
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false) #4
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @sequencer_grease_pencil_panel_poll, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %3) #4
  ret void
}

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sequencer_grease_pencil_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #4
  %4 = tail call zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr noundef %3) #4
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !15
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_properties_toggle_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %4 = tail call ptr @sequencer_has_buttons_region(ptr noundef %3) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #4
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_sequencer_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @sequencer_has_buttons_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !6, i64 360}
!10 = !{!"PanelType", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 144, !7, i64 208, !7, i64 272, !11, i64 336, !11, i64 340, !11, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !12, i64 376}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!13 = !{!10, !6, i64 368}
!14 = !{!10, !6, i64 352}
!15 = !{!16, !6, i64 0}
!16 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !17, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !12, i64 152, !18, i64 184}
!17 = !{!"ListBase", !6, i64 0, !6, i64 8}
!18 = !{!"short", !7, i64 0}
!19 = !{!16, !6, i64 8}
!20 = !{!16, !6, i64 24}
!21 = !{!16, !6, i64 32}
!22 = !{!16, !6, i64 72}
!23 = !{!16, !18, i64 184}
