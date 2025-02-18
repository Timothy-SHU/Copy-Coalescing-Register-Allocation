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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @ED_gpencil_session_active() local_unnamed_addr #0 {
  %1 = load ptr, ptr @undo_nodes, align 8, !tbaa !34
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_undo_gpencil_step(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #1 {
  %4 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #5
  switch i32 %1, label %30 [
    i32 1, label %5
    i32 -1, label %16
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr @cur_node, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.bGPundonode, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bGPundonode, ptr %6, i64 0, i32 2
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %30

16:                                               ; preds = %3
  %17 = load ptr, ptr @cur_node, align 8, !tbaa !39
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %2, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bGPundonode, ptr %17, i64 0, i32 2
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %2) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %22, %10, %12
  %27 = phi ptr [ %8, %12 ], [ %8, %10 ], [ %18, %22 ], [ %18, %20 ]
  store ptr %27, ptr @cur_node, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.bGPundonode, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %26, %3, %22, %16, %5, %12
  %31 = phi ptr [ null, %12 ], [ null, %5 ], [ null, %22 ], [ null, %16 ], [ null, %3 ], [ %29, %26 ]
  %32 = icmp ne ptr %31, null
  %33 = icmp ne ptr %4, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load ptr, ptr %4, align 8, !tbaa !39
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.bGPdata, ptr %36, i64 0, i32 1
  tail call void @free_gpencil_layers(ptr noundef nonnull %39) #5
  %40 = getelementptr inbounds %struct.bGPdata, ptr %31, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %46, %43 ], [ %41, %38 ]
  %45 = tail call ptr @gpencil_layer_duplicate(ptr noundef nonnull %44) #5
  tail call void @BLI_addtail(ptr noundef nonnull %39, ptr noundef %45) #5
  %46 = load ptr, ptr %44, align 8, !tbaa !39
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !44

48:                                               ; preds = %43, %38, %35, %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #5
  ret i32 4
}

declare ptr @ED_gpencil_data_get_pointers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @free_gpencil_layers(ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_duplicate(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gpencil_undo_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @cur_node, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.bGPundonode, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void @BKE_gpencil_free(ptr noundef %11) #5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %13 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void %12(ptr noundef %13) #5
  tail call void @BLI_freelinkN(ptr noundef nonnull @undo_nodes, ptr noundef nonnull %8) #5
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %7, !llvm.loop !47

15:                                               ; preds = %7, %1, %4
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %17 = tail call ptr %16(i64 noundef 88, ptr noundef nonnull @.str) #5
  %18 = tail call ptr @gpencil_data_duplicate(ptr noundef %0) #5
  %19 = getelementptr inbounds %struct.bGPundonode, ptr %17, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !43
  store ptr %17, ptr @cur_node, align 8, !tbaa !39
  tail call void @BLI_addtail(ptr noundef nonnull @undo_nodes, ptr noundef %17) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gpencil_undo_push(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @cur_node, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.bGPundonode, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void @BKE_gpencil_free(ptr noundef %11) #5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %13 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void %12(ptr noundef %13) #5
  tail call void @BLI_freelinkN(ptr noundef nonnull @undo_nodes, ptr noundef nonnull %8) #5
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %7, !llvm.loop !47

15:                                               ; preds = %7, %4, %1
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %17 = tail call ptr %16(i64 noundef 88, ptr noundef nonnull @.str) #5
  %18 = tail call ptr @gpencil_data_duplicate(ptr noundef %0) #5
  %19 = getelementptr inbounds %struct.bGPundonode, ptr %17, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !43
  store ptr %17, ptr @cur_node, align 8, !tbaa !39
  tail call void @BLI_addtail(ptr noundef nonnull @undo_nodes, ptr noundef %17) #5
  ret void
}

declare void @BKE_gpencil_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_data_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gpencil_undo_finish() local_unnamed_addr #1 {
  %1 = load ptr, ptr @undo_nodes, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.bGPundonode, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @BKE_gpencil_free(ptr noundef %6) #5
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %8 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void %7(ptr noundef %8) #5
  %9 = load ptr, ptr %4, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !48

11:                                               ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undo_nodes) #5
  store ptr null, ptr @cur_node, align 8, !tbaa !39
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !36, i64 8}
!41 = !{!"bGPundonode", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80}
!42 = !{!41, !36, i64 0}
!43 = !{!41, !36, i64 80}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = distinct !{!48, !45, !46}
