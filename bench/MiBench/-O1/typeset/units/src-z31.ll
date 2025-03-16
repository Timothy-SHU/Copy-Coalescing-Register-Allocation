; ModuleID = 'src/z31.c'
source_filename = "src/z31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zz_lengths = dso_local local_unnamed_addr global [150 x i8] zeroinitializer, align 16
@GetMemory.next_free = internal unnamed_addr global ptr null, align 8
@GetMemory.top_free = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [32 x i8] c"exiting now (run out of memory)\00", align 1
@zz_free = dso_local local_unnamed_addr global [265 x ptr] zeroinitializer, align 16
@zz_hold = dso_local local_unnamed_addr global ptr null, align 8
@zz_tmp = dso_local local_unnamed_addr global ptr null, align 8
@zz_res = dso_local local_unnamed_addr global ptr null, align 8
@zz_size = dso_local local_unnamed_addr global i32 0, align 4
@xx_link = dso_local local_unnamed_addr global ptr null, align 8
@xx_tmp = dso_local local_unnamed_addr global ptr null, align 8
@xx_res = dso_local local_unnamed_addr global ptr null, align 8
@xx_hold = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MemInit() local_unnamed_addr #0 {
  store i8 0, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 12), align 4, !tbaa !5
  store i8 5, ptr @zz_lengths, align 16, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 2), i8 12, i64 6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 13), i8 12, i64 87, i1 false)
  store <4 x i8> <i8 21, i8 12, i8 12, i8 0>, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 8), align 8, !tbaa !5
  store i8 12, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 149), align 1, !tbaa !5
  store i8 12, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 148), align 4, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 102), i8 12, i64 10, i1 false)
  store i32 202116108, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 114), align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 119), i8 12, i64 7, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 127), i8 12, i64 13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 142), i8 16, i64 5, i1 false)
  store i8 9, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  store i8 9, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 101), align 1, !tbaa !5
  store i8 9, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 100), align 4, !tbaa !5
  store i8 11, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 141), align 1, !tbaa !5
  store i8 11, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 140), align 4, !tbaa !5
  store i8 8, ptr getelementptr inbounds ([150 x i8], ptr @zz_lengths, i64 0, i64 147), align 1, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMemory(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @GetMemory.next_free, align 8, !tbaa !8
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr @GetMemory.top_free, align 8, !tbaa !8
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = tail call noalias dereferenceable_or_null(8160) ptr @calloc(i64 noundef 1020, i64 noundef 8) #5
  store ptr %9, ptr @GetMemory.next_free, align 8, !tbaa !8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 31, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %1) #6
  %13 = load ptr, ptr @GetMemory.next_free, align 8, !tbaa !8
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %13, %11 ], [ %9, %8 ]
  %16 = getelementptr inbounds ptr, ptr %15, i64 1020
  store ptr %16, ptr @GetMemory.top_free, align 8, !tbaa !8
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %19 = getelementptr inbounds ptr, ptr %18, i64 %4
  store ptr %19, ptr @GetMemory.next_free, align 8, !tbaa !8
  ret ptr %18
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
