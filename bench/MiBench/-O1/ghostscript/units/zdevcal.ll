; ModuleID = 'zdevcal.c'
source_filename = "zdevcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"%Calendar%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@gs_iodev_calendar = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @iodev_no_open_device, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @calendar_get_params, ptr @iodev_no_put_params } }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Year\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Month\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Day\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Weekday\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Hour\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Minute\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Running\00", align 1

declare i32 @iodev_no_init(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_open_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_no_open_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_no_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @iodev_no_fclose(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_delete_file(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_rename_file(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_no_file_status(ptr noundef, ptr noundef, ptr noundef) #0

declare ptr @iodev_no_enumerate_files(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @calendar_get_params(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %6 = call i64 @time(ptr noundef nonnull %3) #6
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call ptr @localtime(ptr noundef nonnull %3) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %19

12:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !5
  %13 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = add nsw i32 %14, 1900
  store i32 %15, ptr %13, align 4, !tbaa !14
  %16 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !16
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %12, %11
  %20 = phi i32 [ 1, %12 ], [ 0, %11 ]
  store i32 %20, ptr %5, align 4, !tbaa !6
  %21 = load ptr, ptr %1, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 5
  %25 = call i32 %23(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %73, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %1, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 4
  %32 = call i32 %30(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %31) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %1, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 3
  %39 = call i32 %37(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %1, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !19
  %45 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 6
  %46 = call i32 %44(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %45) #6
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %1, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 2
  %53 = call i32 %51(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %52) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %1, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !19
  %59 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 1
  %60 = call i32 %58(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %59) #6
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %1, align 8, !tbaa !17
  %64 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !19
  %66 = call i32 %65(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #6
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %1, align 8, !tbaa !17
  %70 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !21
  %72 = call i32 %71(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #6
  br label %73

73:                                               ; preds = %19, %27, %34, %41, %48, %55, %62, %68
  %74 = phi i32 [ %72, %68 ], [ %25, %19 ], [ %32, %27 ], [ %39, %34 ], [ %46, %41 ], [ %53, %48 ], [ %60, %55 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %74
}

declare i32 @iodev_no_put_params(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !6, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 4, !6, i64 40, i64 8, !10, i64 48, i64 8, !12}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !7, i64 20}
!15 = !{!"tm", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !13, i64 48}
!16 = !{!15, !7, i64 16}
!17 = !{!18, !13, i64 0}
!18 = !{!"gs_param_list_s", !13, i64 0}
!19 = !{!20, !13, i64 16}
!20 = !{!"gs_param_list_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128}
!21 = !{!20, !13, i64 8}
