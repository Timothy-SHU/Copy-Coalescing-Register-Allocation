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

; Function Attrs: nounwind uwtable
define dso_local ptr @BMW_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void %4(ptr noundef %0, ptr noundef %1) #6
  %5 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMwGenericWalker, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  store i32 %11, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = tail call ptr %14(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi ptr [ %15, %8 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BMW_current_state(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMwGenericWalker, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = add nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  store i32 %8, ptr %9, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
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
  %15 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str) #6
  %16 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  store ptr %15, ptr %16, align 8, !tbaa !54
  %17 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.1) #6
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  store ptr %17, ptr %18, align 8, !tbaa !55
  %19 = icmp ugt i32 %2, 10
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = load ptr, ptr @stderr, align 8, !tbaa !56
  %22 = sext i16 %3 to i32
  %23 = sext i16 %4 to i32
  %24 = sext i16 %5 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.BMW_init, i32 noundef %2, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %6, i32 noundef %7) #7
  br label %60

26:                                               ; preds = %8
  %27 = icmp eq i32 %2, 10
  br i1 %27, label %54, label %28

28:                                               ; preds = %26
  %29 = zext nneg i32 %2 to i64
  %30 = getelementptr inbounds [0 x ptr], ptr @bm_walker_types, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = load i8, ptr %31, align 8, !tbaa !57
  store i8 %32, ptr %0, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.BMWalker, ptr %31, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !34
  %36 = load ptr, ptr %30, align 8, !tbaa !56
  %37 = getelementptr inbounds %struct.BMWalker, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !58
  %40 = load ptr, ptr %30, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.BMWalker, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !47
  %44 = load ptr, ptr %30, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct.BMWalker, ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 4
  store i32 %46, ptr %47, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.BMWalker, ptr %44, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !60
  %50 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 5
  store i32 %49, ptr %50, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.BMWalker, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 6
  store i32 %52, ptr %53, align 8, !tbaa !61
  br label %54

54:                                               ; preds = %28, %26
  %55 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !59
  %57 = tail call ptr @BLI_mempool_create(i32 noundef %56, i32 noundef 0, i32 noundef 128, i32 noundef 0) #6
  %58 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  store ptr %57, ptr %58, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br label %60

60:                                               ; preds = %54, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BMW_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  tail call void @BLI_mempool_destroy(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @BLI_gset_free(ptr noundef %5, ptr noundef null) #6
  %6 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  tail call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #6
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #3

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BMW_step(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %4 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %8, %1
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMwGenericWalker, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 8, !tbaa !46
  %12 = load ptr, ptr %4, align 8, !tbaa !47
  %13 = tail call ptr %12(ptr noundef %0) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15, !llvm.loop !63

15:                                               ; preds = %5, %8
  %16 = phi ptr [ %13, %8 ], [ null, %5 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BMW_walk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %4 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %8, %1
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMwGenericWalker, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 8, !tbaa !46
  %12 = load ptr, ptr %4, align 8, !tbaa !47
  %13 = tail call ptr %12(ptr noundef %0) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15, !llvm.loop !63

15:                                               ; preds = %5, %8
  %16 = phi ptr [ %13, %8 ], [ null, %5 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BMW_current_depth(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !46
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BMW_state_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMwGenericWalker, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = add nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  store i32 %8, ptr %9, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %1, %5
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %3) #6
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void @BLI_mempool_free(ptr noundef %12, ptr noundef %3) #6
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BMW_state_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call ptr @BLI_mempool_alloc(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.BMwGenericWalker, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !60
  switch i32 %9, label %14 [
    i32 0, label %10
    i32 1, label %12
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call void @BLI_addhead(ptr noundef nonnull %11, ptr noundef %4) #6
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %4) #6
  br label %14

14:                                               ; preds = %1, %12, %10
  ret ptr %4
}

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #3

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BMW_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  %7 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 9
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %3, %5 ], [ %14, %8 ]
  %10 = getelementptr inbounds %struct.BMwGenericWalker, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %6, align 8, !tbaa !46
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %9) #6
  %13 = load ptr, ptr %7, align 8, !tbaa !62
  tail call void @BLI_mempool_free(ptr noundef %13, ptr noundef nonnull %9) #6
  %14 = load ptr, ptr %2, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !66

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 17
  store i32 0, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void @BLI_gset_clear(ptr noundef %19, ptr noundef null) #6
  %20 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  tail call void @BLI_gset_clear(ptr noundef %21, ptr noundef null) #6
  ret void
}

declare void @BLI_gset_clear(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold }

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
!34 = !{!35, !38, i64 8}
!35 = !{!"BMWalker", !36, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !38, i64 48, !38, i64 56, !40, i64 64, !41, i64 80, !41, i64 82, !41, i64 84, !39, i64 88, !38, i64 96, !38, i64 104, !39, i64 112}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"ListBase", !38, i64 0, !38, i64 8}
!41 = !{!"short", !36, i64 0}
!42 = !{!35, !38, i64 64}
!43 = !{!44, !39, i64 16}
!44 = !{!"BMwGenericWalker", !45, i64 0, !39, i64 16}
!45 = !{!"Link", !38, i64 0, !38, i64 8}
!46 = !{!35, !39, i64 112}
!47 = !{!35, !38, i64 16}
!48 = !{!35, !39, i64 44}
!49 = !{!35, !39, i64 88}
!50 = !{!35, !38, i64 48}
!51 = !{!35, !41, i64 80}
!52 = !{!35, !41, i64 82}
!53 = !{!35, !41, i64 84}
!54 = !{!35, !38, i64 96}
!55 = !{!35, !38, i64 104}
!56 = !{!38, !38, i64 0}
!57 = !{!35, !36, i64 0}
!58 = !{!35, !38, i64 24}
!59 = !{!35, !39, i64 32}
!60 = !{!35, !39, i64 36}
!61 = !{!35, !39, i64 40}
!62 = !{!35, !38, i64 56}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
