; ModuleID = 'blender/source/blender/blenlib/intern/stack.c'
source_filename = "blender/source/blender/blenlib/intern/stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BLI_Stack = type { ptr, ptr, i64, i64, i64, i64 }
%struct.StackChunk = type { ptr, [0 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_stack_push_r = private unnamed_addr constant [17 x i8] c"BLI_stack_push_r\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_stack_new_ex(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 48, ptr noundef %1) #5
  %6 = shl i64 %0, 5
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ %2, %3 ], [ %10, %7 ]
  %9 = icmp ugt i64 %8, %6
  %10 = shl i64 %8, 1
  br i1 %9, label %11, label %7, !llvm.loop !38

11:                                               ; preds = %7
  %12 = add i64 %8, -16
  %13 = udiv i64 %12, %0
  %14 = getelementptr inbounds %struct.BLI_Stack, ptr %5, i64 0, i32 3
  store i64 %13, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.BLI_Stack, ptr %5, i64 0, i32 4
  store i64 %0, ptr %15, align 8, !tbaa !44
  %16 = add i64 %13, -1
  %17 = getelementptr inbounds %struct.BLI_Stack, ptr %5, i64 0, i32 2
  store i64 %16, ptr %17, align 8, !tbaa !45
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_stack_new(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %1) #5
  %5 = shl i64 %0, 5
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 65536, %2 ], [ %9, %6 ]
  %8 = icmp ugt i64 %7, %5
  %9 = shl i64 %7, 1
  br i1 %8, label %10, label %6, !llvm.loop !38

10:                                               ; preds = %6
  %11 = add i64 %7, -16
  %12 = udiv i64 %11, %0
  %13 = getelementptr inbounds %struct.BLI_Stack, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.BLI_Stack, ptr %4, i64 0, i32 4
  store i64 %0, ptr %14, align 8, !tbaa !44
  %15 = add i64 %12, -1
  %16 = getelementptr inbounds %struct.BLI_Stack, ptr %4, i64 0, i32 2
  store i64 %15, ptr %16, align 8, !tbaa !45
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_stack_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef nonnull %5) #5
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !47

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %14) #5
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %13, !llvm.loop !47

18:                                               ; preds = %13, %9
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_stack_push_r(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !45
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %13, ptr %9, align 8, !tbaa !48
  br label %21

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !44
  %18 = mul i64 %17, %6
  %19 = add i64 %18, 8
  %20 = tail call ptr %15(i64 noundef %19, ptr noundef nonnull @__func__.BLI_stack_push_r) #5
  br label %21

21:                                               ; preds = %14, %12
  %22 = phi ptr [ %10, %12 ], [ %20, %14 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !46
  store ptr %23, ptr %22, align 8, !tbaa !34
  store ptr %22, ptr %0, align 8, !tbaa !46
  store i64 0, ptr %2, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !49
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8, !tbaa !49
  %28 = load ptr, ptr %0, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.StackChunk, ptr %28, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !44
  %32 = load i64, ptr %2, align 8, !tbaa !45
  %33 = mul i64 %32, %31
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_stack_push(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = add i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !41
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %14, ptr %10, align 8, !tbaa !48
  br label %22

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !44
  %19 = mul i64 %18, %7
  %20 = add i64 %19, 8
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @__func__.BLI_stack_push_r) #5
  br label %22

22:                                               ; preds = %15, %13
  %23 = phi ptr [ %11, %13 ], [ %21, %15 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !46
  store ptr %24, ptr %23, align 8, !tbaa !34
  store ptr %23, ptr %0, align 8, !tbaa !46
  store i64 0, ptr %3, align 8, !tbaa !45
  br label %25

25:                                               ; preds = %2, %22
  %26 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !49
  %28 = add i64 %27, 1
  store i64 %28, ptr %26, align 8, !tbaa !49
  %29 = load ptr, ptr %0, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.StackChunk, ptr %29, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !44
  %33 = load i64, ptr %3, align 8, !tbaa !45
  %34 = mul i64 %33, %32
  %35 = getelementptr inbounds i8, ptr %30, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %1, i64 %32, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_stack_pop(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.StackChunk, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !45
  %9 = mul i64 %8, %6
  %10 = getelementptr inbounds i8, ptr %4, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %10, i64 %6, i1 false)
  %11 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = add i64 %12, -1
  store i64 %13, ptr %11, align 8, !tbaa !49
  %14 = load i64, ptr %7, align 8, !tbaa !45
  %15 = add i64 %14, -1
  store i64 %15, ptr %7, align 8, !tbaa !45
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load ptr, ptr %0, align 8, !tbaa !46
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  store ptr %19, ptr %0, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  store ptr %21, ptr %18, align 8, !tbaa !34
  store ptr %18, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !41
  %24 = add i64 %23, -1
  store i64 %24, ptr %7, align 8, !tbaa !45
  br label %25

25:                                               ; preds = %2, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_stack_discard(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !45
  %7 = add i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !45
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %11, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  store ptr %13, ptr %10, align 8, !tbaa !34
  store ptr %10, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = add i64 %15, -1
  store i64 %16, ptr %5, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_stack_pop_n(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %5, %32
  %12 = phi i32 [ %2, %5 ], [ %14, %32 ]
  %13 = phi ptr [ %1, %5 ], [ %34, %32 ]
  %14 = add i32 %12, -1
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.StackChunk, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %6, align 8, !tbaa !44
  %18 = load i64, ptr %7, align 8, !tbaa !45
  %19 = mul i64 %18, %17
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr nonnull align 1 %20, i64 %17, i1 false)
  %21 = load i64, ptr %8, align 8, !tbaa !49
  %22 = add i64 %21, -1
  store i64 %22, ptr %8, align 8, !tbaa !49
  %23 = load i64, ptr %7, align 8, !tbaa !45
  %24 = add i64 %23, -1
  store i64 %24, ptr %7, align 8, !tbaa !45
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %11
  %27 = load ptr, ptr %0, align 8, !tbaa !46
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  store ptr %28, ptr %0, align 8, !tbaa !46
  %29 = load ptr, ptr %9, align 8, !tbaa !48
  store ptr %29, ptr %27, align 8, !tbaa !34
  store ptr %27, ptr %9, align 8, !tbaa !48
  %30 = load i64, ptr %10, align 8, !tbaa !41
  %31 = add i64 %30, -1
  store i64 %31, ptr %7, align 8, !tbaa !45
  br label %32

32:                                               ; preds = %11, %26
  %33 = load i64, ptr %6, align 8, !tbaa !44
  %34 = getelementptr inbounds i8, ptr %13, i64 %33
  %35 = icmp eq i32 %14, 0
  br i1 %35, label %36, label %11, !llvm.loop !50

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BLI_stack_peek(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.StackChunk, ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !45
  %8 = mul i64 %7, %5
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @BLI_stack_count(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !49
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_stack_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !43, i64 24}
!42 = !{!"BLI_Stack", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!43 = !{!"long", !36, i64 0}
!44 = !{!42, !43, i64 32}
!45 = !{!42, !43, i64 16}
!46 = !{!42, !35, i64 0}
!47 = distinct !{!47, !39, !40}
!48 = !{!42, !35, i64 8}
!49 = !{!42, !43, i64 40}
!50 = distinct !{!50, !39, !40}
