; ModuleID = 'blender/source/blender/imbuf/intern/thumbs.c'
source_filename = "blender/source/blender/imbuf/intern/thumbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str.13 = private unnamed_addr constant [10 x i8] c"file://%s\00", align 1
@acceptable = internal unnamed_addr constant [96 x i8] c"\00?  (\00,????*(??\1C??????????8  ,  8??????????????????????????    ? ??????????????????????????   ? ", align 16
@hex = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"%s.png\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @IMB_thumb_makedirs() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_thumb_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca [3080 x i8], align 16
  %6 = alloca [40 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3080, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3080) %5, i8 0, i64 3080, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  %7 = icmp ult i32 %1, 3
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = tail call i64 @BLI_file_size(ptr noundef %0) #8
  %12 = add i64 %11, 1
  %13 = icmp ult i64 %12, 104857602
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %8
  call fastcc void @uri_from_filename(ptr noundef %0, ptr noundef nonnull %5) #9
  call fastcc void @thumbname_from_uri(ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  br label %15

15:                                               ; preds = %4, %10, %14
  %16 = phi ptr [ %3, %14 ], [ null, %10 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 3080, ptr nonnull %5) #7
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i64 @BLI_file_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uri_from_filename(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !PGOFuncName !34 {
  %3 = alloca [3080 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3080, ptr nonnull %3) #7
  %4 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 3080, ptr noundef nonnull @.str.13, ptr noundef %0) #8
  call fastcc void @escape_uri_string(ptr noundef nonnull %3, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 3080, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @thumbname_from_uri(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !35 {
  %3 = alloca [33 x i8], align 16
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %6 = call ptr @md5_buffer(ptr noundef %0, i64 noundef %5, ptr noundef nonnull %4) #8
  store i8 0, ptr %3, align 16, !tbaa !36
  %7 = call ptr @md5_to_hexdigest(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %8 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 40, ptr noundef nonnull @.str.14, ptr noundef %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @IMB_thumb_read(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3080 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3080, ptr nonnull %3) #7
  call fastcc void @uri_from_filename(ptr noundef %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3080, ptr nonnull %3) #7
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_thumb_delete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3080 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3080, ptr nonnull %3) #7
  call fastcc void @uri_from_filename(ptr noundef %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3080, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @IMB_thumb_manage(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca [3080 x i8], align 16
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 3080, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #7
  %6 = call i32 @BLI_stat(ptr noundef %0, ptr noundef nonnull %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call fastcc void @uri_from_filename(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %9

9:                                                ; preds = %3, %8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 3080, ptr nonnull %4) #7
  ret ptr null
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @escape_uri_string(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !39 {
  %3 = load i8, ptr %0, align 1, !tbaa !36
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %2, %35
  %6 = phi i8 [ %40, %35 ], [ %3, %2 ]
  %7 = phi i32 [ %38, %35 ], [ 3079, %2 ]
  %8 = phi ptr [ %39, %35 ], [ %0, %2 ]
  %9 = phi ptr [ %37, %35 ], [ %1, %2 ]
  %10 = zext i8 %6 to i32
  %11 = icmp sgt i8 %6, 31
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = add nsw i32 %10, -32
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [96 x i8], ptr @acceptable, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !36
  %17 = and i8 %16, 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12, %5
  %20 = icmp slt i32 %7, 3
  br i1 %20, label %44, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 37, ptr %9, align 1, !tbaa !36
  %23 = lshr i32 %10, 4
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [17 x i8], ptr @hex, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !36
  %27 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %26, ptr %22, align 1, !tbaa !36
  %28 = and i32 %10, 15
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [17 x i8], ptr @hex, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !36
  %32 = getelementptr inbounds i8, ptr %9, i64 3
  store i8 %31, ptr %27, align 1, !tbaa !36
  br label %35

33:                                               ; preds = %12
  %34 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %6, ptr %9, align 1, !tbaa !36
  br label %35

35:                                               ; preds = %21, %33
  %36 = phi i32 [ -3, %21 ], [ -1, %33 ]
  %37 = phi ptr [ %32, %21 ], [ %34, %33 ]
  %38 = add nsw i32 %7, %36
  %39 = getelementptr inbounds i8, ptr %8, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !36
  %41 = icmp ne i8 %40, 0
  %42 = icmp ne i32 %38, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %5, label %44, !llvm.loop !40

44:                                               ; preds = %35, %19, %2
  %45 = phi ptr [ %1, %2 ], [ %9, %19 ], [ %37, %35 ]
  store i8 0, ptr %45, align 1, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare ptr @md5_buffer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @md5_to_hexdigest(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!"thumbs.c:uri_from_filename"}
!35 = !{!"thumbs.c:thumbname_from_uri"}
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"thumbs.c:escape_uri_string"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
