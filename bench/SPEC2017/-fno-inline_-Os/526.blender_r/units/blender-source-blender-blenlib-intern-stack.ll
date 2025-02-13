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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_stack_new_ex(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 48, ptr noundef %1) #6
  %6 = tail call fastcc i64 @stack_chunk_elem_max_calc(i64 noundef %0, i64 noundef %2) #7
  %7 = getelementptr inbounds %struct.BLI_Stack, ptr %5, i64 0, i32 3
  store i64 %6, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.BLI_Stack, ptr %5, i64 0, i32 4
  store i64 %0, ptr %8, align 8, !tbaa !41
  %9 = add i64 %6, -1
  %10 = getelementptr inbounds %struct.BLI_Stack, ptr %5, i64 0, i32 2
  store i64 %9, ptr %10, align 8, !tbaa !42
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @stack_chunk_elem_max_calc(i64 noundef %0, i64 noundef %1) unnamed_addr #1 !PGOFuncName !43 {
  %3 = shl i64 %0, 5
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ %1, %2 ], [ %7, %4 ]
  %6 = icmp ugt i64 %5, %3
  %7 = shl i64 %5, 1
  br i1 %6, label %8, label %4, !llvm.loop !44

8:                                                ; preds = %4
  %9 = add i64 %5, -16
  %10 = udiv i64 %9, %0
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_stack_new(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_stack_new_ex(i64 noundef %0, ptr noundef %1, i64 noundef 65536) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_stack_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  tail call fastcc void @stack_free_chunks(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  tail call fastcc void @stack_free_chunks(ptr noundef %4) #7
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stack_free_chunks(ptr noundef %0) unnamed_addr #0 !PGOFuncName !48 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %4) #6
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !49

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_stack_push_r(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !42
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !46
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %15, ptr %11, align 8, !tbaa !47
  br label %23

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !41
  %20 = mul i64 %19, %4
  %21 = add i64 %20, 8
  %22 = tail call ptr %17(i64 noundef %21, ptr noundef nonnull @__func__.BLI_stack_push_r) #6
  br label %23

23:                                               ; preds = %16, %14
  %24 = phi ptr [ %12, %14 ], [ %22, %16 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !46
  store ptr %25, ptr %24, align 8, !tbaa !34
  store ptr %24, ptr %0, align 8, !tbaa !46
  store i64 0, ptr %2, align 8, !tbaa !42
  br label %26

26:                                               ; preds = %8, %23
  %27 = phi i64 [ %4, %8 ], [ 0, %23 ]
  %28 = phi ptr [ %9, %8 ], [ %24, %23 ]
  %29 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !50
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.StackChunk, ptr %28, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !41
  %35 = mul i64 %27, %34
  %36 = getelementptr inbounds i8, ptr %32, i64 %35
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_stack_push(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_stack_push_r(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_stack_pop(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.StackChunk, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !42
  %9 = mul i64 %8, %6
  %10 = getelementptr inbounds i8, ptr %4, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %10, i64 %6, i1 false)
  tail call void @BLI_stack_discard(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_stack_discard(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !50
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !42
  %7 = add i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !42
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %11, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  store ptr %13, ptr %10, align 8, !tbaa !34
  store ptr %10, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !38
  %16 = add i64 %15, -1
  store i64 %16, ptr %5, align 8, !tbaa !42
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_stack_pop_n(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %2, %5 ], [ %10, %7 ]
  %9 = phi ptr [ %1, %5 ], [ %12, %7 ]
  %10 = add i32 %8, -1
  tail call void @BLI_stack_pop(ptr noundef %0, ptr noundef %9) #7
  %11 = load i64, ptr %6, align 8, !tbaa !41
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %7, !llvm.loop !51

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BLI_stack_peek(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.StackChunk, ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !42
  %8 = mul i64 %7, %5
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @BLI_stack_count(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BLI_Stack, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !50
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_stack_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 24}
!39 = !{!"BLI_Stack", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40}
!40 = !{!"long", !36, i64 0}
!41 = !{!39, !40, i64 32}
!42 = !{!39, !40, i64 16}
!43 = !{!"stack.c:stack_chunk_elem_max_calc"}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!39, !35, i64 0}
!47 = !{!39, !35, i64 8}
!48 = !{!"stack.c:stack_free_chunks"}
!49 = distinct !{!49, !45}
!50 = !{!39, !40, i64 40}
!51 = distinct !{!51, !45}
