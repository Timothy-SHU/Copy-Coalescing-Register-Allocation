; ModuleID = 'blender/source/blender/blenloader/intern/runtime.c'
source_filename = "blender/source/blender/blenloader/intern/runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"BRUNTIME\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to open '%s': %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to read '%s' (problem seeking)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to read '%s' (truncated header)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unable to read '%s' (not a blend file)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BLO_is_a_runtime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [8 x i8], align 1
  %4 = tail call i32 @BLI_open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @lseek(i32 noundef %4, i64 noundef -12, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %8 = call i64 @read(i32 noundef %4, ptr noundef nonnull %2, i64 noundef 4) #7
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load i8, ptr %2, align 1, !tbaa !34
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or disjoint i32 %17, %13
  %19 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or disjoint i32 %18, %22
  %24 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = or disjoint i32 %23, %26
  %28 = icmp eq i32 %27, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %28, label %37, label %29

29:                                               ; preds = %10
  %30 = call i64 @read(i32 noundef %4, ptr noundef nonnull %3, i64 noundef 8) #7
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) @.str, i64 8)
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  br label %37

36:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %37

37:                                               ; preds = %36, %32, %29, %10, %1
  %38 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %29 ], [ %35, %32 ], [ 0, %36 ]
  br i1 %5, label %41, label %39

39:                                               ; preds = %37
  %40 = tail call i32 @close(i32 noundef %4) #7
  br label %41

41:                                               ; preds = %39, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLO_read_runtime(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %5 = tail call i32 @BLI_open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #7
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #8
  %9 = load i32, ptr %8, align 4, !tbaa !37
  %10 = tail call ptr @strerror(i32 noundef %9) #7
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %10) #7
  br label %52

11:                                               ; preds = %2
  %12 = tail call i64 @BLI_file_descriptor_size(i32 noundef %5) #7
  %13 = tail call i64 @lseek(i32 noundef %5, i64 noundef -12, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %14 = call i64 @read(i32 noundef %5, ptr noundef nonnull %3, i64 noundef 4) #7
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i8, ptr %3, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or disjoint i32 %23, %19
  %25 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %24, %28
  %30 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = or disjoint i32 %29, %32
  br label %34

34:                                               ; preds = %11, %16
  %35 = phi i32 [ %33, %16 ], [ -1, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %0) #7
  br label %52

38:                                               ; preds = %34
  %39 = call i64 @read(i32 noundef %5, ptr noundef nonnull %4, i64 noundef 8) #7
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %0) #7
  br label %52

42:                                               ; preds = %38
  %43 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) @.str, i64 8)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %0) #7
  br label %52

46:                                               ; preds = %42
  %47 = sext i32 %35 to i64
  %48 = tail call i64 @lseek(i32 noundef %5, i64 noundef %47, i32 noundef 0) #7
  %49 = trunc i64 %12 to i32
  %50 = sub i32 %49, %35
  %51 = tail call ptr @blo_read_blendafterruntime(i32 noundef %5, ptr noundef %0, i32 noundef %50, ptr noundef %1) #7
  br label %52

52:                                               ; preds = %46, %45, %41, %37, %7
  %53 = phi i32 [ -1, %7 ], [ %5, %37 ], [ %5, %41 ], [ %5, %45 ], [ -1, %46 ]
  %54 = phi ptr [ null, %7 ], [ null, %37 ], [ null, %41 ], [ null, %45 ], [ %51, %46 ]
  %55 = icmp eq i32 %53, -1
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @close(i32 noundef %53) #7
  br label %58

58:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %54
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #2

declare ptr @blo_read_blendafterruntime(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !35, i64 0}
