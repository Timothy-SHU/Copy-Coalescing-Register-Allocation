; ModuleID = 'blender/source/blender/editors/space_graph/graph_utils.c'
source_filename = "blender/source/blender/editors/space_graph/graph_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_active_fcurve_channel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 273, ptr noundef %3, i32 noundef %6) #5
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !41
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %10) #5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #5
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @graphop_visible_keyframes_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bAnimContext, align 8
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !40
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 5, ptr noundef %14, i32 noundef %17) #5
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20, %33
  %24 = phi ptr [ %34, %33 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = call zeroext i8 @fcurve_are_keyframes_usable(ptr noundef nonnull %26) #5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %23
  %34 = load ptr, ptr %24, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23, !llvm.loop !53

36:                                               ; preds = %33, %30, %20
  %37 = phi i32 [ 0, %20 ], [ 0, %33 ], [ 1, %30 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #5
  br label %38

38:                                               ; preds = %13, %10, %1, %6, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %6 ], [ 0, %1 ], [ 0, %10 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #4
  ret i32 %39
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @fcurve_are_keyframes_usable(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @graphop_editable_keyframes_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bAnimContext, align 8
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !40
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 261, ptr noundef %14, i32 noundef %17) #5
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20, %33
  %24 = phi ptr [ %34, %33 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = call zeroext i8 @fcurve_is_keyframable(ptr noundef nonnull %26) #5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %23
  %34 = load ptr, ptr %24, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23, !llvm.loop !55

36:                                               ; preds = %33, %30, %20
  %37 = phi i32 [ 0, %20 ], [ 0, %33 ], [ 1, %30 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #5
  br label %38

38:                                               ; preds = %13, %10, %1, %6, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %6 ], [ 0, %1 ], [ 0, %10 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #4
  ret i32 %39
}

; Function Attrs: optsize
declare zeroext i8 @fcurve_is_keyframable(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @graphop_active_fcurve_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #4
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %2) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !56
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.FCurve, ptr %17, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !57
  %26 = and i16 %25, 1
  %27 = zext nneg i16 %26 to i32
  br label %28

28:                                               ; preds = %15, %23, %19
  %29 = phi i32 [ %27, %23 ], [ 0, %19 ], [ 0, %15 ]
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %30(ptr noundef nonnull %13) #5
  br label %31

31:                                               ; preds = %12, %9, %1, %5, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %5 ], [ 0, %1 ], [ 0, %9 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #4
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @graphop_selected_fcurve_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bAnimContext, align 8
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !40
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 321, ptr noundef %14, i32 noundef %17) #5
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #5
  br label %21

21:                                               ; preds = %13, %10, %1, %6, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %6 ], [ 0, %1 ], [ 0, %10 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #4
  ret i32 %22
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!42, !36, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!44, !37, i64 72}
!44 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !45, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!45 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!46 = !{!"int", !37, i64 0}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !36, i64 16}
!49 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !46, i64 24, !46, i64 28, !46, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!50 = !{!51, !36, i64 48}
!51 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !36, i64 48, !36, i64 56, !46, i64 64, !52, i64 68, !39, i64 72, !39, i64 74, !46, i64 76, !36, i64 80, !46, i64 88, !37, i64 92, !52, i64 104, !52, i64 108}
!52 = !{!"float", !37, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{!55, !54}
!56 = !{!49, !46, i64 24}
!57 = !{!51, !39, i64 72}
