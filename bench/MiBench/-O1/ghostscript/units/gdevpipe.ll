; ModuleID = 'gdevpipe.c'
source_filename = "gdevpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"%pipe%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileSystem\00", align 1
@gs_iodev_pipe = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @iodev_no_open_device, ptr null, ptr @pipe_fopen, ptr @pipe_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8

declare i32 @iodev_no_init(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_open_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @pipe_fopen(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 %5) #1 {
  %7 = tail call ptr @__errno_location() #6
  store i32 0, ptr %7, align 4, !tbaa !5
  %8 = tail call noalias ptr @popen(ptr noundef %1, ptr noundef %2)
  store ptr %8, ptr %3, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, ptr %7, align 4, !tbaa !5
  %12 = tail call i32 @gs_fopen_errno_to_code(i32 noundef %11) #7
  br label %17

13:                                               ; preds = %6
  %14 = icmp eq ptr %4, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #7
  br label %17

17:                                               ; preds = %13, %15, %10
  %18 = phi i32 [ %12, %10 ], [ 0, %15 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @pipe_fclose(ptr nocapture readnone %0, ptr nocapture noundef %1) #2 {
  %3 = tail call i32 @pclose(ptr noundef %1)
  ret i32 0
}

declare i32 @iodev_no_delete_file(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_rename_file(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_no_file_status(ptr noundef, ptr noundef, ptr noundef) #0

declare ptr @iodev_no_enumerate_files(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @iodev_no_get_params(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_put_params(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

declare i32 @gs_fopen_errno_to_code(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }

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
