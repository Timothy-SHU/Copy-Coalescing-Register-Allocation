; ModuleID = 'params.c'
source_filename = "params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }

@compiler_params = dso_local local_unnamed_addr global ptr null, align 8
@num_compiler_params = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"params.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"minimum value of parameter %qs is %u\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"maximum value of parameter %qs is %u\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid parameter %qs\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_params(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %4 = load i64, ptr @num_compiler_params, align 8, !tbaa !10
  %5 = add i64 %4, %1
  %6 = shl i64 %5, 5
  %7 = tail call ptr @xrealloc(ptr noundef %3, i64 noundef %6) #5
  store ptr %7, ptr @compiler_params, align 8, !tbaa !6
  %8 = load i64, ptr @num_compiler_params, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.param_info, ptr %7, i64 %8
  %10 = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %0, i64 %10, i1 false)
  %11 = add i64 %8, %1
  store i64 %11, ptr @num_compiler_params, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_param_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @.str.1) #5
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i64, ptr @num_compiler_params, align 8, !tbaa !10
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %31
  %11 = phi i64 [ 0, %8 ], [ %32, %31 ]
  %12 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %0) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !15
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %18) #5
  br label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !16
  %24 = icmp sgt i32 %23, %18
  %25 = icmp slt i32 %23, %1
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %13, i32 noundef %23) #5
  br label %35

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 1
  store i32 %1, ptr %29, align 8, !tbaa !17
  %30 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 2
  store i8 1, ptr %30, align 4, !tbaa !18
  br label %35

31:                                               ; preds = %10
  %32 = add nuw i64 %11, 1
  %33 = icmp eq i64 %32, %6
  br i1 %33, label %34, label %10, !llvm.loop !19

34:                                               ; preds = %31, %5
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef %0) #5
  br label %35

35:                                               ; preds = %20, %28, %27, %34
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @get_num_compiler_params() local_unnamed_addr #4 {
  %1 = load i64, ptr @num_compiler_params, align 8, !tbaa !10
  ret i64 %1
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"param_info", !7, i64 0, !14, i64 8, !8, i64 12, !14, i64 16, !14, i64 20, !7, i64 24}
!14 = !{!"int", !8, i64 0}
!15 = !{!13, !14, i64 16}
!16 = !{!13, !14, i64 20}
!17 = !{!13, !14, i64 8}
!18 = !{!13, !8, i64 12}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
