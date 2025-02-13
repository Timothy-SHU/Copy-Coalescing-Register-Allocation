; ModuleID = 'blender/source/blender/blenloader/intern/runtime.c'
source_filename = "blender/source/blender/blenloader/intern/runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"BRUNTIME\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to open '%s': %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to read '%s' (problem seeking)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to read '%s' (truncated header)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unable to read '%s' (not a blend file)\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLO_is_a_runtime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 1
  %3 = tail call i32 @BLI_open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @lseek(i32 noundef %3, i64 noundef -12, i32 noundef 2) #8
  %7 = tail call fastcc i32 @handle_read_msb_int(i32 noundef %3) #10
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = call i64 @read(i32 noundef %3, ptr noundef nonnull %2, i64 noundef 8) #8
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) @.str, i64 8)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %5
  %17 = phi i32 [ %15, %12 ], [ 0, %9 ], [ 0, %5 ]
  %18 = tail call i32 @close(i32 noundef %3) #8
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @handle_read_msb_int(i32 noundef %0) unnamed_addr #4 !PGOFuncName !34 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = call i64 @read(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 4) #8
  %4 = icmp eq i64 %3, 4
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1, !tbaa !35
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !35
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or disjoint i32 %12, %8
  %14 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %13, %17
  %19 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !35
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  br label %23

23:                                               ; preds = %1, %5
  %24 = phi i32 [ %22, %5 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %24
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_read_runtime(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = tail call i32 @BLI_open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #11
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = tail call ptr @strerror(i32 noundef %8) #8
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %9) #8
  br label %30

10:                                               ; preds = %2
  %11 = tail call i64 @BLI_file_descriptor_size(i32 noundef %4) #8
  %12 = tail call i64 @lseek(i32 noundef %4, i64 noundef -12, i32 noundef 2) #8
  %13 = tail call fastcc i32 @handle_read_msb_int(i32 noundef %4) #10
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = call i64 @read(i32 noundef %4, ptr noundef nonnull %3, i64 noundef 8) #8
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) @.str, i64 8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = sext i32 %13 to i64
  %23 = tail call i64 @lseek(i32 noundef %4, i64 noundef %22, i32 noundef 0) #8
  %24 = trunc i64 %11 to i32
  %25 = sub i32 %24, %13
  %26 = tail call ptr @blo_read_blendafterruntime(i32 noundef %4, ptr noundef %0, i32 noundef %25, ptr noundef %1) #8
  br label %30

27:                                               ; preds = %18, %15, %10
  %28 = phi ptr [ @.str.2, %10 ], [ @.str.3, %15 ], [ @.str.4, %18 ]
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %28, ptr noundef %0) #8
  %29 = tail call i32 @close(i32 noundef %4) #8
  br label %30

30:                                               ; preds = %6, %21, %27
  %31 = phi ptr [ null, %27 ], [ null, %6 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %31
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @blo_read_blendafterruntime(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"runtime.c:handle_read_msb_int"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
