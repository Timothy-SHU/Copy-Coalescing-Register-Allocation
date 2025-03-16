; ModuleID = 'gxbcache.c'
source_filename = "gxbcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_cached_bits_head_s = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_bits_cache_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %1, ptr %1, align 8, !tbaa !5
  store ptr %1, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !14
  %5 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_bits_cache_chunk_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  store ptr null, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !18
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  store i32 %2, ptr %1, align 4, !tbaa !19
  %9 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %1, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !21
  br label %10

10:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_bits_cache_alloc(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = add i64 %1, 8
  %5 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = sub i32 %9, %6
  %11 = zext i32 %10 to i64
  %12 = icmp ule i64 %4, %11
  %13 = icmp eq i64 %11, %1
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = zext i32 %6 to i64
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = trunc i64 %4 to i32
  %21 = trunc i64 %1 to i32
  %22 = icmp ne i32 %20, 0
  %23 = icmp ne i32 %21, 0
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %15, %34
  %26 = phi i32 [ %36, %34 ], [ 0, %15 ]
  %27 = phi ptr [ %38, %34 ], [ %19, %15 ]
  %28 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %31
  store i32 %26, ptr %19, align 4, !tbaa !19
  br label %61

34:                                               ; preds = %25
  %35 = load i32, ptr %27, align 4, !tbaa !19
  %36 = add i32 %35, %26
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %19, i64 %37
  %39 = icmp ult i32 %36, %20
  %40 = icmp ne i32 %36, %21
  %41 = and i1 %39, %40
  br i1 %41, label %25, label %42, !llvm.loop !22

42:                                               ; preds = %34, %15
  %43 = phi i32 [ 0, %15 ], [ %36, %34 ]
  %44 = icmp ugt i32 %43, %21
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = and i64 %1, 4294967295
  %47 = getelementptr inbounds i8, ptr %19, i64 %46
  %48 = sub i32 %43, %21
  store i32 %48, ptr %47, align 4, !tbaa !19
  %49 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %47, i64 0, i32 1
  store i32 0, ptr %49, align 4, !tbaa !21
  br label %50

50:                                               ; preds = %42, %45
  store i32 %21, ptr %19, align 4, !tbaa !19
  %51 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !14
  %53 = add i32 %52, %21
  store i32 %53, ptr %51, align 4, !tbaa !14
  %54 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !15
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !15
  %57 = add i32 %6, %21
  store i32 %57, ptr %5, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %7, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !18
  %60 = add i32 %59, %21
  store i32 %60, ptr %58, align 4, !tbaa !18
  br label %61

61:                                               ; preds = %31, %33, %3, %50
  %62 = phi ptr [ %19, %50 ], [ null, %3 ], [ %27, %33 ], [ %27, %31 ]
  %63 = phi i32 [ 0, %50 ], [ -1, %3 ], [ -1, %33 ], [ -1, %31 ]
  store ptr %62, ptr %2, align 8, !tbaa !24
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_bits_cache_shorten(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = load i32, ptr %1, align 4, !tbaa !19
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !13
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load ptr, ptr %0, align 8, !tbaa !11
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = sub i32 %11, %2
  store i32 %19, ptr %10, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %18, %15, %4
  %21 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = sub i32 %22, %2
  store i32 %23, ptr %21, align 4, !tbaa !14
  %24 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %3, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !18
  %26 = sub i32 %25, %2
  store i32 %26, ptr %24, align 4, !tbaa !18
  %27 = sub i32 %5, %2
  store i32 %27, ptr %1, align 4, !tbaa !19
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %29, i64 0, i32 1
  store i32 0, ptr %30, align 4, !tbaa !21
  store i32 %2, ptr %29, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_bits_cache_free(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %1, align 4, !tbaa !19
  %5 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.gx_bits_cache_s, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = sub i32 %9, %4
  store i32 %10, ptr %8, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !18
  %13 = sub i32 %12, %4
  store i32 %13, ptr %11, align 4, !tbaa !18
  %14 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %1, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !21
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gx_bits_cache_chunk_s", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"gx_bits_cache_s", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!13 = !{!12, !10, i64 8}
!14 = !{!12, !10, i64 12}
!15 = !{!12, !10, i64 16}
!16 = !{!6, !7, i64 8}
!17 = !{!6, !10, i64 16}
!18 = !{!6, !10, i64 20}
!19 = !{!20, !10, i64 0}
!20 = !{!"gx_cached_bits_head_s", !10, i64 0, !10, i64 4}
!21 = !{!20, !10, i64 4}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!7, !7, i64 0}
