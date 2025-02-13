; ModuleID = 'zlib/uncompr.c'
source_filename = "zlib/uncompr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.6\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @uncompress(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #4
  store ptr %2, ptr %5, align 8, !tbaa !34
  %6 = trunc i64 %3 to i32
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !41
  %8 = icmp ult i64 %3, 4294967296
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %0, ptr %10, align 8, !tbaa !42
  %11 = load i64, ptr %1, align 8, !tbaa !43
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !44
  %14 = icmp ult i64 %11, 4294967296
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %17 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 4) #5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = call i32 @inflateEnd(ptr noundef nonnull %5) #5
  %24 = icmp eq i32 %20, 2
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %20, -5
  %27 = load i32, ptr %7, align 8
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  %30 = select i1 %29, i32 -3, i32 %20
  br label %35

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !45
  store i64 %33, ptr %1, align 8, !tbaa !43
  %34 = call i32 @inflateEnd(ptr noundef nonnull %5) #5
  br label %35

35:                                               ; preds = %25, %22, %15, %9, %4, %31
  %36 = phi i32 [ %34, %31 ], [ -5, %4 ], [ -5, %9 ], [ %17, %15 ], [ -3, %22 ], [ %30, %25 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #4
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"z_stream_s", !36, i64 0, !39, i64 8, !40, i64 16, !36, i64 24, !39, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !40, i64 96, !40, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!35, !39, i64 8}
!42 = !{!35, !36, i64 24}
!43 = !{!40, !40, i64 0}
!44 = !{!35, !39, i64 32}
!45 = !{!35, !40, i64 40}
