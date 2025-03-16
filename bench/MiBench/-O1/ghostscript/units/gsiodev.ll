; ModuleID = 'gsiodev.c'
source_filename = "gsiodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_param_string_s = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%os%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileSystem\00", align 1
@gs_iodev_os = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @iodev_no_open_device, ptr null, ptr @iodev_os_fopen, ptr @iodev_os_fclose, ptr @os_delete, ptr @os_rename, ptr @os_status, ptr @os_enumerate, ptr @gp_enumerate_files_next, ptr @gp_enumerate_files_close, ptr @os_get_params, ptr @iodev_no_put_params } }, align 8
@gx_io_device_table = external local_unnamed_addr global [0 x ptr], align 8
@gx_io_device_table_count = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"HasNames\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_open_device(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 {
  ret i32 -9
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @iodev_os_fopen(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 %5) #1 {
  %7 = tail call ptr @__errno_location() #13
  store i32 0, ptr %7, align 4, !tbaa !5
  %8 = tail call ptr @gp_fopen(ptr noundef %1, ptr noundef %2) #14
  store ptr %8, ptr %3, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, ptr %7, align 4, !tbaa !5
  switch i32 %11, label %15 [
    i32 2, label %20
    i32 36, label %20
    i32 13, label %12
    i32 24, label %13
    i32 23, label %14
  ]

12:                                               ; preds = %10
  br label %20

13:                                               ; preds = %10
  br label %20

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %6
  %17 = icmp eq ptr %4, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #14
  br label %20

20:                                               ; preds = %15, %14, %13, %12, %10, %10, %16, %18
  %21 = phi i32 [ 0, %18 ], [ 0, %16 ], [ -12, %15 ], [ -13, %14 ], [ -13, %13 ], [ -9, %12 ], [ -22, %10 ], [ -22, %10 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @iodev_os_fclose(ptr nocapture readnone %0, ptr nocapture noundef %1) #2 {
  %3 = tail call i32 @fclose(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @os_delete(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call i32 @unlink(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -12
  ret i32 %5
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @os_rename(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = tail call i32 @rename(ptr noundef %1, ptr noundef %2) #14
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 -12
  ret i32 %6
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @os_status(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = tail call i32 @stat(ptr noundef %1, ptr noundef %2) #14
  %5 = icmp slt i32 %4, 0
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal ptr @os_enumerate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = tail call ptr @gp_enumerate_files_init(ptr noundef %1, i32 noundef %2, ptr noundef %3) #14
  ret ptr %5
}

declare i32 @gp_enumerate_files_next(ptr noundef, ptr noundef, i32 noundef) #3

declare void @gp_enumerate_files_close(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @os_get_params(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 1, ptr %3, align 4, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = call i32 %6(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #14
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @iodev_no_put_params(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %1, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %3, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = tail call i32 %5(ptr noundef nonnull %1) #14
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_iodev_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @gx_io_device_table, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ @gx_io_device_table, %1 ]
  %7 = getelementptr inbounds %struct.gx_io_device_s, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = tail call i32 %8(ptr noundef nonnull %5, ptr noundef %0) #14
  %10 = getelementptr inbounds ptr, ptr %6, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !19

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_open_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 {
  ret i32 -9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_fopen(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, i32 noundef %5) local_unnamed_addr #0 {
  ret i32 -9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_fclose(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 -12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_delete_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 -9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_rename_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 -9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_file_status(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @iodev_no_enumerate_files(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @iodev_no_get_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @gp_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gs_fopen_errno_to_code(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %5 [
    i32 2, label %6
    i32 36, label %6
    i32 13, label %2
    i32 24, label %3
    i32 23, label %4
  ]

2:                                                ; preds = %1
  br label %6

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %1, %5, %4, %3, %2
  %7 = phi i32 [ -12, %5 ], [ -13, %4 ], [ -13, %3 ], [ -9, %2 ], [ -22, %1 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @gs_getiodevice(i32 noundef %0) local_unnamed_addr #8 {
  %2 = icmp sgt i32 %0, -1
  %3 = load i32, ptr @gx_io_device_table_count, align 4
  %4 = icmp ugt i32 %3, %0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @gx_io_device_table, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gs_findiodevice(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ugt i32 %1, 1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !21
  %9 = icmp eq i8 %8, 37
  %10 = select i1 %9, i32 %5, i32 %1
  br label %11

11:                                               ; preds = %4, %2
  %12 = phi i32 [ %1, %2 ], [ %10, %4 ]
  %13 = load ptr, ptr @gx_io_device_table, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = add i32 %12, 1
  %17 = zext i32 %16 to i64
  %18 = zext i32 %12 to i64
  br label %23

19:                                               ; preds = %34
  %20 = getelementptr inbounds ptr, ptr %26, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23, !llvm.loop !22

23:                                               ; preds = %15, %19
  %24 = phi ptr [ %13, %15 ], [ %21, %19 ]
  %25 = phi ptr [ undef, %15 ], [ %35, %19 ]
  %26 = phi ptr [ @gx_io_device_table, %15 ], [ %20, %19 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !23
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #15
  %29 = icmp eq i64 %28, %17
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = tail call i32 @bcmp(ptr %0, ptr %27, i64 %18)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %30, %33
  %35 = phi ptr [ %25, %33 ], [ %24, %30 ]
  %36 = phi i1 [ true, %33 ], [ false, %30 ]
  br i1 %36, label %19, label %37

37:                                               ; preds = %34, %19, %11
  %38 = phi ptr [ null, %11 ], [ %35, %34 ], [ null, %19 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_getdevparams(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gs_param_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  store ptr %5, ptr %3, align 8, !tbaa !25
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #15
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 2
  store i32 1, ptr %9, align 4, !tbaa !28
  %10 = load ptr, ptr %1, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = call i32 %12(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 2, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = call i32 %17(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_putdevparams(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 2, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #14
  ret i32 %5
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

declare ptr @gp_enumerate_files_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !10, i64 0}
!12 = !{!"gs_param_list_s", !10, i64 0}
!13 = !{!14, !10, i64 8}
!14 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!15 = !{!14, !10, i64 128}
!16 = !{!17, !10, i64 16}
!17 = !{!"gx_io_device_s", !10, i64 0, !10, i64 8, !18, i64 16}
!18 = !{!"gx_io_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !20}
!23 = !{!17, !10, i64 0}
!24 = !{!17, !10, i64 8}
!25 = !{!26, !10, i64 0}
!26 = !{!"gs_param_string_s", !10, i64 0, !6, i64 8, !6, i64 12}
!27 = !{!26, !6, i64 8}
!28 = !{!26, !6, i64 12}
!29 = !{!14, !10, i64 48}
!30 = !{!17, !10, i64 104}
!31 = !{!17, !10, i64 112}
