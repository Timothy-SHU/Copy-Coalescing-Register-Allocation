; ModuleID = 'zfname.c'
source_filename = "zfname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.tas_s = type { i16, i16 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%union.v = type { i64 }
%struct.parsed_file_name_s = type { ptr, ptr, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_file_name(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8, !tbaa !5
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4640
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 18
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #4
  br label %50

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !12
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq i16 %14, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %12
  %20 = load i8, ptr %17, align 1, !tbaa !11
  %21 = icmp eq i8 %20, 37
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  store ptr null, ptr %1, align 8, !tbaa !13
  %23 = getelementptr inbounds %struct.parsed_file_name_s, ptr %1, i64 0, i32 1
  store ptr %17, ptr %23, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.parsed_file_name_s, ptr %1, i64 0, i32 2
  store i32 %15, ptr %24, align 8, !tbaa !18
  br label %50

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  %27 = add nsw i32 %15, -1
  %28 = zext nneg i32 %27 to i64
  %29 = tail call ptr @memchr(ptr noundef nonnull %26, i32 noundef 37, i64 noundef %28) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = ptrtoint ptr %29 to i64
  %37 = ptrtoint ptr %17 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %31, %25, %35
  %41 = phi i32 [ %27, %35 ], [ %15, %25 ], [ %15, %31 ]
  %42 = phi i32 [ %39, %35 ], [ %15, %25 ], [ %15, %31 ]
  %43 = phi ptr [ %32, %35 ], [ null, %25 ], [ null, %31 ]
  %44 = tail call ptr @gs_findiodevice(ptr noundef nonnull %17, i32 noundef %42) #4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  store ptr %44, ptr %1, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.parsed_file_name_s, ptr %1, i64 0, i32 1
  store ptr %43, ptr %47, align 8, !tbaa !17
  %48 = sub i32 %41, %42
  %49 = getelementptr inbounds %struct.parsed_file_name_s, ptr %1, i64 0, i32 2
  store i32 %48, ptr %49, align 8, !tbaa !18
  br label %50

50:                                               ; preds = %40, %12, %10, %6, %46, %22
  %51 = phi i32 [ 0, %22 ], [ 0, %46 ], [ %11, %10 ], [ -7, %6 ], [ -22, %12 ], [ -22, %40 ]
  ret i32 %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gs_findiodevice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_real_file_name(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ref_s, align 8
  %5 = tail call i32 @parse_file_name(ptr noundef %0, ptr noundef %1)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.parsed_file_name_s, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  %12 = load ptr, ptr %1, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @gs_getiodevice(i32 noundef 0) #4
  store ptr %15, ptr %1, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.parsed_file_name_s, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !11
  %20 = trunc i32 %9 to i16
  %21 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  store i16 %20, ptr %21, align 2, !tbaa !12
  %22 = load ptr, ptr @gs_imemory, align 8, !tbaa !19
  %23 = call ptr @ref_to_string(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %2) #4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  store ptr %23, ptr %17, align 8, !tbaa !17
  %26 = add i32 %9, 1
  store i32 %26, ptr %8, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %16, %25
  %28 = phi i32 [ 0, %25 ], [ -25, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  br label %29

29:                                               ; preds = %7, %3, %27
  %30 = phi i32 [ %28, %27 ], [ %5, %3 ], [ -9, %7 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @terminate_file_name(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.parsed_file_name_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  %6 = load ptr, ptr %0, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @gs_getiodevice(i32 noundef 0) #4
  store ptr %9, ptr %0, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.parsed_file_name_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !11
  %14 = trunc i32 %5 to i16
  %15 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  store i16 %14, ptr %15, align 2, !tbaa !12
  %16 = load ptr, ptr @gs_imemory, align 8, !tbaa !19
  %17 = call ptr @ref_to_string(ptr noundef nonnull %3, ptr noundef %16, ptr noundef %1) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  store ptr %17, ptr %11, align 8, !tbaa !17
  %20 = add i32 %5, 1
  store i32 %20, ptr %4, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %10, %19
  %22 = phi i32 [ 0, %19 ], [ -25, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  ret i32 %22
}

declare ptr @gs_getiodevice(i32 noundef) local_unnamed_addr #2

declare ptr @ref_to_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_file_name(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.parsed_file_name_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @gs_imemory, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.parsed_file_name_s, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !18
  tail call void %9(ptr noundef %7, ptr noundef nonnull %4, i32 noundef %11, ptr noundef %1) #4
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 0}
!6 = !{!"ref_s", !7, i64 0, !9, i64 8}
!7 = !{!"tas_s", !8, i64 0, !8, i64 2}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!6, !8, i64 2}
!13 = !{!14, !15, i64 0}
!14 = !{!"parsed_file_name_s", !15, i64 0, !15, i64 8, !16, i64 16}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"int", !9, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!14, !16, i64 16}
!19 = !{!20, !15, i64 0}
!20 = !{!"gs_dual_memory_s", !15, i64 0, !9, i64 8, !16, i64 40, !16, i64 44, !15, i64 48, !16, i64 56, !16, i64 60}
!21 = !{!22, !15, i64 120}
!22 = !{!"gs_memory_s", !23, i64 0}
!23 = !{!"gs_memory_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
