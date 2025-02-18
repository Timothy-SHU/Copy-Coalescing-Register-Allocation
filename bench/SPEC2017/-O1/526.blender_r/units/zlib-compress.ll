; ModuleID = 'zlib/compress.c'
source_filename = "zlib/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.6\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #5
  store ptr %2, ptr %6, align 8, !tbaa !34
  %7 = trunc i64 %3 to i32
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 3
  store ptr %0, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %1, align 8, !tbaa !43
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !44
  %13 = icmp ult i64 %10, 4294967296
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %16 = call i32 @deflateInit_(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 4) #5
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i32 @deflateEnd(ptr noundef nonnull %6) #5
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %23, i32 -5, i32 %19
  br label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !45
  store i64 %27, ptr %1, align 8, !tbaa !43
  %28 = call i32 @deflateEnd(ptr noundef nonnull %6) #5
  br label %29

29:                                               ; preds = %14, %5, %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ], [ -5, %5 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #5
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #5
  store ptr %2, ptr %5, align 8, !tbaa !34
  %6 = trunc i64 %3 to i32
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %0, ptr %8, align 8, !tbaa !42
  %9 = load i64, ptr %1, align 8, !tbaa !43
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !44
  %12 = icmp ult i64 %9, 4294967296
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %15 = call i32 @deflateInit_(ptr noundef nonnull %5, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 112) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = call i32 @deflate(ptr noundef nonnull %5, i32 noundef 4) #5
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @deflateEnd(ptr noundef nonnull %5) #5
  %22 = icmp eq i32 %18, 0
  %23 = select i1 %22, i32 -5, i32 %18
  br label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !45
  store i64 %26, ptr %1, align 8, !tbaa !43
  %27 = call i32 @deflateEnd(ptr noundef nonnull %5) #5
  br label %28

28:                                               ; preds = %4, %13, %20, %24
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ], [ -5, %4 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #5
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @compressBound(i64 noundef %0) local_unnamed_addr #3 {
  %2 = lshr i64 %0, 12
  %3 = lshr i64 %0, 14
  %4 = lshr i64 %0, 25
  %5 = add i64 %0, 13
  %6 = add i64 %5, %2
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  ret i64 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
