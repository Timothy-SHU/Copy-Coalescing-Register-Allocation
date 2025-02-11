; ModuleID = 'varray.c'
source_filename = "varray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i8, i8 }
%struct.varray_head_tag = type { i64, i64, i32, ptr, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x i64] }

@element = internal unnamed_addr constant [22 x %struct.anon] [%struct.anon { i8 1, i8 1 }, %struct.anon { i8 1, i8 1 }, %struct.anon { i8 2, i8 1 }, %struct.anon { i8 2, i8 1 }, %struct.anon { i8 4, i8 1 }, %struct.anon { i8 4, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 0 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 0 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @varray_init(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [22 x %struct.anon], ptr @element, i64 0, i64 %4
  %6 = load i8, ptr %5, align 2, !tbaa !5
  %7 = zext i8 %6 to i64
  %8 = mul i64 %7, %0
  switch i32 %1, label %9 [
    i32 17, label %12
    i32 11, label %12
  ]

9:                                                ; preds = %3
  %10 = add i64 %8, 32
  %11 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %10) #5
  br label %15

12:                                               ; preds = %3, %3
  %13 = add i64 %8, 32
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %13) #5
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %11, %9 ], [ %14, %12 ]
  store i64 %0, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.varray_head_tag, ptr %16, i64 0, i32 1
  store i64 0, ptr %17, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.varray_head_tag, ptr %16, i64 0, i32 2
  store i32 %1, ptr %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.varray_head_tag, ptr %16, i64 0, i32 3
  store ptr %2, ptr %19, align 8, !tbaa !16
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @varray_grow(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !9
  %4 = icmp eq i64 %3, %1
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [22 x %struct.anon], ptr @element, i64 0, i64 %8
  %10 = load i8, ptr %9, align 2, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = mul i64 %3, %11
  %13 = mul i64 %11, %1
  switch i32 %7, label %14 [
    i32 17, label %17
    i32 11, label %17
  ]

14:                                               ; preds = %5
  %15 = add i64 %13, 32
  %16 = tail call ptr @ggc_realloc_stat(ptr noundef nonnull %0, i64 noundef %15) #5
  br label %20

17:                                               ; preds = %5, %5
  %18 = add i64 %13, 32
  %19 = tail call ptr @xrealloc(ptr noundef nonnull %0, i64 noundef %18) #5
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %16, %14 ], [ %19, %17 ]
  store i64 %1, ptr %21, align 8, !tbaa !9
  %22 = icmp ult i64 %3, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.varray_head_tag, ptr %21, i64 0, i32 4
  %25 = getelementptr inbounds [1 x i8], ptr %24, i64 0, i64 %12
  %26 = sub i64 %13, %12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %25, i8 0, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %20, %23, %2
  %28 = phi ptr [ %0, %2 ], [ %21, %23 ], [ %21, %20 ]
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @varray_clear(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !15
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [22 x %struct.anon], ptr @element, i64 0, i64 %4
  %6 = load i8, ptr %5, align 2, !tbaa !5
  %7 = zext i8 %6 to i64
  %8 = load i64, ptr %0, align 8, !tbaa !9
  %9 = mul i64 %8, %7
  %10 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %10, i8 0, i64 %9, i1 false)
  %11 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 1
  store i64 0, ptr %11, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_varray_statistics() local_unnamed_addr #4 {
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 1}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"varray_head_tag", !11, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !7, i64 32}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!10, !11, i64 8}
!15 = !{!10, !12, i64 16}
!16 = !{!10, !13, i64 24}
