; ModuleID = 'blender/source/blender/editors/gpencil/gpencil_undo.c'
source_filename = "blender/source/blender/editors/gpencil/gpencil_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.bGPundonode = type { ptr, ptr, [64 x i8], ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@undo_nodes = internal global %struct.ListBase zeroinitializer, align 8
@cur_node = internal unnamed_addr global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"gpencil undo node\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_gpencil_session_active() local_unnamed_addr #0 {
  %1 = tail call fastcc zeroext i8 @BLI_listbase_is_empty() #7
  %2 = xor i8 %1, 1
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty() unnamed_addr #1 !PGOFuncName !34 {
  %1 = load ptr, ptr @undo_nodes, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_undo_gpencil_step(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #8
  switch i32 %1, label %46 [
    i32 1, label %5
    i32 -1, label %16
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr @cur_node, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.bGPundonode, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bGPundonode, ptr %6, i64 0, i32 2
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %46

16:                                               ; preds = %3
  %17 = load ptr, ptr @cur_node, align 8, !tbaa !40
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %2, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bGPundonode, ptr %17, i64 0, i32 2
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %2) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20, %22, %10, %12
  %27 = phi ptr [ %8, %12 ], [ %8, %10 ], [ %18, %22 ], [ %18, %20 ]
  store ptr %27, ptr @cur_node, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.bGPundonode, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %4, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load ptr, ptr %4, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bGPdata, ptr %34, i64 0, i32 1
  tail call void @free_gpencil_layers(ptr noundef nonnull %37) #8
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %37) #7
  %38 = getelementptr inbounds %struct.bGPdata, ptr %29, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36, %41
  %42 = phi ptr [ %44, %41 ], [ %39, %36 ]
  %43 = tail call ptr @gpencil_layer_duplicate(ptr noundef nonnull %42) #8
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %43) #8
  %44 = load ptr, ptr %42, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %41, !llvm.loop !45

46:                                               ; preds = %41, %36, %3, %16, %22, %5, %12, %33, %26
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: optsize
declare ptr @ED_gpencil_data_get_pointers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_gpencil_layers(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !47 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @gpencil_layer_duplicate(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpencil_undo_init(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @gpencil_undo_push(ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpencil_undo_push(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @cur_node, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.bGPundonode, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void @BKE_gpencil_free(ptr noundef %11) #8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %13 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void %12(ptr noundef %13) #8
  tail call void @BLI_freelinkN(ptr noundef nonnull @undo_nodes, ptr noundef nonnull %8) #8
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %7, !llvm.loop !48

15:                                               ; preds = %7, %4, %1
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %17 = tail call ptr %16(i64 noundef 88, ptr noundef nonnull @.str) #8
  %18 = tail call ptr @gpencil_data_duplicate(ptr noundef %0) #8
  %19 = getelementptr inbounds %struct.bGPundonode, ptr %17, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !44
  store ptr %17, ptr @cur_node, align 8, !tbaa !40
  tail call void @BLI_addtail(ptr noundef nonnull @undo_nodes, ptr noundef %17) #8
  ret void
}

; Function Attrs: optsize
declare void @BKE_gpencil_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gpencil_data_duplicate(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpencil_undo_finish() local_unnamed_addr #2 {
  %1 = load ptr, ptr @undo_nodes, align 8, !tbaa !40
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.bGPundonode, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void @BKE_gpencil_free(ptr noundef %6) #8
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void %7(ptr noundef %8) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !49

11:                                               ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undo_nodes) #8
  store ptr null, ptr @cur_node, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!"gpencil_undo.c:BLI_listbase_is_empty"}
!35 = !{!36, !37, i64 0}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!37, !37, i64 0}
!41 = !{!42, !37, i64 8}
!42 = !{!"bGPundonode", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80}
!43 = !{!42, !37, i64 0}
!44 = !{!42, !37, i64 80}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"gpencil_undo.c:BLI_listbase_clear"}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
