; ModuleID = 'liblzma/common/filter_flags_decoder.c'
source_filename = "liblzma/common/filter_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_filter_flags_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !6
  %8 = tail call i32 @lzma_vli_decode(ptr noundef %0, ptr noundef null, ptr noundef %2, ptr noundef %3, i64 noundef %4) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load i64, ptr %0, align 8, !tbaa !12
  %12 = icmp ugt i64 %11, 4611686018427387903
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %14 = call i32 @lzma_vli_decode(ptr noundef nonnull %6, ptr noundef null, ptr noundef %2, ptr noundef %3, i64 noundef %4) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i64, ptr %3, align 8, !tbaa !13
  %18 = sub i64 %4, %17
  %19 = load i64, ptr %6, align 8, !tbaa !13
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %2, i64 %17
  %23 = call i32 @lzma_properties_decode(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %22, i64 noundef %19) #3
  %24 = load i64, ptr %6, align 8, !tbaa !13
  %25 = load i64, ptr %3, align 8, !tbaa !13
  %26 = add i64 %25, %24
  store i64 %26, ptr %3, align 8, !tbaa !13
  br label %27

27:                                               ; preds = %16, %13, %21
  %28 = phi i32 [ %23, %21 ], [ %14, %13 ], [ 9, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %29

29:                                               ; preds = %5, %10, %27
  %30 = phi i32 [ %8, %5 ], [ %28, %27 ], [ 9, %10 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 8}
!7 = !{!"", !8, i64 0, !11, i64 8}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!8, !8, i64 0}
