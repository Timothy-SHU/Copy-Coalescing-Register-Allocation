; ModuleID = 'gp_unix.c'
source_filename = "gp_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval_ = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"gp_unix.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Ghostscript: gettimeofday failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@gp_scratch_file_name_prefix = external constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gp_init() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gp_exit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @gp_do_exit(i32 noundef %0) local_unnamed_addr #1 {
  tail call void @exit(i32 noundef %0) #11
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @gp_strerror(i32 noundef %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local void @gp_get_realtime(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = alloca %struct.timeval_, align 8
  %3 = alloca %struct.timezone, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = call i32 (ptr, ptr, ...) @gettimeofday(ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  call void @lprintf_file_and_line(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 93) #12
  %8 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 34, i64 1, ptr %8)
  call void @gs_exit(i32 noundef 1) #12
  br label %10

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %11 = load i64, ptr %2, align 8, !tbaa !9
  store i64 %11, ptr %0, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.timeval_, ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp ult i64 %13, 1000000
  %15 = mul nsw i64 %13, 1000
  %16 = select i1 %14, i64 %15, i64 0
  %17 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 %16, ptr %17, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @gettimeofday(...) local_unnamed_addr #5

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gs_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @gp_get_usertime(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = alloca %struct.timeval_, align 8
  %3 = alloca %struct.timezone, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = call i32 (ptr, ptr, ...) @gettimeofday(ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  call void @lprintf_file_and_line(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 93) #12
  %8 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 34, i64 1, ptr %8)
  call void @gs_exit(i32 noundef 1) #12
  br label %10

10:                                               ; preds = %1, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %11 = load i64, ptr %2, align 8, !tbaa !9
  store i64 %11, ptr %0, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.timeval_, ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp ult i64 %13, 1000000
  %15 = mul nsw i64 %13, 1000
  %16 = select i1 %14, i64 %15, i64 0
  %17 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 %16, ptr %17, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nofree nounwind memory(read) uwtable
define dso_local noundef ptr @gp_getenv_display() local_unnamed_addr #6 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #12
  ret ptr %1
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @gp_open_printer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i8, ptr %0, align 1
  switch i8 %3, label %9 [
    i8 0, label %4
    i8 124, label %6
  ]

4:                                                ; preds = %2
  %5 = tail call ptr @gp_open_scratch_file(ptr noundef nonnull @gp_scratch_file_name_prefix, ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  br label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = tail call noalias ptr @popen(ptr noundef nonnull %7, ptr noundef nonnull @.str.3)
  br label %11

9:                                                ; preds = %2
  %10 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %11

11:                                               ; preds = %6, %9, %4
  %12 = phi ptr [ %5, %4 ], [ %8, %6 ], [ %10, %9 ]
  ret ptr %12
}

declare ptr @gp_open_scratch_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @gp_close_printer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i8, ptr %1, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 124
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @pclose(ptr noundef %0)
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @fclose(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"timeval_", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
