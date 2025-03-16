; ModuleID = 'ziodev2.c'
source_filename = "ziodev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.password_s = type { i32, [64 x i8] }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.stack_param_list_s = type { ptr, %union.anon, ptr, i32, i32, ptr, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, %struct.ref_s, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"%null%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileSystem\00", align 1
@gs_iodev_null = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @null_open, ptr @iodev_no_open_file, ptr @iodev_os_fopen, ptr @iodev_os_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%ram%\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@gs_iodev_ram = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str.2, ptr @.str.3, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @iodev_no_open_device, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@ziodev2_l2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str.4, ptr null }, %struct.op_def { ptr @.str.5, ptr @zgetdevparams }, %struct.op_def { ptr @.str.6, ptr @zputdevparams }, %struct.op_def zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"1.getdevparams\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"2.putdevparams\00", align 1
@gp_null_file_name = external constant [0 x i8], align 1
@o_stack = external global %struct.ref_stack_s, align 8
@SystemParamsPassword = external global %struct.password_s, align 4
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1

declare i32 @iodev_no_init(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @null_open(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #1 {
  %5 = load i8, ptr %1, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 119
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @gp_null_file_name) #5
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = tail call i32 @file_open_stream(ptr noundef nonnull @gp_null_file_name, i32 noundef %13, ptr noundef nonnull %1, i32 noundef 256, ptr noundef %2, ptr noundef %15) #6
  br label %17

17:                                               ; preds = %4, %7, %11
  %18 = phi i32 [ %16, %11 ], [ -9, %7 ], [ -9, %4 ]
  ret i32 %18
}

declare i32 @iodev_no_open_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_os_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @iodev_os_fclose(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_delete_file(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_rename_file(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_no_file_status(ptr noundef, ptr noundef, ptr noundef) #0

declare ptr @iodev_no_enumerate_files(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @iodev_no_get_params(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_put_params(ptr noundef, ptr noundef) #0

declare i32 @iodev_no_open_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @iodev_no_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @iodev_no_fclose(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ziodev2_l2_op_defs() local_unnamed_addr #2 {
  ret ptr @ziodev2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetdevparams(ptr noundef %0) #1 {
  %2 = alloca %struct.stack_param_list_s, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  %3 = load i16, ptr %0, align 8, !tbaa !12
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4640
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 18
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %31

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = zext i16 %16 to i32
  %18 = tail call ptr @gs_findiodevice(ptr noundef %14, i32 noundef %17) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = call i32 @stack_param_list_write(ptr noundef nonnull %2, ptr noundef nonnull @o_stack, ptr noundef null) #6
  %22 = call i32 @gs_getdevparams(ptr noundef nonnull %18, ptr noundef nonnull %2) #6
  %23 = icmp slt i32 %22, 0
  %24 = getelementptr inbounds %struct.stack_param_list_s, ptr %2, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !17
  %26 = shl i32 %25, 1
  br i1 %23, label %27, label %28

27:                                               ; preds = %20
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %26) #6
  br label %31

28:                                               ; preds = %20
  %29 = zext i32 %26 to i64
  %30 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %29) #6
  store i16 3072, ptr %30, align 8, !tbaa !12
  br label %31

31:                                               ; preds = %12, %10, %6, %28, %27
  %32 = phi i32 [ %22, %27 ], [ 0, %28 ], [ %11, %10 ], [ -7, %6 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zputdevparams(ptr noundef %0) #1 {
  %2 = alloca %struct.stack_param_list_s, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  %3 = load i16, ptr %0, align 8, !tbaa !12
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4640
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 18
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %47

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = zext i16 %16 to i32
  %18 = tail call ptr @gs_findiodevice(ptr noundef %14, i32 noundef %17) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %12
  %21 = call i32 @stack_param_list_read(ptr noundef nonnull %2, ptr noundef nonnull @o_stack, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = call i32 @param_check_password(ptr noundef nonnull %2, ptr noundef nonnull @SystemParamsPassword) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @gs_imemory, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %27, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.stack_param_list_s, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  call void %29(ptr noundef %27, ptr noundef %31, ptr noundef nonnull @.str.7) #6
  %32 = icmp slt i32 %24, 0
  %33 = select i1 %32, i32 %24, i32 -7
  br label %47

34:                                               ; preds = %23
  %35 = call i32 @gs_putdevparams(ptr noundef nonnull %18, ptr noundef nonnull %2) #6
  %36 = load ptr, ptr @gs_imemory, align 8, !tbaa !20
  %37 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %36, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.stack_param_list_s, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  call void %38(ptr noundef %36, ptr noundef %40, ptr noundef nonnull @.str.7) #6
  %41 = icmp slt i32 %35, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.stack_param_list_s, ptr %2, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !17
  %45 = shl i32 %44, 1
  %46 = add i32 %45, 2
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %46) #6
  br label %47

47:                                               ; preds = %34, %20, %12, %10, %6, %42, %26
  %48 = phi i32 [ %33, %26 ], [ 0, %42 ], [ %11, %10 ], [ -7, %6 ], [ -22, %12 ], [ %21, %20 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  ret i32 %48
}

declare i32 @file_open_stream(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #0

declare ptr @gs_findiodevice(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @stack_param_list_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_getdevparams(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @stack_param_list_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @param_check_password(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_putdevparams(ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) }
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
!8 = !{!9, !10, i64 40}
!9 = !{!"gx_io_device_s", !10, i64 0, !10, i64 8, !11, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"gx_io_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !6, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !6, i64 0}
!16 = !{!13, !15, i64 2}
!17 = !{!18, !19, i64 48}
!18 = !{!"stack_param_list_s", !10, i64 0, !6, i64 8, !10, i64 40, !19, i64 48, !19, i64 52, !10, i64 56, !19, i64 64}
!19 = !{!"int", !6, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !19, i64 40, !19, i64 44, !10, i64 48, !19, i64 56, !19, i64 60}
!22 = !{!23, !10, i64 88}
!23 = !{!"gs_memory_s", !24, i64 0}
!24 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!25 = !{!18, !10, i64 40}
