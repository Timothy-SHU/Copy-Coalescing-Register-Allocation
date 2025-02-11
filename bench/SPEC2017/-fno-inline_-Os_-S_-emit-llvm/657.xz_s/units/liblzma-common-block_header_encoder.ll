; ModuleID = 'liblzma/common/block_header_encoder.c'
source_filename = "liblzma/common/block_header_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_header_size(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !13
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @lzma_vli_size(i64 noundef %7) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %9
  %13 = load i64, ptr %6, align 8, !tbaa !13
  %14 = icmp eq i64 %13, 0
  %15 = add i32 %10, 6
  br i1 %14, label %53, label %16

16:                                               ; preds = %12, %5
  %17 = phi i32 [ %15, %12 ], [ 6, %5 ]
  %18 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !14
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @lzma_vli_size(i64 noundef %19) #5
  %23 = icmp eq i32 %22, 0
  %24 = add i32 %22, %17
  br i1 %23, label %53, label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ %17, %16 ]
  %27 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %25
  %31 = load i64, ptr %28, align 8, !tbaa !16
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %42
  %34 = phi ptr [ %46, %42 ], [ %28, %30 ]
  %35 = phi i64 [ %44, %42 ], [ 0, %30 ]
  %36 = phi i32 [ %43, %42 ], [ %26, %30 ]
  %37 = icmp eq i64 %35, 4
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %39 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %2, ptr noundef nonnull %34) #5
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %40, label %42, label %53

42:                                               ; preds = %38
  %43 = add i32 %41, %36
  %44 = add nuw nsw i64 %35, 1
  %45 = load ptr, ptr %27, align 8, !tbaa !15
  %46 = getelementptr inbounds %struct.lzma_filter, ptr %45, i64 %44
  %47 = load i64, ptr %46, align 8, !tbaa !16
  %48 = icmp eq i64 %47, -1
  br i1 %48, label %49, label %33, !llvm.loop !18

49:                                               ; preds = %42
  %50 = add i32 %43, 3
  %51 = and i32 %50, -4
  %52 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !20
  br label %53

53:                                               ; preds = %38, %33, %9, %49, %21, %12, %30, %25, %1
  %54 = phi i32 [ 8, %1 ], [ 0, %49 ], [ 11, %21 ], [ 11, %12 ], [ 11, %30 ], [ 11, %25 ], [ 11, %9 ], [ %39, %38 ], [ 11, %33 ]
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_header_encode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0) #5
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp sgt i64 %8, -2
  br i1 %9, label %10, label %68

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !20
  %13 = add i32 %12, -4
  %14 = zext i32 %13 to i64
  %15 = lshr i32 %13, 2
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %1, align 1, !tbaa !21
  %17 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %17, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 2, ptr %3, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !13
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %27, label %21

21:                                               ; preds = %10
  %22 = call i32 @lzma_vli_encode(i64 noundef %19, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load i8, ptr %17, align 1, !tbaa !21
  %26 = or i8 %25, 64
  store i8 %26, ptr %17, align 1, !tbaa !21
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i64, ptr %7, align 8, !tbaa !14
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = call i32 @lzma_vli_encode(i64 noundef %28, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i8, ptr %17, align 1, !tbaa !21
  %35 = or i8 %34, -128
  store i8 %35, ptr %17, align 1, !tbaa !21
  br label %36

36:                                               ; preds = %33, %27
  %37 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %38, align 8, !tbaa !16
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %66, label %43

43:                                               ; preds = %40, %51
  %44 = phi ptr [ %52, %51 ], [ %38, %40 ]
  %45 = phi i64 [ %53, %51 ], [ 0, %40 ]
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.lzma_filter, ptr %44, i64 %45
  %49 = call i32 @lzma_filter_flags_encode(ptr noundef %48, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load ptr, ptr %37, align 8, !tbaa !15
  %53 = add nuw nsw i64 %45, 1
  %54 = getelementptr inbounds %struct.lzma_filter, ptr %52, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !16
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %43, !llvm.loop !23

57:                                               ; preds = %51
  %58 = load i8, ptr %17, align 1, !tbaa !21
  %59 = trunc i64 %45 to i8
  %60 = or i8 %58, %59
  store i8 %60, ptr %17, align 1, !tbaa !21
  %61 = load i64, ptr %3, align 8, !tbaa !22
  %62 = getelementptr inbounds i8, ptr %1, i64 %61
  %63 = sub i64 %14, %61
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %62, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds i8, ptr %1, i64 %14
  %65 = call i32 @lzma_crc32(ptr noundef nonnull %1, i64 noundef %14, i32 noundef 0) #5
  call fastcc void @unaligned_write32le(ptr noundef nonnull %64, i32 noundef %65) #7
  br label %66

66:                                               ; preds = %47, %43, %57, %36, %40, %21, %30
  %67 = phi i32 [ %31, %30 ], [ %22, %21 ], [ 11, %40 ], [ 11, %36 ], [ 0, %57 ], [ 11, %43 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %68

68:                                               ; preds = %2, %6, %66
  %69 = phi i32 [ %67, %66 ], [ 11, %6 ], [ 11, %2 ]
  ret i32 %69
}

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @unaligned_write32le(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 1, !tbaa !21
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !21
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !21
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !9, i64 40, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !9, i64 200, !9, i64 201, !9, i64 202, !9, i64 203, !9, i64 204, !9, i64 205, !9, i64 206, !9, i64 207}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!7, !11, i64 16}
!14 = !{!7, !11, i64 24}
!15 = !{!7, !12, i64 32}
!16 = !{!17, !11, i64 0}
!17 = !{!"", !11, i64 0, !12, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!7, !8, i64 4}
!21 = !{!9, !9, i64 0}
!22 = !{!11, !11, i64 0}
!23 = distinct !{!23, !19}
