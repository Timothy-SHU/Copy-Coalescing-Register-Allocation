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
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !11
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 273, ptr noundef %3, i32 noundef %6) #5
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !12
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
  %8 = load i8, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !11
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 5, ptr noundef %14, i32 noundef %17) #5
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8, !tbaa !18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20, %33
  %24 = phi ptr [ %34, %33 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = call zeroext i8 @fcurve_are_keyframes_usable(ptr noundef nonnull %26) #5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %23
  %34 = load ptr, ptr %24, align 8, !tbaa !18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23, !llvm.loop !24

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
  %8 = load i8, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !11
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 261, ptr noundef %14, i32 noundef %17) #5
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8, !tbaa !18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20, %33
  %24 = phi ptr [ %34, %33 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = call zeroext i8 @fcurve_is_keyframable(ptr noundef nonnull %26) #5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %23
  %34 = load ptr, ptr %24, align 8, !tbaa !18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23, !llvm.loop !26

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
  %7 = load i8, ptr %6, align 8, !tbaa !14
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
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !27
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.FCurve, ptr %17, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !28
  %26 = and i16 %25, 1
  %27 = zext nneg i16 %26 to i32
  br label %28

28:                                               ; preds = %15, %23, %19
  %29 = phi i32 [ %27, %23 ], [ 0, %19 ], [ 0, %15 ]
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
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
  %8 = load i8, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !11
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"bAnimContext", !7, i64 0, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!13, !7, i64 0}
!13 = !{!"ListBase", !7, i64 0, !7, i64 8}
!14 = !{!15, !8, i64 72}
!15 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !16, i64 56, !8, i64 72, !8, i64 73, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !10, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !13, i64 96, !13, i64 112, !13, i64 128, !13, i64 144}
!16 = !{!"rcti", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!17 = !{!"int", !8, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !7, i64 16}
!20 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !10, i64 36, !10, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!21 = !{!22, !7, i64 48}
!22 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !7, i64 48, !7, i64 56, !17, i64 64, !23, i64 68, !10, i64 72, !10, i64 74, !17, i64 76, !7, i64 80, !17, i64 88, !8, i64 92, !23, i64 104, !23, i64 108}
!23 = !{!"float", !8, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!20, !17, i64 24}
!28 = !{!22, !10, i64 72}
