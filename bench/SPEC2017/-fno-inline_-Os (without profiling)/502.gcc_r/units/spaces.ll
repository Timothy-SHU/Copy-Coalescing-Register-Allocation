; ModuleID = 'spaces.c'
source_filename = "spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@spaces.buf = internal unnamed_addr global ptr null, align 8
@spaces.maxsize = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local ptr @spaces(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @spaces.maxsize, align 4, !tbaa !5
  %3 = icmp slt i32 %2, %0
  %4 = load ptr, ptr @spaces.buf, align 8, !tbaa !9
  br i1 %3, label %7, label %5

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  br label %21

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @free(ptr noundef nonnull %4) #4
  br label %10

10:                                               ; preds = %9, %7
  %11 = add nuw nsw i32 %0, 1
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @malloc(i64 noundef %12) #5
  store ptr %13, ptr @spaces.buf, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = zext i32 %0 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %13, i8 32, i64 %16, i1 false), !tbaa !11
  br label %20

20:                                               ; preds = %19, %15
  store i32 %0, ptr @spaces.maxsize, align 4, !tbaa !5
  store i8 0, ptr %17, align 1, !tbaa !11
  br label %21

21:                                               ; preds = %5, %20
  %22 = phi i64 [ %6, %5 ], [ %16, %20 ]
  %23 = phi ptr [ %4, %5 ], [ %13, %20 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = sext i32 %0 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  br label %28

28:                                               ; preds = %10, %21
  %29 = phi ptr [ %27, %21 ], [ null, %10 ]
  ret ptr %29
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize }
attributes #5 = { optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
