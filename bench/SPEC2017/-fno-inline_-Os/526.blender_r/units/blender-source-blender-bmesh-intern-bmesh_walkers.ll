; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_walkers.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_walkers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.BMwGenericWalker = type { %struct.Link, i32 }
%struct.Link = type { ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"bmesh walkers\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bmesh walkers sec\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [100 x i8] c"%s: Invalid walker type in BMW_init; type: %d, searchmask: (v:%d, e:%d, f:%d), flag: %d, layer: %d\0A\00", align 1
@__func__.BMW_init = private unnamed_addr constant [9 x i8] c"BMW_init\00", align 1
@bm_walker_types = external local_unnamed_addr global [0 x ptr], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMW_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void %4(ptr noundef %0, ptr noundef %1) #7
  %5 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = tail call ptr %9(ptr noundef nonnull %0) #7
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %10, %7 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BMW_current_state(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMwGenericWalker, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = add nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  store i32 %8, ptr %9, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMW_init(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 7
  store i32 %7, ptr %9, align 4, !tbaa !48
  %10 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  store i32 %6, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  store ptr %1, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 11
  store i16 %3, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  store i16 %4, ptr %13, align 2, !tbaa !52
  %14 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  store i16 %5, ptr %14, align 4, !tbaa !53
  %15 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str) #7
  %16 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  store ptr %15, ptr %16, align 8, !tbaa !54
  %17 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.1) #7
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  store ptr %17, ptr %18, align 8, !tbaa !55
  %19 = icmp ugt i32 %2, 10
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = load ptr, ptr @stderr, align 8, !tbaa !56
  %22 = sext i16 %3 to i32
  %23 = sext i16 %4 to i32
  %24 = sext i16 %5 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.BMW_init, i32 noundef %2, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %6, i32 noundef %7) #9
  br label %60

26:                                               ; preds = %8
  %27 = icmp eq i32 %2, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !57
  br label %55

31:                                               ; preds = %26
  %32 = zext nneg i32 %2 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr @bm_walker_types, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = load i8, ptr %34, align 8, !tbaa !58
  store i8 %35, ptr %0, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.BMWalker, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %33, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.BMWalker, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !59
  %43 = load ptr, ptr %33, align 8, !tbaa !56
  %44 = getelementptr inbounds %struct.BMWalker, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  %46 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !42
  %47 = load ptr, ptr %33, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.BMWalker, ptr %47, i64 0, i32 4
  %49 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 4
  %50 = load <2 x i32>, ptr %48, align 8, !tbaa !60
  store <2 x i32> %50, ptr %49, align 8, !tbaa !60
  %51 = getelementptr inbounds %struct.BMWalker, ptr %47, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 6
  store i32 %52, ptr %53, align 8, !tbaa !61
  %54 = extractelement <2 x i32> %50, i64 0
  br label %55

55:                                               ; preds = %28, %31
  %56 = phi i32 [ %30, %28 ], [ %54, %31 ]
  %57 = tail call ptr @BLI_mempool_create(i32 noundef %56, i32 noundef 0, i32 noundef 128, i32 noundef 0) #7
  %58 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  store ptr %57, ptr %58, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %59) #8
  br label %60

60:                                               ; preds = %55, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMW_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  tail call void @BLI_mempool_destroy(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @BLI_gset_free(ptr noundef %5, ptr noundef null) #7
  %6 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  tail call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMW_step(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BMW_walk(ptr noundef %0) #8
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMW_walk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %6, %1
  %4 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %3, label %10, !llvm.loop !64

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BMW_current_depth(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMW_state_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  tail call void @BLI_mempool_free(ptr noundef %5, ptr noundef %2) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMW_state_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call ptr @BLI_mempool_alloc(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.BMwGenericWalker, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !66
  switch i32 %9, label %14 [
    i32 0, label %10
    i32 1, label %12
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call void @BLI_addhead(ptr noundef nonnull %11, ptr noundef nonnull %4) #7
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef nonnull %4) #7
  br label %14

14:                                               ; preds = %1, %12, %10
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMW_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1, %4
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %5 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !llvm.loop !67

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  store i32 0, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  tail call void @BLI_gset_clear(ptr noundef %10, ptr noundef null) #7
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  tail call void @BLI_gset_clear(ptr noundef %12, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_gset_clear(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { cold optsize }

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
!34 = !{!35, !38, i64 8}
!35 = !{!"BMWalker", !36, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !38, i64 48, !38, i64 56, !40, i64 64, !41, i64 80, !41, i64 82, !41, i64 84, !39, i64 88, !38, i64 96, !38, i64 104, !39, i64 112}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"ListBase", !38, i64 0, !38, i64 8}
!41 = !{!"short", !36, i64 0}
!42 = !{!35, !38, i64 16}
!43 = !{!35, !38, i64 64}
!44 = !{!45, !39, i64 16}
!45 = !{!"BMwGenericWalker", !46, i64 0, !39, i64 16}
!46 = !{!"Link", !38, i64 0, !38, i64 8}
!47 = !{!35, !39, i64 112}
!48 = !{!35, !39, i64 44}
!49 = !{!35, !39, i64 88}
!50 = !{!35, !38, i64 48}
!51 = !{!35, !41, i64 80}
!52 = !{!35, !41, i64 82}
!53 = !{!35, !41, i64 84}
!54 = !{!35, !38, i64 96}
!55 = !{!35, !38, i64 104}
!56 = !{!38, !38, i64 0}
!57 = !{!35, !39, i64 32}
!58 = !{!35, !36, i64 0}
!59 = !{!35, !38, i64 24}
!60 = !{!39, !39, i64 0}
!61 = !{!35, !39, i64 40}
!62 = !{!35, !38, i64 56}
!63 = !{!"bmesh_walkers.c:BLI_listbase_clear"}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!35, !39, i64 36}
!67 = distinct !{!67, !65}
