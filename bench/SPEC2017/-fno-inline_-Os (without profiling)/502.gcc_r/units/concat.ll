; ModuleID = 'concat.c'
source_filename = "concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@libiberty_concat_ptr = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @concat_length(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call fastcc i64 @vconcat_length(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @vconcat_length(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %1, align 8
  br label %8

8:                                                ; preds = %4, %23
  %9 = phi i32 [ %7, %4 ], [ %24, %23 ]
  %10 = phi ptr [ %0, %4 ], [ %26, %23 ]
  %11 = phi i64 [ 0, %4 ], [ %13, %23 ]
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #11
  %13 = add i64 %12, %11
  %14 = icmp ult i32 %9, 41
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load ptr, ptr %6, align 8
  %17 = zext nneg i32 %9 to i64
  %18 = getelementptr i8, ptr %16, i64 %17
  %19 = add nuw nsw i32 %9, 8
  store i32 %19, ptr %1, align 8
  br label %23

20:                                               ; preds = %8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %5, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %19, %15 ], [ %9, %20 ]
  %25 = phi ptr [ %18, %15 ], [ %21, %20 ]
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !llvm.loop !5

28:                                               ; preds = %23, %2
  %29 = phi i64 [ 0, %2 ], [ %13, %23 ]
  ret i64 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef ptr @concat_copy(ptr noundef returned %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call fastcc ptr @vconcat_copy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret ptr %0
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @vconcat_copy(ptr noundef returned writeonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %23
  %9 = phi ptr [ %0, %5 ], [ %12, %23 ]
  %10 = phi ptr [ %1, %5 ], [ %25, %23 ]
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr nonnull align 1 %10, i64 %11, i1 false)
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = load i32, ptr %2, align 8
  %14 = icmp ult i32 %13, 41
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 8
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr i8, ptr %16, i64 %17
  %19 = add nuw nsw i32 %13, 8
  store i32 %19, ptr %2, align 8
  br label %23

20:                                               ; preds = %8
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %6, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %18, %15 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !7

27:                                               ; preds = %23, %3
  %28 = phi ptr [ %0, %3 ], [ %12, %23 ]
  store i8 0, ptr %28, align 1, !tbaa !8
  ret ptr %0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @concat_copy2(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @libiberty_concat_ptr, align 8, !tbaa !11
  %4 = call fastcc ptr @vconcat_copy(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  %5 = load ptr, ptr @libiberty_concat_ptr, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @concat(ptr noundef %0, ...) local_unnamed_addr #5 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.va_start(ptr nonnull %2)
  %4 = call fastcc i64 @vconcat_length(ptr noundef %0, ptr noundef nonnull %2) #11
  %5 = add i64 %4, 1
  %6 = call ptr @xmalloc(i64 noundef %5) #12
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.va_start(ptr nonnull %3)
  %7 = call fastcc ptr @vconcat_copy(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %3) #11
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @reconcat(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.va_start(ptr nonnull %3)
  %5 = call fastcc i64 @vconcat_length(ptr noundef %1, ptr noundef nonnull %3) #11
  %6 = add i64 %5, 1
  %7 = call ptr @xmalloc(i64 noundef %6) #12
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.va_start(ptr nonnull %4)
  %8 = call fastcc ptr @vconcat_copy(ptr noundef %7, ptr noundef %1, ptr noundef nonnull %4) #11
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void @free(ptr noundef nonnull %0) #11
  br label %11

11:                                               ; preds = %10, %2
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret ptr %7
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
