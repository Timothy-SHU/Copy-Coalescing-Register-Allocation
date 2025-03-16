; ModuleID = 'iutil2.c'
source_filename = "iutil2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.password_s = type { i32, [64 x i8] }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Password\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @param_read_password(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.password_s, ptr %2, i64 0, i32 1
  store ptr %6, ptr %4, align 8, !tbaa !5
  %7 = load i32, ptr %2, align 4, !tbaa !11
  %8 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !14
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = call i32 %12(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #6
  switch i32 %13, label %33 [
    i32 0, label %14
    i32 -20, label %20
  ]

14:                                               ; preds = %3
  %15 = load i32, ptr %8, align 8, !tbaa !13
  %16 = icmp ugt i32 %15, 64
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !tbaa !5
  %19 = zext nneg i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr align 1 %18, i64 %19, i1 false)
  br label %31

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = call i32 %23(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i64, ptr %5, align 8, !tbaa !20
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %27) #6
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #7
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %17, %26
  %32 = phi i32 [ %30, %26 ], [ %15, %17 ]
  store i32 %32, ptr %2, align 4, !tbaa !11
  br label %33

33:                                               ; preds = %31, %3, %20, %14
  %34 = phi i32 [ -13, %14 ], [ %24, %20 ], [ %13, %3 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @param_write_password(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_param_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.password_s, ptr %2, i64 0, i32 1
  store ptr %5, ptr %4, align 8, !tbaa !5
  %6 = load i32, ptr %2, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !14
  %9 = icmp ugt i32 %6, 64
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = call i32 %13(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #6
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi i32 [ %14, %10 ], [ -13, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @param_check_password(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.password_s, align 4
  %6 = load i32, ptr %1, align 4, !tbaa !11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %9 = getelementptr inbounds %struct.password_s, ptr %5, i64 0, i32 1
  store ptr %9, ptr %3, align 8, !tbaa !5
  %10 = load i32, ptr %5, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !14
  %13 = load ptr, ptr %0, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = call i32 %15(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #6
  switch i32 %16, label %34 [
    i32 0, label %17
    i32 -20, label %23
  ]

17:                                               ; preds = %8
  %18 = load i32, ptr %11, align 8, !tbaa !13
  %19 = icmp ugt i32 %18, 64
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8, !tbaa !5
  %22 = zext nneg i32 %18 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %9, ptr align 1 %21, i64 %22, i1 false)
  store i32 %18, ptr %5, align 4, !tbaa !11
  br label %34

23:                                               ; preds = %8
  %24 = load ptr, ptr %0, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = call i32 %26(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i64, ptr %4, align 8, !tbaa !20
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %30) #6
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #7
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %5, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %8, %17, %20, %23, %29
  %35 = phi i32 [ 0, %29 ], [ 0, %20 ], [ -13, %17 ], [ %27, %23 ], [ %16, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, ptr %5, align 4, !tbaa !11
  %39 = load i32, ptr %1, align 4, !tbaa !11
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.password_s, ptr %1, i64 0, i32 1
  %43 = call i32 @bytes_compare(ptr noundef nonnull %9, i32 noundef %38, ptr noundef nonnull %42, i32 noundef %39) #6
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %41, %37, %34
  %46 = phi i32 [ %35, %34 ], [ 1, %37 ], [ 1, %41 ]
  %47 = phi i1 [ false, %34 ], [ false, %37 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #6
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %2
  br label %49

49:                                               ; preds = %45, %48
  %50 = phi i32 [ %46, %45 ], [ 0, %48 ]
  ret i32 %50
}

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_param_string_s", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"password_s", !10, i64 0, !8, i64 4}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !10, i64 12}
!15 = !{!16, !7, i64 0}
!16 = !{!"gs_param_list_s", !7, i64 0}
!17 = !{!18, !7, i64 40}
!18 = !{!"gs_param_list_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!19 = !{!18, !7, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !8, i64 0}
