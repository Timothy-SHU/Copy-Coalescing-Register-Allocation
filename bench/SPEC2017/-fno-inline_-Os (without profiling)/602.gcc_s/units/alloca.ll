; ModuleID = 'alloca.c'
source_filename = "alloca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr }

@libiberty_optr = dso_local local_unnamed_addr global ptr null, align 8
@libiberty_nptr = dso_local local_unnamed_addr global ptr null, align 8
@libiberty_len = dso_local local_unnamed_addr global i64 0, align 8
@stack_dir = internal unnamed_addr global i32 0, align 4
@last_alloca_header = internal unnamed_addr global ptr null, align 8
@find_stack_direction.addr = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @C_alloca(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  %3 = load i32, ptr @stack_dir, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @find_stack_direction() #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @last_alloca_header, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6, %23
  %10 = phi ptr [ %24, %23 ], [ %7, %6 ]
  %11 = load i32, ptr @stack_dir, align 4, !tbaa !6
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = icmp ugt ptr %15, %2
  br i1 %16, label %23, label %26

17:                                               ; preds = %9
  %18 = icmp slt i32 %11, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = icmp ult ptr %21, %2
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %13
  %24 = load ptr, ptr %10, align 8, !tbaa !12
  call void @free(ptr noundef nonnull %10) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !13

26:                                               ; preds = %23, %19, %17, %13, %6
  %27 = phi ptr [ null, %6 ], [ %10, %13 ], [ %10, %17 ], [ %10, %19 ], [ null, %23 ]
  store ptr %27, ptr @last_alloca_header, align 8, !tbaa !10
  %28 = icmp eq i64 %0, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = add i64 %0, 16
  %31 = call ptr @xmalloc(i64 noundef %30) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @abort() #9
  unreachable

34:                                               ; preds = %29
  %35 = load ptr, ptr @last_alloca_header, align 8, !tbaa !10
  store ptr %35, ptr %31, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.anon, ptr %31, i64 0, i32 1
  store ptr %2, ptr %36, align 8, !tbaa !12
  store ptr %31, ptr @last_alloca_header, align 8, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %31, i64 16
  br label %38

38:                                               ; preds = %26, %34
  %39 = phi ptr [ %37, %34 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @find_stack_direction() unnamed_addr #2 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #6
  %2 = load ptr, ptr @find_stack_direction.addr, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store ptr %1, ptr @find_stack_direction.addr, align 8, !tbaa !10
  call fastcc void @find_stack_direction() #7
  br label %9

5:                                                ; preds = %0
  %6 = icmp ugt ptr %1, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  store i32 1, ptr @stack_dir, align 4, !tbaa !6
  br label %9

8:                                                ; preds = %5
  store i32 -1, ptr @stack_dir, align 4, !tbaa !6
  br label %9

9:                                                ; preds = %7, %8, %4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
